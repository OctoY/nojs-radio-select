# Base stage - pins the Node/npm versions and installs dependencies
FROM node:20-alpine AS base
WORKDIR /app
COPY package*.json ./
RUN npm ci

# Dev stage - runs the Vite dev server with hot reload
FROM base AS dev
COPY . .
EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]

# Build stage - produces the production bundle in /app/dist
FROM base AS build
COPY . .
RUN npm run build

# Production stage - serves the built assets with nginx
FROM nginx:alpine AS production
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80

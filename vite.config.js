import { defineConfig } from 'vite'

// https://vitejs.dev/config/
export default defineConfig({
  // Use a repo-scoped base path when building on GitHub Actions so the
  // published site works correctly on GitHub Pages (project pages are
  // served from https://<user>.github.io/<repo>/).
  base: process.env.GITHUB_ACTIONS ? '/nojs-radio-select/' : '/',
})

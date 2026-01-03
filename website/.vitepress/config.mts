import { defineConfig } from 'vitepress'

export default defineConfig({
  title: "Apex Consts",
  description: "A structured framework for managing constants in Salesforce Apex",
  base: '/',
  themeConfig: {
    logo: '/logo.png',

    nav: [
      { text: 'Home', link: '/' },
      { text: 'Guide', link: '/getting-started' },
      { text: 'Examples', link: '/examples' }
    ],

    sidebar: [
      {
        text: 'Introduction',
        items: [
          { text: 'Getting Started', link: '/getting-started' },
          { text: 'Installation', link: '/installation' },
          { text: 'How It Works', link: '/how-it-works' }
        ]
      },
      {
        text: 'Usage',
        items: [
          { text: 'Using Constants', link: '/using-constants' },
          { text: 'Creating Custom Constants', link: '/creating-constants' },
          { text: 'Best Practices', link: '/best-practices' }
        ]
      },
      {
        text: 'Built-in Constants',
        items: [
          { text: 'Account', link: '/constants/account' },
          { text: 'Contact', link: '/constants/contact' },
          { text: 'Opportunity', link: '/constants/opportunity' },
          { text: 'Profile', link: '/constants/profile' }
        ]
      },
      {
        text: 'Examples',
        items: [
          { text: 'Basic Examples', link: '/examples' }
        ]
      }
    ],

    socialLinks: [
      { icon: 'github', link: 'https://github.com/beyond-the-cloud-dev/apex-consts' }
    ],

    footer: false,

    search: {
      provider: 'local'
    }
  }
})

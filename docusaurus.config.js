const lightCodeTheme = require('prism-react-renderer').themes.github;
const darkCodeTheme = require('prism-react-renderer').themes.dracula;

/** @type {import('@docusaurus/types').DocusaurusConfig} */
module.exports = {
  title: 'Atomontage Docs',
  tagline: 'Atomontage Tools Documentation',
  url: 'https://atomontagedocs.netlify.app/',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/favicon.ico',
  organizationName: 'AtomontageInc', // Usually your GitHub org/user name.
  projectName: 'atomontage-docs', // Usually your repo name.
  markdown: {
    mermaid: true,
  },
  themes: ['@docusaurus/theme-mermaid'],
  themeConfig: {
    colorMode: {
      defaultMode: 'dark',
    },
    navbar: {
      title: 'Atomontage Documentation',
      hideOnScroll: false,
      logo: {
        alt: 'Atomontage Logo',
        src: 'img/logo_large_light_bg.png',
        srcDark: 'img/logo_large.png',
      },
      items: [

        {
          type: 'docSidebar',
          sidebarId: 'manual',
          position: 'left',
          label: 'Docs',
        },
        {
          type: 'docSidebar',
          sidebarId: 'api',
          position: 'left',
          label: 'API',
        },
        
        /*
        //{to: '/blog', label: 'Blog', position: 'left'},
        {
          href: 'https://github.com/facebook/docusaurus',
          label: 'GitHub',
          position: 'right',
        },
        */
      ],
    },
    footer: {
      style: 'dark',
      links: [
        /*
        {
          title: 'Docs',
          items: [
            {
              label: 'Tutorial',
              to: '/docs/intro',
            },
          ],
        },
        */
        {
          title: 'Social',
          items: [
            {
              label: 'Discord',
              href: 'https://discord.gg/JpaAnchqcw',
            },
            {
              label: 'Twitter',
              href: 'https://twitter.com/atomontage_com',
            },
            {
              label: 'YouTube',
              href: 'https://www.youtube.com/channel/UClzSvcwdGx9v66YRza5u_Mg',
            },
           
          ],
        },
        {
          title: 'More',
          items: [
            /*
            {
              label: 'Blog',
              to: '/blog',
            },
            */
            {
              label: 'Atomontage',
              href: 'https://www.atomontage.com/',
            },
            {
              label: 'GitHub',
              href: 'https://github.com/AtomontageInc/atomontage-docs/tree/master/',
            },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} Atomontage Inc.`,
    },
    prism: {
      theme: lightCodeTheme,
      darkTheme: darkCodeTheme,
      additionalLanguages: ['lua'],
      defaultLanguage: 'lua',
    },
    algolia: {
      // The application ID provided by Algolia
      appId: '94CJLR6WWS',

      // Public API key: it is safe to commit it
      apiKey: 'fde7ef01b2bcbbe49d77a45133814e7e',

      indexName: 'atomontage',

      // Optional: see doc section below
      contextualSearch: true,

      // Optional: Specify domains where the navigation should occur through window.location instead on history.push. Useful when our Algolia config crawls multiple documentation sites and we want to navigate with window.location.href to them.
      externalUrlRegex: 'external\\.com|domain\\.com',

      // Optional: Replace parts of the item URLs from Algolia. Useful when using the same search index for multiple deployments using a different baseUrl. You can use regexp or string in the `from` param. For example: localhost:3000 vs myCompany.com/docs
      replaceSearchResultPathname: {
        from: '/docs/', // or as RegExp: /\/docs\//
        to: '/',
      },

      // Optional: Algolia search parameters
      searchParameters: {},

      // Optional: path for search page that enabled by default (`false` to disable it)
      searchPagePath: 'search',
    },
  },
  presets: [
    [
      '@docusaurus/preset-classic',
      {
        docs: {
          routeBasePath: '/',
          sidebarPath: require.resolve('./sidebars.js'),
          // Please change this to your repo.
          editUrl:
            'https://github.com/AtomontageInc/atomontage-docs/tree/master/',
        },
        blog: {
          showReadingTime: true,
          // Please change this to your repo.
          editUrl:
            'https://github.com/AtomontageInc/atomontage-docs/tree/master/blog/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
        gtag: {
          trackingID: 'G-EK6ZYTTL2R',
          anonymizeIP: true,
        },
      },
    ],
  ],
};

import rss from '@astrojs/rss';

export async function GET(context) {
  const posts = import.meta.glob('./blog/**/*.{md,mdx}', { eager: true });
  const items = Object.values(posts)
    .sort((a, b) => new Date(b.frontmatter.date) - new Date(a.frontmatter.date))
    .map((post) => ({
      title: post.frontmatter.title,
      pubDate: post.frontmatter.date,
      description: post.frontmatter.description || '',
      link: post.url,
    }));

  return rss({
    title: 'Wahooka — AI Orchestrator Field Notes',
    description: 'Field notes from an AI orchestrator running 42 agents in a real business.',
    site: context.site,
    items,
  });
}

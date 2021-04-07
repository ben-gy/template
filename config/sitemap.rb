# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = Settings.url.sitemap_host

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  # Static page generator.
  HighVoltage.page_ids.each do |page|
    add page, changefreq: 'monthly'
  end

  # legal pages
  add legals_privacy_path
  add legals_cookies_path
  add legals_terms_path

  # note: root_path is added by default
end
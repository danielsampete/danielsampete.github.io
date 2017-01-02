module Jekyll

  class WikiPage < Page
    def initialize(site, base, dir, category)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'documentation.html')
      self.data['category'] = category

      category_title_prefix = 'documentation : '
      self.data['title'] = "#{category_title_prefix}#{category}"
    end
  end

  class WikiPageGenerator < Generator
    safe true

    def generate(site)
      print "Came in"
      if site.layouts.key? 'documentation'
        dir = 'gns_wiki'
        site.gns_wiki.each_key do |category|
          site.pages << WikiPage.new(site, site.source, File.join(dir, category), category)
        end
      end
    end
  end

end
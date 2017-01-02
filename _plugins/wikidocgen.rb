module WikiDoc
  class Generator < Jekyll::Generator
    def generate(site)
      reading = site.pages.detect {|page| page.name == 'documentation.html'}
      reading.data['ongoing'] = "TESTING ONGOING"
      print "Came in"
    end
  end
end
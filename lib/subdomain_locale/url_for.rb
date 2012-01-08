module SubdomainLocale
  module UrlFor
    def url_for(options=nil)
      if options and locale = options.delete(:locale)
        options[:subdomain] = Locale.new(locale).subdomain
        options[:only_path] = false
      end

      super
    end
  end
end
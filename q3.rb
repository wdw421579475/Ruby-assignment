class Webfilter
    def initialize(str)
        @template = str
    end
    def filter
        # delete contents from <% to %>
        return @template.gsub(/<%.+?%>/m, '')
    end
end

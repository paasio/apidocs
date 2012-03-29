module Jekyll
  class SortedCategoriesBuilder < Generator

    safe true
    priority :high

    def generate(site)
      site.config['sorted_categories'] = site.categories.map do |cat, posts|
        [ cat, posts.size, posts.sort { |a,b| a.data['title'] <=> b.data['title'] } ]
      end.sort { |a,b| a[0] <=> b[0] }
    end

  end
end

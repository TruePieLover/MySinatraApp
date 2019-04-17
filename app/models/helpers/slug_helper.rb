module Slugifiable
    def slug
      if self.class == User
        self.username.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
      elsif self.class == Game
        self.game.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '') + "-" + self.jacket_type.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
      elsif self.class == Review
        self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
      elsif self.class == Release
        self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
      end
    end
    def find_by_slug(slug)
      self.all.detect do |item|
        item.slug == slug
      end
    end
end
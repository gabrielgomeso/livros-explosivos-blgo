module TagsHelper
  def find_tag_by_name(tag)
    Tag.find_by_name(tag).id
  end

  def most_used_tags
    Tag.order("taggings_count asc").last(10)
  end
end

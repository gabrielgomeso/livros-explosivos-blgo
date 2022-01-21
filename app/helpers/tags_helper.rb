module TagsHelper
  def find_tag_by_name(tag)
    Tag.find_by_name(tag).id
  end
end

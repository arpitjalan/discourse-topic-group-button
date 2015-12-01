# name: discourse-topic-group-button
# about: adds a custom button at the bottom of a topic, visible only to staff or members of a specific group
# version: 0.1
# authors: Robin Ward, Arpit Jalan

after_initialize do
  add_to_serializer(:current_user, :can_see_topic_group_button?) do
    return true if scope.is_staff?
    group = Group.find_by("lower(name) = ?", SiteSetting.topic_group_button_allowed_group.downcase)
    group_user = GroupUser.find_by(user_id: scope.user.id, group_id: group.id)
    return true if group_user && group_user.id
  end
end

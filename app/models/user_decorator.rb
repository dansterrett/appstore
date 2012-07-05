User.class_eval do
  attr_accessible :first_name, :last_name
  
  def belongs_to_org?(organization)
    org_ids = self.organizations.map { |org| org.id }
    return org_ids.include?(organization.id)
  end
end
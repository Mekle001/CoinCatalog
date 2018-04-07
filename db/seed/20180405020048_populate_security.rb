class PopulateSecurity < ActiveRecord::SeedMigration
  
  def self.up

    @adminrole = Role.where(name: "Site Admin").first
    @contributor = Role.where(name: "Coin Contributor").first

    @adminrole.privileges.concat Privilege.all
    
    @contributor.privileges.concat Privilege.where(name: "Add Coin").first
    @contributor.privileges.concat Privilege.where(name: "Edit Coin").first
    @contributor.privileges.concat Privilege.where(name: "Add Edition").first
    @contributor.privileges.concat Privilege.where(name: "Edit Edition").first
    @contributor.save

    @adminuser = User.where(name: "Mike Garlick").first
    @adminuser.roles.concat @adminrole
    @adminuser.save
  end
  
end
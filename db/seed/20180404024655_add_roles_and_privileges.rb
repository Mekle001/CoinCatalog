class AddRolesAndPrivileges < ActiveRecord::SeedMigration
  
  def self.up
    Role.create([ 
      { name: "Site Admin"},
      { name: "Coin Contributor"},
      { name: "Collection Owner"}
    ])

    Privilege.create ([
      { name: "Add User", shortname: "AUSR"},
      { name: "View User Details", shortname: "VUSR"},
      { name: "Edit Users", shortname: "EUSR"},
      { name: "Delete Users", shortname: "DUSR"},
      { name: "Modify User Roles", shortname: "MURL"},
      { name: "Modify Role Privileges", shortname: "MROP"},
      { name: "Add Coin", shortname: "ACON"},
      { name: "Edit Coin", shortname: "ECON"},
      { name: "Delete Coin", shortname: "DCON"},
      { name: "Add Edition", shortname: "AEDT"},
      { name: "Edit Edition", shortname: "EEDT"},
      { name: "Delete Edition", shortname: "DEDT"},
      { name: "Add Lookup", shortname: "ALKP"},
      { name: "Edit Lookup", shortname: "ELKP"},
      { name: "Delete Lookup", shortname: "DLKP"}
    ])
  end
  
end
#----------------------------------------------------------
# Public - Storage Account 1 - "East US2"
#----------------------------------------------------------
data "azurerm_user_assigned_identity" "example" {
  name                = "private-dspmdemo-user"
  resource_group_name = "rgsql-001"
}
 
module "sa_east_us_2" {
  source = "../"

  resource_group_name = "rgsql-001"
  location            = "East US2"

  storageaccount = {
    name                              = "safemarchpubpii01"
    account_tier                      = "Standard"
    account_replication_type          = "GRS"
    https_traffic_only_enabled         = true
    is_hns_enabled                    = true
    nfsv3_enabled                     = false
    infrastructure_encryption_enabled = false
    public_network_access_enabled     = true
    account_kind                      = "BlockBlobStorage"
    access_tier                       = "Hot"
    index_document                    = "index.html"
    identity_type                     = "UserAssigned"
    identity_ids                      = [data.azurerm_user_assigned_identity.example.id]
  }
  storagecontioner = {
    container1 = {
      name                  = "appcontainer"
      container_access_type = "blob"
    },
    container2 = {
      name                  = "dbcontainer"
      container_access_type = "private"
    }
  }
  customer_managed_key = {
    enabled = false
  }

  enable_sftp = true

  tags         = local.tags
  org_name     = "Safemarch"
  project_name = "demo"
  env          = "prod"
  region       = "east-us"
}

#----------------------------------------------------------
# Public - Storage Account 1 - "Central US"
#----------------------------------------------------------
 
module "sa_central_us" {
  source = "../"

  resource_group_name = "rgsql-001"
  location            = "Central US"

  storageaccount = {
    name                              = "safemarchpubpii02"
    account_tier                      = "Standard"
    account_replication_type          = "GRS"
    https_traffic_only_enabled         = true
    is_hns_enabled                    = true
    nfsv3_enabled                     = false
    infrastructure_encryption_enabled = false
    public_network_access_enabled     = true
    account_kind                      = "BlockBlobStorage"
    access_tier                       = "Hot"
    index_document                    = "index.html"
    identity_type                     = "UserAssigned"
    identity_ids                      = [data.azurerm_user_assigned_identity.example.id]
  }
  storagecontioner = {
    container1 = {
      name                  = "appcontainer"
      container_access_type = "blob"
    },
    container2 = {
      name                  = "dbcontainer"
      container_access_type = "private"
    }
  }
  customer_managed_key = {
    enabled = false
  }

  enable_sftp = true

  tags         = local.tags
  org_name     = "Safemarch"
  project_name = "demo"
  env          = "prod"
  region       = "east-us"
}

#----------------------------------------------------------
# Public - Storage Account 1 - "West US2"
#----------------------------------------------------------
 
module "sa_west_us2" {
  source = "../"

  resource_group_name = "rgsql-001"
  location            = "West US2"

  storageaccount = {
    name                              = "safemarchpubpii03"
    account_tier                      = "Standard"
    account_replication_type          = "GRS"
    https_traffic_only_enabled         = true
    is_hns_enabled                    = true
    nfsv3_enabled                     = false
    infrastructure_encryption_enabled = false
    public_network_access_enabled     = true
    account_kind                      = "BlockBlobStorage"
    access_tier                       = "Hot"
    index_document                    = "index.html"
    identity_type                     = "UserAssigned"
    identity_ids                      = [data.azurerm_user_assigned_identity.example.id]
  }
  storagecontioner = {
    container1 = {
      name                  = "appcontainer"
      container_access_type = "blob"
    },
    container2 = {
      name                  = "dbcontainer"
      container_access_type = "private"
    }
  }
  customer_managed_key = {
    enabled = false
  }

  enable_sftp = true

  tags         = local.tags
  org_name     = "Safemarch"
  project_name = "demo"
  env          = "prod"
  region       = "east-us"
}
#----------------------------------------------------------
# Public - Storage Account 1 - "West US3"
#----------------------------------------------------------
 
module "sa_west_us3" {
  source = "../"

  resource_group_name = "rgsql-001"
  location            = "West US3"

  storageaccount = {
    name                              = "safemarchpubpii04"
    account_tier                      = "Standard"
    account_replication_type          = "GRS"
    https_traffic_only_enabled         = true
    is_hns_enabled                    = true
    nfsv3_enabled                     = false
    infrastructure_encryption_enabled = false
    public_network_access_enabled     = true
    account_kind                      = "BlockBlobStorage"
    access_tier                       = "Hot"
    index_document                    = "index.html"
    identity_type                     = "UserAssigned"
    identity_ids                      = [data.azurerm_user_assigned_identity.example.id]
  }
  storagecontioner = {
    container1 = {
      name                  = "appcontainer"
      container_access_type = "blob"
    },
    container2 = {
      name                  = "dbcontainer"
      container_access_type = "private"
    }
  }
  customer_managed_key = {
    enabled = false
  }

  enable_sftp = true

  tags         = local.tags
  org_name     = "Safemarch"
  project_name = "demo"
  env          = "prod"
  region       = "east-us"
}

#----------------------------------------------------------
# Public - Storage Account 1 - "Germany West Central"
#----------------------------------------------------------
 
module "sa_germany_west_central" {
  source = "../"

  resource_group_name = "rgsql-001"
  location            = "Germany West Central"

  storageaccount = {
    name                              = "safemarchpubpii05"
    account_tier                      = "Standard"
    account_replication_type          = "GRS"
    https_traffic_only_enabled         = true
    is_hns_enabled                    = true
    nfsv3_enabled                     = false
    infrastructure_encryption_enabled = false
    public_network_access_enabled     = true
    account_kind                      = "BlockBlobStorage"
    access_tier                       = "Hot"
    index_document                    = "index.html"
    identity_type                     = "UserAssigned"
    identity_ids                      = [data.azurerm_user_assigned_identity.example.id]
  }
  storagecontioner = {
    container1 = {
      name                  = "appcontainer"
      container_access_type = "blob"
    },
    container2 = {
      name                  = "dbcontainer"
      container_access_type = "private"
    }
  }
  customer_managed_key = {
    enabled = false
  }

  enable_sftp = true

  tags         = local.tags
  org_name     = "Safemarch"
  project_name = "demo"
  env          = "prod"
  region       = "east-us"
}

#----------------------------------------------------------
# Public - Storage Account 1 - "UK South"
#----------------------------------------------------------
 
module "sa_uk_south" {
  source = "../"

  resource_group_name = "rgsql-001"
  location            = "UK South"

  storageaccount = {
    name                              = "safemarchpubpii06"
    account_tier                      = "Standard"
    account_replication_type          = "GRS"
    https_traffic_only_enabled         = true
    is_hns_enabled                    = true
    nfsv3_enabled                     = false
    infrastructure_encryption_enabled = false
    public_network_access_enabled     = true
    account_kind                      = "BlockBlobStorage"
    access_tier                       = "Hot"
    index_document                    = "index.html"
    identity_type                     = "UserAssigned"
    identity_ids                      = [data.azurerm_user_assigned_identity.example.id]
  }
  storagecontioner = {
    container1 = {
      name                  = "appcontainer"
      container_access_type = "blob"
    },
    container2 = {
      name                  = "dbcontainer"
      container_access_type = "private"
    }
  }
  customer_managed_key = {
    enabled = false
  }

  enable_sftp = true

  tags         = local.tags
  org_name     = "Safemarch"
  project_name = "demo"
  env          = "prod"
  region       = "east-us"
}

#----------------------------------------------------------
# Public - Storage Account 1 - "South India"
#----------------------------------------------------------
 
module "sa_south_india" {
  source = "../"

  resource_group_name = "rgsql-001"
  location            = "South India"

  storageaccount = {
    name                              = "safemarchpubpii07"
    account_tier                      = "Standard"
    account_replication_type          = "GRS"
    https_traffic_only_enabled         = true
    is_hns_enabled                    = true
    nfsv3_enabled                     = false
    infrastructure_encryption_enabled = false
    public_network_access_enabled     = true
    account_kind                      = "BlockBlobStorage"
    access_tier                       = "Hot"
    index_document                    = "index.html"
    identity_type                     = "UserAssigned"
    identity_ids                      = [data.azurerm_user_assigned_identity.example.id]
  }
  storagecontioner = {
    container1 = {
      name                  = "appcontainer"
      container_access_type = "blob"
    },
    container2 = {
      name                  = "dbcontainer"
      container_access_type = "private"
    }
  }
  customer_managed_key = {
    enabled = false
  }

  enable_sftp = true

  tags         = local.tags
  org_name     = "Safemarch"
  project_name = "demo"
  env          = "prod"
  region       = "east-us"
}

#----------------------------------------------------------
# Public - Storage Account 1 - "Australia East"
#----------------------------------------------------------
 
module "sa_australia_east" {
  source = "../"

  resource_group_name = "rgsql-001"
  location            = "Australia East"

  storageaccount = {
    name                              = "safemarchpubpii08"
    account_tier                      = "Standard"
    account_replication_type          = "GRS"
    https_traffic_only_enabled         = true
    is_hns_enabled                    = true
    nfsv3_enabled                     = false
    infrastructure_encryption_enabled = false
    public_network_access_enabled     = true
    account_kind                      = "BlockBlobStorage"
    access_tier                       = "Hot"
    index_document                    = "index.html"
    identity_type                     = "UserAssigned"
    identity_ids                      = [data.azurerm_user_assigned_identity.example.id]
  }
  storagecontioner = {
    container1 = {
      name                  = "appcontainer"
      container_access_type = "blob"
    },
    container2 = {
      name                  = "dbcontainer"
      container_access_type = "private"
    }
  }
  customer_managed_key = {
    enabled = false
  }

  enable_sftp = true

  tags         = local.tags
  org_name     = "Safemarch"
  project_name = "demo"
  env          = "prod"
  region       = "east-us"
}

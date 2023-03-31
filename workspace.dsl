workspace "Scry" "Scry overview" {

    model {
        publicUser = person "Business User" "A regular human."
        adminUser = person "Admin User" "An irregular business human."

        scrySystem = softwareSystem "Scry" "Guesses your personality." "Scry"  {
            !docs docs
            !adrs adrs
        }

        centralMonitoringService = softwareSystem "Datadog?" "Decision to be made"
        keycloak = softwareSystem "Active Directory" "The bank's authentication and authorisation system."

        publicUser -> scrySystem "Views reports using"
        adminUser -> scrySystem "Configures parameters using"
        scrySystem -> centralMonitoringService "Monitors things"
        scrySystem -> keycloak "Uses for user authn and authz"
    }
         
    views {

        systemContext scrySystem "Overview" "An overview of the systems in Scry." {
            include *
            autoLayout
        }

        styles {
            element "Element" {
                color #ffffff
            }
            element "Software System" {
                background #801515
                shape RoundedBox
            }
            element "Person" {
                background #d46a6a
                shape Person
            }
            relationship "Relationship" {
                dashed false
            }
            relationship "Asynchronous" {
                dashed true
            }
       }

    }
}
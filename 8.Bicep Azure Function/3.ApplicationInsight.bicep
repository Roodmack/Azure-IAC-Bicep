
param pAppInsightsName string
param location string





resource appInsights 'Microsoft.Insights/components@2020-02-02' = {
  name: pAppInsightsName
  location: location
  kind: 'web'
  properties: {
    Application_Type: 'web'
  }

}

output appInsightsKey string = appInsights.properties.InstrumentationKey

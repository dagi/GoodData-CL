CreateProject(name=GA);
#GenerateGoogleAnalyticsConfigTemplate(name=GA,configFile=examples/ga/ga.config.xml,dimensions=ga:date|ga:browser|ga:browserVersion|ga:country|ga:isMobile,metrics=ga:bounces|ga:newVisits|ga:pageViews|ga:visits);
LoadGoogleAnalytics(configFile=examples/ga/ga.config.xml,username=gdc.bot@gmail.com,password=thaioishi,profileId=ga:7468896,dimensions=ga:date|ga:browser|ga:browserVersion|ga:country|ga:isMobile,metrics=ga:bounces|ga:newVisits|ga:pageViews|ga:visits,startDate=2009-01-01,endDate=2010-05-31);
GenerateMaql(maqlFile=examples/ga/ga.maql);
ExecuteMaql(maqlFile=examples/ga/ga.maql);
TransferLastSnapshot(incremental=true);
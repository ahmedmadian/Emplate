# Emplate Task

This demo for iOS developer vacancy in CrossWorkers

## About This Task

It is a simple app which fetches data from a remote data source - EmplateAPI - and display them in a TableView, data will be loaded immedialty after the app launch, also user have the luxuary to pull tableview down to refresh fetched data.

### Used Architecture

Clean Architecture with MVVM + Coordinator

### Dependency Graph

The App originally consists of 3 tiers: <br />

**UI -** Responsible for represnting data on screen and handle presentation logic, MVVM design pattern used in this layer <br />
**Domain -** Responible for handling App business logic <br />
**Persistent -** Responible for data saving and retriving from/to data stores <br />


### Third Party Libraries

**Alamofire -** for network requests. <br />
**kingFisher -** for downloading images.

### Remote Data Source

Emplate API

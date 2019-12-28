# Emplate Task

This demo for iOS developer vacancy in CrossWorkers.

## About This Task

It is a simple app which fetches data from a remote data source - EmplateAPI - and display them in a TableView, data will be loaded immedialty after the app launch, also user have the luxuary to pull TableView down to refresh fetched data.

### Used Architecture

Clean Architecture with MVVM + Coordinator.

### Dependency Graph

The App originally consists of 3 tiers: <br />

**UI -** Responsible for representing data on screen and handle presentation logic, MVVM design pattern used in this layer. <br />**Domain -** Responsible for handling App business logic. <br />
**Persistent -** Responsible for data saving and retrieving from/to data stores. <br />

Every inner layer doesn't know anything about the outer layer. <br />

**(Protocols)** used to establish a pipeline from inner layers to outer layers, to inform outer layers about the changes in inner layers.

### Third Party Libraries

**Alamofire -** for network requests. <br />
**kingFisher -** for downloading images.

### Remote Data Source

Emplate API.

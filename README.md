# ViperSample
An example Github search user's repositories app written in Swift using the VIPER architecture.

## VIPER Introduction
**VIPER (View Interactor Presenter Entity Router)** is an architecture which, among other things, aims at solving the common Massive View Controller problem in iOS apps.

## VIPER Components
* **View**: contains UI logic and knows how to layout and animate itself. It displays what it's told by the Presenter and it delegates user interaction actions to the Presenter. Ideally it contains no business logic, only view logic.

* **Interactor**: used for fetching data when requested by the Presenter, regardless of where the data is coming from. Contains only business logic.

* **Presenter**: prepares the content which it receives from the Interactor to be presented by the View. Contains business and view logic - basically it connects the two.

* **Entity**: models which are handled by the Interactor. Contains only business logic, but primarily data, not rules.

* **Router(Wireframe)**: handles navigation logic. In our case we use components called Wireframes for this responsibility.


The following pictures shows relationships and communication for one module.

![iOS VIPER GRAPH](/Images/ios_viper_graph.png "iOS VIPER GRAPH")

## Features
- [x] Viper Architecture
- [ ] use rxswift

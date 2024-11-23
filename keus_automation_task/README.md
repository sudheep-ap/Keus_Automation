# keus_automation_task

This Flutter project has been developed following clean architecture principles, ensuring a clear separation of concerns across the following layers:

Domain Layer: Encapsulates core business logic and entities.
Data Layer: Manages data sources and repositories.
Presentation Layer: Handles the user interface and state management.

Utilized Bloc for state management, leveraging Bloc events and states along with freezed for handling immutable states. For instance, the product_detail_content.dart file implements quantity control for products using this approach.

Integrated get_it for managing and injecting dependencies throughout the project.
The majority of the implementation is centered around building the user interface.


You can run the project by cloning this repository and following the standard Flutter 

git clone https://github.com/sudheep-ap/Keus_Automation.git
cd keus_automation task
flutter pub get
flutter run

Additional Notes:
Please note that, I was out of town and only had limited access to my system, dedicating about 2 to 3 hours daily for three days to complete the implementation.

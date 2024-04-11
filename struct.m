% Define a struct with fields
person.name = 'John Doe';
person.age = 30;
person.gender = 'Male';

% Display the struct
disp(person);

% Accessing struct fields
fprintf('Name: %s\n', person.name);
fprintf('Age: %d\n', person.age);
fprintf('Gender: %s\n', person.gender);

% Modifying struct fields
person.age = 35;
person.gender = 'Female';

% Display the modified struct
disp(person);

% Define a nested struct
address.street = '123 Main St';
address.city = 'Anytown';
address.zipcode = '12345';

person.address = address;

% Display the nested struct
disp(person);

% Define an array of structs
people(1).name = 'Alice';
people(1).age = 25;
people(2).name = 'Bob';
people(2).age = 28;

% Display the array of structs
disp(people);

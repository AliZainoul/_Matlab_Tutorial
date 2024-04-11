% Define a struct with fields
person1.name = 'John Doe';
person1.age = 30;
person1.gender = 'Male';

% Accessing struct fields
fprintf('Name: %s\n', person1.name);
fprintf('Age: %d\n', person1.age);
fprintf('Gender: %s\n', person1.gender);

% Display the struct
% disp(person1);

% Modifying struct fields
person1.age = 35;
person1.gender = 'Female';

% Display the struct
disp(person1);

% Define a nested struct
address1.street = '123 Main St';
address1.city = 'Anytown';
address1.zipcode = '12345';

person1.address = address1;

% Display the nested struct
disp(person1);

person2 = struct("name",'Ali ZAINOUL', "age", 30, "gender", 'Male')
disp(person2);
% Define a nested struct
address2.street = 't';
address2.city = 'Casablanca';
address2.zipcode = '123456';
person2.address = address2;


arrayTable = table(person1, person2);

for i = 1 : width(arrayTable)
    disp(arrayTable.("person"+num2str(i)).name)
    disp(arrayTable.("person"+num2str(i)).age)
    disp(arrayTable.("person"+num2str(i)).gender)
    disp(arrayTable.("person"+num2str(i)).address)
end

INSERT INTO users (fullname, email, password) VALUES ('Muhammad Hilal Abyan', 'lalalal@gmail.com', 'lalalal');

INSERT INTO course (title, description) VALUES ('Introduction to Java', 'The Introduction to Java course is designed to provide learners with a comprehensive foundation in Java programming. Throughout this course, you will explore the fundamental concepts of Java, including syntax, basic programming constructs, and object-oriented principles. By the end of the course, participants will have the skills necessary to develop simple Java applications and understand the core architecture of the Java platform. This course serves as an essential stepping stone for those aiming to pursue advanced Java topics and real-world application development');
INSERT INTO course (title, description) VALUES ('Advanced Java', 'The "Advanced Java" course delves deeper into the intricacies of Java programming, building upon the foundational knowledge acquired in introductory courses. This course covers advanced topics such as multithreading, Java Collections Framework, Java Streams API, and concurrency management. Participants will engage in hands-on projects that involve developing complex applications, optimizing performance, and ensuring thread safety. By the conclusion of this course, learners will be adept at handling sophisticated Java programming challenges and implementing best practices in software development.');
INSERT INTO course (title, description) VALUES ('Data Science', 'The "Data Science" course offers an in-depth exploration into the field of data science and machine learning using Python. This comprehensive program covers essential topics such as data manipulation with Pandas, data visualization, statistical analysis, and the fundamentals of machine learning algorithms. Through a combination of theoretical lessons and practical projects, participants will learn how to extract meaningful insights from data, build predictive models, and apply machine learning techniques to solve real-world problems. This course is ideal for individuals seeking to transition into data-centric roles or enhance their analytical skills.');

------ Modules for 'Introduction to Java' (courseId = 1)
INSERT INTO modules (title, description, content, course_id) VALUES ('Java Basics', 'The "Java Basics" module introduces learners to the essential syntax and structure of the Java programming language. This module covers fundamental topics such as variables, data types, operators, control flow statements, and basic input/output operations. By mastering these basics, participants will be well-equipped to write simple Java programs and understand the foundational elements that underpin more complex applications.', 'Java is a versatile and powerful programming language widely used in various domains, from web development to mobile applications. In this module, you will begin by setting up your Java development environment and writing your first "Hello, World!" program. We will then explore the different data types available in Java, including primitive types and objects, and how to use them effectively in your code. Understanding control flow is crucial for creating dynamic and responsive applications. This section delves into decision-making constructs like if-else statements and switch cases, as well as looping mechanisms such as for, while, and do-while loops. You will learn how to control the execution flow of your programs to perform repetitive tasks and make decisions based on varying conditions. Finally, this module covers basic input and output operations, enabling your programs to interact with users and handle data. You will practice reading input from the console and displaying output, laying the groundwork for more advanced topics in subsequent modules.', 1);
INSERT INTO modules (title, description, content, course_id) VALUES ('OOP in Java', 'The "OOP in Java" module focuses on Object-Oriented Programming principles within the Java language. This module covers key concepts such as classes, objects, inheritance, polymorphism, encapsulation, and abstraction. Through practical examples and projects, learners will understand how to design and implement robust, reusable, and maintainable code using OOP methodologies.', 'Object-Oriented Programming (OOP) is a paradigm that enables developers to create modular and organized code by encapsulating data and behaviors within objects. In this section, we will explore how to define classes and instantiate objects in Java. You will learn about constructors, methods, and the significance of the `this` keyword in object manipulation. Inheritance allows for hierarchical class structures, promoting code reuse and reducing redundancy. We will examine how to extend classes, override methods, and utilize the `super` keyword to access parent class functionalities. This part of the module emphasizes designing class hierarchies that reflect real-world relationships and promote scalability. Polymorphism and encapsulation are essential for creating flexible and secure applications. You will understand how polymorphism enables objects to be treated as instances of their parent class, facilitating dynamic method binding. Encapsulation ensures that the internal state of objects is protected from unauthorized access, promoting data integrity and security within your applications', 1);
INSERT INTO modules (title, description, content, course_id) VALUES ('Java Data Structures', 'The "Java Data Structures" module introduces learners to various data structures implemented in Java. This module covers arrays, linked lists, stacks, queues, hash tables, and trees. By understanding these data structures, participants will be able to select and implement the most appropriate structure for solving specific programming challenges, enhancing the efficiency and performance of their applications.', 'Data structures are fundamental for organizing and managing data efficiently in software applications. This section begins with arrays, exploring their static nature and how to perform operations such as traversal, insertion, and deletion. We will also cover multi-dimensional arrays and their applications in handling complex data scenarios. Linked lists offer a dynamic alternative to arrays, allowing for efficient insertions and deletions. You will learn about singly linked lists, doubly linked lists, and circular linked lists, understanding their respective advantages and use cases. Practical exercises will involve implementing these structures and performing common operations. Advanced data structures like stacks and queues are essential for specific algorithmic problems. This part of the module delves into the implementation and application of stacks for tasks such as expression evaluation and queues for handling sequential data processing. Additionally, we will touch upon hash tables and trees, setting the stage for more advanced topics in data management and algorithm design.', 1);

-- Modules for 'Advanced Java' (courseId = 2)
INSERT INTO modules (title, description, content, course_id) VALUES ('Java Collections', 'The "Java Collections" module provides an in-depth understanding of the Java Collections Framework. This module covers various collection interfaces, classes, and algorithms that facilitate efficient data storage and manipulation. Learners will explore lists, sets, maps, and queues, gaining the skills to select and utilize the appropriate collection types for different programming needs.', 'The Java Collections Framework is a unified architecture for representing and manipulating collections of objects. In this section, we will explore the core interfaces such as `List`, `Set`, `Map`, and `Queue`, understanding their unique characteristics and use cases. You will learn how to implement these interfaces using classes like `ArrayList`, `HashSet`, `HashMap`, and `PriorityQueue`. Understanding the underlying mechanisms of collections is crucial for writing optimized code. We will delve into topics such as iteration, searching, sorting, and concurrent access, utilizing the built-in algorithms provided by the framework. Practical examples will demonstrate how to leverage collections to handle real-world data scenarios effectively. Advanced topics include generics and custom implementations of collection interfaces. You will learn how to create type-safe collections using generics and develop your own collection classes tailored to specific application requirements. This part of the module emphasizes best practices for using the Collections Framework to enhance code readability, maintainability, and performance.', 2);
INSERT INTO modules (title, description, content, course_id) VALUES ('Java Streams', 'The "Java Streams" module introduces the Java Streams API, enabling developers to perform functional-style operations on collections of data. This module covers stream creation, intermediate and terminal operations, and parallel stream processing. Learners will gain the ability to write concise and efficient data processing pipelines, enhancing the expressiveness and performance of their Java applications.', 'The Java Streams API provides a powerful toolset for processing sequences of elements in a declarative manner. In this section, we will explore various ways to create streams from collections, arrays, and other data sources. You will learn about the differences between sequential and parallel streams, and how to choose the appropriate type based on performance considerations. Intermediate operations such as `filter`, `map`, `sorted`, and `distinct` allow for the transformation and manipulation of data streams. You will practice chaining these operations to build complex data processing pipelines that are both readable and efficient. Understanding lazy evaluation and how streams handle data on-demand will be emphasized to optimize resource utilization. Terminal operations like `collect`, `forEach`, `reduce`, and `count` trigger the execution of the stream pipeline and produce results. We will also cover collectors and how to use them to gather results into various collection types. Additionally, this section will address error handling and best practices for writing robust stream-based code, ensuring that your applications are both performant and maintainable.', 2);
INSERT INTO modules (title, description, content, course_id) VALUES ('Concurrency in Java', 'The "Concurrency in Java" module delves into advanced concepts of multithreading and concurrent programming in Java. This module covers thread management, synchronization, concurrent collections, and the Java Concurrency Utilities. Learners will acquire the skills to design and implement thread-safe applications, effectively managing resources and ensuring high performance in multi-threaded environments.', 'Concurrency is essential for developing applications that can perform multiple tasks simultaneously, enhancing responsiveness and performance. In this section, we will cover the basics of thread creation and management in Java, including the use of the `Thread` class and the `Runnable` interface. You will learn how to control thread execution and lifecycle, ensuring efficient utilization of system resources. Synchronization is critical for preventing race conditions and ensuring data consistency in multi-threaded applications. We will explore various synchronization mechanisms such as `synchronized` blocks, locks, and volatile variables. You will practice implementing thread-safe methods and understanding the implications of different synchronization strategies on application performance. The Java Concurrency Utilities provide high-level abstractions for managing concurrent tasks. This part of the module introduces classes like `ExecutorService`, `Future`, `Callable`, and concurrent collections such as `ConcurrentHashMap` and `BlockingQueue`. You will learn how to leverage these utilities to build scalable and robust concurrent applications, handling complex synchronization scenarios with ease.', 2);

-- Modules for 'Data Science' (courseId = 3)
INSERT INTO modules (title, description, content, course_id) VALUES ('Introduction to Python', 'The "Introduction to Python" module offers a comprehensive overview of Python programming for beginners. This module covers Python syntax, basic programming constructs, and essential libraries. Learners will develop a strong foundation in Python, enabling them to write efficient scripts and understand the core principles that make Python a versatile language for various applications.', 'Python is renowned for its simplicity and readability, making it an ideal language for both beginners and experienced programmers. In this section, we will start by setting up your Python development environment and writing your first Python script. You will learn about Python''s syntax, including indentation, variables, data types, and basic operators, which are fundamental for writing clean and effective code. Control flow statements such as if-else conditions, loops, and comprehensions will be explored to manage the execution flow of your programs. You will practice writing functions to encapsulate reusable code and understand the importance of modular programming. Additionally, this section introduces exception handling, allowing your programs to gracefully handle errors and unexpected situations. Beyond basic programming, we will delve into essential Python libraries that are pivotal for data science and machine learning. Libraries such as NumPy for numerical computations, Pandas for data manipulation, and Matplotlib for data visualization will be introduced. By the end of this module, you will have the skills to write Python scripts that perform complex data operations and visualize results effectively', 3);
INSERT INTO modules (title, description, content, course_id) VALUES ('Data Analysis with Pandas', 'The "Data Analysis with Pandas" module focuses on leveraging the Pandas library for effective data manipulation and analysis. This module covers data structures like Series and DataFrame, data cleaning techniques, and advanced data operations. Learners will gain the ability to transform raw data into meaningful insights, preparing them for more sophisticated data science tasks.', 'Pandas is a powerful Python library designed for data manipulation and analysis. In this section, we will explore the fundamental data structures provided by Pandas, namely Series and DataFrame. You will learn how to create, index, and manipulate these structures to efficiently handle large datasets. Operations such as merging, joining, and reshaping data will be covered to facilitate complex data transformations. Data cleaning is a critical step in the data analysis pipeline. We will delve into techniques for handling missing values, removing duplicates, and correcting data inconsistencies. You will practice using Pandas functions like `dropna()`, `fillna()`, and `replace()` to prepare your data for analysis. Additionally, this section will cover data type conversions and categorical data handling to ensure data integrity. Advanced data operations will be introduced, including grouping, aggregation, and pivoting. You will learn how to summarize and extract meaningful patterns from your data using functions like `groupby()`, `agg()`, and `pivot_table()`. Visualization tools within Pandas and integration with Matplotlib will be utilized to create insightful plots and charts, enabling you to communicate your data findings effectively', 3);
INSERT INTO modules (title, description, content, course_id) VALUES ('Machine Learning Basics', 'The "Machine Learning Basics" module provides an introduction to the fundamental concepts and algorithms of machine learning. This module covers supervised and unsupervised learning, key algorithms, model evaluation techniques, and practical implementation using Python libraries. Learners will develop the skills to build and evaluate simple machine learning models, laying the groundwork for more advanced studies in the field.', 'Machine Learning (ML) is a subset of artificial intelligence that focuses on enabling computers to learn from data and make decisions without explicit programming. In this section, we will define key terms and concepts such as training data, features, labels, and model evaluation. You will gain an understanding of the differences between supervised and unsupervised learning, and when to apply each approach. Supervised learning involves training models on labeled data to make predictions or classifications. We will explore essential algorithms such as Linear Regression, Logistic Regression, Decision Trees, and Support Vector Machines (SVM). Practical exercises will guide you through implementing these algorithms using Python libraries like scikit-learn, allowing you to build predictive models based on real-world datasets. Unsupervised learning focuses on identifying hidden patterns or structures within unlabeled data. Topics such as clustering with K-Means and hierarchical clustering, as well as dimensionality reduction techniques like Principal Component Analysis (PCA), will be covered. Additionally, this section will introduce model evaluation metrics for both supervised and unsupervised learning, ensuring you can assess the performance and effectiveness of your machine learning models accurately.', 3);

INSERT INTO quiz (reward_point, module_id) VALUES (10, 1);
INSERT INTO quiz (reward_point, module_id) VALUES (15, 2);
INSERT INTO quiz (reward_point, module_id) VALUES (20, 3);
INSERT INTO quiz (reward_point, module_id) VALUES (25, 4);
INSERT INTO quiz (reward_point, module_id) VALUES (30, 5);
INSERT INTO quiz (reward_point, module_id) VALUES (35, 6);
INSERT INTO quiz (reward_point, module_id) VALUES (40, 7);
INSERT INTO quiz (reward_point, module_id) VALUES (45, 8);
INSERT INTO quiz (reward_point, module_id) VALUES (50, 9);

-- Insert Single Choice and Multiple Choice Questions
-- Java Basics Quiz Questions (QuizId = 1)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (1, 'SINGLE_CHOICE', 'What is the correct way to define a main method in Java?');
INSERT INTO options (question_id, options) VALUES (1, 'public static void main(String[] args)');
INSERT INTO options (question_id, options) VALUES (1, 'static public void main(String args[])');
INSERT INTO options (question_id, options) VALUES (1, 'public void static main(String args[])');
INSERT INTO options (question_id, options) VALUES (1, 'void static main(String[] args)');
INSERT INTO correct_answers (question_id, correct_answer) values (1, 'public static void main(String[] args)');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (1, 'SINGLE_CHOICE', 'Which data type is used to create a variable that should store text?');
INSERT INTO options (question_id, options) VALUES (2, 'int');
INSERT INTO options (question_id, options) VALUES (2, 'float');
INSERT INTO options (question_id, options) VALUES (2, 'String');
INSERT INTO options (question_id, options) VALUES (2, 'boolean');
INSERT INTO correct_answers (question_id, correct_answer) values (2, 'String');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (1, 'MULTIPLE_CHOICE', 'Which of the following are valid Java keywords?');
INSERT INTO options (question_id, options) VALUES (3, 'class');
INSERT INTO options (question_id, options) VALUES (3, 'public');
INSERT INTO options (question_id, options) VALUES (3, 'inherit');
INSERT INTO options (question_id, options) VALUES (3, 'void');
INSERT INTO correct_answers (question_id, correct_answer) values (3, 'class');
INSERT INTO correct_answers (question_id, correct_answer) values (3, 'public');
INSERT INTO correct_answers (question_id, correct_answer) values (3, 'void');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (1, 'MULTIPLE_CHOICE', 'Which of the following are primitive data types in Java?');
INSERT INTO options (question_id, options) VALUES (4, 'int');
INSERT INTO options (question_id, options) VALUES (4, 'String');
INSERT INTO options (question_id, options) VALUES (4, 'double');
INSERT INTO options (question_id, options) VALUES (4, 'float');
INSERT iNTO correct_answers (question_id, correct_answer) values (4, 'int');
INSERT iNTO correct_answers (question_id, correct_answer) values (4, 'double');
INSERT iNTO correct_answers (question_id, correct_answer) values (4, 'float');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (1, 'MULTIPLE_CHOICE', 'Select all valid access modifiers in Java:');
INSERT INTO options (question_id, options) VALUES (5, 'public');
INSERT INTO options (question_id, options) VALUES (5, 'private');
INSERT INTO options (question_id, options) VALUES (5, 'protected');
INSERT INTO options (question_id, options) VALUES (5, 'internal');
INSERT iNTO correct_answers (question_id, correct_answer) values (5, 'public');
INSERT iNTO correct_answers (question_id, correct_answer) values (5, 'private');
INSERT iNTO correct_answers (question_id, correct_answer) values (5, 'protected');

-- OOP in Java Quiz Questions (QuizId = 2)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (2, 'SINGLE_CHOICE', 'Which of these is not a principle of OOP?');
INSERT INTO options (question_id, options) VALUES (6, 'Encapsulation');
INSERT INTO options (question_id, options) VALUES (6, 'Abstraction');
INSERT INTO options (question_id, options) VALUES (6, 'Polymorphism');
INSERT INTO options (question_id, options) VALUES (6, 'Interpretation');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (6, 'Interpretation');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (2, 'SINGLE_CHOICE', 'Which keyword is used to inherit a class in Java?');
INSERT INTO options (question_id, options) VALUES (7, 'inherits');
INSERT INTO options (question_id, options) VALUES (7, 'extends');
INSERT INTO options (question_id, options) VALUES (7, 'implements');
INSERT INTO options (question_id, options) VALUES (7, 'super');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (7, 'extends');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (2, 'MULTIPLE_CHOICE', 'Which of the following are features of OOP?');
INSERT INTO options (question_id, options) VALUES (8, 'Inheritance');
INSERT INTO options (question_id, options) VALUES (8, 'Encapsulation');
INSERT INTO options (question_id, options) VALUES (8, 'Abstraction');
INSERT INTO options (question_id, options) VALUES (8, 'Polymorphism');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (8, 'Inheritance');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (8, 'Encapsulation');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (8, 'Abstraction');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (8, 'Polymorphism');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (2, 'MULTIPLE_CHOICE', 'Which of the following classes are part of Java’s OOP hierarchy?');
INSERT INTO options (question_id, options) VALUES (9, 'Object');
INSERT INTO options (question_id, options) VALUES (9, 'String');
INSERT INTO options (question_id, options) VALUES (9, 'Integer');
INSERT INTO options (question_id, options) VALUES (9, 'Collections');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (9, 'Object');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (9, 'String');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (9, 'Integer');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (2, 'MULTIPLE_CHOICE', 'Select valid object-oriented design principles:');
INSERT INTO options (question_id, options) VALUES (10, 'Open-Closed Principle');
INSERT INTO options (question_id, options) VALUES (10, 'Single Responsibility Principle');
INSERT INTO options (question_id, options) VALUES (10, 'Circular Dependency');
INSERT INTO options (question_id, options) VALUES (10, 'Dependency Inversion');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (10, 'Open-Closed Principle');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (10, 'Single Responsibility Principle');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (10, 'Dependency Inversion');

---- Java Data Structures Quiz Questions (QuizId = 3)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (3, 'SINGLE_CHOICE', 'Which data structure uses LIFO (Last In First Out)?');
INSERT INTO options (question_id, options) VALUES (11, 'Queue');
INSERT INTO options (question_id, options) VALUES (11, 'Stack');
INSERT INTO options (question_id, options) VALUES (11, 'Array');
INSERT INTO options (question_id, options) VALUES (11, 'LinkedList');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (11, 'Stack');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (3, 'SINGLE_CHOICE', 'Which is the fastest for accessing data by index?');
INSERT INTO options (question_id, options) VALUES (12, 'Array');
INSERT INTO options (question_id, options) VALUES (12, 'LinkedList');
INSERT INTO options (question_id, options) VALUES (12, 'Stack');
INSERT INTO options (question_id, options) VALUES (12, 'Queue');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (12, 'Array');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (3, 'MULTIPLE_CHOICE', 'Which of the following are examples of linear data structures?');
INSERT INTO options (question_id, options) VALUES (13, 'Array');
INSERT INTO options (question_id, options) VALUES (13, 'Stack');
INSERT INTO options (question_id, options) VALUES (13, 'Graph');
INSERT INTO options (question_id, options) VALUES (13, 'Queue');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (13, 'Array');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (13, 'Stack');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (13, 'Queue');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (3, 'MULTIPLE_CHOICE', 'Select all operations commonly associated with stacks:');
INSERT INTO options (question_id, options) VALUES (14, 'Push');
INSERT INTO options (question_id, options) VALUES (14, 'Pop');
INSERT INTO options (question_id, options) VALUES (14, 'Enqueue');
INSERT INTO options (question_id, options) VALUES (14, 'Dequeue');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (14, 'Push');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (14, 'Pop');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (3, 'MULTIPLE_CHOICE', 'Which of these data structures can be used for traversal?');
INSERT INTO options (question_id, options) VALUES (15, 'Graph');
INSERT INTO options (question_id, options) VALUES (15, 'Tree');
INSERT INTO options (question_id, options) VALUES (15, 'Stack');
INSERT INTO options (question_id, options) VALUES (15, 'Array');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (15, 'Graph');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (15, 'Tree');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (15, 'Array');

-- Java Collections Quiz Questions (QuizId = 4)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (4, 'SINGLE_CHOICE', 'Which Java collection uses key-value pairs?');
INSERT INTO options (question_id, options) VALUES (16, 'List');
INSERT INTO options (question_id, options) VALUES (16, 'Set');
INSERT INTO options (question_id, options) VALUES (16, 'Map');
INSERT INTO options (question_id, options) VALUES (16, 'Queue');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (16, 'Map');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (4, 'SINGLE_CHOICE', 'Which collection does not allow duplicate elements?');
INSERT INTO options (question_id, options) VALUES (17, 'List');
INSERT INTO options (question_id, options) VALUES (17, 'Set');
INSERT INTO options (question_id, options) VALUES (17, 'Queue');
INSERT INTO options (question_id, options) VALUES (17, 'Array');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (17, 'Set');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (4, 'MULTIPLE_CHOICE', 'Which of the following are part of the Java Collections Framework?');
INSERT INTO options (question_id, options) VALUES (18, 'List');
INSERT INTO options (question_id, options) VALUES (18, 'Map');
INSERT INTO options (question_id, options) VALUES (18, 'Set');
INSERT INTO options (question_id, options) VALUES (18, 'Stream');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (18, 'List');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (18, 'Map');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (18, 'Set');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (4, 'MULTIPLE_CHOICE', 'Which operations are commonly supported by a List?');
INSERT INTO options (question_id, options) VALUES (19, 'Add');
INSERT INTO options (question_id, options) VALUES (19, 'Remove');
INSERT INTO options (question_id, options) VALUES (19, 'Sort');
INSERT INTO options (question_id, options) VALUES (19, 'Reverse');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (19, 'Add');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (19, 'Remove');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (19, 'Sort');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (19, 'Reverse');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (4, 'MULTIPLE_CHOICE', 'Which types of Map exist in Java?');
INSERT INTO options (question_id, options) VALUES (20, 'HashMap');
INSERT INTO options (question_id, options) VALUES (20, 'TreeMap');
INSERT INTO options (question_id, options) VALUES (20, 'ConcurrentHashMap');
INSERT INTO options (question_id, options) VALUES (20, 'ArrayMap');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (20, 'ArrayMap');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (20, 'TreeMap');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (20, 'ConcurrentHashMap');

---- Java Streams Quiz Questions (QuizId = 5)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (5, 'SINGLE_CHOICE', 'Which stream operation is terminal?');
INSERT INTO options (question_id, options) VALUES (21, 'filter');
INSERT INTO options (question_id, options) VALUES (21, 'map');
INSERT INTO options (question_id, options) VALUES (21, 'collect');
INSERT INTO options (question_id, options) VALUES (21, 'peek');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (21, 'collect');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (5, 'SINGLE_CHOICE', 'Which Java package provides the Streams API?');
INSERT INTO options (question_id, options) VALUES (22, 'java.util.stream');
INSERT INTO options (question_id, options) VALUES (22, 'java.io.stream');
INSERT INTO options (question_id, options) VALUES (22, 'java.nio.stream');
INSERT INTO options (question_id, options) VALUES (22, 'java.net.stream');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (22, 'java.util.stream');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (5, 'MULTIPLE_CHOICE', 'Which of the following are stream intermediate operations?');
INSERT INTO options (question_id, options) VALUES (23, 'map');
INSERT INTO options (question_id, options) VALUES (23, 'filter');
INSERT INTO options (question_id, options) VALUES (23, 'sorted');
INSERT INTO options (question_id, options) VALUES (23, 'reduce');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (23, 'map');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (23, 'filter');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (23, 'sorted');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (5, 'MULTIPLE_CHOICE', 'Select valid characteristics of streams in Java:');
INSERT INTO options (question_id, options) VALUES (24, 'Lazy');
INSERT INTO options (question_id, options) VALUES (24, 'Stateless');
INSERT INTO options (question_id, options) VALUES (24, 'Thread-safe');
INSERT INTO options (question_id, options) VALUES (24, 'Sequential');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (24, 'Lazy');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (24, 'Stateless');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (5, 'MULTIPLE_CHOICE', 'Which are valid ways to create streams in Java?');
INSERT INTO options (question_id, options) VALUES (25, 'From Collections');
INSERT INTO options (question_id, options) VALUES (25, 'Using Stream.generate()');
INSERT INTO options (question_id, options) VALUES (25, 'Using Stream.of()');
INSERT INTO options (question_id, options) VALUES (25, 'From BufferedReader');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (25, 'From Collections');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (25, 'Using Stream.generate()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (25, 'Using Stream.of()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (25, 'From BufferedReader');

-- Concurrency in Java Quiz Questions (QuizId = 6)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (6, 'SINGLE_CHOICE', 'Which keyword is used to create threads in Java?');
INSERT INTO options (question_id, options) VALUES (26, 'extends');
INSERT INTO options (question_id, options) VALUES (26, 'implements');
INSERT INTO options (question_id, options) VALUES (26, 'synchronize');
INSERT INTO options (question_id, options) VALUES (26, 'thread');
INSERT INTO options (question_id, options) VALUES (26, 'java.net.stream');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (26, 'implements');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (6, 'SINGLE_CHOICE', 'Which method is used to start a thread?');
INSERT INTO options (question_id, options) VALUES (27, 'run()');
INSERT INTO options (question_id, options) VALUES (27, 'execute()');
INSERT INTO options (question_id, options) VALUES (27, 'start()');
INSERT INTO options (question_id, options) VALUES (27, 'begin()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (27, 'start()');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (6, 'MULTIPLE_CHOICE', 'Which are valid thread states in Java?');
INSERT INTO options (question_id, options) VALUES (28, 'New');
INSERT INTO options (question_id, options) VALUES (28, 'Runnable');
INSERT INTO options (question_id, options) VALUES (28, 'Blocked');
INSERT INTO options (question_id, options) VALUES (28, 'Terminated');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (28, 'New');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (28, 'Runnable');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (28, 'Blocked');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (28, 'Terminated');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (6, 'MULTIPLE_CHOICE', 'Which classes support thread synchronization?');
INSERT INTO options (question_id, options) VALUES (29, 'Semaphore');
INSERT INTO options (question_id, options) VALUES (29, 'Lock');
INSERT INTO options (question_id, options) VALUES (29, 'ReentrantLock');
INSERT INTO options (question_id, options) VALUES (29, 'Thread');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (29, 'Semaphore');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (29, 'Lock');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (29, 'ReentrantLock');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (6, 'MULTIPLE_CHOICE', 'Which methods can pause thread execution?');
INSERT INTO options (question_id, options) VALUES (30, 'sleep()');
INSERT INTO options (question_id, options) VALUES (30, 'wait()');
INSERT INTO options (question_id, options) VALUES (30, 'yield()');
INSERT INTO options (question_id, options) VALUES (30, 'stop()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (30, 'sleep()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (30, 'wait()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (30, 'yield()');

-- Introduction to Python Quiz Questions (QuizId = 7)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (7, 'SINGLE_CHOICE', 'Which is the correct file extension for Python files?');
INSERT INTO options (question_id, options) VALUES (31, '.py');
INSERT INTO options (question_id, options) VALUES (31, '.python');
INSERT INTO options (question_id, options) VALUES (31, '.pyt');
INSERT INTO options (question_id, options) VALUES (31, '.txt');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (31, '.py');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (7, 'SINGLE_CHOICE', 'Which of the following is used to print in Python?');
INSERT INTO options (question_id, options) VALUES (32, 'echo');
INSERT INTO options (question_id, options) VALUES (32, 'print');
INSERT INTO options (question_id, options) VALUES (32, 'printf');
INSERT INTO options (question_id, options) VALUES (32, 'write');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (32, 'print');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (7, 'MULTIPLE_CHOICE', 'Which are valid Python data types?');
INSERT INTO options (question_id, options) VALUES (33, 'int');
INSERT INTO options (question_id, options) VALUES (33, 'float');
INSERT INTO options (question_id, options) VALUES (33, 'string');
INSERT INTO options (question_id, options) VALUES (33, 'list');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (33, 'int');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (33, 'float');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (33, 'string');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (33, 'list');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (7, 'MULTIPLE_CHOICE', 'Which methods can be used to manipulate strings in Python?');
INSERT INTO options (question_id, options) VALUES (34, 'split()');
INSERT INTO options (question_id, options) VALUES (34, 'join()');
INSERT INTO options (question_id, options) VALUES (34, 'append()');
INSERT INTO options (question_id, options) VALUES (34, 'replace()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (34, 'split()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (34, 'join()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (34, 'replace()');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (7, 'MULTIPLE_CHOICE', 'Which Python keywords are used for loops?');
INSERT INTO options (question_id, options) VALUES (35, 'for');
INSERT INTO options (question_id, options) VALUES (35, 'while');
INSERT INTO options (question_id, options) VALUES (35, 'do');
INSERT INTO options (question_id, options) VALUES (35, 'repeat');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (35, 'for');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (35, 'while');

-- Data Analysis with Pandas Quiz Questions (QuizId = 8)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (8, 'SINGLE_CHOICE', 'Which Python library is used for data analysis?');
INSERT INTO options (question_id, options) VALUES (36, 'numpy');
INSERT INTO options (question_id, options) VALUES (36, 'pandas');
INSERT INTO options (question_id, options) VALUES (36, 'matplotlib');
INSERT INTO options (question_id, options) VALUES (36, 'scipy');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (36, 'pandas');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (8, 'SINGLE_CHOICE', 'Which method is used to read a CSV file in Pandas?');
INSERT INTO options (question_id, options) VALUES (37, 'read_csv()');
INSERT INTO options (question_id, options) VALUES (37, 'load_csv()');
INSERT INTO options (question_id, options) VALUES (37, 'import_csv()');
INSERT INTO options (question_id, options) VALUES (37, 'open_csv()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (37, 'read_csv()');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (8, 'MULTIPLE_CHOICE', 'Which Pandas methods are used for data cleaning?');
INSERT INTO options (question_id, options) VALUES (38, 'dropna()');
INSERT INTO options (question_id, options) VALUES (38, 'fillna()');
INSERT INTO options (question_id, options) VALUES (38, 'replace()');
INSERT INTO options (question_id, options) VALUES (38, 'strip()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (38, 'dropna()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (38, 'fillna()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (38, 'replace()');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (8, 'MULTIPLE_CHOICE', 'Which data structures are provided by Pandas?');
INSERT INTO options (question_id, options) VALUES (39, 'DataFrame');
INSERT INTO options (question_id, options) VALUES (39, 'Series');
INSERT INTO options (question_id, options) VALUES (39, 'Panel');
INSERT INTO options (question_id, options) VALUES (39, 'Array');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (39, 'DataFrame');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (39, 'Series');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (8, 'MULTIPLE_CHOICE', 'Which Pandas methods are used for data aggregation?');
INSERT INTO options (question_id, options) VALUES (40, 'groupby()');
INSERT INTO options (question_id, options) VALUES (40, 'pivot()');
INSERT INTO options (question_id, options) VALUES (40, 'sum()');
INSERT INTO options (question_id, options) VALUES (40, 'agg()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (40, 'groupby()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (40, 'pivot()');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (40, 'agg()');

-- Machine Learning Basics Quiz Questions (QuizId = 9)
INSERT INTO question (quiz_id, question_type, question_text)
VALUES (9, 'SINGLE_CHOICE', 'Which library is commonly used for machine learning in Python?');
INSERT INTO options (question_id, options) VALUES (41, 'numpy');
INSERT INTO options (question_id, options) VALUES (41, 'pandas');
INSERT INTO options (question_id, options) VALUES (41, 'scikit-learn');
INSERT INTO options (question_id, options) VALUES (41, 'matplotlib');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (41, 'scikit-learn');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (9, 'SINGLE_CHOICE', 'Which is a supervised learning algorithm?');
INSERT INTO options (question_id, options) VALUES (42, 'K-means');
INSERT INTO options (question_id, options) VALUES (42, 'Linear Regression');
INSERT INTO options (question_id, options) VALUES (42, 'PCA');
INSERT INTO options (question_id, options) VALUES (42, 'Clustering');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (42, 'Linear Regression');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (9, 'MULTIPLE_CHOICE', 'Which algorithms are used for classification?');
INSERT INTO options (question_id, options) VALUES (43, 'Logistic Regression');
INSERT INTO options (question_id, options) VALUES (43, 'Decision Trees');
INSERT INTO options (question_id, options) VALUES (43, 'KNN');
INSERT INTO options (question_id, options) VALUES (43, 'Random Forest');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (43, 'Logistic Regression');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (43, 'Decision Trees');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (43, 'KNN');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (43, 'Random Forest');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (9, 'MULTIPLE_CHOICE', 'Which metrics are used to evaluate classification models?');
INSERT INTO options (question_id, options) VALUES (44, 'Accuracy');
INSERT INTO options (question_id, options) VALUES (44, 'Precision');
INSERT INTO options (question_id, options) VALUES (44, 'Recall');
INSERT INTO options (question_id, options) VALUES (44, 'MAE');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (44, 'Accuracy');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (44, 'Precision');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (44, 'Recall');

INSERT INTO question (quiz_id, question_type, question_text)
VALUES (9, 'MULTIPLE_CHOICE', 'Which libraries are used for deep learning?');
INSERT INTO options (question_id, options) VALUES (45, 'TensorFlow');
INSERT INTO options (question_id, options) VALUES (45, 'Keras');
INSERT INTO options (question_id, options) VALUES (45, 'PyTorch');
INSERT INTO options (question_id, options) VALUES (45, 'OpenCV');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (45, 'TensorFlow');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (45, 'Keras');
INSERT iNTO correct_answers (question_id, correct_answer) VALUES (45, 'PyTorch');
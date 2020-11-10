name('jahangirnagar university').
breif_description('Jahangirnagar University is a public university in Bangladesh, based in Savar Upazila, Dhaka. It is one of the top and only fully residential universities in Bangladesh. There are 34 departments, 4 institutes under six faculties.').
location('jahangirnagar university stands on the west side of the Asian Highway, popularly known as the Dhaka-Aricha Road, and is 32 kilometres away from the capital').
established('jahangirnagar university', '1970').
first_vice_chancellor('Mafizuddin Ahmed (PhD in chemistry, Penn State)').
current_vice_chancellor('Professor Doctor Farzan Islam').
history('The university was established in 1970 by the Jahangirnagar Muslim University Ordinance of the government of Pakistan. Its first vice-chancellor, Mafizuddin Ahmed (PhD in chemistry, Penn State) took up office on 24 September 1970. The first group of students, a total of 150, were enrolled in four departments: Economics, Geography, Mathematics, and Statistics. Its formal inauguration was delayed until 12 January 1971, when the university was launched by Rear Admiral S. M. Ahsan, the chancellor.').
area('697.56 acres which is 2.8 square kilometres').
number_of_faculties('6').
number_of_departments('34').
number_of_institutes('4').
faculty('faculty of mathematical and physical science').
faculty('faculty of biological science').
faculty('faculty of social science').
faculty('faculty of arts and humanities').
faculty('faculty of business studies').
faculty('faculty of law').

faculties('faculty of mathematical and physical science, faculty of biological science, faculty of social science, faculty of arts and humanities, faculty of business studies, faculty of law').

departments('department of computer science and engineering, department of mathematics, department of physics, department of environmental science, department of chemistry, department of statistics, department of geological science, department of botany, department of zoology, department of biochemistry and molecular biology, department of microbiology, department of pharmacy, department of public health and informatics, department of biotechnology and genetic engineering, department of anthropology, department of economics, department of government and politics,\n\tdepartment of geography and environment, department of public administration, department of urban and regional planning, department of archaeology, department of bangla, department of drama and dramatics, department of english, department of fine arts, department of history, department of international relations, department of journalism and media studies, department of philosophy, department of accounting and information systems, department of finance and banking, department of marketing, department of management studies, department of accounting and information systems, department of finance and banking, department of marketing, department of management studies').

departments_under_faculty('faculty of mathematical and physical science', 'department of computer science and engineering').
departments_under_faculty('faculty of mathematical and physical science', 'department of mathematics').
departments_under_faculty('faculty of mathematical and physical science', 'department of physics').
departments_under_faculty('faculty of mathematical and physical science', 'department of environmental science').
departments_under_faculty('faculty of mathematical and physical science', 'department of chemistry').
departments_under_faculty('faculty of mathematical and physical science', 'department of statistics').
departments_under_faculty('faculty of mathematical and physical science', 'department of geological science').

departments_under_faculty('faculty of biological science', 'department of botany').
departments_under_faculty('faculty of biological science', 'department of zoology').
departments_under_faculty('faculty of biological science', 'department of biochemistry and molecular biology').
departments_under_faculty('faculty of biological science', 'department of microbiology').
departments_under_faculty('faculty of biological science', 'department of pharmacy').
departments_under_faculty('faculty of biological science', 'department of public health and informatics').
departments_under_faculty('faculty of biological science', 'department of biotechnology and genetic engineering').

departments_under_faculty('faculty of social science', 'department of anthropology').
departments_under_faculty('faculty of social science', 'department of economics').
departments_under_faculty('faculty of social science', 'department of government and politics').
departments_under_faculty('faculty of social science', 'department of geography and environment').
departments_under_faculty('faculty of social science', 'department of public administration').
departments_under_faculty('faculty of social science', 'department of urban and regional planning').

departments_under_faculty('faculty of arts and humanities', 'department of archaeology').
departments_under_faculty('faculty of arts and humanities', 'department of bangla').
departments_under_faculty('faculty of arts and humanities', 'department of drama and dramatics').
departments_under_faculty('faculty of arts and humanities', 'department of english').
departments_under_faculty('faculty of arts and humanities', 'department of fine arts').
departments_under_faculty('faculty of arts and humanities', 'department of history').
departments_under_faculty('faculty of arts and humanities', 'department of international relations').
departments_under_faculty('faculty of arts and humanities', 'department of journalism and media studies').
departments_under_faculty('faculty of arts and humanities', 'department of philosophy').

departments_under_faculty('faculty of business studies', 'department of accounting and information systems').
departments_under_faculty('faculty of business studies', 'department of finance and banking').
departments_under_faculty('faculty of business studies', 'department of marketing').
departments_under_faculty('faculty of business studies', 'department of management studies').

departments_under_faculty('faculty of law', 'department of law and justice').

department('department of computer science and engineering').

about_department_of_computer_science_and_engineering('the department of computer science and engineering of jahangirnagar university is one of the leading cse department in bangladesh. since its inception in 1991, the Department is playing a vital role in developing skilled ict professional and researchers. the department selects very good quality national and international students in each academic year.\n\tprofessor doctor mohammad imdadul islam the present chairman of this department').

chairman_of_cse('department of computer science and engineering', 'professor doctor mohammad imdadul islam').
developers('shamim imtiaz and kamrul hasan tusher').
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
introduction(X, Y) :-
    name(X),
    breif_description(Y).
history(X, Y) :-
    name(X),
    history(Y).
location(X, Y) :-
    name(X),
    location(Y).
area(X, Y) :-
    name(X),
    area(Y).
first_vice_chancellor(X, Y) :-
    name(X),
    first_vice_chancellor(Y).
vice_chancellor(X, Y) :-
    name(X),
    current_vice_chancellor(Y).
number_of_faculties(X, Y) :-
    name(X),
    number_of_faculties(Y).
number_of_departments(X, Y) :-
    name(X),
    number_of_departments(Y).
number_of_institutes(X, Y) :-
    name(X),
    number_of_institutes(Y).

faculties(X, Y) :-
    name(X),
    faculties(Y).
departments(X, Y) :-
    name(X),
    departments(Y).
departments_under_faculty(X, Y, Z) :-
    name(X),
    faculty(Y),
    departments_under_faculty(Y, Z).
about_department_of_computer_science_and_engineering(X, Y) :-
    name(X),
    about_department_of_computer_science_and_engineering(Y).

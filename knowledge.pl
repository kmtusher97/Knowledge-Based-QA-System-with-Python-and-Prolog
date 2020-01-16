name('jahangirnagar university').
breif_description('Jahangirnagar University is a public university in Bangladesh, \c
	based in Savar Upazila, Dhaka. It is one of the top and only fully residential \c
	universities in Bangladesh. There are 34 departments, 4 institutes under six faculties.').
location('jahangirnagar university stands on the west side of the Asian Highway, \c
	popularly known as the Dhaka-Aricha Road, and is 32 kilometres away from the capital').
established('jahangirnagar university', '1970').
first_vice_chancellor('Mafizuddin Ahmed (PhD in chemistry, Penn State)').
current_vice_chancellor('Professor Doctor Farzan Islam').
history('The university was established in 1970 by the Jahangirnagar Muslim University \c
	Ordinance of the government of Pakistan. Its first vice-chancellor, Mafizuddin Ahmed \c
	(PhD in chemistry, Penn State) took up office on 24 September 1970. The first group of \c
	students, a total of 150, were enrolled in four departments: Economics, Geography, \c
	Mathematics, and Statistics. Its formal inauguration was delayed until 12 January 1971, \c
	when the university was launched by Rear Admiral S. M. Ahsan, the chancellor.').
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

departments('department of computer science and engineering, \c
	department of mathematics, \c
	department of physics, \c
	department of environmental science, \c
	department of chemistry, \c
	department of statistics, \c
	department of geological science, \c
	department of botany, \c
	department of zoology, \c
	department of biochemistry and molecular biology, \c
	department of microbiology, \c
	department of pharmacy, \c
	department of public health and informatics, \c
	department of biotechnology and genetic engineering, \c
	department of anthropology, \c
	department of economics, \c
	department of government and politics,
	department of geography and environment, \c
	department of public administration, \c
	department of urban and regional planning, \c
	department of archaeology, \c
	department of bangla, \c
	department of drama and dramatics, \c
	department of english, \c
	department of fine arts, \c
	department of history, \c
	department of international relations, \c
	department of journalism and media studies, \c
	department of philosophy, \c
	department of accounting and information systems, \c
	department of finance and banking, \c
	department of marketing, \c
	department of management studies, \c
	department of accounting and information systems, \c
	department of finance and banking, \c
	department of marketing, \c
	department of management studies').

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

introduction(X, Y):- name(X), breif_description(Y).
history(X, Y):- name(X), history(Y).
location(X, Y):- name(X), location(Y).
area(X, Y):- name(X), area(Y).
first_vice_chancellor(X, Y):- name(X), first_vice_chancellor(Y).
vice_chancellor(X, Y):- name(X), current_vice_chancellor(Y).
number_of_faculties(X, Y):- name(X), number_of_faculties(Y).
number_of_departments(X, Y):- name(X), number_of_departments(Y).
number_of_institutes(X, Y):- name(X), number_of_institutes(Y).

faculties(X, Y):- name(X), faculty(Y).
departments(X, Y):- name(X), departments(Y).
departments_in_faculty(X, Y):- faculty(X), 
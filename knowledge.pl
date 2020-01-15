name('jahangirnagar university').
breif_description('Jahangirnagar University is a public university in Bangladesh, based in Savar Upazila, Dhaka. It is one of the top and only fully residential universities in Bangladesh.').
location('jahangirnagar university stands on the west side of the Asian Highway, popularly known as the Dhaka-Aricha Road, and is 32 kilometres away from the capital').
established('jahangirnagar university', 1970).
first_vice_chancellor('Mafizuddin Ahmed (PhD in chemistry, Penn State)').
current_vice_chancellor('Professor Doctor Farzan Islam').
history('The university was established in 1970 by the Jahangirnagar Muslim University Ordinance of the government of Pakistan. Its first vice-chancellor, Mafizuddin Ahmed (PhD in chemistry, Penn State) took up office on 24 September 1970. The first group of students, a total of 150, were enrolled in four departments: Economics, Geography, Mathematics, and Statistics. Its formal inauguration was delayed until 12 January 1971, when the university was launched by Rear Admiral S. M. Ahsan, the chancellor.').
area('697.56 acres which is 2.8 square kilometres').


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

introduction(X, Y):- name(X), breif_description(Y).
history(X, Y):- name(X), history(Y).
location(X, Y):- name(X), location(Y).
area(X, Y):- name(X), area(Y).
first_vice_chancellor(X, Y):- name(X), first_vice_chancellor(Y).
vice_chancellor(X, Y):- name(X), current_vice_chancellor(Y).

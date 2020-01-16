# prolog
from pyswip import Prolog

# text to speech 
from gtts import gTTS
import pygame

# speech to text
import speech_recognition as sr

import json



def text_to_speech(txt):
	language = "en"
	obj = gTTS(text = txt, lang = language)
	obj.save("output.mp3")
	pygame.mixer.init()
	pygame.mixer.music.load("output.mp3")
	pygame.mixer.music.play()
	while pygame.mixer.music.get_busy() == True:
		continue



def prolog_query(query_string):
	prolog = Prolog()
	prolog.consult("knowledge.pl")
	results = []
	for res in prolog.query(query_string):
		results.append(res)

	return results


def make_json(data):
	json_str = ""
	for c in data:
		if c == "'":
			json_str += "\""
			continue

		json_str += c

	return json_str



def ask_question(query_string, question):
	answers = prolog_query(query_string)
	return answers



def say_answers(prefix, suffix, question, answers):
	for ans in answers:
		ans = make_json(str(ans))
		obj = json.loads(str(ans))
		print(obj[question])
		text = prefix + " " + obj[question] + " " + suffix
		text_to_speech(text)



def listen_question():
	r = sr.Recognizer()

	with sr.Microphone() as source:
		print("ask question about jahangirnagar university")
		audio = r.listen(source)
		print("ok.. wait for the answer...")

	try:
		return r.recognize_google(audio)
	except:
		return "-----------------"



# Q/A
asked_question = str(listen_question()).lower()
print(asked_question)

if "name of the university" in asked_question :
	# Q: what is the name of the university?
	question = "UniversityName"
	query = "name(" + question + ")."
	answers = ask_question(query, question)
	say_answers("The name of the university ", "", question, answers)

elif "introduction" in asked_question or \
	"about ju" in asked_question or \
	"about jahangirnagar university" in asked_question:
	# Q: what is jahangirnagar university?
	question = "Introduction"
	query = "introduction('jahangirnagar university', " + question + ")."
	answers = ask_question(query, question)
	say_answers("", "", question, answers)

elif "history of ju" in asked_question or \
		"history of jahangirnagar university" in asked_question:
	# Q: history of jahangirnagar university.
	question = "History"
	query = "history('jahangirnagar university', " + question + ")."
	answers = ask_question(query, question)
	say_answers("Brief history: ", "", question, answers)

elif "location of jahangirnagar university" in asked_question or \
		"situated" in asked_question:
	# Q: where is jahangirnagar university?
	question = "Loction"
	query = "location('jahangirnagar university', " + question + ")."
	answers = ask_question(query, question)
	say_answers("", "", question, answers)

elif "area of jahangirnagar university" in asked_question:
	# Q: where is jahangirnagar university?
	question = "Area"
	query = "area('jahangirnagar university', " + question + ")."
	answers = ask_question(query, question)
	say_answers("total area of jahangirnagar university is about ", "", question, answers)

elif ("current" in asked_question or "present" in asked_question or "now" in asked_question) \
		and "vice chancellor" in asked_question:
	#Q: who is the current vice_chancellor of jahangirnagar university?
	question = "Vice_chancellor"
	query = "vice_chancellor('jahangirnagar university', " + question + ")."
	answers = ask_question(query, question)
	say_answers("The current vice chancellor of jahangirnagar university is ", "", question, answers)

elif "number of faculties" in asked_question or \
		"how many faculties" in asked_question:
	# Q how many faculties are in jahangirnagr university
	question = "Number_of_faculties"
	query = "number_of_faculties('jahangirnagar university', " + question + ")."
	answers = ask_question(query, question)
	say_answers("There are ", "faculties in jahangirnagar university", question, answers)

elif "number of departments" in asked_question or \
		"how many departments" in asked_question:
	# Q how many departments are in jahangirnagr university
	question = "Number_of_departments"
	query = "number_of_departments('jahangirnagar university', " + question + ")."
	answers = ask_question(query, question)
	say_answers("There are ", "departments in jahangirnagar university", question, answers)

elif "number of institutes" in asked_question or \
		"how many institutes" in asked_question:
	# Q how many institutes are in jahangirnagr university
	question = "Number_of_institutes"
	query = "number_of_institutes('jahangirnagar university', " + question + ")."
	answers = ask_question(query, question)
	say_answers("There are ", "institutes in jahangirnagar university", question, answers)

elif "name of the faculties" in asked_question or \
		"what are the faculties" in asked_question:
	#Q what are the faculties in jahangirnagar university
	question = "Facultiy"
	query = "faculties('jahangirnagar university', " + question + ")."
	answers = ask_question(query, question)
	text_to_speech("there are 6 faculties are in jahangirnagar university, they are ")
	say_answers("", "", question, answers)

elif "name of the departments" in asked_question or \
		"what are the departments" in asked_question:
	#Q what are the departments in jahangirnagar university
	question = "Departments"
	query = "departments('jahangirnagar university', " + question + ")."
	answers = ask_question(query, question)
	say_answers("there are 34 departments in jahangirnagar university, they are ", "", question, answers)

elif ("names of the departments" in asked_question or \
		"what are the departments" in asked_question) and \
		"in faculty of" in asked_question:
	# Q what are the names departments in faculty of X?
	question = "Departments"
	query = ""
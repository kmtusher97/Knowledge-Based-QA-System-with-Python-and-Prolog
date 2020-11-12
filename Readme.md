<a><img src="https://www.python.org/static/img/python-logo.png" height="50px"/></a> <a href=""><img src="https://www.swi-prolog.org/icons/swipl.png" height="50px"/></a>




## Knowledge Based QA System with Python and Prolog ![python](https://img.shields.io/badge/python-3.7-yellow) ![prolog](https://img.shields.io/badge/prolog-8.2.0-red)
A knowledge-based system (KBS) is a form of artificial intelligence (AI) that aims to capture the knowledge of human experts to support decision-making. Examples of knowledge-based systems include expert systems, which are so called because of their reliance on human expertise.

This project is a simple implementation of a knowledge-based system. It is a simple ChatBot. There is a prolog file that defines the knowledge base. The questions are handled with python. The key idea is mapping different questions for the same answer. The simplest way is finding keywords in the question. Using the keywords, a query is performed on the prolog knowledge base. Then the query result is shown with some prefix and suffix as the answer.

These types of chatbots can handle frequently asked questions in a system. For example, this program can be an extension of a university website that can handle general queries about the university.

### Build ![linux](https://img.shields.io/badge/-linux-orange)
---
Install prolog
> `` $ sudo apt install swi-prolog `` <br>

To build and run the program, open terminal and change directory to the program directory. Then execute the following commands.
> ``$ python -m vevn venv`` <br>
> ``$ souce venv/bin/activate`` <br>
> ``$ pip install -r requirements.txt`` <br>
> ``$ python main.py``<br>

This program can be built and run on windows too. First install ``prolog``, ``pip``. Then run the commands in the commands in the ``cmd`` terminal to build and run the program. <br>

To create executable, run
> ``$ pyinstaller main.py``<br>

Run the executable
> ``./dist/main/main``<br>

<br>

### LICENSE [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
***
Copyright © 2020, [Kamrul Hasan](https://github.com/kmtusher97).
Released under the [MIT License](LICENSE). [See more](https://github.com/kmtusher97/Knowledge-Based-QA-System-with-Python-and-Prolog/blob/master/LICENSE.md)



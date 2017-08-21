#!/bin/bash

#Produce notes and slides
pdflatex course-notes.tex
pdflatex course-slides.tex
for file in day1-slides-*.tex ; do pdflatex $file ; done

#Produce readiness materials
./bin/readiness.bash

#Produce defintions pages
for file in course-notes*.tex ; do pdflatex $file ; done

#Produce quizzes
#./bin/quiz.bash

#Produce syllabus and forms
for file in syllabus-*.tex ; do pdflatex $file ; done
for file in standards-*.tex ; do pdflatex $file ; done
for file in homework-report-*.tex ; do pdflatex $file ; done
for file in reassessment-form-*.tex ; do pdflatex $file ; done
for file in assessment-calendar-*.tex ; do pdflatex $file ; done
pdflatex homework-problems.tex

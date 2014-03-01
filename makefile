all: 
	markdown lecture_01.md > lecture_01.html
	markdown lecture_02.md > lecture_02.html
	markdown lecture_03.md > lecture_03.html
	markdown lecture_04.md > lecture_04.html
	markdown lecture_05.md > lecture_05.html
	markdown lecture_06.md > lecture_06.html
	markdown lecture_07.md > lecture_07.html
	markdown lecture_08.md > lecture_08.html
	markdown lecture_09.md > lecture_09.html
	markdown lecture_10.md > lecture_10.html
	markdown lecture_11.md > lecture_11.html
	markdown lecture_12.md > lecture_12.html
	markdown lecture_13.md > lecture_13.html
	markdown lecture_14.md > lecture_14.html
	markdown lecture_15.md > lecture_15.html
better:
	mdown --input "*.md" --output .
clean:
	rm lecture_*.html

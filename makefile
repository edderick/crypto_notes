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
	markdown lecture_16.md > lecture_16.html
	markdown lecture_17.md > lecture_17.html
	markdown lecture_18.md > lecture_18.html
	markdown lecture_19.md > lecture_19.html
	markdown lecture_20.md > lecture_20.html
	markdown lecture_21.md > lecture_21.html
	markdown lecture_22.md > lecture_22.html
	markdown lecture_23.md > lecture_23.html
	markdown lecture_24.md > lecture_24.html
	markdown lecture_25.md > lecture_25.html
	markdown lecture_26.md > lecture_26.html
	markdown lecture_27.md > lecture_27.html
	markdown lecture_28.md > lecture_28.html
	markdown lecture_29.md > lecture_29.html
	markdown lecture_30.md > lecture_30.html
	markdown lecture_31.md > lecture_31.html
	markdown lecture_32.md > lecture_32.html
	markdown lecture_33.md > lecture_33.html
better:
	mdown --input "*.md" --output .
clean:
	rm lecture_*.html

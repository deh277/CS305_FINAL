CC = cc
CFLAGS = -Wall -Wextra -std=c99

all: main.out

main.out: main
	./main | tee main.out

main: main.o get_student_id.o
	$(CC) $(CFLAGS) -o $@ $^

main.o: main.c
	$(CC) $(CFLAGS) -c $<

get_student_id.o: get_student_id.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o main main.out

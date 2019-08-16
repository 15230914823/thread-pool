all:
	gcc -c thread_pool.c
	ar crs -o libthread_pool.a thread_pool.o
	gcc main.c -L. -lthread_pool -lpthread 
clean:
	rm  thread_pool.o libthread_pool.a a.out


allobj = a.o b.o c.o
allcpp = $(allobj:%.o=%.cpp)
out: $(allobj)
	g++ $(allobj) -o out

$(allobj): %.o: %.cpp
	g++ -c $< ; echo $(allcpp)

.PHONY: clean
clean:
	rm *.o; rm out

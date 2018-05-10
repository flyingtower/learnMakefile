
define testDefine
@echo "just test define1"
echo "just test define2"
endef


allobj = a.o b.o c.o
allcpp = $(allobj:%.o=%.cpp)
out: $(allobj)
	g++ $(allobj) -o out

$(allobj): %.o: %.cpp
	g++ -c $< ; echo $(allcpp)

.PHONY: clean
clean:
	rm *.o; rm out

.PHONY: testdefine
testdefine:
	$(testDefine)

.PHONY: testifeq
testifeq:
ifeq (1,1)
	@echo "eq1"
else
	@echo "not eq1"
endif

ta = $(subst ab,b,abc)
tsubst:
	echo $(ta)
	
t = $(patsubst %bc,b,abc abc)
patsubst:
	echo $(t)

t = $(findstring a, abc)
findstring:
	echo $(t)



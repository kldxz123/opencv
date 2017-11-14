CC = g++

# exe file
TARGET = test

# c file
SRCS = test.cpp

# object file
OBJS = $(SRCS:.cpp = .o)

# library file
DLIBS = -lopencv_core -lopencv_imgproc -lopencv_highgui

# link to exe file
$(TARGET):$(OBJS)
	$(CC -o $@ $^ $(DLIBS)
clean:
	rm -rf $(TARGET) $(OBJS)

# compile rule $@ represent object file $< represent 1st reliable file
%.o:%.cpp
	$(CC) -o $@ -c $<

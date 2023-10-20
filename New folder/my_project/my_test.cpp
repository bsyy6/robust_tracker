#include <gtest/gtest.h>

namespace{
    int add(int a, int b){
        return a + b;
    }
}


TEST(TESTE_ADD, TESTE_ADD_1){
    EXPECT_EQ(add(1, 2), 3);
}
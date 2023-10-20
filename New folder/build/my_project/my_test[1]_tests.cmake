add_test([=[TESTE_ADD.TESTE_ADD_1]=]  C:/Users/Giada/Documents/codeTraining/formGithub/my_project/build/my_project/Debug/my_test.exe [==[--gtest_filter=TESTE_ADD.TESTE_ADD_1]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[TESTE_ADD.TESTE_ADD_1]=]  PROPERTIES WORKING_DIRECTORY C:/Users/Giada/Documents/codeTraining/formGithub/my_project/build/my_project SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set(  my_test_TESTS TESTE_ADD.TESTE_ADD_1)

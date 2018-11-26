#include <iostream>

extern "C"{
    #include "lua.h"
    #include "lualib.h"
    #include "lauxlib.h"
}

using namespace std;

int main(int argc, char *argv[]){

    cout << "Assignment #3-1, Brian Rafferty, bprafferty03@gmail.com" << endl;

    lua_State *luaLand = luaL_newstate();
    luaL_openlibs(luaLand);
    luaL_dofile(luaLand, argv[1]);
    lua_close(luaLand);
    return 0;
}

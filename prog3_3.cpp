#include <iostream>

extern "C"{
    #include "lua.h"
    #include "lualib.h"
    #include "lauxlib.h"
}

using namespace std;

int main(int argc, char *argv[]){

    cout <<"Assignment #3-3, Brian Rafferty, bprafferty03@gmail.com" << endl;
    string userFile;

    lua_State *luaLand = luaL_newstate();
    luaL_openlibs(luaLand);
    luaL_dofile(luaLand, argv[1]);

    getline(cin, userFile);
    lua_getglobal(luaLand, "InfixToPostfix");
    lua_pushstring(luaLand, userFile.c_str());
    lua_pcall(luaLand, 1, 1, 0);

    if(luaL_checkstring(luaLand, 1)){
        cout << lua_tostring(luaLand, 1) << endl;
    }
    else {
        cout << "Error" << endl;
    }

    lua_close(luaLand);
    return 0;
}

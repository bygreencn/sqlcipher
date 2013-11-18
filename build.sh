cp /E/Dependence_LIB/openssl101e_vc10_dll/lib/libeay32.dll /E/Dependence_LIB/openssl101e_vc10_dll/lib/libcrypto.a 
./configure --disable-amalgamation --enable-tempstore=yes CFLAGS="-DSQLITE_HAS_CODEC -DSQLITE_TEMP_STORE=2 -I/E/Dependence_LIB/openssl101e_vc10_dll/include  -I/C/devfolder/TCL/include" LDFLAGS="-L/E/Dependence_LIB/openssl101e_vc10_dll/lib -L/C/devfolder/TCL/lib"
make -j8
a2dll ./.libs/libsqlcipher.a -o ./sqlcipher.dll -L/E/Dependence_LIB/openssl101e_vc10_dll/lib -lcrypto

#./configure --disable-amalgamation --enable-tempstore=yes CFLAGS="-DSQLITE_HAS_CODEC -DSQLITE_TEMP_STORE=2 -I/E/Dependence_LIB/openssl101e_mingw_dll/include  -I/C/devfolder/TCL/include" LDFLAGS="-L/E/Dependence_LIB/openssl101e_mingw_dll/lib  -L/C/devfolder/TCL/lib"
#make -j8
#a2dll ./.libs/libsqlcipher.a -o ./sqlcipher.dll -L/E/Dependence_LIB/openssl101e_mingw_dll/lib -lcrypto

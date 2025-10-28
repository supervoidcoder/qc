#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <map>
#include <filesystem>
// *gasp* why are you importing foreign things in your program?
// think about the TARRIFS!
namespace fs = std::filesystem; //  WHAT U SAY USING NAMESPACES IS BAD PRACTICE LECTHQNWJETHPQ5

/* 
error code meanings:
1 : failed to read config
2: failed to create config
3: failed to append new mapping to config
4: failed to execute new mapping from config
0: success
why is 0 success instead of 67? well you see the fact 67 is a very rude meme because it means the h tool from minecraft.
*/

class configManage {
public: // good thing c++ doesn't scold me for indentation *cough* python
// use int to make my own fancy schmancy error codes
int createConfig() {

    fs::path filePath = "config.txt";
    if (!fs::exists(filePath)) {
        std::ofstream outfile(filePath);
        if (outfile) {
            outfile << "<header_start> hi! this is the configuration file for the QC Quick Command tool. please don't manually edit if you don't know what you're doing! :) <header_end>\n";
            // quirky headers because it's scrumpdilitiously funny to parse
            std::cout << "Configuration file created.\n";
            outfile.close();
            return 0; 
            // the temptation to return 67 instead is crazy
            // future me: i did it anyways 
            // future graison: i le change to 0 because 67 means the h word
        } else {
            std::cerr << "Error: Could not create the file.\n";
            return 1;
        }
         
    }



}
int addConfig() {



}

};
// man doing this is such a refreshing experience from vibe coding
// don't vibe code it will cripple you 

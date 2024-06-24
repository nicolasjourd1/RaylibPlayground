#ifndef LOG_HPP_
#define LOG_HPP_

#include <fstream>
#include <string>

enum LogLevel
{
    INFO,
    WARNING,
    ERROR,
    DEBUG
};

class Logger
{
  public:
    void log(const std::string &message, LogLevel logLevel);
    Logger(const std::string &fileName);
    ~Logger();

  private:
    std::string getLogLevelString(LogLevel logLevel);
    std::ofstream logFile;
};

std::string logLevelPrefix(LogLevel logLevel);

#endif // LOG_HPP_
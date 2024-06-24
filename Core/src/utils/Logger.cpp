#include "Logger.hpp"

#include <ctime>
#include <iostream>

Logger::Logger(const std::string &fileName) : logFile(fileName, std::ios::in | std::ios::app)
{
    if (!logFile.is_open())
    {
        throw std::runtime_error("[ERROR] Unable to open log file at: " + fileName);
    }
}

Logger::~Logger()
{
    if (logFile.is_open())
    {
        logFile.close();
    }
}

void Logger::log(const std::string &message, LogLevel logLevel)
{
    std::string logLevelStr = logLevelPrefix(logLevel);
    std::time_t now = std::time(nullptr);
    char timeStamp[100];
    std::strftime(timeStamp, sizeof(timeStamp), "%Y/%m/%d %H:%M:%S ", std::localtime(&now));
    logFile << timeStamp << logLevelStr << message << std::endl;
}

std::string logLevelPrefix(LogLevel logLevel)
{
    switch (logLevel)
    {
    case INFO:
        return "INFO   : ";
        break;
    case WARNING:
        return "WARNING: ";
        break;
    case ERROR:
        return "ERROR  : ";
        break;
    case DEBUG:
        return "DEBUG  : ";
        break;
    default:
        return "INFO   : ";
    }
}
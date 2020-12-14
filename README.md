# clickjacker
A tool that detects potential Clickjacking vulnerabilities

This script checks if the x-frame-options header is set in the URLs that are given as input and prints Vulnerable if the header is not set and prints NotVulnerable if the header is set to any value.<br>
It reads from a file containing URLs and outputs to stdout.

# Usage
./ClickJacker.sh filename

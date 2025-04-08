# This script displays information about the container's environment and system resources.
# It includes details about the container ID, image, environment variables, and system resources like CPU and memory.
echo "* Display information about the CPU:"
cat /proc/cpuinfo | grep 'model name' | uniq
nbproc=$(cat /proc/cpuinfo | grep processor | wc -l)
echo "Number of processors: $nbproc"
echo "* Display information about the memory:"
cat /proc/meminfo | grep MemTotal
cat /proc/meminfo | grep MemFree
cat /proc/meminfo | grep MemAvailable

get core dump
```bash
echo '/tmp/core.%h.%e.%t' | sudo tee /proc/sys/kernel/core_pattern
```

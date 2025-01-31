# VHDL Counter with Overflow Issue

This repository demonstrates a potential overflow bug in a simple VHDL counter.  The original code uses an `integer` type with a limited range (0 to 9). If the counter attempts to exceed 9, it silently wraps back to 0, potentially leading to incorrect behavior.

The `counter_fixed.vhdl` file presents a solution that addresses this issue.
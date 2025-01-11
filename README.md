# Unexpected Behavior with Direct Instance Variable Access in Ruby

This example demonstrates a potential issue in Ruby when directly accessing and modifying instance variables outside of defined methods.  Direct manipulation of instance variables (`@value` in this case) bypasses the class's defined methods and can lead to unpredictable outcomes or maintenance difficulties.  Good practice suggests using accessor methods (`attr_reader`, `attr_writer`, `attr_accessor`) for managing instance variables to enforce encapsulation and improve code clarity.
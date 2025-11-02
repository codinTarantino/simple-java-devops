package com.example;

public class AppTest {
    public static void main(String[] args) {
        int result = App.add(2, 3);
        if (result == 5) {
            System.out.println("✅ Test passed!");
        } else {
            System.out.println("❌ Test failed. Expected 5 but got " + result);
            System.exit(1);
        }
    }
}

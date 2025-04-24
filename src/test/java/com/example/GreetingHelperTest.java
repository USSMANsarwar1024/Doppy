package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class GreetingHelperTest {

    @Test
    public void testGreetingMessage() {
        GreetingHelper helper = new GreetingHelper();
        String result = helper.getGreetingMessage();
        assertEquals("<h1>Hello, welcome to the Greeting Web App!</h1>", result);
    }
}

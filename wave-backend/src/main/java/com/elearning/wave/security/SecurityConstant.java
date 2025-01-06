package com.elearning.wave.security;

public class SecurityConstant {
    public static final String[] WHITE_LIST_URL = {
            "/api/users/register",
            "/api/users/login",
            "/h2-console/**",
            "/error"
    };
}
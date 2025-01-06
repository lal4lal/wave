package com.elearning.wave.model.dto;

public class AuthResponseDTO {
    private String accessToken;
    private String tokenType = "Bearer ";
    private UserDTO userDTO;

    public AuthResponseDTO(String accessToken, UserDTO userDTO) {
        this.accessToken = accessToken;
        this.userDTO = userDTO;
    }

    public String getAccessToken() {
        return accessToken;
    }
    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }
    public String getTokenType() {
        return tokenType;
    }
    public void setTokenType(String tokenType) {
        this.tokenType = tokenType;
    }
    public UserDTO getUserDTO() {
        return userDTO;
    }
    public void setUserDTO(UserDTO userDTO) {
        this.userDTO = userDTO;
    }
}

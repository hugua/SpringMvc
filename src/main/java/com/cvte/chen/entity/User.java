package com.cvte.chen.entity;

public class User {
    private Integer id;

    private String username;

    private String password;

    private Integer role;

    private String cardnum;

    private String academy;

    private String series;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public String getCardnum() {
        return cardnum;
    }

    public void setCardnum(String cardnum) {
        this.cardnum = cardnum == null ? null : cardnum.trim();
    }

    public String getAcademy() {
        return academy;
    }

    public void setAcademy(String academy) {
        this.academy = academy == null ? null : academy.trim();
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series == null ? null : series.trim();
    }

    public User(String username, String password, Integer role) {
        this.username = username;
        this.password = password;
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", role=" + role +
                ", cardnum='" + cardnum + '\'' +
                ", academy='" + academy + '\'' +
                ", series='" + series + '\'' +
                '}';
    }


    public User(Integer id, String username, String password, Integer role, String cardnum, String academy, String series) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
        this.cardnum = cardnum;
        this.academy = academy;
        this.series = series;
    }

    public User() {
    }
}
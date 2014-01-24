package com.cs

class Album {
    String title
    static hasMany = [songs:Song]

    static constraints = {
    }
}

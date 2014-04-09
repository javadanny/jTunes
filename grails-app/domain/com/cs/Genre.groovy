package com.cs

class Genre {
    Integer id
    String name
    String description

    //static hasMany = [book:Book]
    //static belongsTo = Book      <-- bidirectional; cascade delete

    static mapping = {
        table 'genre'
        version false

        id column:"genre_id"
        name column:"genre_name"
        description column:"genre_desc"
    }
    static constraints = {
    }
}

package com.cs

class Book {
    Integer id
    String title
    String author
    java.sql.Date startDate
    java.sql.Date endDate
    Integer rating
    Boolean isCompleted
    Integer numOfPages
    Integer genre

    static mapping = {
        table 'book'
        version false

        id column:'book_id'
        title column:'title'
        author column:'author'
        startDate column:'startDate'
        endDate column:'endDate'
        rating column:'rating'
        isCompleted column:'isCompleted'
        numOfPages column:'numOfPages'
        genre column:'genre'
    }

    static constraints = {
        title blank: false
        author blank: false
        rating range: 1..10
        endDate blank: true
    }
}

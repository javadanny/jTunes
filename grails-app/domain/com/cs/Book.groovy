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
	String bookUrl
	String imageUrl
	String review

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
		bookUrl column:'bookUrl'
		imageUrl column:'imageUrl'
		review column:'review'
    }

    static constraints = {
        title blank: false
        author blank: false
        rating range: 1..10
		bookUrl url: true
		imageUrl url: true
    }
}

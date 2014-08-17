package com.cs

import org.springframework.dao.DataIntegrityViolationException

class BookController {

	/* GRAILS: lets you control the HTTP methods that can be used.  You can 
	 * also do this on your own which is recommended for more complex needs
	 * http://grails.org/doc/latest/ref/Controllers/allowedMethods.html
	 */
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    /* 
     * GRAILS: this is the default if no actions are requested in the URL
     */
	def index() {
		System.out.println("Hitting index...")
		
		// forwards to the list action
        redirect(action: "list", params: params)
    }
	
	/*
	 * APP: list is an action that populates the Books table
	 */
    def list(Integer max) {
		System.out.println("Hitting list(Integer max)...")
		
		// this next statement sets the # of elements in the list
		// but it doesn't really seem to do anything, always defaults to 10 
		params.max = Math.min(max ?:10, 100)
        [bookInstanceList: Book.list(params), bookInstanceTotal: Book.count()]
		
    }
	
	/*
	 * APP: this action sets up the form to create a new book
	 */
    def create() {
		System.out.println("create()")
		
		// create a new instance of book with empty params
        [bookInstance: new Book(params)]
    }

	/*
	 * APP: Create a new book and then reshow the detail in browse mode
	 */
    def save() {
		System.out.println("save()")
		
		// create an instance of Book with params from the screen
        def bookInstance = new Book(params)
		// save immediately due to flush=true
        if (!bookInstance.save(flush: true)) {
            render(view: "create", model: [bookInstance: bookInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'book.label', default: 'Book'), bookInstance.id])
        redirect(action: "show", id: bookInstance.id)
    }
	
	/*
	 * APP: shows a book in browse mode
	 */
    def show(Long id) {
		System.out.println("show(Long id)")
		
        def bookInstance = Book.get(id)
        def genreInstance = Genre.get(bookInstance.genre)

		if (genreInstance) {
			println("genre: " + genreInstance.name)
		}
		
        if (!bookInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'book.label', default: 'Book'), id])
            redirect(action: "list")
            return
        }

        [bookInstance: bookInstance]
    }

	/*
	 * APP: puts a browsed book into edit mode
	 */
    def edit(Long id) {
		System.out.println("edit(Long id)")
		System.out.println("List of genre: " + Genre.list())
		
        def bookInstance = Book.get(id)
		def genreInstance = Genre.get(bookInstance.genre)
        if (!bookInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'book.label', default: 'Book'), id])
            redirect(action: "list")
            return
        }

        [bookInstance: bookInstance]
    }

	/*
	 * APP: updates a page
	 */
    def update(Long id, Long version) {
		System.out.println("update(Long id, Long version")
        def bookInstance = Book.get(id)
        if (!bookInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'book.label', default: 'Book'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (bookInstance.version > version) {
                bookInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'book.label', default: 'Book')] as Object[],
                          "Another user has updated this Book while you were editing")
                render(view: "edit", model: [bookInstance: bookInstance])
                return
            }
        }

        bookInstance.properties = params

        if (!bookInstance.save(flush: true)) {
            render(view: "edit", model: [bookInstance: bookInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'book.label', default: 'Book'), bookInstance.id])
        redirect(action: "show", id: bookInstance.id)
    }

	/*
	 * APP: deletes a book from the browse book page
	 */
    def delete(Long id) {
		System.out.println("delete(Long id)")
        def bookInstance = Book.get(id)
        if (!bookInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'book.label', default: 'Book'), id])
            redirect(action: "list")
            return
        }

        try {
            bookInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'book.label', default: 'Book'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'book.label', default: 'Book'), id])
            redirect(action: "show", id: id)
        }
    }
}

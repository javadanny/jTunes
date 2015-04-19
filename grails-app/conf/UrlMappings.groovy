class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')

        "/jumbo"(view:'/jumbotron')
		"/system"(view:'/system')
		"/temp"(view:'/template')
	}
}

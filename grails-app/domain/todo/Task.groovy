package todo

class Task {

	String title
	String description
	String user
	Date dueDate

    static constraints = {
    	title(nullable: false)
    	description(nullable: false, maxSize: 1000)
    	user(inList: ["Simon", "Ewald", "Don", "Chris"])
    	dueDate(nullable: false)
    }
}

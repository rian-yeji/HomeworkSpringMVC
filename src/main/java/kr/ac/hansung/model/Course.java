package kr.ac.hansung.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Course {
	private int year;
	private int semester;
	
	@NotEmpty(message="The course ID cannot be empty")
	@Size(min=7, max=7, message="Course ID must be 7 chars")
	private String course_id;
	
	@NotEmpty(message="The title cannot be empty")
	@Size(min=3, max=15, message="Title must be between 3 and 15 chars")
	private String title;
	
	private String division;
	
	private int credit;
	
	public Course(String division, int credit) {
		this.division = division;
		this.credit = credit;
	}
	
	public Course(int year, int semester, String course_id, String title, String division, int credit) {
		this.year = year;
		this.semester = semester;
		this.course_id = course_id;
		this.title = title;
		this.division = division;
		this.credit = credit;
	}
}

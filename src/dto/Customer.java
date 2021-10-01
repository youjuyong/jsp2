package dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Customer {
	private int idx;
	private String name;
	private String password;
	private String email;
	private String addr;
	private String gender;
	private int age;
	private String hobby;
}

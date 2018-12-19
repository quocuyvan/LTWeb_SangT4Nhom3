package BEAN;

public class Question {
	private int idQuest;
	private String questname;
	private String a;
	private String b;
	private String c;
	private String d;
	private String answer;
	private String type;
	private int number;
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Question() {}
	
	public String getQuestname() {
		return questname;
	}

	public void setQuestname(String username) {
		this.questname = username;
	}

	public int getID() {
		return idQuest;
	}

	public int setID(int username) {
		return this.idQuest = username;
	}
	
	public String getA() {
		return a;
	}

	public void setA(String password) {
		this.a = password;
	}


	public String getB() {
		return b;
	}

	public void setB(String password) {
		this.b = password;
	}
	public String getC() {
		return c;
	}

	public void setC(String password) {
		this.c = password;
	}
	public String getD() {
		return d;
	}

	public void setD(String password) {
		this.d = password;
	}
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String username) {
		this.answer = username;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}

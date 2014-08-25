package dogStack;

public class Dog {

	private String breed = new String();
	private String name  = new String();
	private int points;

	public Dog(String breedName,int points){

		breed = breedName;
		this.points = points;
	}

	public void setBreed(String breedName){
		breed = breedName;
	}

	public String getBreed(){
		return breed;
	}

	public int getPoints(){
		return points;
	}
}


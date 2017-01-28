package models;

public interface Node {
	Node[] getChildren();
	int getValue();
	public void addChildren(Node child); // add children to the tree node
	int getSum(); // return the sum of the subtree
	void updateSum(int value); // update the sum of the subtree
}

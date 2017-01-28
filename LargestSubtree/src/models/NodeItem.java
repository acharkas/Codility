package models;

import java.util.ArrayList;

public class NodeItem implements Node {

	private int _value;
	private ArrayList<Node> _children;
	private int _sum;
	
	// constructor
	public NodeItem(int value){
		_value = value;
		_children = new ArrayList<Node>();
		_sum = 0;
	}
	
	// interface functions implementation
	@Override
	public Node[] getChildren() {
		Node[] nodes = new Node[_children.size()];
		return _children.toArray(nodes);
	}

	@Override
	public int getValue() {
		return _value;
	}

	@Override
	public void addChildren(Node child) {
		this._children.add(child);
	}
	
	@Override
	public int getSum() {
		return _sum;
	}

	@Override
	public void updateSum(int value) {
		_sum += value;
	}

	// method to get largest tree
	public static Node findLargestSubtree(Node tree){
		if(tree == null){
			return null;
		}
		
		// calculate sum for children
		Node[] nodes = tree.getChildren();
		Node largestNode = null; // largest children after updating the children
		Node maxNode = null; // max node of all children if different
		Node returnedNode = null; // return value for each child
		
		int maxSum = Integer.MIN_VALUE;
		
		// loop over node children and get their sum
		for (int i = 0; i < nodes.length; i++) {
			returnedNode = findLargestSubtree(nodes[i]);

			// get the maximum returned node
			if(maxNode == null || returnedNode.getSum() > maxNode.getSum()){
				maxNode = returnedNode;
			}
			
			// update children sum
			tree.updateSum(nodes[i].getSum());
			
			// get largest sum of node from children
			if(tree.getSum() > maxSum){
				maxSum = nodes[i].getSum();
				largestNode = nodes[i];
			}
		}

		// update parent node sum
		tree.updateSum(tree.getValue());
		
		// if no largest node or this node's sum is bigger 
		if(largestNode == null || tree.getSum() > largestNode.getSum()){
			largestNode = tree;
		}
		
		// if no max or this node's sum is bigger 
		if(maxNode == null || largestNode.getSum() > maxNode.getSum()){
			maxNode = largestNode;
		}
		
		return maxNode;
	}
	
	public String toString() {
        return "Node: " + this.getValue() + ", Sum: " + this.getSum();
    }

}

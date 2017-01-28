import models.Node;
import models.NodeItem;

public class LargetSubtree {

	public static void main(String[] args) {
//		NodeItem root = new NodeItem(0);
//		NodeItem n1 = new NodeItem(1);
//		NodeItem n2 = new NodeItem(2);
//		NodeItem n3 = new NodeItem(3);
//		NodeItem n4 = new NodeItem(4);
//		NodeItem n5 = new NodeItem(5);
//		NodeItem n6 = new NodeItem(6);
//		NodeItem n7 = new NodeItem(7);
//		NodeItem n8 = new NodeItem(8);
//		NodeItem n9 = new NodeItem(9);
//		NodeItem n10 = new NodeItem(10);
//		NodeItem n11 = new NodeItem(11);
//		NodeItem n12 = new NodeItem(12);
//		NodeItem n13 = new NodeItem(13);
//		NodeItem n14 = new NodeItem(14);
//		NodeItem n15 = new NodeItem(15);
//		
//		root.addChildren(n1);
//		root.addChildren(n2);
//		
//		n1.addChildren(n3);
//		n1.addChildren(n4);
//		n1.addChildren(n5);
//		
//		n3.addChildren(n7);
//		n3.addChildren(n8);
//		n3.addChildren(n9);
//		n3.addChildren(n10);
//		
//		n2.addChildren(n6);
//		
//		n6.addChildren(n11);
//		n6.addChildren(n12);
//		
//		n11.addChildren(n13);
//		n11.addChildren(n14);
//		
//		n13.addChildren(n15);
		
		
		NodeItem root = new NodeItem(-15);
		NodeItem n1 = new NodeItem(5);
		NodeItem n2 = new NodeItem(6);
		NodeItem n3 = new NodeItem(-8);
		NodeItem n4 = new NodeItem(1);
		NodeItem n5 = new NodeItem(2);
		NodeItem n6 = new NodeItem(6);
		NodeItem n7 = new NodeItem(3);
		NodeItem n8 = new NodeItem(9);
		NodeItem n9 = new NodeItem(0);
		NodeItem n10 = new NodeItem(4);
		NodeItem n11 = new NodeItem(-1);
		NodeItem n12 = new NodeItem(10);
		
		root.addChildren(n1);
		root.addChildren(n2);
		
		n1.addChildren(n3);
		n1.addChildren(n4);
		
		n3.addChildren(n5);
		n3.addChildren(n6);
		
		n2.addChildren(n7);
		n2.addChildren(n8);

		n8.addChildren(n9);
		
		n9.addChildren(n10);
		n9.addChildren(n11);
		
		n11.addChildren(n12);
		
		Node maxNode = NodeItem.findLargestSubtree(root);
		System.out.println(maxNode);
//		System.out.println("max node " + maxNode.getValue() + ": sum " + maxNode.getSum());

	}
}

package work1;

import java.util.ArrayList;


public class select {

	//セレクト画面でやってほしいことを記述していく
	//オーダー情報がかぶってるやつは一つにしてほしい。


	public void kore(){

	Order order1=new Order("a",2);
	Order new_product=new Order("b",1);
	Order order2=new Order("b",3);
	Order order3=new Order("c",4);

	ArrayList<Order> orders = new ArrayList<Order>();


	orders.add(order1);
	orders.add(order2);
	orders.add(order3);
	boolean exist_product=false;
	for(int i=0;i<orders.size();i++){


	    if(orders.get(i).getA()==new_product.getA()){

            orders.get(i).setNumber(orders.get(i).getNumber()+new_product.getNumber());

	    	exist_product=true;
	    }


	}

	if(exist_product==false){

		orders.add(new_product);
	}





	}



}

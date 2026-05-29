package com.model;

public class Crops {
	private int id;
    private int farmer_id;
    private String crop_name;
    private String crop_type;
    private int quantity;
   private int price;
    
    public int getId() {
	return id;
}

   public void setId(int id) {
	this.id = id;
   }

   public int getFarmer_id() {
	return farmer_id;
   }

   public void setFarmer_id(int farmer_id) {
	this.farmer_id = farmer_id;
   }

   public String getCrop_name() {
	return crop_name;
   }

   public void setCrop_name(String crop_name) {
	this.crop_name = crop_name;
   }

   public String getCrop_type() {
	return crop_type;
   }

   public void setCrop_type(String crop_type) {
	this.crop_type = crop_type;
   }

   public int getQuantity() {
	return quantity;
   }

   public void setQuantity(int quantity) {
	this.quantity = quantity;
   }

   public int getPrice() {
	return price;
   }

   public void setPrice(int price) {
	this.price = price;
   }

	public Crops(int id, int farmer_id, String crop_name, String crop_type, int quantity, int price) {
	super();
	this.id = id;
	this.farmer_id = farmer_id;
	this.crop_name = crop_name;
	this.crop_type = crop_type;
	this.quantity = quantity;
	this.price = price;
}

	public Crops(){
    	
    }

	
}
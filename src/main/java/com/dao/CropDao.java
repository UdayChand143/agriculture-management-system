package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.Crops;
import com.vcube.utility.DBConnection;

public class CropDao implements CropDaoInterface {

	String status = "";

	@Override
	public String addcrops(Crops c) {

		try {

			DBConnection db = new DBConnection();

			Connection con = db.getConnection();

			PreparedStatement ps = con.prepareStatement(

					"INSERT INTO crops(farmer_id,crop_name,crop_type,quantity,price) VALUES(?,?,?,?,?)");

			ps.setInt(1, c.getFarmer_id());
			ps.setString(2, c.getCrop_name());
			ps.setString(3, c.getCrop_type());
			ps.setInt(4, c.getQuantity());
			ps.setInt(5, c.getPrice());

			int n = ps.executeUpdate();

			if (n > 0) {

				status = "success";
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return status;
	}

	// VIEW OWN CROPS

	public ResultSet getCropsByFarmer(int farmerId) {

		ResultSet rs = null;

		try {

			DBConnection db = new DBConnection();

			Connection con = db.getConnection();

			PreparedStatement ps = con.prepareStatement(

					"SELECT * FROM crops WHERE farmer_id=?");

			ps.setInt(1, farmerId);

			rs = ps.executeQuery();

		} catch (Exception e) {

			e.printStackTrace();
		}

		return rs;
	}

	// BUY OTHER FARMER CROPS

	public ResultSet getOtherFarmerCrops(int farmerId) {

		ResultSet rs = null;

		try {

			DBConnection db = new DBConnection();

			Connection con = db.getConnection();

			PreparedStatement ps = con.prepareStatement(

					"SELECT * FROM crops WHERE farmer_id != ?");

			ps.setInt(1, farmerId);

			rs = ps.executeQuery();

		} catch (Exception e) {

			e.printStackTrace();
		}

		return rs;
	}

}
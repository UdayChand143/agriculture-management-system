package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.Farmer;
import com.model.FarmerLoginModel;
import com.vcube.utility.DBConnection;

public class FarmerDao implements FarmerDaoInterface {

	String status = "failure";

	@Override
	public String registerfarmer(Farmer f) {

		try {

			DBConnection db = new DBConnection();

			Connection con = db.getConnection();

			PreparedStatement ps = con.prepareStatement(

					"INSERT INTO farmers(fullname,username,password,mobile) VALUES(?,?,?,?)");

			ps.setString(1, f.getFullname());
			ps.setString(2, f.getUsername());
			ps.setString(3, f.getPassword());
			ps.setString(4, f.getMobile());

			int n = ps.executeUpdate();

			if (n > 0) {

				status = "success";
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return status;
	}

	@Override
	public Farmer loginfarmer(FarmerLoginModel lm) {

		Farmer f = null;

		try {

			DBConnection db = new DBConnection();

			Connection con = db.getConnection();

			PreparedStatement ps = con.prepareStatement(

					"SELECT * FROM farmers WHERE username=? AND password=?");

			ps.setString(1, lm.getUsername());
			ps.setString(2, lm.getPassword());

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				f = new Farmer();

				f.setfarmerId(rs.getInt("farmer_id"));
				f.setFullname(rs.getString("fullname"));
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return f;
	}
}
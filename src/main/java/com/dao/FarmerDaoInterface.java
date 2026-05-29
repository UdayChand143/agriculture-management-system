package com.dao;

import com.model.Farmer;
import com.model.FarmerLoginModel;

public interface FarmerDaoInterface {
	public String registerfarmer(Farmer f);
	public Farmer loginfarmer(FarmerLoginModel lm);
}

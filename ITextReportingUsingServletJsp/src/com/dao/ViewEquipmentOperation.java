package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.EquipmentDetail;

public class ViewEquipmentOperation {

	private List<EquipmentDetail> list=new ArrayList<EquipmentDetail>();

	public List<EquipmentDetail> viewEquipment() {
		
		String sql = "SELECT * FROM equipment_details e";

		try {
			ResultSet rs = JdbcUtility.getResultSet(sql);
			while (rs.next()) {
				EquipmentDetail equipmentDetail = new EquipmentDetail();
				equipmentDetail.setEquipId(rs.getInt(1));
				equipmentDetail.setEquipName(rs.getString(2));
				equipmentDetail.setCompanyName(rs.getString(3));
				equipmentDetail.setTotalQuantity(rs.getInt(4));
				equipmentDetail.setPricePerQuantity(rs.getDouble(5));
				equipmentDetail.setTotalPrice(rs.getDouble(6));
				
				list.add(equipmentDetail);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
}

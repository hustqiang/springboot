package com.how2java.springboot.dao;

import com.how2java.springboot.pojo.Cost;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CostDAO extends JpaRepository<Cost,Integer> {

}

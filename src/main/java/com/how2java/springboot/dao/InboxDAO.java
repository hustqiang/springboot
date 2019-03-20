package com.how2java.springboot.dao;

import com.how2java.springboot.pojo.Inbox;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InboxDAO extends JpaRepository<Inbox,String> {
}

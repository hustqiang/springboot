package com.how2java.springboot.pojo;

import javax.persistence.*;
import java.sql.Time;
import java.util.Date;

@Entity
@Table(name = "inbox1")
public class Inbox {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "title")
    private String title;

    @Column(name = "description")
    private String description;

    @Column(name = "priority")
    private String priority;

    @Column(name = "allDay")
    private String allDay;

    @Column(name = "startTime")
    private Date startTime;

    @Column(name = "endTime")
    private Date endTime;

    @Column(name = "estimateTime")
    private Time estimateTime;

    @Column(name = "environment")
    private String environment;

    @Column(name = "project")
    private String project;

    @Column(name = "label")
    private String label;

    @Column(name = "repeatOrNot")
    private String repeatOrNot;

    @Column(name = "remind")
    private Date remind;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public String isAllDay() {
        return allDay;
    }

    public void setAllDay(String allDay) {
        this.allDay = allDay;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Time getEstimateTime() {
        return estimateTime;
    }

    public void setEstimateTime(Time estimateTime) {
        this.estimateTime = estimateTime;
    }

    public String getEnvironment() {
        return environment;
    }

    public void setEnvironment(String environment) {
        this.environment = environment;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getRepeat() {
        return repeatOrNot;
    }

    public void setRepeat(String repeatOrNot) {
        this.repeatOrNot = repeatOrNot;
    }

    public Date getRemind() {
        return remind;
    }

    public void setRemind(Date remind) {
        this.remind = remind;
    }


}

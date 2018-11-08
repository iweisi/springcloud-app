package com.wangsong.system.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Resources implements Serializable {

    private String id;
    private String pid;
    private String name;
    private String url;
    private String type;
    private String sort;


}
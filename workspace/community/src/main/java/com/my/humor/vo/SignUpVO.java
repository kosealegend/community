package com.my.humor.vo;

import java.sql.Date;
import lombok.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SignUpVO {
    private int age;
    private String  userId, password, passwordCheck, nickname, email, gender, role, phoneNumber;
    private Date joinDate;
}

package com.my.humor.vo;

import java.sql.Date;
import lombok.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SignUpVO {
    private int userId, age;
    private String password, passwordCheck, nickname, email, gender, role, phoneNumber;
    private Date joinDate;
}

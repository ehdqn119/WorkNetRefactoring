package com.kmu.worknet.job.rating.service;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Assessment {

    private int idx;

    @NotBlank(message = "종류는 필수 값 입니다.")
    @Pattern(regexp = "(^[1-4])", message = "없는 값입니다.")
    private String kind;

    @NotBlank(message = "공고는 필수 값 입니다.")
    private String wantedAuthNo;

    @NotBlank(message = "별점은 필수 값 입니다.")
    @Pattern(regexp = "(^[1-5])", message = "잘못된 값입니다.")
    private String ratingValue;

    private String beforeWantedAuthNo;
}

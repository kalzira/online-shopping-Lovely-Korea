package me.zhulin.onlineshopping.enums;

import lombok.Getter;

/**

 */
@Getter
public enum ProductStatusEnum implements CodeEnum{
    UP(0, "В наличии"),
    DOWN(1, "Нет в наличии")
    ;
    private Integer code;
    private String message;

    ProductStatusEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public String getStatus(Integer code) {

        for(ProductStatusEnum statusEnum : ProductStatusEnum.values()) {
            if(statusEnum.getCode() == code) return statusEnum.getMessage();
        }
        return "";
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }}

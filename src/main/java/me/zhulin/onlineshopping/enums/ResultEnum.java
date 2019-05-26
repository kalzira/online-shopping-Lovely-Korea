package me.zhulin.onlineshopping.enums;

import lombok.Getter;

/**

 */
@Getter
public enum ResultEnum  {

    PARAM_ERROR(1, "Parameter Error!"),
    PRODUCT_NOT_EXIST(10, "Товара не существует!"),
    PRODUCT_NOT_ENOUGH(11, "Недостаточно товара в наличии!"),
    PRODUCT_STATUS_ERROR(12, "Неккореткный статус!"),
    PRODUCT_OFF_SALE(13,"Товар распродан!"),
    PRODUCT_NOT_IN_CART(14,"Товара нет в корзине!"),
    CART_CHECKOUT_SUCCESS(20, "Товар заказан! "),

    CATEGORY_NOT_FOUND(30, "Такой категории не существует!"),

    ORDER_NOT_FOUND(60, "Заказов нет!"),
    ORDER_STATUS_ERROR(61, "Неккореткный статус"),


    VALID_ERROR(50, "Неправильная информация"),
    USER_NOT_FOUNT(40,"Пользователь не найден!")
    ;

    private Integer code;

    private String message;

    ResultEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
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

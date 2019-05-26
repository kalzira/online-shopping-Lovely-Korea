package me.zhulin.onlineshopping.enums;

/**

 */
public enum OrderStatusEnum implements CodeEnum {
    NEW(0, "Новый заказ"),
    FINISHED(1, "Завершен"),
    CANCELED(2, "Отменен")
    ;

    private  int code;
    private String msg;

    OrderStatusEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    @Override
    public Integer getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }}

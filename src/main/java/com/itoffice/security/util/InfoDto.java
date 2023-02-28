package com.itoffice.security.util;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.util.Objects;

@AllArgsConstructor
@NoArgsConstructor
public class InfoDto {
    private Integer men;
    private Integer women;
    private Integer all;

    public Integer getMen() {
        return Objects.isNull(this.men) ? 0 : this.men;
    }

    public void setMen(Integer men) {
        this.men = men;
    }

    public Integer getWomen() {
        return Objects.isNull(this.women) ? 0 : this.women;
    }

    public void setWomen(Integer women) {
        this.women = women;
    }

    public Integer getAll() {
        return all;
    }

    public void setAll(Integer all) {
        this.all = all;
    }
}

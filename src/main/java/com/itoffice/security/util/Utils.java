package com.itoffice.security.util;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class Utils {
    public static <T> Page<T> getPageFromList(List<T> content, int page, int size) {
        return new PageImpl<>(content, PageRequest.of(page, size), content.size());
    }

}

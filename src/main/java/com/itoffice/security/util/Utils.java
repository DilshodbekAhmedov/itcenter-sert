package com.itoffice.security.util;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class Utils {
    private static <T> List<T> detachPageFromList(List<T> content, int offset, int pageSize) {
        int start = offset * pageSize;
        int end = Math.min(pageSize + (offset * pageSize), content.size());
        return start > end ? new ArrayList<>() : content.subList(start, end);
    }

    public static <T> Page<T> getPageFromList(List<T> content, int offset, int pageSize) {
        List<T> page = detachPageFromList(content, offset, pageSize);

        Pageable pageable = PageRequest.of(offset, pageSize);
        return new PageImpl<>(page, pageable, content.size());
    }

}

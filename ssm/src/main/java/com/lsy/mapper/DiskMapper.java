package com.lsy.mapper;

import com.lsy.pojo.Disk;

import java.util.List;

/**
 * Created by Administrator on 2017/2/21 0021.
 */
public interface DiskMapper {
    List<Disk> findByFid(Integer path);

    void saveFolder(Disk disk);
}

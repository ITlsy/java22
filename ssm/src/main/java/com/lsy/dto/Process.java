package com.lsy.dto;

import lombok.Data;
import org.activiti.engine.history.HistoricActivityInstance;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;

import java.util.List;

/**
 * Created by Administrator on 2017/3/9 0009.
 */
@Data
public class Process {
    private Long id;
    private String processInstanceId;
    private String processDefinitionName;
    private String userId;
    private String userName;
    private String applyTime;
    private String updateTime;
    private String taskName;
    private String taskAssignee;
    //流程任务
    private Task task;
    //运行中的流程实例
    private ProcessInstance processInstance;
    //历史流程实例
    private HistoricProcessInstance historicProcessInstance;
    //流程定义
    private ProcessDefinition processDefinition;
    //流程活动节点
    private List<HistoricActivityInstance> actList;;

}

package com.wk.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wk.model.TKnowledge;
import com.wk.service.Impl.KnowledgeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


/**
 * Created by 锴 on 2018/3/4.
 */
@Controller
@RequestMapping("/web/knowledge")
public class KnowledgeController {
    @Resource
    private KnowledgeService knowledgeService;

    @RequestMapping(method = RequestMethod.GET)
    public String situation(@RequestParam(required = true,defaultValue = "1") Integer page, HttpServletRequest request, Model model) {
        System.out.println("正在加载知识库页面");
        //PageHelper.startPage(page, pageSize);page默认值是1，pageSize默认是10，意思是第一页开始，每页显示 10条记录
        PageHelper.startPage(page, 5);
        List<TKnowledge> knowledgeList = knowledgeService.selectAll();
        PageInfo<TKnowledge> p = new PageInfo<TKnowledge>(knowledgeList);
        model.addAttribute("page", p);
        model.addAttribute("knowledgeList", knowledgeList);

        return "web/knowledge";
    }
    @RequestMapping(value = "{id}/delete",method = RequestMethod.GET)
    public String delete(@PathVariable int id){
        knowledgeService.deleteByPrimaryKey(id);
        return "redirect:/web/knowledge";
    }

}
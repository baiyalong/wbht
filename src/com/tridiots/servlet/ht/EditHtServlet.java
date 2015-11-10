package com.tridiots.servlet.ht;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.HtDAO;
import com.tridiots.dao.impl.HtDAOImpl;
import com.tridiots.domain.Ht;
import com.tridiots.domain.HtTax;

public class EditHtServlet extends HttpServlet
{
	private static final long serialVersionUID = -5918377372649351915L;
	private HtDAO htDao = new HtDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String domainKey = request.getParameter("id");
		String yiji = request.getParameter("yiji");
		String erji = request.getParameter("erji");
		String htlx = request.getParameter("htlx");
		String yaodian = request.getParameter("yaodian");
		String gslx = request.getParameter("gslx");
		//String sydq = request.getParameter("sydqname");
		String gjc = request.getParameter("gjc");
		String bz = request.getParameter("bz");
		String al = request.getParameter("al");
		
		//System.out.println("htlx-->"+htlx);
		Ht ht = new Ht();
		
		ht.setDomainKey(domainKey);
		ht.setFirstnode(yiji);
		ht.setSecondnode(erji);
		ht.setHtlx(htlx);
		ht.setYaodian(yaodian);
		ht.setGslx(gslx);
		//ht.setArea(sydq);
		ht.setKeyword(gjc);
		ht.setNote(bz);
		ht.setAl(al);
		/////////////////////////////////
		
		List<HtTax> taxs = new ArrayList<HtTax>();
		/////////////////////////////////////
		String yy_chd1 = request.getParameter("yy_chd1");
		String yy_tj1 = request.getParameter("yy_tj1");
		String yy_chd2 = request.getParameter("yy_chd2");
		String yy_tj2 = request.getParameter("yy_tj2");
		String yy_chd3 = request.getParameter("yy_chd3");
		String yy_tj3 = request.getParameter("yy_tj3");
		String yy_al = request.getParameter("yy_al");
		String yy_wq = request.getParameter("yy_wq");
		String yy_fx = request.getParameter("yy_fx");
		String yy_fg = request.getParameter("yy_fg");
		System.out.println("yy_fg-->"+yy_fg);
		
		HtTax yy = new HtTax();
		yy.setChd1(yy_chd1);
		yy.setChd2(yy_chd2);
		yy.setChd3(yy_chd3);
		yy.setTj1(yy_tj1);
		yy.setTj2(yy_tj2);
		yy.setTj3(yy_tj3);
		yy.setAl(yy_al);
		yy.setWq(yy_wq);
		yy.setFx(yy_fx);
		yy.setFg(yy_fg);
		yy.setHt_taxtype("营业税");
		yy.setHt_id(domainKey);
		
		taxs.add(yy);
		///////////////////////////////////////
		String qy_chd1 = request.getParameter("qy_chd1");
		String qy_tj1 = request.getParameter("qy_tj1");
		String qy_chd2 = request.getParameter("qy_chd2");
		String qy_tj2 = request.getParameter("qy_tj2");
		String qy_chd3 = request.getParameter("qy_chd3");
		String qy_tj3 = request.getParameter("qy_tj3");
		String qy_al = request.getParameter("qy_al");
		String qy_wq = request.getParameter("qy_wq");
		String qy_fx = request.getParameter("qy_fx");
		String qy_fg = request.getParameter("qy_fg");
		
		HtTax qy = new HtTax();
		
		qy.setChd1(qy_chd1);
		qy.setChd2(qy_chd2);
		qy.setChd3(qy_chd3);
		qy.setTj1(qy_tj1);
		qy.setTj2(qy_tj2);
		qy.setTj3(qy_tj3);
		qy.setAl(qy_al);
		qy.setWq(qy_wq);
		qy.setFx(qy_fx);
		qy.setFg(qy_fg);
		qy.setHt_taxtype("企业所得税");
		qy.setHt_id(domainKey);
		
		taxs.add(qy);
		
		//////////////////////////////////////
		String tdzz_chd1 = request.getParameter("tdzz_chd1");
		String tdzz_tj1 = request.getParameter("tdzz_tj1");
		String tdzz_chd2 = request.getParameter("tdzz_chd2");
		String tdzz_tj2 = request.getParameter("tdzz_tj2");
		String tdzz_chd3 = request.getParameter("tdzz_chd3");
		String tdzz_tj3 = request.getParameter("tdzz_tj3");
		String tdzz_al = request.getParameter("tdzz_al");
		String tdzz_wq = request.getParameter("tdzz_wq");
		String tdzz_fx = request.getParameter("tdzz_fx");
		String tdzz_fg = request.getParameter("tdzz_fg");
		
		HtTax tdzz = new HtTax();
		
		tdzz.setChd1(tdzz_chd1);
		tdzz.setChd2(tdzz_chd2);
		tdzz.setChd3(tdzz_chd3);
		tdzz.setTj1(tdzz_tj1);
		tdzz.setTj2(tdzz_tj2);
		tdzz.setTj3(tdzz_tj3);
		tdzz.setAl(tdzz_al);
		tdzz.setWq(tdzz_wq);
		tdzz.setFx(tdzz_fx);
		tdzz.setFg(tdzz_fg);
		tdzz.setHt_taxtype("土地增值税");
		tdzz.setHt_id(domainKey);
		
		taxs.add(tdzz);
		//////////////////////////////////////
		String zz_chd1 = request.getParameter("zz_chd1");
		String zz_tj1 = request.getParameter("zz_tj1");
		String zz_chd2 = request.getParameter("zz_chd2");
		String zz_tj2 = request.getParameter("zz_tj2");
		String zz_chd3 = request.getParameter("zz_chd3");
		String zz_tj3 = request.getParameter("zz_tj3");
		String zz_al = request.getParameter("zz_al");
		String zz_wq = request.getParameter("zz_wq");
		String zz_fx = request.getParameter("zz_fx");
		String zz_fg = request.getParameter("zz_fg");
		
		HtTax zz = new HtTax();
		
		zz.setChd1(zz_chd1);
		zz.setChd2(zz_chd2);
		zz.setChd3(zz_chd3);
		zz.setTj1(zz_tj1);
		zz.setTj2(zz_tj2);
		zz.setTj3(zz_tj3);
		zz.setAl(zz_al);
		zz.setWq(zz_wq);
		zz.setFx(zz_fx);
		zz.setFg(zz_fg);
		zz.setHt_taxtype("增值税");
		zz.setHt_id(domainKey);
		
		taxs.add(zz);
		///////////////////////////////////////
		String q_chd1 = request.getParameter("q_chd1");
		String q_tj1 = request.getParameter("q_tj1");
		String q_chd2 = request.getParameter("q_chd2");
		String q_tj2 = request.getParameter("q_tj2");
		String q_chd3 = request.getParameter("q_chd3");
		String q_tj3 = request.getParameter("q_tj3");
		String q_al = request.getParameter("q_al");
		String q_wq = request.getParameter("q_wq");
		String q_fx = request.getParameter("q_fx");
		String q_fg = request.getParameter("q_fg");
		
		HtTax q = new HtTax();
		
		q.setChd1(q_chd1);
		q.setChd2(q_chd2);
		q.setChd3(q_chd3);
		q.setTj1(q_tj1);
		q.setTj2(q_tj2);
		q.setTj3(q_tj3);
		q.setAl(q_al);
		q.setWq(q_wq);
		q.setFx(q_fx);
		q.setFg(q_fg);
		q.setHt_taxtype("契税");
		q.setHt_id(domainKey);
		
		taxs.add(q);
		//////////////////////////////////
		String grsd_chd1 = request.getParameter("grsd_chd1");
		String grsd_tj1 = request.getParameter("grsd_tj1");
		String grsd_chd2 = request.getParameter("grsd_chd2");
		String grsd_tj2 = request.getParameter("grsd_tj2");
		String grsd_chd3 = request.getParameter("grsd_chd3");
		String grsd_tj3 = request.getParameter("grsd_tj3");
		String grsd_al = request.getParameter("grsd_al");
		String grsd_wq = request.getParameter("grsd_wq");
		String grsd_fx = request.getParameter("grsd_fx");
		String grsd_fg = request.getParameter("grsd_fg");
		
		HtTax grsd = new HtTax();
		
		grsd.setChd1(grsd_chd1);
		grsd.setChd2(grsd_chd2);
		grsd.setChd3(grsd_chd3);
		grsd.setTj1(grsd_tj1);
		grsd.setTj2(grsd_tj2);
		grsd.setTj3(grsd_tj3);
		grsd.setAl(grsd_al);
		grsd.setWq(grsd_wq);
		grsd.setFx(grsd_fx);
		grsd.setFg(grsd_fg);
		grsd.setHt_taxtype("个人所得税");
		grsd.setHt_id(domainKey);
		
		taxs.add(grsd);
		////////////////////////////////////
		String fc_chd1 = request.getParameter("fc_chd1");
		String fc_tj1 = request.getParameter("fc_tj1");
		String fc_chd2 = request.getParameter("fc_chd2");
		String fc_tj2 = request.getParameter("fc_tj2");
		String fc_chd3 = request.getParameter("fc_chd3");
		String fc_tj3 = request.getParameter("fc_tj3");
		String fc_al = request.getParameter("fc_al");
		String fc_wq = request.getParameter("fc_wq");
		String fc_fx = request.getParameter("fc_fx");
		String fc_fg = request.getParameter("fc_fg");
		
		HtTax fc = new HtTax();
		
		fc.setChd1(fc_chd1);
		fc.setChd2(fc_chd2);
		fc.setChd3(fc_chd3);
		fc.setTj1(fc_tj1);
		fc.setTj2(fc_tj2);
		fc.setTj3(fc_tj3);
		fc.setAl(fc_al);
		fc.setWq(fc_wq);
		fc.setFx(fc_fx);
		fc.setFg(fc_fg);
		fc.setHt_taxtype("房产税");
		fc.setHt_id(domainKey);
		
		taxs.add(fc);
		///////////////////////////////////
		String tdsy_chd1 = request.getParameter("tdsy_chd1");
		String tdsy_tj1 = request.getParameter("tdsy_tj1");
		String tdsy_chd2 = request.getParameter("tdsy_chd2");
		String tdsy_tj2 = request.getParameter("tdsy_tj2");
		String tdsy_chd3 = request.getParameter("tdsy_chd3");
		String tdsy_tj3 = request.getParameter("tdsy_tj3");
		String tdsy_al = request.getParameter("tdsy_al");
		String tdsy_wq = request.getParameter("tdsy_wq");
		String tdsy_fx = request.getParameter("tdsy_fx");
		String tdsy_fg = request.getParameter("tdsy_fg");
		
		HtTax tdsy = new HtTax();
		
		tdsy.setChd1(tdsy_chd1);
		tdsy.setChd2(tdsy_chd2);
		tdsy.setChd3(tdsy_chd3);
		tdsy.setTj1(tdsy_tj1);
		tdsy.setTj2(tdsy_tj2);
		tdsy.setTj3(tdsy_tj3);
		tdsy.setAl(tdsy_al);
		tdsy.setWq(tdsy_wq);
		tdsy.setFx(tdsy_fx);
		tdsy.setFg(tdsy_fg);
		tdsy.setHt_taxtype("土地使用税");
		tdsy.setHt_id(domainKey);
		
		taxs.add(tdsy);
		////////////////////////////////
		String yh_chd1 = request.getParameter("yh_chd1");
		String yh_tj1 = request.getParameter("yh_tj1");
		String yh_chd2 = request.getParameter("yh_chd2");
		String yh_tj2 = request.getParameter("yh_tj2");
		String yh_chd3 = request.getParameter("yh_chd3");
		String yh_tj3 = request.getParameter("yh_tj3");
		String yh_al = request.getParameter("yh_al");
		String yh_wq = request.getParameter("yh_wq");
		String yh_fx = request.getParameter("yh_fx");
		String yh_fg = request.getParameter("yh_fg");
		
		HtTax yh = new HtTax();
		
		yh.setChd1(yh_chd1);
		yh.setChd2(yh_chd2);
		yh.setChd3(yh_chd3);
		yh.setTj1(yh_tj1);
		yh.setTj2(yh_tj2);
		yh.setTj3(yh_tj3);
		yh.setAl(yh_al);
		yh.setWq(yh_wq);
		yh.setFx(yh_fx);
		yh.setFg(yh_fg);
		yh.setHt_taxtype("印花税");
		yh.setHt_id(domainKey);
		
		taxs.add(yh);
		///////////////////////////////////
		
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isEditHtSuccess", this.htDao.eDitHt(ht, taxs));
		
		response.setContentType("text/json; charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.println(JSONObject.fromObject(result).toString());
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (out != null) {
				out.close();
			}
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		this.doGet(request, response);
	}

}

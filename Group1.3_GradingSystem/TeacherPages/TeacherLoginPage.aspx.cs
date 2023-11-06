﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group1._3_GradingSystem.TeacherPages
{
	public partial class TeacherLoginPage : System.Web.UI.Page
	{
		protected void btnLogin_Click(object sender, EventArgs e)
		{
			Response.Redirect("TeacherHomePage.aspx");
		}
		protected void LoginDropDown_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (LoginDropDown.SelectedIndex == 1)
			{
				Response.Redirect("~/AdminPages/AdminLogin.aspx");
			}
			else if (LoginDropDown.SelectedIndex == 2)
			{
				Response.Redirect("~/TeacherPages/TeacherLoginPage.aspx");
			}
			else if (LoginDropDown.SelectedIndex == 3)
			{
				Response.Redirect("~/StudentPages/StudentLoginPage.aspx");
			}
		}
	}
}
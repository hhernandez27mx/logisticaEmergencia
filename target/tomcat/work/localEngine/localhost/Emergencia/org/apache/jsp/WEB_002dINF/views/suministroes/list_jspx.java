package org.apache.jsp.WEB_002dINF.views.suministroes;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class list_jspx extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(5);
    _jspx_dependants.add("/WEB-INF/tags/form/list.tagx");
    _jspx_dependants.add("/WEB-INF/tags/util/panel.tagx");
    _jspx_dependants.add("/WEB-INF/tags/form/fields/table.tagx");
    _jspx_dependants.add("/WEB-INF/tags/util/pagination.tagx");
    _jspx_dependants.add("/WEB-INF/tags/form/fields/column.tagx");
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/xml;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<div version=\"2.0\">");
      if (_jspx_meth_page_005flist_005f0(_jspx_page_context))
        return;
      out.write("</div>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_page_005flist_005f0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  page:list
    org.apache.jsp.tag.web.form.list_tagx _jspx_th_page_005flist_005f0 = new org.apache.jsp.tag.web.form.list_tagx();
    org.apache.jasper.runtime.AnnotationHelper.postConstruct(_jsp_annotationprocessor, _jspx_th_page_005flist_005f0);
    _jspx_th_page_005flist_005f0.setJspContext(_jspx_page_context);
    // /WEB-INF/views/suministroes/list.jspx(4,111) name = z type = java.lang.String reqTime = true required = false fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_page_005flist_005f0.setZ("oOR6dLr+rTH6Ylj+S1nBBGxzWsM=");
    // /WEB-INF/views/suministroes/list.jspx(4,111) name = items type = java.util.Collection reqTime = true required = true fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_page_005flist_005f0.setItems((java.util.Collection) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${suministroes}", java.util.Collection.class, (PageContext)_jspx_page_context, null, false));
    // /WEB-INF/views/suministroes/list.jspx(4,111) name = id type = java.lang.String reqTime = true required = true fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_page_005flist_005f0.setId("pl_emergencia_entidad_Suministro");
    _jspx_th_page_005flist_005f0.setJspBody(new Helper( 0, _jspx_page_context, _jspx_th_page_005flist_005f0, null));
    _jspx_th_page_005flist_005f0.doTag();
    org.apache.jasper.runtime.AnnotationHelper.preDestroy(_jsp_annotationprocessor, _jspx_th_page_005flist_005f0);
    return false;
  }

  private boolean _jspx_meth_table_005ftable_005f0(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  table:table
    org.apache.jsp.tag.web.form.fields.table_tagx _jspx_th_table_005ftable_005f0 = new org.apache.jsp.tag.web.form.fields.table_tagx();
    org.apache.jasper.runtime.AnnotationHelper.postConstruct(_jsp_annotationprocessor, _jspx_th_table_005ftable_005f0);
    _jspx_th_table_005ftable_005f0.setJspContext(_jspx_page_context);
    _jspx_th_table_005ftable_005f0.setParent(_jspx_parent);
    // /WEB-INF/views/suministroes/list.jspx(5,167) name = z type = java.lang.String reqTime = true required = false fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_table_005ftable_005f0.setZ("FSEQOb2ueyi0Jvs0HtfY91SFJFE=");
    // /WEB-INF/views/suministroes/list.jspx(5,167) name = typeIdFieldName type = java.lang.String reqTime = true required = false fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_table_005ftable_005f0.setTypeIdFieldName("idSuministro");
    // /WEB-INF/views/suministroes/list.jspx(5,167) name = path type = java.lang.String reqTime = true required = true fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_table_005ftable_005f0.setPath("/suministroes");
    // /WEB-INF/views/suministroes/list.jspx(5,167) name = id type = java.lang.String reqTime = true required = true fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_table_005ftable_005f0.setId("l_emergencia_entidad_Suministro");
    // /WEB-INF/views/suministroes/list.jspx(5,167) name = data type = java.util.Collection reqTime = true required = true fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_table_005ftable_005f0.setData((java.util.Collection) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${suministroes}", java.util.Collection.class, (PageContext)_jspx_page_context, null, false));
    _jspx_th_table_005ftable_005f0.setJspBody(new Helper( 1, _jspx_page_context, _jspx_th_table_005ftable_005f0, null));
    _jspx_th_table_005ftable_005f0.doTag();
    org.apache.jasper.runtime.AnnotationHelper.preDestroy(_jsp_annotationprocessor, _jspx_th_table_005ftable_005f0);
    return false;
  }

  private boolean _jspx_meth_table_005fcolumn_005f0(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  table:column
    org.apache.jsp.tag.web.form.fields.column_tagx _jspx_th_table_005fcolumn_005f0 = new org.apache.jsp.tag.web.form.fields.column_tagx();
    org.apache.jasper.runtime.AnnotationHelper.postConstruct(_jsp_annotationprocessor, _jspx_th_table_005fcolumn_005f0);
    _jspx_th_table_005fcolumn_005f0.setJspContext(_jspx_page_context);
    _jspx_th_table_005fcolumn_005f0.setParent(_jspx_parent);
    // /WEB-INF/views/suministroes/list.jspx(8,123) name = z type = java.lang.String reqTime = true required = false fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_table_005fcolumn_005f0.setZ("jcC+/ko6rnpsRuMzba1enSdL6Lk=");
    // /WEB-INF/views/suministroes/list.jspx(8,123) name = property type = java.lang.String reqTime = true required = true fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_table_005fcolumn_005f0.setProperty("nombre");
    // /WEB-INF/views/suministroes/list.jspx(8,123) name = id type = java.lang.String reqTime = true required = true fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_table_005fcolumn_005f0.setId("c_emergencia_entidad_Suministro_nombre");
    _jspx_th_table_005fcolumn_005f0.doTag();
    org.apache.jasper.runtime.AnnotationHelper.preDestroy(_jsp_annotationprocessor, _jspx_th_table_005fcolumn_005f0);
    return false;
  }

  private class Helper
      extends org.apache.jasper.runtime.JspFragmentHelper
  {
    private javax.servlet.jsp.tagext.JspTag _jspx_parent;
    private int[] _jspx_push_body_count;

    public Helper( int discriminator, JspContext jspContext, javax.servlet.jsp.tagext.JspTag _jspx_parent, int[] _jspx_push_body_count ) {
      super( discriminator, jspContext, _jspx_parent );
      this._jspx_parent = _jspx_parent;
      this._jspx_push_body_count = _jspx_push_body_count;
    }
    public boolean invoke0( JspWriter out ) 
      throws Throwable
    {
      if (_jspx_meth_table_005ftable_005f0(_jspx_parent, _jspx_page_context))
        return true;
      return false;
    }
    public boolean invoke1( JspWriter out ) 
      throws Throwable
    {
      if (_jspx_meth_table_005fcolumn_005f0(_jspx_parent, _jspx_page_context))
        return true;
      return false;
    }
    public void invoke( java.io.Writer writer )
      throws JspException
    {
      JspWriter out = null;
      if( writer != null ) {
        out = this.jspContext.pushBody(writer);
      } else {
        out = this.jspContext.getOut();
      }
      try {
        this.jspContext.getELContext().putContext(JspContext.class,this.jspContext);
        switch( this.discriminator ) {
          case 0:
            invoke0( out );
            break;
          case 1:
            invoke1( out );
            break;
        }
      }
      catch( Throwable e ) {
        if (e instanceof SkipPageException)
            throw (SkipPageException) e;
        throw new JspException( e );
      }
      finally {
        if( writer != null ) {
          this.jspContext.popBody();
        }
      }
    }
  }
}

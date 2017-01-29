package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("\t<title>Services</title>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<meta name = \"format-detection\" content = \"telephone=no\" />\n");
      out.write("\t<link rel=\"icon\" href=\"images/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/grid.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/contact-form.css\">\n");
      out.write("\n");
      out.write("\t<script src=\"js/jquery.js\"></script>\n");
      out.write("\t<script src=\"js/jquery-migrate-1.2.1.js\"></script>\n");
      out.write("\t<script src=\"js/script.js\"></script>\n");
      out.write("\t<script src='//maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false'></script>\n");
      out.write("\t<!--[if (gt IE 9)|!(IE)]><!-->\n");
      out.write("\t<script src=\"js/wow.js\"></script>\n");
      out.write("\t<script>\n");
      out.write("\t\t$(document).ready(function () {\n");
      out.write("\t\t\tif ($('html').hasClass('desktop')) {\n");
      out.write("\t\t\t\tnew WOW().init();\n");
      out.write("\t\t\t}\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("\t<!--<![endif]-->\n");
      out.write("\t<!--[if lt IE 8]>\n");
      out.write("\t<div style=' clear: both; text-align:center; position: relative;'>\n");
      out.write("\t <a href=\"http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode\">\n");
      out.write("\t\t <img src=\"images/ie8-panel/warning_bar_0000_us.jpg\" border=\"0\" height=\"42\" width=\"820\" alt=\"You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.\" />\n");
      out.write("\t </a>\n");
      out.write("\t</div>\n");
      out.write("\t<![endif]-->\n");
      out.write("\t<!--[if lt IE 9]>\n");
      out.write("\t\t<script src=\"js/html5shiv.js\"></script>\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/ie.css\">\n");
      out.write("\t<![endif]-->\n");
      out.write("\t</head>\n");
      out.write("    <body>\n");
      out.write("        <!--==============================header=================================-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "views/common/header.jsp", out, false);
      out.write("\n");
      out.write("        <!--==============================header=================================-->\n");
      out.write("        \n");
      out.write("        <!--=======content================================-->\n");
      out.write("        <section id=\"content\">\n");
      out.write("                <div class=\"full-width-container block-1\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                        <div class=\"grid_12\">\n");
      out.write("                                                <header>\n");
      out.write("                                                        <h2><span>Our Locations</span></h2>\n");
      out.write("                                                </header>\n");
      out.write("                                                <div class=\"content_map\">\n");
      out.write("                                                        <div class=\"google-map-api\"> \n");
      out.write("                                                                <div id=\"map-canvas\" class=\"gmap\"></div> \n");
      out.write("                                                        </div> \n");
      out.write("                                                </div>\n");
      out.write("                                        </div>\n");
      out.write("                                </div>\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"full-width-container block-2\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                        <div class=\"grid_5\">\n");
      out.write("                                                <form id=\"contact-form\">\n");
      out.write("                                                        <div class=\"contact-form-loader\"></div>\n");
      out.write("                                                                <header>\n");
      out.write("                                                                        <h2><span>Regist Form: </span></h2>\n");
      out.write("                                                                </header>\n");
      out.write("                                                                <fieldset>\n");
      out.write("                                                                                <label class=\"name\">\n");
      out.write("                                                                                        <span class=\"text\">Your Name:</span>\n");
      out.write("                                                                                        <input type=\"text\" name=\"name\" placeholder=\"\" value=\"\" data-constraints=\"@Required @JustLetters\" />\n");
      out.write("                                                                                                <span class=\"empty-message\">*This field is required.</span>\n");
      out.write("                                                                                                <span class=\"error-message\">*This is not a valid name.</span>\n");
      out.write("                                                                                </label>\n");
      out.write("                                                                                <label class=\"email\">\n");
      out.write("                                                                                        <span class=\"text\">Your E-mail:</span>\n");
      out.write("                                                                                        <input type=\"text\" name=\"email\" placeholder=\"\" value=\"\" data-constraints=\"@Required @Email\" />\n");
      out.write("                                                                                        <span class=\"empty-message\">*This field is required.</span>\n");
      out.write("                                                                                        <span class=\"error-message\">*This is not a valid email.</span>\n");
      out.write("                                                                                </label>\n");
      out.write("                                                                                <label class=\"phone\">\n");
      out.write("                                                                                        <span class=\"text\">Subject:</span>\n");
      out.write("                                                                                        <input type=\"text\" name=\"phone\" placeholder=\"\" value=\"\" data-constraints=\"@Required @JustNumbers\" />\n");
      out.write("                                                                                        <span class=\"empty-message\">*This field is required.</span>\n");
      out.write("                                                                                        <span class=\"error-message\">*This is not a valid phone.</span>\n");
      out.write("                                                                                </label>\n");
      out.write("                                                                                <label class=\"message\">\n");
      out.write("                                                                                        <span class=\"text\">Message:</span>\n");
      out.write("                                                                                        <textarea name=\"message\" placeholder=\"\" data-constraints='@Required @Length(min=20,max=999999)'></textarea>\n");
      out.write("                                                                                        <span class=\"empty-message\">*This field is required.</span>\n");
      out.write("                                                                                        <span class=\"error-message\">*The message is too short.</span>\n");
      out.write("                                                                                </label>\n");
      out.write("                                                                        <div class=\"cont_btn\">\n");
      out.write("                                                                                <a href=\"#\" data-type=\"reset\" class=\"btn\">Clear</a>\n");
      out.write("                                                                                <a href=\"#\" data-type=\"submit\" class=\"btn\">Send</a>\n");
      out.write("                                                                        </div>\n");
      out.write("                                                        </fieldset> \n");
      out.write("                                                        <div class=\"modal fade response-message\">\n");
      out.write("                                                                <div class=\"modal-dialog\">\n");
      out.write("                                                                        <div class=\"modal-content\">\n");
      out.write("                                                                                <div class=\"modal-header\">\n");
      out.write("                                                                                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n");
      out.write("                                                                                        <h4 class=\"modal-title\">Modal title</h4>\n");
      out.write("                                                                                </div>\n");
      out.write("                                                                                <div class=\"modal-body\">\n");
      out.write("                                                                                        You message has been sent! We will be in touch soon.\n");
      out.write("                                                                                </div>\n");
      out.write("                                                                        </div>\n");
      out.write("                                                                </div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                </form>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"grid_6 preffix_1\">\n");
      out.write("                                                <div>\n");
      out.write("                                                        <hader>\n");
      out.write("                                                                <h2><span>Contact Information</span></h2>\n");
      out.write("                                                        </hader>\n");
      out.write("                                                        <p class=\"el-1\">\n");
      out.write("                                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros.Lamus at magna non nunc tristique rhoncuseri tym.\n");
      out.write("                                                        </p>\n");
      out.write("                                                        <p class=\"el-2\">\n");
      out.write("                                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros.Lamus at magna non nunc tristique rhoncuseri tym. \n");
      out.write("                                                        </p>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"grid_3 alpha\">\n");
      out.write("                                                        <div class=\"address\">\n");
      out.write("                                                                <p>The Company Name Inc. <br>9870 St Vincent Place, <br>Glasgow, DC 45 Fr 45.</p>\n");
      out.write("                                                        </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"grid_3\">\n");
      out.write("                                                        <div class=\"address\">\n");
      out.write("                                                                <p>Telephone:+1 800 603 6035 <br>FAX:+1 800 889 9898 <br>E-mail: <a href=\"mailto:mail@demolink.org\" class=\"mail\">mail@demolink.org</a></p>\n");
      out.write("                                                        </div>\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                </div>\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("        </section>\n");
      out.write("        <!--=======content================================-->\n");
      out.write("        \n");
      out.write("        <!--=======footer=================================-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "views/common/footer.jsp", out, false);
      out.write("\n");
      out.write("        <!--=======footer=================================-->\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("\tjQuery(function(){\n");
      out.write("\t\tjQuery('#camera_wrap').camera({\n");
      out.write("                            height: '34.58333333333333%',\n");
      out.write("                            thumbnails: false,\n");
      out.write("                            pagination: true,\n");
      out.write("                            fx: 'simpleFade',\n");
      out.write("                            loader: 'none',\n");
      out.write("                            hover: false,\n");
      out.write("                            navigation: false,\n");
      out.write("                            playPause: false,\n");
      out.write("                            minHeight: \"139px\",\n");
      out.write("                        });\n");
      out.write("                });\n");
      out.write("        </script>\n");
      out.write("        <script>\n");
      out.write("                $(document).ready(function() {\n");
      out.write("                        $(\".owl-carousel\").owlCarousel({\n");
      out.write("                                navigation: true,\n");
      out.write("                                pagination: false,\n");
      out.write("                                items : 3,\n");
      out.write("                                itemsDesktop : [1199,3],\n");
      out.write("                                itemsDesktopSmall : [979,3],\n");
      out.write("                                itemsTablet: [750,1],\n");
      out.write("                                itemsMobile : [479,1],\n");
      out.write("                                navigationText: false\n");
      out.write("                        });\n");
      out.write("                });\n");
      out.write("        </script>\n");
      out.write("        <script>\n");
      out.write("                $(document).ready(function() { \n");
      out.write("                                if ($('html').hasClass('desktop')) {\n");
      out.write("                                        $.stellar({\n");
      out.write("                                                horizontalScrolling: false,\n");
      out.write("                                                verticalOffset: 20,\n");
      out.write("                                                resposive: true,\n");
      out.write("                                                hideDistantElements: true,\n");
      out.write("                                        });\n");
      out.write("                                }\n");
      out.write("                        });\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

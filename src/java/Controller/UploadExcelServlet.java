package Controller;


import java.io.File;
import Metier.ReadExcel;
import java.io.IOException;
import java.sql.SQLException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author PC
 */
@WebServlet(name = "UploadExcelServlet", urlPatterns = {"/UploadExcelServlet"})
public class UploadExcelServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
                String chemin="";
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
              
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        
                        chemin = "C://Users//PC//Desktop//"+File.separator + name;
                        item.write( new File(chemin));
                        
                    }
                }
                
            if(ReadExcel.ExcelTobdd(chemin)== true)
            {
                response.getWriter().print("ok");
            }else{
                response.getWriter().print("Nok");
            }
        }catch(SQLException e){
            e.printStackTrace();
        } catch (FileUploadException ex) {
            Logger.getLogger(UploadExcelServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UploadExcelServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    

    
}

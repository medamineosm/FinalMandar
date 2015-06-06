package Metier;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ReadExcel
{
    private static HashMap<Integer,ArrayList<String>> Read (String Pathfile)
    {   
        
        try
        {   
            HashMap<Integer,ArrayList<String>>listRow = new HashMap<>();
            FileInputStream file = new FileInputStream(new File(Pathfile));
 
            //Create Workbook instance holding reference to .xlsx file
            XSSFWorkbook workbook = new XSSFWorkbook(file);
 
            //Get first/desired sheet from the workbook
            XSSFSheet sheet = workbook.getSheetAt(0);
            
            //Iterate through each rows one by one
            for(int i=1;sheet.getRow(i)!=null;i++)
            {
                Row row = sheet.getRow(i);
                listRow.put(i,new ArrayList<>());
                for(int j=0;j<16;j++)
                {
                    row.getCell(0).setCellType(Cell.CELL_TYPE_STRING);
                    listRow.get(i).add(row.getCell(j).getStringCellValue());
                    //System.out.println(row.getCell(j).getStringCellValue());
                }
                
            }
            file.close();
            return listRow;
        }
        catch (Exception e)
        {
            e.printStackTrace();
            return null;
        }
    }
    private static ArrayList<Etudiant_Charge> Charger(HashMap<Integer,ArrayList<String>>l)
    {
            ArrayList<Etudiant_Charge> listEtd = new ArrayList<>();
            Etudiant_Charge e =new Etudiant_Charge();
            SerieBac sb = new SerieBac();
            TypeBac tb = new TypeBac();
        for(int x=0;x<l.keySet().size();x++)
        {
            listEtd.add(new Etudiant_Charge());
        }
        for(int i=0;i<listEtd.size();i++)
            {
                listEtd.get(i).setCNE(l.get(i+1).get(0));
                listEtd.get(i).setNom(l.get(i+1).get(1));
                listEtd.get(i).setPrenom(l.get(i+1).get(2));
                listEtd.get(i).setSexe(l.get(i+1).get(3));
                listEtd.get(i).setNationalite(l.get(i+1).get(4));
                sb.setIntituler(l.get(i+1).get(5));
                listEtd.get(i).setMention_Bac(l.get(i+1).get(6));
                listEtd.get(i).setProvince(l.get(i+1).get(7));
                listEtd.get(i).setNom_ar(l.get(i+1).get(8));
                listEtd.get(i).setPrenom_ar(l.get(i+1).get(9));
                listEtd.get(i).setNationalite_ar(l.get(i+1).get(10));
                sb.setIntituler_ar(l.get(i+1).get(11));
                tb.setIntituler(l.get(i+1).get(12));
                tb.setIntituler_ar(l.get(i+1).get(13));
                sb.setTypeBac(tb);
                listEtd.get(i).setSerieBac(sb);
                listEtd.get(i).setProvince_ar(l.get(i+1).get(14));
                listEtd.get(i).setCIN(l.get(i+1).get(15));
        
            }return listEtd;
    }
    public static boolean ExcelTobdd(String chemin)
    {
        ArrayList<Etudiant_Charge> l = Charger(Read(chemin));
        for (int i = 0; i < l.size(); i++) {
            if(Etudiant_Charge.insertEtudiantCharge(l.get(i)).equals("error"))
            {
                return false;
            }
        }return true;
    }
}
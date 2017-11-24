/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author Administrator
 */
public class CartBean extends HashMap {

    public void addSanPham(ProductDTO sp) {
        String key = sp.getSanpham().getCode();
        if (this.containsKey(key)) {
            int old = ((ProductDTO) this.get(key)).getQuantity();
            ((ProductDTO) this.get(key)).setQuantity(old + 1);
        } else {
            this.put(sp.getSanpham().getCode(), sp);
        }
    }

    public ArrayList getCartBeanList(){
        ArrayList list = new ArrayList();
        Set set = this.entrySet();
        Iterator i = set.iterator();
        while(i.hasNext()){
            Map.Entry sp = (Map.Entry)i.next();
            ProductDTO sp2 = new ProductDTO();
            sp2 = (ProductDTO)sp.getValue();
            list.add(sp2);
//            System.out.println("- Quanlity:"+sp2.getQuantity());
//            System.out.println("- Code:"+sp2.getSanpham().getCode());
//            System.out.println("- Name:"+sp2.getSanpham().getName());
//            System.out.println("- Price:"+sp2.getSanpham().getPrice());
//            System.out.println("-----------");
        }
        return list;
    }
    
    public String getcodesanpham(ProductDTO sp) {
        String key = sp.getSanpham().getCode();
        return key;
    }

    public int getsoluong(ProductDTO sp) {
        int soluong = sp.getQuantity();
        return soluong;
    }

    public void addSanPhamwithso(ProductDTO sp, int sothem) {
        String key = sp.getSanpham().getCode();
        if (this.containsKey(key)) {
            int old = ((ProductDTO) this.get(key)).getQuantity();
            ((ProductDTO) this.get(key)).setQuantity(old + sothem);
        } else {
            this.put(sp.getSanpham().getCode(), sp);
        }
    }

    public boolean removeSanPham(String code) {
        if (this.containsKey(code)) {
            this.remove(code);
            return true;
        }
        return false;
    }

    public void updatesanpham(String code, int quanitity) {
        if (this.containsKey(code)) {
            ((ProductDTO) this.get(code)).setQuantity(quanitity);
        }
    }

    public CartBean() {
        super();
    }
}

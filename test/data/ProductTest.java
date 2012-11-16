/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.stream.events.Comment;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author christianlinde
 */
public class ProductTest {
  
  public ProductTest() {
  }
  
  @BeforeClass
  public static void setUpClass() {
  }
  
  @AfterClass
  public static void tearDownClass() {
  }
  
  @Before
  public void setUp() {
  }
  
  @After
  public void tearDown() {
  }

  /**
   * Test of getName method, of class Product.
   */
  @Test
  public void testGetName() {
    System.out.println("getName");
    Product instance = new Product ("TestName",0,"TestDescription","TestManufactorer");
    String expName = "TestName";
    //String expResult = "";
    String resultName = instance.getName();
    assertEquals(expName, resultName);
    // TODO review the generated test code and remove the default call to fail.
    //fail("The test case is a prototype.");
  }

  /**
   * Test of getComments method, of class Product.
   */
  
  @Test
  public void testGetComments() {
    System.out.println("getComments");
    Product instance = new Product ("TestName",0,"TestDescription","TestManufactorer");
    instance.addComment(new Comment ("TestCommentName","TestCommentText", new Date ()));
    
    List<Comment> expComment = new ArrayList<Comment>();
    expComment.add(new Comment ("TestCommentName","TestCommentText", new Date ()))
    //List expResult = null;
    List result = instance.getComments();
    assertEquals(expComment.get(0), result.get(0));
    // TODO review the generated test code and remove the default call to fail.
    //fail("The test case is a prototype.");
  }
  
  /**
   * Test of addComment method, of class Product.
   */
  /*
  @Test
  public void testAddComment() {
    System.out.println("addComment");
    Comment c = null;
    Product instance = null;
    instance.addComment(c);
    // TODO review the generated test code and remove the default call to fail.
    fail("The test case is a prototype.");
  }
  */
  /**
   * Test of getCopy method, of class Product.
   */
  /*
  @Test
  public void testGetCopy() {
    System.out.println("getCopy");
    Product instance = null;
    ICopyable expResult = null;
    ICopyable result = instance.getCopy();
    assertEquals(expResult, result);
    // TODO review the generated test code and remove the default call to fail.
    fail("The test case is a prototype.");
  }
  */
}

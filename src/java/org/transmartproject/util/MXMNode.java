package org.transmartproject.util;

/**
 * Created with IntelliJ IDEA.
 * User: vmahavis
 * Date: 4/16/13
 * Time: 12:20 PM
 * To change this template use File | Settings | File Templates.
 */
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public class MXMNode {

    List<MXMNode> childs;
    List<MXMNode> leafs;
    String data;
    String incrementalPath;

    public MXMNode( String nodeValue, String incrementalPath ) {
        childs = new ArrayList<MXMNode>();
        leafs = new ArrayList<MXMNode>();
        data = nodeValue;
        this. incrementalPath = incrementalPath;
    }

    public boolean isLeaf() {
        return childs.isEmpty() && leafs.isEmpty();
    }

    public void addElement(String currentPath, String[] list) {

        //Avoid first element that can be an empty string if you split a string that has a starting slash as /sd/card/
        while( list[0] == null || list[0].equals("") )
            list = Arrays.copyOfRange(list, 1, list.length);

        MXMNode currentChild = new MXMNode(list[0], currentPath+"/"+list[0]);
        if ( list.length == 1 ) {
            leafs.add( currentChild );
            return;
        } else {
            int index = childs.indexOf( currentChild );
            if ( index == -1 ) {
                childs.add( currentChild );
                currentChild.addElement(currentChild.incrementalPath, Arrays.copyOfRange(list, 1, list.length));
            } else {
                MXMNode nextChild = childs.get(index);
                nextChild.addElement(currentChild.incrementalPath, Arrays.copyOfRange(list, 1, list.length));
            }
        }
    }

    @Override
    public boolean equals(Object obj) {
        MXMNode cmpObj = (MXMNode)obj;
        return incrementalPath.equals( cmpObj.incrementalPath ) && data.equals( cmpObj.data );
    }

    public void printNode( int increment ) {
        for (int i = 0; i < increment; i++) {
            System.out.print(" ");
        }
        System.out.println(incrementalPath + (isLeaf() ? " -> " + data : "")  );
        for( MXMNode n: childs)
            n.printNode(increment+2);
        for( MXMNode n: leafs)
            n.printNode(increment+2);
    }


    public String getHtmlNode() {

        String html = "";

        if(data.equals("Public Studies"))
        {

        }
        else if(isLeaf())
        {
            html += "<li><a target='content' href=''>"+ data +"</a></li>";
            //System.out.print("<li><a target='content' href=''>"+ data +"</a></li>");
        }
        else
        {
            html +=  "<li class='folder'>"+ data;
            //System.out.print("<li class='folder'>"+ data );
        }




        if(childs.size() > 0)
        {
            // System.out.println("<ul>");
            html += "<ul>";
            for( MXMNode n: childs)
            {

                html +=  n.getHtmlNode();

            }
            html += "</ul>";
            //System.out.println("</ul>");
        }
        if(leafs.size() > 0)
        {
            //System.out.println("<ul>");
            html += "<ul>";
            for( MXMNode n: leafs)
            {
                html += n.getHtmlNode();
            }
            //System.out.println("</ul>");
            html += "</ul>";
        }

        return html;
    }

    @Override
    public String toString() {
        return data;
    }


}
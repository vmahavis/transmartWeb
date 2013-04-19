import org.junit.Test
import org.transmartproject.core.ontology.ConceptsResource
import org.transmartproject.core.ontology.OntologyTerm
import org.transmartproject.db.ontology.I2b2Secure
import org.transmartproject.util.MXMNode
import org.transmartproject.util.MXMTree

/**
 * Created with IntelliJ IDEA.
 * User: vmahavis
 * Date: 4/10/13
 * Time: 4:23 PM
 * To change this template use File | Settings | File Templates.
 */
class TreeTest {
    ConceptsResource conceptsResourceService

    @Test
    void testGetAllCategories() {

        def datasetId = I2b2Secure.createCriteria().list {

            and {
                isNotNull("sourceSystemCD")
            }
            projections {
                distinct "sourceSystemCD"

            }
        }

        HashMap<String, List<OntologyTerm>> map = new  HashMap<String, List<OntologyTerm>>();

        for(def id : datasetId)
        {
            def terms = I2b2Secure.createCriteria().list {

                and {
                    eq("sourceSystemCD", id)
                }
            }
            map.put(id, terms)

        }


        /*

        GSE4382
        GSE9105
        GSE14860
         */

        for (String key : map.keySet())
        {
            List<OntologyTerm> terms =  map.get(key);
            ArrayList<String> slist =  new ArrayList<String>();

            for(OntologyTerm term : terms )
            {
               String path = term.fullName.replaceAll("\\\\" , "/");
               slist.add(path);
            }




            MXMTree tree = new MXMTree(new org.transmartproject.util.MXMNode("Public Studies", "Public Studies"));
            for (String data : slist)
            {
                tree.addElement(data);
            }

            System.out.println(tree.getTreeHtml());
        }

    }


}

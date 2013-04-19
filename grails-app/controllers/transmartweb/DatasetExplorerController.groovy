package transmartweb

import org.transmartproject.core.ontology.OntologyTerm
import org.transmartproject.db.ontology.I2b2Secure
import org.transmartproject.util.MXMNode
import org.transmartproject.util.MXMTree

class DatasetExplorerController {

    def index() {

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


        for (String key : map.keySet())
        {
            List<OntologyTerm> terms =  map.get(key);
            ArrayList<String> slist =  new ArrayList<String>();

            for(OntologyTerm term : terms )
            {
                String path = term.fullName.replaceAll("\\\\" , "/");
                slist.add(path);
            }

            MXMTree tree = new MXMTree(new MXMNode("Public Studies", "Public Studies"));
            for (String data : slist) {

                if(!data.equals("Public Studies"))
                {
                    tree.addElement(data);

                }


            }


            System.out.println(tree.getTreeHtml());
        }

        render (view:"index", model: [treeMap: map])

    }

}

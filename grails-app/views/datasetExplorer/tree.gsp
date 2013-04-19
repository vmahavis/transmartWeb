<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
    <meta name="robots" content="noindex,follow">
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/jquery-ui.custom.js" type="text/javascript"></script>
    <script src="../js/jquery.cookie.js" type="text/javascript"></script>

    <link href="../js/dynatree/src/skin-vista/ui.dynatree.css" rel="stylesheet" type="text/css">
    <script src="../js/dynatree/dist/jquery.dynatree-1.2.4.js" type="text/javascript"></script>
    <script src="../js/dynatree/dist/sample.js" type="text/javascript"></script>
    <title>Dynatree - Example Browser</title>

    <style type="text/css">
    body {
        background-color: #39414A;
        color: white;
        font-family: Helvetica, Arial, sans-serif;
        font-size: smaller;
        background-image: url("nav_bg.png");
        background-repeat: repeat-x;
    }
    a {
        color: white;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
    div#tree {
        position: absolute;
        height: 95%;
        width: 95%;
        padding: 5px;
        margin-right: 16px;
    }
    ul.dynatree-container {
        height: 100%;
        width: 100%;
        background-color: transparent;
    }
    ul.dynatree-container a {
        color: white;
        border: 1px solid transparent;
        background-color: transparent;
    }
    ul.dynatree-container a:hover {
        background-color: transparent;
    }
    ul.dynatree-container a:focus, span.dynatree-focused a:link {
        background-color: gray;
    }
    </style>

    <script type="text/javascript">
        $(function(){
            // --- Initialize sample trees
            $("#tree").dynatree({
                autoFocus: true,
//			persist: true,
                minExpandLevel: 2,
                onFocus: function(node) {
                    // Auto-activate focused node after 1 second
                    if(node.data.href){
                        node.scheduleAction("activate", 1000);
                    }
                },
                onBlur: function(node) {
                    node.scheduleAction("cancel");
                },
                onActivate: function(node){
                    if(node.data.href){
                        window.open(node.data.href, node.data.target);
                    }
                }
            });
        });
    </script>

</head>

<body>
<div id="tree">
    <ul>
        c<a target="_blank" href="dynatree-doc.html">Documentation</a>
        <li><a target="_blank" href="http://dynatree.googlecode.com">jquery.dynatree.js</a>
        <li><a target='content' href=''>Public Studies</a></li>
        <ul>
            <li><a target='content' href=''>Breast_Cancer_Sorlie_GSE4382</a></li>
            <ul>
                <li><a target='content' href=''>Biomarker Data</a></li>
                <ul>
                    <li><a target='content' href=''>Gene Expression</a></li>
                    <ul>
                        <li><a target='content' href=''>Stanford cDNA microarrays</a></li>
                        <li><a target='content' href='Breast'>Breast</a></li>
                    </ul>
                    <li><a target='content' href='Stanford cDNA microarrays'>Stanford cDNA microarrays</a></li>
                </ul>
                <li><a target='content' href='Gene Expression'>Gene Expression</a></li>
                <li><a target='content' href=''>Sample Factors</a></li>
                <ul>
                    <li><a target='content' href=''>TNM Category</a></li>
                    <ul>
                        <li><a target='content' href=''>M - Metastasis stages</a></li>
                        <li><a target='content' href='M0'>M0</a></li>
                        <li><a target='content' href='M1'>M1</a></li>
                        <li><a target='content' href='Unknown'>Unknown</a></li>
                        <li><a target='content' href=''>N - Node stages</a></li>
                        <li><a target='content' href='Unknown'>Unknown</a></li>
                        <li><a target='content' href='N2'>N2</a></li>
                        <li><a target='content' href='N0'>N0</a></li>
                        <li><a target='content' href='N1'>N1</a></li>
                        <li><a target='content' href=''>T - Tumor stages</a></li>
                        <li><a target='content' href='Unknown'>Unknown</a></li>
                        <li><a target='content' href='T2'>T2</a></li>
                        <li><a target='content' href='T4'>T4</a></li>
                        <li><a target='content' href='T3'>T3</a></li>
                        <li><a target='content' href='T1'>T1</a></li>
                    </ul>
                    <li><a target='content' href='T - Tumor stages'>T - Tumor stages</a></li>
                    <li><a target='content' href='M - Metastasis stages'>M - Metastasis stages</a></li>
                    <li><a target='content' href='N - Node stages'>N - Node stages</a></li>
                    <li><a target='content' href=''>End Points</a></li>
                    <ul>
                        <li><a target='content' href=''>General clinical state finding (Survival Censor)</a></li>
                        <ul>
                            <li><a target='content' href=''>Alive</a></li>
                            <li><a target='content' href='Alive'>Alive</a></li>
                            <li><a target='content' href='Alive, Clinical disease or syndrome present'>Alive, Clinical disease or syndrome present</a></li>
                            <li><a target='content' href=''>Dead</a></li>
                            <li><a target='content' href='Cause of Death, Other'>Cause of Death, Other</a></li>
                            <li><a target='content' href='Cause of Death, Clinical disease or syndrome present'>Cause of Death, Clinical disease or syndrome present</a></li>
                        </ul>
                        <li><a target='content' href='Dead'>Dead</a></li>
                        <li><a target='content' href='Alive'>Alive</a></li>
                    </ul>
                    <li><a target='content' href='Survival time (Months)'>Survival time (Months)</a></li>
                    <li><a target='content' href='Recurrence-free survival time (Months)'>Recurrence-free survival time (Months)</a></li>
                    <li><a target='content' href='General clinical state finding (Survival Censor)'>General clinical state finding (Survival Censor)</a></li>
                    <li><a target='content' href=''>Oestrogen receptor assay</a></li>
                    <li><a target='content' href='Positive'>Positive</a></li>
                    <li><a target='content' href='Unknown'>Unknown</a></li>
                    <li><a target='content' href='Negative'>Negative</a></li>
                    <li><a target='content' href=''>Histology</a></li>
                    <ul>
                        <li><a target='content' href=''>Histological Type</a></li>
                        <li><a target='content' href='Lobular Carcinoma'>Lobular Carcinoma</a></li>
                        <li><a target='content' href='Mucinous adenocarcinoma'>Mucinous adenocarcinoma</a></li>
                        <li><a target='content' href='Fibroadenoma'>Fibroadenoma</a></li>
                        <li><a target='content' href='Unknown'>Unknown</a></li>
                        <li><a target='content' href='Infiltrating duct carcinoma'>Infiltrating duct carcinoma</a></li>
                        <li><a target='content' href='Papillary neoplasm'>Papillary neoplasm</a></li>
                        <li><a target='content' href='DCIS'>DCIS</a></li>
                        <li><a target='content' href='Breast Normal'>Breast Normal</a></li>
                        <li><a target='content' href='Pleomorphic carcinoma'>Pleomorphic carcinoma</a></li>
                        <li><a target='content' href='Anaplastic carcinoma'>Anaplastic carcinoma</a></li>
                        <li><a target='content' href=''>Histological Grades</a></li>
                        <li><a target='content' href='Unknown'>Unknown</a></li>
                        <li><a target='content' href='Poorly Differentiated'>Poorly Differentiated</a></li>
                        <li><a target='content' href='Moderately Differentiated'>Moderately Differentiated</a></li>
                        <li><a target='content' href='Well Differentiated'>Well Differentiated</a></li>
                    </ul>
                    <li><a target='content' href='Histological Grades'>Histological Grades</a></li>
                    <li><a target='content' href='Histological Type'>Histological Type</a></li>
                    <li><a target='content' href=''>Tumor Subtype</a></li>
                    <li><a target='content' href='Luminal A'>Luminal A</a></li>
                    <li><a target='content' href='Luminal B'>Luminal B</a></li>
                    <li><a target='content' href='basal'>basal</a></li>
                    <li><a target='content' href='Normal'>Normal</a></li>
                    <li><a target='content' href='ERBB and'>ERBB and</a></li>
                    <li><a target='content' href='None'>None</a></li>
                </ul>
                <li><a target='content' href='Histology'>Histology</a></li>
                <li><a target='content' href='TNM Category'>TNM Category</a></li>
                <li><a target='content' href='End Points'>End Points</a></li>
                <li><a target='content' href='Age at Diagnosis'>Age at Diagnosis</a></li>
                <li><a target='content' href='Tumor Subtype'>Tumor Subtype</a></li>
                <li><a target='content' href='Oestrogen receptor assay'>Oestrogen receptor assay</a></li>
            </ul>
            <li><a target='content' href='Biomarker Data'>Biomarker Data</a></li>
            <li><a target='content' href='Sample Factors'>Sample Factors</a></li>
        </ul>
        <li><a target='content' href='Breast_Cancer_Sorlie_GSE4382'>Breast_Cancer_Sorlie_GSE4382</a></li>
    </ul>
</div>
</body>
</html><html><body></body></html>

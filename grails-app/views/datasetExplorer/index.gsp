<%@ page contentType="text/html;charset=ISO-8859-1"  import="org.transmartproject.core.ontology.OntologyTerm" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>tranSMART</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="../css/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="../css/theme.css" rel="stylesheet">
    <link href="../css/bootstrap/bootstrap-responsive.css" rel="stylesheet">

    <link rel="stylesheet" href="${resource(dir:'css',file:'bootstrap/bootstrap.css')}" />
    <link rel="stylesheet" href="${resource(dir:'css',file:'theme.css')}" />
    <link rel="stylesheet" href="${resource(dir:'css',file:'bootstrap/bootstrap-responsive.css')}" />
    <link href="../js/dynatree/src/skin/ui.dynatree.css" rel="stylesheet" type="text/css">

    <g:javascript src="jquery.js" />
    <g:javascript src="bootstrap/bootstrap.js" />

    <script src="../js/jquery-ui.custom.js" type="text/javascript"></script>
    <script src="../js/jquery.cookie.js" type="text/javascript"></script>

    <script src="../js/dynatree/dist/jquery.dynatree-1.2.4.js" type="text/javascript"></script>
    <script src="../js/dynatree/dist/sample.js" type="text/javascript"></script>

    <style type="text/css">
    body {
        background-color: #fff;
        color: #000;
        font-family: Helvetica, Arial, sans-serif;
        font-size: smaller;
        background-image: url("nav_bg.png");
        background-repeat: repeat-x;
    }
    a {
        color: #000;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
    div#tree {
        position: absolute;

        padding: 5px;
        margin-right: 16px;
    }
    ul.dynatree-container {
        height: 100%;
        width: 100%;
        background-color: transparent;
    }
    ul.dynatree-container a {
        color: #000;
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

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <button type="button" class="btn btn-navbar" data-toggle="collapse"
                    data-target=".nav-collapse">
                <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="brand" href="#">tranSMART</a>
            <div class="nav-collapse collapse">
                <p class="navbar-text pull-right">
                    Logged in as <a href="#" class="navbar-link">Vasu Mahavisno</a>
                </p>
                <ul class="nav">
                    <li><a href="index.html">Search</a></li>
                    <li class="active"><a href="dataset.jsp">Dataset Explorer</a></li>
                    <li><a href="concepts.jsp">Concept Explorer</a></li>
                    <li><a href="genesignature.jsp">Gene Signature/Lists</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span4">
            <div class="well sidebar-nav">
            <div id="tree">
            <ul>
            <li class='folder'>Public Studies
            <ul>
            <li class='folder'>Breast_Cancer_Sorlie_GSE4382
                <ul>
                    <li class='folder'>Biomarker Data
                        <ul>
                            <li class='folder'>Gene Expression
                                <ul>
                                    <li class='folder'>Stanford cDNA microarrays
                                        <ul>
                                            <li><a target='content' href=''>Breast</a></li>
                                        </ul>
                                </ul>
                                <ul>
                                    <li><a target='content' href=''>Stanford cDNA microarrays</a></li>
                                </ul>
                        </ul>
                        <ul>
                            <li><a target='content' href=''>Gene Expression</a></li>
                        </ul>
                    <li class='folder'>Sample Factors
                        <ul>
                            <li class='folder'>TNM Category
                                <ul>
                                    <li class='folder'>M - Metastasis stages
                                        <ul>
                                            <li><a target='content' href=''>M0</a></li>
                                            <li><a target='content' href=''>M1</a></li>
                                            <li><a target='content' href=''>Unknown</a></li>
                                        </ul>
                                    <li class='folder'>N - Node stages
                                        <ul>
                                            <li><a target='content' href=''>Unknown</a></li>
                                            <li><a target='content' href=''>N2</a></li>
                                            <li><a target='content' href=''>N0</a></li>
                                            <li><a target='content' href=''>N1</a></li>
                                        </ul>
                                    <li class='folder'>T - Tumor stages
                                        <ul>
                                            <li><a target='content' href=''>Unknown</a></li>
                                            <li><a target='content' href=''>T2</a></li>
                                            <li><a target='content' href=''>T4</a></li>
                                            <li><a target='content' href=''>T3</a></li>
                                            <li><a target='content' href=''>T1</a></li>
                                        </ul>
                                </ul>
                                <ul>
                                    <li><a target='content' href=''>T - Tumor stages</a></li>
                                    <li><a target='content' href=''>M - Metastasis stages</a></li>
                                    <li><a target='content' href=''>N - Node stages</a></li>
                                </ul>
                            <li class='folder'>End Points
                                <ul>
                                    <li class='folder'>General clinical state finding (Survival Censor)
                                        <ul>
                                            <li class='folder'>Alive
                                                <ul>
                                                    <li><a target='content' href=''>Alive</a></li>
                                                    <li><a target='content' href=''>Alive, Clinical disease or syndrome present</a></li>
                                                </ul>
                                            <li class='folder'>Dead
                                                <ul>
                                                    <li><a target='content' href=''>Cause of Death, Other</a></li>
                                                    <li><a target='content' href=''>Cause of Death, Clinical disease or syndrome present</a></li>
                                                </ul>
                                        </ul>
                                        <ul>
                                            <li><a target='content' href=''>Dead</a></li>
                                            <li><a target='content' href=''>Alive</a></li>
                                        </ul>
                                </ul>
                                <ul>
                                    <li><a target='content' href=''>Survival time (Months)</a></li>
                                    <li><a target='content' href=''>Recurrence-free survival time (Months)</a></li>
                                    <li><a target='content' href=''>General clinical state finding (Survival Censor)</a></li>
                                </ul>
                            <li class='folder'>Oestrogen receptor assay
                                <ul>
                                    <li><a target='content' href=''>Positive</a></li>
                                    <li><a target='content' href=''>Unknown</a></li>
                                    <li><a target='content' href=''>Negative</a></li>
                                </ul>
                            <li class='folder'>Histology
                                <ul>
                                    <li class='folder'>Histological Type
                                        <ul>
                                            <li><a target='content' href=''>Lobular Carcinoma</a></li>
                                            <li><a target='content' href=''>Mucinous adenocarcinoma</a></li>
                                            <li><a target='content' href=''>Fibroadenoma</a></li>
                                            <li><a target='content' href=''>Unknown</a></li>
                                            <li><a target='content' href=''>Infiltrating duct carcinoma</a></li>
                                            <li><a target='content' href=''>Papillary neoplasm</a></li>
                                            <li><a target='content' href=''>DCIS</a></li>
                                            <li><a target='content' href=''>Breast Normal</a></li>
                                            <li><a target='content' href=''>Pleomorphic carcinoma</a></li>
                                            <li><a target='content' href=''>Anaplastic carcinoma</a></li>
                                        </ul>
                                    <li class='folder'>Histological Grades
                                        <ul>
                                            <li><a target='content' href=''>Unknown</a></li>
                                            <li><a target='content' href=''>Poorly Differentiated</a></li>
                                            <li><a target='content' href=''>Moderately Differentiated</a></li>
                                            <li><a target='content' href=''>Well Differentiated</a></li>
                                        </ul>
                                </ul>
                                <ul>
                                    <li><a target='content' href=''>Histological Grades</a></li>
                                    <li><a target='content' href=''>Histological Type</a></li>
                                </ul>
                            <li class='folder'>Tumor Subtype
                                <ul>
                                    <li><a target='content' href=''>Luminal A</a></li>
                                    <li><a target='content' href=''>Luminal B</a></li>
                                    <li><a target='content' href=''>basal</a></li>
                                    <li><a target='content' href=''>Normal</a></li>
                                    <li><a target='content' href=''>ERBB and</a></li>
                                    <li><a target='content' href=''>None</a></li>
                                </ul>
                        </ul>
                        <ul>
                            <li><a target='content' href=''>Histology</a></li>
                            <li><a target='content' href=''>TNM Category</a></li>
                            <li><a target='content' href=''>End Points</a></li>
                            <li><a target='content' href=''>Age at Diagnosis</a></li>
                            <li><a target='content' href=''>Tumor Subtype</a></li>
                            <li><a target='content' href=''>Oestrogen receptor assay</a></li>
                        </ul>
                </ul>
                <ul>
                    <li><a target='content' href=''>Biomarker Data</a></li>
                    <li><a target='content' href=''>Sample Factors</a></li>
                </ul>


            <li class='folder'>Acute_Physiologic_Hyperinsulinemia_Coletta_GSE9105
                <ul>
                    <li class='folder'>Samples and Timepoints
                        <ul>
                            <li class='folder'>Vastus Lateralis Muscle
                                <ul>
                                    <li><a target='content' href=''>Baseline</a></li>
                                    <li><a target='content' href=''>240 Minutes after start of Insulin infusion</a></li>
                                    <li><a target='content' href=''>030 Minutes after start of Insulin infusion</a></li>
                                </ul>
                        </ul>
                        <ul>
                            <li><a target='content' href=''>Vastus Lateralis Muscle</a></li>
                        </ul>
                    <li class='folder'>Subjects
                        <ul>
                            <li class='folder'>Demographics
                                <ul>
                                    <li class='folder'>Gender
                                        <ul>
                                            <li><a target='content' href=''>Female</a></li>
                                            <li><a target='content' href=''>Male</a></li>
                                        </ul>
                                    <li class='folder'>Race
                                        <ul>
                                            <li><a target='content' href=''>Mexican American</a></li>
                                            <li><a target='content' href=''>Caucasian</a></li>
                                        </ul>
                                </ul>
                                <ul>
                                    <li><a target='content' href=''>Race</a></li>
                                    <li><a target='content' href=''>Gender</a></li>
                                </ul>
                            <li class='folder'>Medical History
                                <ul>
                                    <li class='folder'>Family History Diabetes Status
                                        <ul>
                                            <li><a target='content' href=''>Negative</a></li>
                                        </ul>
                                </ul>
                                <ul>
                                    <li><a target='content' href=''>Family History Diabetes Status</a></li>
                                </ul>
                        </ul>
                        <ul>
                            <li><a target='content' href=''>Demographics</a></li>
                            <li><a target='content' href=''>Medical History</a></li>
                        </ul>
                    <li class='folder'>Biomarker Data
                        <ul>
                            <li class='folder'>Gene Expression
                                <ul>
                                    <li class='folder'>Affymetrix Human Genome U133A Array
                                        <ul>
                                            <li class='folder'>Vastus Lateralis Muscle
                                                <ul>
                                                    <li><a target='content' href=''>240 Minutes after Insulin infusion</a></li>
                                                    <li><a target='content' href=''>030 Minutes after Insulin infusion</a></li>
                                                    <li><a target='content' href=''>Baseline</a></li>
                                                </ul>
                                        </ul>
                                        <ul>
                                            <li><a target='content' href=''>Vastus Lateralis Muscle</a></li>
                                        </ul>
                                </ul>
                                <ul>
                                    <li><a target='content' href=''>Affymetrix Human Genome U133A Array</a></li>
                                </ul>
                        </ul>
                        <ul>
                            <li><a target='content' href=''>Gene Expression</a></li>
                        </ul>
                </ul>
                <ul>
                    <li><a target='content' href=''>Samples and Timepoints</a></li>
                    <li><a target='content' href=''>Subjects</a></li>
                    <li><a target='content' href=''>Biomarker Data</a></li>
                </ul>

            <li class='folder'>Endometrial_Cancer_Salvesen_GSE14860
                <ul>
                    <li class='folder'>Biomarker Data
                        <ul>
                            <li class='folder'>Gene Expression
                                <ul>
                                    <li class='folder'>Agilent Human 1A Microarray G4110
                                        <ul>
                                            <li><a target='content' href=''>Other</a></li>
                                            <li><a target='content' href=''>Endometrioid Tumor</a></li>
                                        </ul>
                                </ul>
                                <ul>
                                    <li><a target='content' href=''>Agilent Human 1A Microarray G4110</a></li>
                                </ul>
                        </ul>
                        <ul>
                            <li><a target='content' href=''>Gene Expression</a></li>
                        </ul>
                    <li class='folder'>Sample Factors
                        <ul>
                            <li class='folder'>Histology
                                <ul>
                                    <li class='folder'>Histological Type
                                        <ul>
                                            <li><a target='content' href=''>Other</a></li>
                                            <li><a target='content' href=''>Endometrioid Tumor</a></li>
                                        </ul>
                                </ul>
                                <ul>
                                    <li><a target='content' href=''>Histological Type</a></li>
                                </ul>
                            <li class='folder'>Tumor Status
                                <ul>
                                    <li class='folder'>FIGO I
                                        <ul>
                                            <li><a target='content' href=''>II and No Recurrence</a></li>
                                        </ul>
                                    <li class='folder'>FIGO III
                                        <ul>
                                            <li><a target='content' href=''>IV or Recurrence</a></li>
                                        </ul>
                                </ul>
                            <li class='folder'>PI3K Regulation
                                <ul>
                                    <li><a target='content' href=''>Up</a></li>
                                    <li><a target='content' href=''>Down</a></li>
                                </ul>
                            <li class='folder'>Demographics
                                <ul>
                                    <li class='folder'>Patient Sex (SEX)
                                        <ul>
                                            <li><a target='content' href=''>Female</a></li>
                                        </ul>
                                </ul>
                                <ul>
                                    <li><a target='content' href=''>Patient Sex (SEX)</a></li>
                                </ul>
                        </ul>
                        <ul>
                            <li><a target='content' href=''>Histology</a></li>
                            <li><a target='content' href=''>PI3K Regulation</a></li>
                            <li><a target='content' href=''>Demographics</a></li>
                            <li><a target='content' href=''>Tumor Status</a></li>
                        </ul>
                </ul>
            </div>
           </div>
        </div>
        <!--/span-->
        <div class="span8">
            <ul class="nav nav-tabs">
                <li><a href="#comparison" data-toggle="tab">Grid View</a></li>
                <li><a href="#advance_workflow" data-toggle="tab">Advanced Workflow</a></li>
                <li><a href="#result_analysis" data-toggle="tab">Result/Analysis</a></li>
                <li><a href="#grid_view" data-toggle="tab">Comparison</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="comparison">

                    <div class="row-fluid">
                        <div class="span8">
                            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                                <thead>
                                <tr>
                                    <th>Subject</th>
                                    <th>Patient</th>
                                    <th>Trial</th>
                                    <th>Sex</th>
                                    <th>Age</th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${all}" var="item">
                                <tr class="gradeX">
                                    <td>${item}</td>
                                    <td>169</td>
                                    <td>S12</td>
                                    <td>F</td>
                                    <td>23</td>
                                </tr>
                                </g:each>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="advance_workflow">
                    <b>Cohorts</b>
                    <br/><br/>
                    Subset 1: 030 Minutes after start of Insulin infusion
                    <br/><br/>
                    Subset 2: 240 Minutes after start of Insulin infusion
                    <br/><br/>
                    <br/><br/>
                </div>
                <div class="tab-pane" id="result_analysis">...</div>
                <div class="tab-pane" id="grid_view">



                </div>
            </div>
        </div>
        <!--/span-->
    </div>
    <!--/row-->



</div>
<!--/.fluid-container-->


</body>
</html>

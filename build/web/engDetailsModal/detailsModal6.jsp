<script>
    function tokenAdd6() {
        document.getElementById("fail6").innerHTML = "Edit to Fail";
        document.getElementById("pass6").disabled = true;
        document.getElementById("fail6").disabled = false;
        document.getElementById("tk6").style.background = "#1abc9c";
    }
    function tokenMinus6() {
        document.getElementById("pass6").innerHTML = "Edit to Pass";
        document.getElementById("fail6").disabled = true;
        document.getElementById("pass6").disabled = false;
        document.getElementById("tk6").style.background = "#e74c3c";
    }
</script>
<!-- Modal -->
<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" 
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    View Details
                </h4>
            </div>
                <div class="modal-body">
                    <p>
                        Units of measurement is in &#176;C
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-right" 
                            data-dismiss="modal">Close
                    </button>
                    <button type="button" class="btn btn-success pull-left" onclick="tokenAdd6()" id="pass6"
                            data-dismiss="modal">Pass
                    </button>
                    <button type="button" class="btn btn-danger pull-left" onclick="tokenMinus6()" id="fail6"
                            data-dismiss="modal">Fail
                    </button>
                </div>
            
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

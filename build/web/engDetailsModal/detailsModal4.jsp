<script>
    function tokenAdd4() {
        document.getElementById("fail4").innerHTML = "Edit to Fail";
        document.getElementById("pass4").disabled = true;
        document.getElementById("fail4").disabled = false;
        document.getElementById("done4").style.display = "block";
    }
    function tokenMinus4() {
        document.getElementById("pass4").innerHTML = "Edit to Pass";
        document.getElementById("fail4").disabled = true;
        document.getElementById("pass4").disabled = false;
        document.getElementById("done4").style.display = "block";
    }
</script>
<!-- Modal -->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" 
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
                    <ul>
                        <li>Push unit to maximum voltage before overheating</li>
                        <li>Monitor temperature increase as you increase the voltage</li>
                        <li><strong>Convert measurements to &#37;</strong></li>
                    </ul>
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-right" 
                            data-dismiss="modal">Close
                    </button>
                    <button type="button" class="btn btn-success pull-left" onclick="tokenAdd4()" id="pass4"
                            data-dismiss="modal">Pass
                    </button>
                    <button type="button" class="btn btn-danger pull-left" onclick="tokenMinus4()" id="fail4"
                            data-dismiss="modal">Fail
                    </button>
                </div>
            
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

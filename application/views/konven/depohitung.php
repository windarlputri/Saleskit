<div class="row">
    <div class="col-sm-12">
        <div class="box-range">
            <div class="title">
                <span>Jumlah Deposito</span>
                <a class="edit" href="javascript:void(0)"><i class="fas fa-pencil-alt"></i></a>
            </div>

            <div class="box-input-range">
                <div class="box-text">
                    <span class="left">Rp</span>
                    <div class="form-text disabled">

                        <input id="_deposit_rupiah_portlet_depositAmt" name="_deposit_rupiah_portlet_depositAmt" type="text" class="form-control" placeholder="0.00" disabled="true"></div>
                </div>
                <div class="box-slide-range">
                    <input id="sliderDeposit" type="range" value="0" class="form-control-range" min="0" step="10000000" max="10000000000" style="background: linear-gradient(90deg, rgb(199, 7, 64) 0%, rgb(229, 229, 229) 0.1%);">
                </div>
            </div>

            <p id="alertMinLoanRupiah" class="error" style="">
                Nilai harus lebih besar dari 0
            </p>
            <p id="alertMaxLoanRupiah" class="error" style="display: none;">
                Nilai tidak boleh lebih besar dari 10.000.000.000
            </p>
        </div>
        <button id="btnCalcDepositRupiah" class="btn btn-custom-secondary btn-lg btn-round-30" onClick='javascript:checkDepositRupiahCalculation();' type="button">
            HITUNG
        </button>
    </div>
</div>

<script>
    var sliderDeposit = document.getElementById('sliderDeposit');
    sliderDeposit.oninput = function() {
        $('#_deposit_rupiah_portlet_depositAmt').val(this.value);
        checkDepositRupiah();
        onChangeDeposit();
    };

    function onClose() {
        $("#formDepositRupiahResult").hide();
        $("#formDepositRupiahInput").show();

        $("#alertMinLoanRupiah").hide();
        $("#alertMaxLoanRupiah").hide();
        $("#alertTenor").hide();
    }

    function onChangeDeposit() {
        var deposit = $('#sliderDeposit').val();
        $('#_deposit_rupiah_portlet_depositAmt').val(deposit);
        //
        onChangeTenor();
    }

    function checkDepositRupiahCalculation() {
		var reg = /<script[^>]*>(?:(?!<\/script>)[^])*<\/script>/g;
		var htmlreg = /<(.|\n)*?>/g;
		var tenor = $('#_deposit_rupiah_portlet_tenor').val();
		var deposit = $('#_deposit_rupiah_portlet_depositAmt').val();
		var interestRate = $('#_deposit_rupiah_portlet_effInterestRate').val();
		var recalcBtn = $('#btnRecalcDepositRupiah').val();
		var btnCalc = $('#btnCalcDepositRupiah').val();
		var btnReset = $('#btnReset').val();
		var errorText = "";

		if (reg.test(tenor) == true || reg.test(deposit) == true
				|| reg.test(interestRate) == true || reg.test(btnReset) == true
				|| reg.test(recalcBtn) == true || reg.test(btnCalc) == true) {
			errorText = 'do not allow SCRIPT TAGS';
			<!-- alert(errorText); -->
		} else {
			if (htmlreg.test(tenor) == true || htmlreg.test(deposit) == true
					|| htmlreg.test(interestRate) == true
					|| htmlreg.test(recalcBtn) == true
					|| htmlreg.test(btnReset) == true
					|| htmlreg.test(btnCalc) == true) {
				errorText = 'do not allow HTML TAGS';
				alert(errorText);
			} else {
				calculateDeposit();
			}
		}
	}

    function checkDepositRupiah() {
		var deposit = $('#_deposit_rupiah_portlet_depositAmt').val();
	  	var depositValue = 0;
	  	var maxLoan = '10000000000';
	  	var minLoan = '0';
	  	
	  	if (deposit.trim() != '') {
			depositValue = parseFloat(deposit.replace(/\,/g, ''));
		}
	  	
	  	if (depositValue < minLoan || depositValue == "") {
	  		$("#alertMinLoanRupiah").show();
	  		$("#alertMaxLoanRupiah").hide();
	  		$('#sliderDeposit').val(minLoan);
	  		$("#sliderDeposit").css({"background": "linear-gradient(90deg, rgb(199, 7, 64) 0%, rgb(229, 229, 229) 0.1%)"});
	  	} else if (depositValue > maxLoan) {
	  		$("#alertMinLoanRupiah").hide();
	  		$("#alertMaxLoanRupiah").show();
	  		$('#sliderDeposit').val(maxLoan);
	  		$("#sliderDeposit").css({"background": "linear-gradient(90deg, rgb(199, 7, 64) 100%, rgb(229, 229, 229) 100%)"});
	  	} else {
	  		$('#_deposit_rupiah_portlet_depositAmt').val(depositValue);
	  		$('#sliderDeposit').val(depositValue);
	  		
			var percentageSlider = depositValue*100/maxLoan;
			$("#sliderDeposit").css({"background": "linear-gradient(90deg, rgb(199, 7, 64) "+percentageSlider+"%, rgb(229, 229, 229) "+percentageSlider+"%)"});
			$("#alertMinLoanRupiah").hide();
			$("#alertMaxLoanRupiah").hide();
			
			onChangeTenor();
	  	}
	}
	
</script>
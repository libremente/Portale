<?
$i = & $W->inputs;
if(isset($C['style']) && $C['style']=="2016") { // nuova grafica
?>
  <form class="form-ricerca form-horizontal<?=$W->config['hidable']?" form-hidable":""?> col-lg-12 col-md-12 col-sm-12 col-xs-12" action='<?=$_SERVER['PHP_SELF']?>' method='<?=$W->config['method']?>' id='<?=$D->name?>_form'>
    <input type="hidden" name="<?=str_replace("search","table",$D->name)?>[page]" value="1">
    <input type="hidden" name="<?=str_replace("search","table",$D->name)?>[start]" value="0">

      <div class="row">
	  <div class="col-lg-6 col-md-6 col-sm-10 col-xs-12">
	      <!--<div class="alert alert-danger">Errore</div>-->
	  </div>
      </div>
      
      <div class="form-group">
	  <div class="row">	      
	      <label for="<?=$i->tipo->htmlName?>" class="sr-only">Tipo</label>
	      <label class="col-lg-2 col-md-2 col-sm-2 control-label-left">Tipo</label>
	      <div class="col-lg-4 col-md-4 col-sm-4">
		  <? $i->tipo->display(); ?>
	      </div>
	      
	      <label for="<?=$i->descrizione->htmlName?>" class="sr-only">Descrizione</label>
	      <label class="col-lg-2 col-md-2 col-sm-2 control-label-left">Descrizione</label>
	      <div class="col-lg-4 col-md-4 col-sm-4">
		  <? $i->descrizione->display(); ?>
	      </div>
	  </div>
      </div>
      
      <div class="form-group">
	  <div class="row">	      
	      <label for="<?=$i->modalita->htmlName?>" class="sr-only">Modalit&agrave;</label>
	      <label class="col-lg-2 col-md-2 col-sm-2 control-label-left">Modalit&agrave;</label>
	      <div class="col-lg-4 col-md-4 col-sm-4">
		  <? $i->modalita->display(); ?>
	      </div>
	      
	      <label for="<?=$i->beneficiario->htmlName?>" class="sr-only">Beneficiario</label>
	      <label class="col-lg-2 col-md-2 col-sm-2 control-label-left">Beneficiario</label>
	      <div class="col-lg-4 col-md-4 col-sm-4">
		  <? $i->beneficiario->display(); ?>
	      </div>
	      
	      <label for="<?=$i->partecipanti->inputs->ragioneSociale->htmlName?>" class="sr-only">Ragione Sociale</label>
	      <label class="col-lg-2 col-md-2 col-sm-2 control-label-left">Ragione Sociale</label>
	      <div class="col-lg-4 col-md-4 col-sm-4">
		  <? $i->partecipanti->inputs->ragioneSociale->display(); ?>
	      </div>
	      
	      <label for="<?=$i->partecipanti->inputs->codiceFiscale->htmlName?>" class="sr-only">Codice Fiscale</label>
	      <label class="col-lg-2 col-md-2 col-sm-2 control-label-left">Codice Fiscale</label>
	      <div class="col-lg-4 col-md-4 col-sm-4">
		  <? $i->partecipanti->inputs->codiceFiscale->display(); ?>
	      </div> 
	  </div>
      </div>
      
      <div class="form-group">
	  <div class="row">	      
	      <label for="<?=$i->ufficio->htmlName?>" class="sr-only">Ufficio</label>
	      <label class="col-lg-2 col-md-2 col-sm-2 control-label-left">Ufficio</label>
	      <div class="col-lg-4 col-md-4 col-sm-4">
		  <? $i->ufficio->display(); ?>
	      </div>     
	      
	      <label for="<?=$i->cig->htmlName?>" class="sr-only">CIG</label>
	      <label class="col-lg-2 col-md-2 col-sm-2 control-label-left">CIG</label>
	      <div class="col-lg-4 col-md-4 col-sm-4">
		  <? $i->cig->display(); ?>
	      </div> 
	  </div>
      </div>
      
      <div class="form-group">
	  <div class="row">
	      
	      <label for="<?=$i->data_1->htmlName?>" class="sr-only">Data</label>
	      <label class="col-lg-2 col-md-2 col-sm-2 control-label-left">Data</label>
	      <div class="col-lg-4 col-md-4 col-sm-4">
		  <? $i->data_1->display(); ?>
	      </div>
	      
	      <label for="<?=$i->data_2->htmlName?>" class="sr-only">fino a</label>
	      <label class="col-lg-2 col-md-2 col-sm-2 control-label-left">fino a</label>
	      <div class="col-lg-4 col-md-4 col-sm-4">
		  <? $i->data_2->display(); ?>
	      </div>
	  </div>
      </div>
      
      <div class="form-group">
	  <div class="row">
	      <div class="col-lg-12 buttons-row">  
		  <input type="submit" class="btn btn-primary mt10" name='submit' value='Cerca'>
		  <input type="submit" class="btn btn-default mt10"  name='clear' value='Nuova Ricerca'>
	      </div>
	  </div>
      </div>
  </form>
<?
}
else {
$D->loadJs('divControls');
?>
<script type="text/javascript">
var <?=$D->name?>_divs = new Array();
function <?=$D->name?>_switchDivs(button, inputName){
  div1 = <?=$D->name?>_divs[inputName+'_i'];
  div2 = <?=$D->name?>_divs[inputName+'_r'];
  if (button.innerHTML == '+'){
    button.innerHTML = '-';
    div2.replace(div1);
  }
  else{
    button.innerHTML = '+';
    div1.replace(div2);
  }
  return false;
}
<?
if ($W->config['hidable']){
?>

function <?=$D->name?>_toggle(){
  table = getObj('<?=$D->name?>_table');
  a = getObj('<?=$D->name?>_toggleLink');
  if (table.style.display == 'none'){
    table.style.display = 'inline';
    a.innerHTML = 'Nascondi maschera di ricerca';
  }
  else{
    table.style.display = 'none';
    a.innerHTML = 'Mostra maschera di ricerca';
  }
}

<?
$display = 'none';
}
else $display = '';
$i = & $W->inputs;
?>
</script>
        <form action='<?=$_SERVER['PHP_SELF']?>' method='<?=$W->config['method']?>' id='<?=$D->name?>_form'>
      <p class='multi'>
            <p><label for='<?=$i->tipo->htmlName?>'>Tipo</label><? $i->tipo->display(); ?></p>
            <p><label for='<?=$i->descrizione->htmlName?>'>Descrizione</label><? $i->descrizione->display(); ?></p>
            <p><label for='<?=$i->modalita->htmlName?>'>Modalit&agrave;</label><? $i->modalita->display(); ?></p>
            <p><label for='<?=$i->cig->htmlName?>'>CIG</label><? $i->cig->display(); ?></p>
            <p><label for='<?=$i->ufficio->htmlName?>'>Ufficio</label><? $i->ufficio->display(); ?></p>
            <p><label for='<?=$i->data_1->htmlName?>'>Data</label><? $W->inputs->data_1->display(); ?>
            <label for='<?=$i->data_2->htmlName?>' class='inline'>fino a</label> <? $W->inputs->data_2->display(); ?></p>
            <p><label for='<?=$i->beneficiario->htmlName?>'>Beneficiario</label><? $i->beneficiario->display(); ?></p>
            <p><label for='<?=$i->partecipanti->inputs->codiceFiscale->htmlName?>'>Codice Fiscale</label>
            <? $i->partecipanti->inputs->codiceFiscale->display(); ?></p>
            <p><label for='<?=$i->partecipanti->inputs->ragioneSociale->htmlName?>'>Ragione Sociale</label>
            <? $i->partecipanti->inputs->ragioneSociale->display(); ?></p>
            <div style='clear: both'></div>
            <div class="rightalign">
                <input type='submit' name='submit' value='Cerca' class="button">
                <input type='submit' name='clear' value='Nuova Ricerca' class="button">            
            </div>
        </form>    
<?
}
?>

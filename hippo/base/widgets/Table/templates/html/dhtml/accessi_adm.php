<?
include_once(LIBS.'/Widgets/PageNavigator.class.php');

if(isset($C['style']) && $C['style']=="2016") { // nuova grafica
  ?>
  <table class="pagination_content table table-bordered table-striped table-responsive row_linked table-hover" id='<?=$D->name?>'>
    <thead>
      <tr>
	<th>Dettagli</th>
 	<th>Tipologia</th>
	<th>Richiedente</th>
	<th>Oggetto</th>
	<th>Data</th>
	<th>Esito</th>
	<th>Data Esito</th>
      </tr>
    </thead>
    <tbody>
<?
    while ($W->data->moveNext()){
    ?>
	<tr class="paginated_element">
	  <td><a href='<?= $W->config['admin'] ?><?=$W->data->get('id')?>'>Vai</a></td>
	  <td align='center'><?=$W->data->get('tipologia')?></td>
	  <td align='center'><?=$W->data->get('richiedente')?></td>
	  <td align='center'><?=$W->data->get('oggetto')?></td>
	  <td align='center'><?=dateToUser($W->data->get('dtPrDomanda'))?></td>
          <td algin='center'><?=$W->data->get('esito')?></td>
	  <td align='center'><?=dateToUser($W->data->get('dtPrEsito'))?></td>
	</tr>
    <?
    }
    ?>
    </tbody>
  </table>
  <!--<input type='hidden' id='items_per_page' value="15" />  
  <input type='hidden' id='show_per_page' value="15" />  
  <input type='hidden' id='current_page' value="1" />  
  <input type='hidden' id='max_page_in_navbar' value="7"/>
  <div class="page_navigation pagination" id='paginator_div'><ul></ul></div>-->
  <?
  // vecchio paginatore
  if ($W->config['maxElements'] && $W->resultRows) $showPageNavigator = true;

  if($showPageNavigator)
  {
      $pageNavigator = new PageNavigator($W->resultRows);
      $pageNavigator->setItemsPerPage($W->config['maxRows']);
      $pageNavigator->setTableName($W->name);
      $pageNavigator->displayPageJump(true);
      $pageNavigator->setDisplayPages(8);
      /*$pageNavigator->setDisplayStyle(PageNavigator::DISPLAY_FULL);*/ // mostra precedente e successivo al posto delle frecce
  }

  if($showPageNavigator)
  {
      $pageNavigator->display($_GET[$W->name]["page"]);
  }
  // fine vecchio paginatore

  $D->printScripts();
} else {
?>
    <table class='rowList center' cellspacing='0'>
        <tbody id='<?=$D->name?>'>
            <tr>
	        <th>Dettagli</th>
	        <th>Tiologia</th>
	        <th>Richiedente</th>
	        <th>Oggetto</th>
	        <th>Data</th>
	        <th>Eisto</th>
	        <th>Data Esito</th>
            </tr>
      <?
      while ($W->data->moveNext()){
      ?>
            <tr>
	          <td><a href='<?= $W->config['admin'] ?><?=$W->data->get('id')?>'>Vai</a></td>
        	  <td align='center'><?=$W->data->get('tipologia')?></td>
	          <td align='center'><?=$W->data->get('richiedente')?></td>
	          <td align='center'><?=$W->data->get('oggetto')?></td>
	          <td align='center'><?=dateToUser($W->data->get('dtPrDomanda'))?></td>
	          <td align='center'><?=$W->data->get('esito')?></td>
        	  <td align='center'><?=dateToUser($W->data->get('dtPrEsito'))?></td>
            </tr>
    <?
    }
    ?>
        </tbody>
    </table>
<div class="pageNav">
    <p>
        <?
        if ($W->config['maxElements'] && $W->resultRows) $showPageNavigator = true;
        
if($showPageNavigator)
{
        $pageNavigator = new PageNavigator($W->resultRows);
        $pageNavigator->setItemsPerPage($W->config['maxRows']);
        $pageNavigator->setTableName($W->name);
//	$pageNavigator->setDisplayStyle(PageNavigator::DISPLAY_FULL); // mostra precedente e successivo al posto delle frecce

	$pageNavigator->displayPageJump(true); // mostra il menu scelta pagina
}

	if($showPageNavigator)
        {
	  $pageNavigator->display($_GET[$W->name]["page"]);
	}
        ?>
    </p>
</div>
<? } ?>

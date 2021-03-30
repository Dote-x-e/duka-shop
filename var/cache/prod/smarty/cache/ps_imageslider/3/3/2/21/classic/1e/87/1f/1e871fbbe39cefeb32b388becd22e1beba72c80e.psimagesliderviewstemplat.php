<?php
/* Smarty version 3.1.34-dev-7, created on 2021-03-27 04:32:40
  from 'module:psimagesliderviewstemplat' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_605eeda8126a46_06407312',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6c2108a17c7103b6e203f4f0621d4645b56b0114' => 
    array (
      0 => 'module:psimagesliderviewstemplat',
      1 => 1610363806,
      2 => 'module',
    ),
  ),
  'cache_lifetime' => 31536000,
),true)) {
function content_605eeda8126a46_06407312 (Smarty_Internal_Template $_smarty_tpl) {
?>
  <div id="carousel" data-ride="carousel" class="carousel slide" data-interval="5000" data-wrap="true" data-pause="hover" data-touch="true">
    <ol class="carousel-indicators">
            <li data-target="#carousel" data-slide-to="0" class="active"></li>
            <li data-target="#carousel" data-slide-to="1"></li>
          </ol>
    <ul class="carousel-inner" role="listbox">
              <li class="carousel-item active" role="option" aria-hidden="false">
          <a href="http://www.prestashop.com/?utm_source=back-office&amp;utm_medium=v17_homeslider&amp;utm_campaign=back-office-EN&amp;utm_content=download">
            <figure>
              <img src="http://localhost/duka-shop/modules/ps_imageslider/images/3f96754461763273ad0c664a844378cc76d447af_men-shoes.png" alt="showshoes">
                              <figcaption class="caption">
                  <h2 class="display-1 text-uppercase">Mens shoes. </h2>
                  <div class="caption-description"><h3>Karibu!</h3>
<p>Every price is reasonable, and you don't have to think twice!</p></div>
                </figcaption>
                          </figure>
          </a>
        </li>
              <li class="carousel-item " role="option" aria-hidden="true">
          <a href="http://www.prestashop.com/?utm_source=back-office&amp;utm_medium=v17_homeslider&amp;utm_campaign=back-office-EN&amp;utm_content=download">
            <figure>
              <img src="http://localhost/duka-shop/modules/ps_imageslider/images/70bdd764f22efa1c31681e7138258698fe1d3f87_shoe1.png" alt="womenshoes">
                              <figcaption class="caption">
                  <h2 class="display-1 text-uppercase">Women shoes</h2>
                  <div class="caption-description"><h3>Ladies Best</h3>
<p>Fresh from the states, get it from us</p></div>
                </figcaption>
                          </figure>
          </a>
        </li>
          </ul>
    <div class="direction" aria-label="Carousel buttons">
      <a class="left carousel-control" href="#carousel" role="button" data-slide="prev" aria-label="Previous">
        <span class="icon-prev hidden-xs" aria-hidden="true">
          <i class="material-icons">&#xE5CB;</i>
        </span>
      </a>
      <a class="right carousel-control" href="#carousel" role="button" data-slide="next" aria-label="Next">
        <span class="icon-next" aria-hidden="true">
          <i class="material-icons">&#xE5CC;</i>
        </span>
      </a>
    </div>
  </div>
<?php }
}

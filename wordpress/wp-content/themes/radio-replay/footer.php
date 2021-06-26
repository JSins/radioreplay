<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Radio_Replay
 */

?>

	<footer id="colophon" class="site-footer">
		<div class="site-footer-inner">
		<?php wp_nav_menu( array(
			'menu' => "footer-menu"
		)); ?>
		<div class="copyright">
			<p>©<?php echo date("Y"); ?> RadioRePLAY - Alle Rechte vorbehalten.</p>	
		</div>
		</div>
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

  <script>
    AOS.init();
  </script>

	<script>
	feather.replace()
	</script>

</body>
</html>

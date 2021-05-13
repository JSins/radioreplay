<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package Radio_Replay
 */

get_header();
?>

	<main id="primary" class="site-main">
		<div class="site-main-inner">
			<div class="sidebar">
				<?php
				get_sidebar();
				?>
			</div>
			<div class="posts">

			<?php if ( have_posts() ) : ?>

					<?php
					/* Start the Loop */
					while ( have_posts() ) :
						the_post();

						/**
						 * Run the loop for the search to output the results.
						 * If you want to overload this in a child theme then include a file
						 * called content-search.php and that will be used instead.
						 */
						get_template_part( 'template-parts/content', get_post_type() );

					endwhile;

					the_posts_navigation();

					else :

						get_template_part( 'template-parts/content', 'none' );

					endif;
					?>

			</div>
		</div>
	</main><!-- #main -->

<?php

get_footer();

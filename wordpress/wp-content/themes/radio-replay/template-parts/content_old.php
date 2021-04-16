<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Radio_Replay
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<div class="post-img">
		<?php radio_replay_post_thumbnail(); ?>
	</div>
	<div class="post-content">
		<header>
			<h2><?php the_title() ?></h2>
		</header>
		<main>
			<?php the_excerpt() ?>
			<?php the_content() ?>
		</main>
		<footer>
			<?php radio_replay_posted_on(); ?>
			<?php radio_replay_posted_by(); ?>
			<?php radio_replay_entry_footer(); ?>
		</footer>
	</div>


	<header class="entry-header">

	
	
		<?php
		if ( is_singular() ) :
			the_title( '<h1 class="entry-title">', '</h1>' );
		else :
			the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
		endif;

		if ( 'post' === get_post_type() ) :
			?>
			<div class="entry-meta">
				<?php
				
				radio_replay_posted_by();
				?>
			</div><!-- .entry-meta -->
		<?php endif; ?>
	</header><!-- .entry-header -->

	

	<div class="entry-content">
		<?php
		the_content(
			sprintf(
				wp_kses(
					/* translators: %s: Name of current post. Only visible to screen readers */
					__( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'radio-replay' ),
					array(
						'span' => array(
							'class' => array(),
						),
					)
				),
				wp_kses_post( get_the_title() )
			)
		);

		wp_link_pages(
			array(
				'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'radio-replay' ),
				'after'  => '</div>',
			)
		);
		?>
	</div><!-- .entry-content -->

	<footer class="entry-footer">
		<?php radio_replay_entry_footer(); ?>
	</footer><!-- .entry-footer -->
</article><!-- #post-<?php the_ID(); ?> -->

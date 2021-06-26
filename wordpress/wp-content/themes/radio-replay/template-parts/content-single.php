<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Radio_Replay
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?> data-aos="fade-up">

	<div class="post-content">
		<div class="post-content-main">
			<!-- <header>
				<h2><?php the_title() ?></h2>
			</header> -->
			<main>
				<?php the_content();

				the_post_navigation(
					array(
						'prev_text' => '<i data-feather="arrow-left-circle"></i><span class="nav-title">%title</span>',
						'next_text' => '<span class="nav-title">%title</span><i data-feather="arrow-right-circle"></i>',
					)
				);

				?>
			</main>
			<footer>

			</footer>
		</div>
		<div class="post-content-footer">
			<?php
			comment_form();
			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;
			?>
		</div>
	</div>

	<div class="post-info">
		<div class="post-info-inner">
			<header>
				<div class="post-image">
				<?php radio_replay_post_thumbnail(); ?>
			</header>
			<main>
				<h2>Über diesen Podcast</h2>
				<p>Bei RadioRePLAY erzählen Erik und Jonas über ihre besten Gaming- und Filmmomente. 
					Dabei geht es oft um die kleinen Dinge, die sie persönlich, auf welche Art und Weise auch immer, beeindrucken. 
					Verpackt mit einer großzügigen Portion Leidenschaft für's Hobby gibt es hier sicher für jeden etwas Inspiration abzuholen.</p>
			</main>
			<footer>
				<div class="meta-item">
					<i data-feather="calendar"></i>
					<div class="meta-item-content">
						<span class="meta-item-content-desc">Datum:</span><br>
						<?php radio_replay_posted_on(); ?>
					</div>
				</div>
				<div class="meta-item">
					<i data-feather="user"></i>
					<div class="meta-item-content">
						<span class="meta-item-content-desc">Autor:</span><br>
						<?php radio_replay_posted_by(); ?>
					</div>
				</div>
				<div class="meta-item">
					<i data-feather="message-square"></i>
					<div class="meta-item-content">
						<span class="meta-item-content-desc">Social:</span><br>
						<a href="<?php the_permalink(); ?>/#comments">
							<?php 
							if(get_comments_number() == 1)
							{
								echo get_comments_number() . " Kommentar";
							}
							else
							{
								echo get_comments_number() . " Kommentare";
							}
							?>
						</a>
					</div>
				</div>			
			</footer>
		</div>
	</div>
	
</article><!-- #post-<?php the_ID(); ?> -->

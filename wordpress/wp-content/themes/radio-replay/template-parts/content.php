<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Radio_Replay
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?> data-aos="fade-left">

	<div class="post-image">
		<?php radio_replay_post_thumbnail(); ?>
	</div>
	<div class="post-content">
		<header>
			<h2><a href="<?php echo the_permalink() ?>"><?php the_title() ?></a></h2>
		</header>
		<main>
			<?php the_excerpt() ?>
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
					<a href="<?php the_permalink(); ?>/#respond">
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

</article><!-- #post-<?php the_ID(); ?> -->

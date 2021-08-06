-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2021 at 06:04 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wording`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `username`, `comment`) VALUES
(1, 9, 10, 'nano', 'Amazing news!!!'),
(2, 13, 4, 'prerna', 'Just what I was looking for.'),
(3, 10, 4, 'nganba', 'Very Informative.'),
(4, 9, 2, 'nano', 'It was very Interesting.'),
(5, 13, 2, 'prerna', 'I can agree to this.'),
(6, 10, 3, 'nganba', 'This was very informative.'),
(7, 10, 2, 'nganba', 'Good to know about this.'),
(8, 10, 7, 'nganba', 'This has been very informative.'),
(9, 10, 7, 'nganba', 'I really like this blog'),
(10, 10, 2, 'nganba', 'hi, ioasjdiasjd');

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(4, 9, 2),
(2, 10, 2),
(3, 10, 7),
(1, 13, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`, `username`) VALUES
(3, 10, 2, 'How to key greenscreen video in Adobe Premiere Pro', '1609905856_Keying_PP_Header.jpg', '&lt;p&gt;Greenscreen (or chromakey) video is a popular technique that makes it easy to shoot a subject against a simple backdrop and then replace it later during the video editing stage of the project.&amp;nbsp; This offers flexibility in storytelling and is a very popular technique that&rsquo;s used in both film, television, and web video. &amp;nbsp;&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://i0.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_01.jpg?resize=740%2C451&amp;amp;ssl=1&quot; alt=&quot;&quot; srcset=&quot;https://i0.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_01.jpg?resize=1181%2C720&amp;amp;ssl=1 1181w, https://i0.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_01.jpg?resize=640%2C390&amp;amp;ssl=1 640w, https://i0.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_01.jpg?w=1480&amp;amp;ssl=1 1480w, https://i0.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_01.jpg?w=2220&amp;amp;ssl=1 2220w&quot; sizes=&quot;100vw&quot; width=&quot;740&quot;&gt;&lt;/figure&gt;&lt;p&gt;Both the greenscreen footage and the background used in the video are courtesy &lt;a href=&quot;https://bit.ly/adobestockvideopf&quot;&gt;Adobe Stock&lt;/a&gt;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Keying in Adobe Premiere Pro&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Adobe Premiere Pro has a powerful, fast, and intuitive Chromakey effect called Ultra Key. The workflow is very simple: Choose a color you would like to become transparent in the video clip, and then adjust settings to suit. The Ultra Key effect, like every greenscreen keyer, dynamically generates a matte, based on the color selection. The matte is a grayscale file (similar to an alpha channel in Photoshop) which is adjustable using the detailed settings of the Ultra Key effect.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Step 1:&lt;/strong&gt; Place the background you want to use on track V1.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Step 2:&lt;/strong&gt; Place the greenscreen video above the background on track V2.&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;Tip:&lt;/strong&gt; If you need backgrounds for greenscreen (both realistic and graphical) be sure to check out &lt;/i&gt;&lt;a href=&quot;https://bit.ly/adobestockvideopf&quot;&gt;&lt;i&gt;&lt;strong&gt;Adobe Stock&lt;/strong&gt;&lt;/i&gt;&lt;/a&gt;&lt;i&gt; for a huge selection. &amp;nbsp;You can even search right inside Premiere Pro in the&amp;nbsp;&lt;strong&gt;Libraries&lt;/strong&gt; panel.&lt;/i&gt;&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://i1.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_02.jpg?resize=740%2C204&amp;amp;ssl=1&quot; alt=&quot;&quot; srcset=&quot;https://i1.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_02.jpg?w=1028&amp;amp;ssl=1 1028w, https://i1.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_02.jpg?resize=640%2C177&amp;amp;ssl=1 640w&quot; sizes=&quot;100vw&quot; width=&quot;740&quot;&gt;&lt;/figure&gt;&lt;p&gt;&lt;strong&gt;Step 3:&lt;/strong&gt; Open the Effects panel in Adobe Premiere Pro by choosing &lt;strong&gt;Window &amp;gt; Workspace &amp;gt; Effects.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Step 4:&lt;/strong&gt; In the Effects, panel type the word Ultra.&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://i0.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_03.jpg?resize=431%2C500&amp;amp;ssl=1&quot; alt=&quot;&quot; srcset=&quot;https://i0.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_03.jpg?resize=431%2C500&amp;amp;ssl=1 431w, https://i0.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_03.jpg?w=548&amp;amp;ssl=1 548w&quot; sizes=&quot;100vw&quot; width=&quot;431&quot;&gt;&lt;/figure&gt;&lt;p&gt;&lt;strong&gt;Step 5:&lt;/strong&gt; Drag the Ultra Key effect on to the greenscreen video in your sequence.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Step 6:&lt;/strong&gt; In the Effect Controls panel, select the&lt;strong&gt; Key Color eyedropper. &lt;/strong&gt;Use the eyedropper to click a green area in the Program Monitor. This clip has a consistent green visible in the background, so it is not too important where you click. With other footage, you may need to experiment to find the right spot.&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://i1.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_04.jpg?resize=716%2C266&amp;amp;ssl=1&quot; alt=&quot;&quot; srcset=&quot;https://i1.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_04.jpg?w=716&amp;amp;ssl=1 716w, https://i1.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_04.jpg?resize=640%2C238&amp;amp;ssl=1 640w&quot; sizes=&quot;100vw&quot; width=&quot;716&quot;&gt;&lt;/figure&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;Tip:&lt;/strong&gt; If you hold the Control key (Windows) or Command key (Mac OS) when you click with the eyedropper, Adobe Premiere Pro takes a 5&times;5 pixel sample average, rather than a single- pixel selection. This often captures a better color for &lt;/i&gt;keying.&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://i2.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_05.jpg?resize=422%2C174&amp;amp;ssl=1&quot; alt=&quot;&quot;&gt;&lt;/figure&gt;&lt;p&gt;The greenscreen background should disappear.&amp;nbsp; While the results are good, we can make them much better.&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Refining the key for pro results&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;When you clicked the Key Color Eyedropper, the Ultra Key effect identified all pixels that have the green you selected and sets their alpha to 0%.&amp;nbsp; This works well, but there may be subtle shades (particularly around hair).&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;strong&gt;Note: &lt;/strong&gt;In this example, we&rsquo;re using footage with a green &lt;/i&gt;background.&lt;i&gt; It is also possible you&rsquo;ll have footage with a blue background for &lt;/i&gt;keying. The workflow is the same.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Step 1:&lt;/strong&gt; Open the &lt;strong&gt;Effect&lt;/strong&gt; &lt;strong&gt;Controls&lt;/strong&gt; panel (Window &amp;gt; Effect Controls).&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Step 2:&lt;/strong&gt; In the Effect Controls panel, change the Output setting for the Ultra Key effect to &lt;strong&gt;Alpha Channel.&lt;/strong&gt; In this mode, the Ultra Key effect displays the alpha channel as a grayscale image, where dark pixels will be transparent, and light pixels will be opaque.&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://i0.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_06.jpg?resize=706%2C298&amp;amp;ssl=1&quot; alt=&quot;&quot; srcset=&quot;https://i0.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_06.jpg?w=706&amp;amp;ssl=1 706w, https://i0.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_06.jpg?resize=640%2C270&amp;amp;ssl=1 640w&quot; sizes=&quot;100vw&quot; width=&quot;706&quot;&gt;&lt;/figure&gt;&lt;p&gt;&lt;strong&gt;Step 3:&lt;/strong&gt; Evaluate the alpha channel and look for areas of gray, where the pixels will be partially transparent&mdash;which we don&rsquo;t want.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Step 4:&lt;/strong&gt; Change the Setting menu to &lt;strong&gt;Aggressive&lt;/strong&gt;.&amp;nbsp;&lt;/p&gt;&lt;p&gt;This cleans up the selection a little. Scrub through the shot to see whether it has nice, clean black areas and white areas. If you see gray pixels in this view where there should not be, the result will be partially transparent parts in the picture.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Step 5: &lt;/strong&gt;Switch the Output setting back to &lt;strong&gt;Composite&lt;/strong&gt; to see the result.&lt;/p&gt;&lt;p&gt;The Aggressive mode works better for this clip. The Default, Relaxed, and Aggressive modes modify the Matte Generation, Matte Cleanup, and Spill Suppression settings. You can also modify them yourself to get a better key with more challenging footage.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Step 6:&lt;/strong&gt; Try adjusting the manual controls to taste. Each group of settings has a different purpose. Here&rsquo;s an overview:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Matte Generation:&lt;/strong&gt; Once you&rsquo;ve chosen your key color, the Matte Generation controls to adjust the way it is interpreted. You will often get positive results with more challenging footage by adjusting these settings.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Matte Cleanup: &lt;/strong&gt;Once your matte is defined, you can use these controls to adjust it. Choke shrinks the matte, which is helpful if your key selection misses some edges. Be careful not to choke the matte too much because you&rsquo;ll begin to lose edge detail in the foreground image, often supplying a &ldquo;digital haircut&rdquo; in the vernacular of the visual-effects industry. Soften applies a blur to the matte, which often improves the apparent &ldquo;blending&rdquo; of the foreground and background image for a more convincing composite. Contrast increases the contrast of the alpha channel, making that black-and-white image a stronger black and white and thereby more clearly defining the key. You will often get cleaner keys by increasing the contrast.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Spill Suppression:&lt;/strong&gt; Spill suppression compensates for color that bounces from the green background onto the subject. When this happens, the combination of the green background and the subject&rsquo;s own colors are usually different enough that it does not cause parts of the subject to be keyed transparent. However, it does not look good when the edges of your subject are green. Spill suppression automatically compensates by adding color to the foreground element edges that are positioned opposite, on a color wheel, to the key color. For example, magenta is added when greenscreen keying or yellow is added when bluescreen keying. This neutralizes the color &ldquo;spill.&rdquo;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Color Correction:&lt;/strong&gt; The Color Correction controls give you a quick and easy way to adjust the appearance of your foreground video to help it blend in with your background. Often, these three controls are enough to make a more natural match. Note that these adjustments are applied after the key, so you won&rsquo;t cause problems for your key by adjusting the colors with these controls.&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;/ul&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://i2.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_07.jpg?resize=740%2C451&amp;amp;ssl=1&quot; alt=&quot;&quot; srcset=&quot;https://i2.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_07.jpg?resize=1181%2C720&amp;amp;ssl=1 1181w, https://i2.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_07.jpg?resize=640%2C390&amp;amp;ssl=1 640w, https://i2.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_07.jpg?w=1480&amp;amp;ssl=1 1480w, https://i2.wp.com/photofocus.com/wp-content/uploads/2018/01/Keying_PP_07.jpg?w=2220&amp;amp;ssl=1 2220w&quot; sizes=&quot;100vw&quot; width=&quot;740&quot;&gt;&lt;/figure&gt;&lt;p&gt;Footage courtesy &lt;a href=&quot;https://bit.ly/adobestockvideopf&quot;&gt;Adobe Stock&lt;/a&gt;&lt;/p&gt;&lt;p&gt;By taking the time to refine the controls, you can get very good results right inside Adobe Premiere Pro.&amp;nbsp; In fact, the Ultra Key effect is very fast to render and may even playback in real-time for previews.&lt;/p&gt;', 1, '2021-01-06 09:34:16', 'nganba'),
(4, 13, 3, 'Five 2020 Style Trends that We Need to Kiss Goodbye', '1609906231_upset-lovely-young-girl-wearing-pajamas-laying-in-4PBWZCT.jpg', '&lt;p&gt;Sometimes the fashion gods get it right &mdash; the wrap dress and midi pencil skirt come to mind. And other times, well not so much. Design is a creative enterprise, after all, and creativity can easily get lost in itself. When that happens in fashion, we end up wearing stuff that just doesn&rsquo;t look good. You know, like acid-wash jeans and aggressively structured shoulder pads. Those bad &lt;a href=&quot;https://www.thebudgetfashionista.com/archive/european-style-trends/&quot;&gt;style trends&lt;/a&gt; find their way into our closets and rotations for a season, until we get distracted by a new catalog of shapes and colors. Only then do we look back and wonder, what were we thinking, with those &lt;a href=&quot;https://www.thebudgetfashionista.com/archive/2000s-fashion-trends/&quot;&gt;low-rise jeans&lt;/a&gt; or oversized flannels?&lt;/p&gt;&lt;p&gt;Even 2020, the year everyone stayed at home, brought us some style moves that are already embarrassing. Here are five 2020 style trends to leave behind as we start the new year.&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;1. PJs all day &amp;nbsp;&amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;The PJs all day trend arose in response to a world in crisis. So many of us shifted from a structured schedule to a more free-flowing, work-from-home lifestyle. And when you don&rsquo;t need to head into the office, you start to wonder why you need to shower, brush your hair, or put on makeup or clothes. Soon enough, there you are, logging into Zoom meetings wearing your PJs.&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/pjs-all-day.png.webp&quot; alt=&quot;Collage of pajamas and knit jogger set.&quot; srcset=&quot;https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/pjs-all-day.png.webp 800w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/pjs-all-day-200x300.png.webp 200w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/pjs-all-day-300x450.png.webp 300w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/pjs-all-day-768x1152.png.webp 768w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/pjs-all-day-735x1103.png.webp 735w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/pjs-all-day-223x335.png.webp 223w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/pjs-all-day-231x347.png.webp 231w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/pjs-all-day-347x520.png.webp 347w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/pjs-all-day-427x640.png.webp 427w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/pjs-all-day-512x768.png.webp 512w&quot; sizes=&quot;100vw&quot; width=&quot;800&quot;&gt;&lt;/figure&gt;&lt;p&gt;Top:&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://redirect.viglink.com/?key=c2289fc62d029721c513ecb2e4794ef5&amp;amp;u=https%3A%2F%2Fwww.nastygal.com%2Fwere-knit-kidding-sweater-and-joggers-set-%2FAGG44260-105-34.html&amp;amp;opt=true&quot;&gt;Knit jogger set from NastyGal&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;/ Bottom:&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://www.thebudgetfashionista.com/archive/target-pajamas/&quot;&gt;PJs from Target&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKQAAAAUCAMAAAA0oWYGAAAANlBMVEUAAACkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKT0RuBeAAAAEXRSTlMAECAwQFBgcHuEj5+vv8/f7w0rGDcAAANcSURBVEjHzZbLlsMoDEQLMMYBPaj//9lZCDt2Oj1nZtesHCKbS0klwLFnACh9SwDQWkaM1Cj4I2OSDUAjtQAw8gUAyD6V9e9AcgA7SW6AktQEJPeMKQCaqqpKBoDDVNX2c1JVVW0k1PUsvRUAQLOIA4BNVVUK0FRUKwBsomIdaajoyEhdRaUAQFfRkZC6yjm0wUmyBSQTlAH9YgLMAQySJHcAyUiS/ZokSc6Mdv3wUXC+1AOyne/3a/IgSUH2kCa+ewBISnKW9c8agkmSc0G+ApIFOoFEeUN2ANtcUbHeN8i1nb7iznVJWa8bAAhJ1kCZZYXMbQV7RnpCxq9SSZKWZGHIBIQbLh5NpyZvSJ8+fVpaW/TYA7cH5NrZLME2CwLOErKR9BOSCiRZkEaSM8YIJblvS5SAHGjcPXyzIM9FbpBHziWXkhe9lLL7Eu0GeYreVlgD6krNByRf4YkTctZccsklLyUXJBekAJOyfSxS/Am5X+5rj4KY2w0yGTktdMoeBd+X3tnu6SZZcFdylru7b0qOpSTKtgI6yemkoMbDBemiotpPyHFV236DrCR186AakWZb5fOpJA39nm4TUbEd35Uctx7VSfqYtHSQIj+MY+kOOT4hB8kODaV3kiz59PJDSZ8kj3aH5Anzm5IPyNmMswp5/F/I7CQbDpKewrS1Lis/lRyNqzB+Qv4nJbkP0ia93iF9iIgej3RrNJcLcilTYhqD5OgkJX0qqauz3NM9RMT2S8n6r0pyjyYj2X43zgBQZzTOC1JJej/GOtgqSc7w+IeSM+X5hJz5q3F+VzI+cKS7cY6Ucsr5akE575M3/76Ajc+ufzZpz/hRk+Xsw+8WlFJKKYfTyJYXZP8FMuLqA3KamZnbFoaYFgTz1sxfd0i2q5jjfvVQ0q9GfKXbYwFdbx1L0bR9h2zhn8jIx7HI/ddjMVlk+3WMdWotaSu+KYnI14dxOKOk2deyCfMTUmITe1wJvlwwWG+QM46AdcF4G+p0VBh1poCc9wtGwepRzDjLM8Z1WkRgjtK+QzYz84piZg1J3XyPyTXcCup6VjnWVc3NfMfuZlavGavAy8183Y+yuLkWpOHmmgFkdXPJSOLvFWRZs68LSAkD/pkr+XuUPg8AqDozgPya/W8B/gPQAm/tWHkI8wAAAABJRU5ErkJggg==&quot; alt=&quot;&quot;&gt;&lt;/figure&gt;&lt;p&gt;In the abnormal times, I find some value in holding onto the habits of normalcy. You know, like getting dressed in the morning. You can still dress comfortably in, say, leggings, a warm tunic, and slippers.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;2. Pleated leather &amp;nbsp;&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Leather at its best is sleek and slinky. At its worst, it&rsquo;s pleated. I can&rsquo;t say I&rsquo;ve ever seen a folded &lt;a href=&quot;https://www.thebudgetfashionista.com/archive/leather-clothes-on-our-holiday-wish-list/&quot;&gt;leather piece&lt;/a&gt; that&rsquo;s not bulky and basically unflattering. Even so, designers this year brought out pleated leather skirts, pleated leather pants, and even pleated leather shorts. Yuck.&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-leather.jpg.webp&quot; alt=&quot;Collage of pleated leather pants and faux leather leggings.&quot; srcset=&quot;https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-leather.jpg.webp 800w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-leather-200x300.jpg.webp 200w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-leather-300x450.jpg.webp 300w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-leather-768x1152.jpg.webp 768w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-leather-735x1103.jpg.webp 735w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-leather-223x335.jpg.webp 223w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-leather-231x347.jpg.webp 231w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-leather-347x520.jpg.webp 347w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-leather-427x640.jpg.webp 427w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-leather-512x768.jpg.webp 512w&quot; sizes=&quot;100vw&quot; width=&quot;800&quot;&gt;&lt;/figure&gt;&lt;p&gt;Top: &lt;a href=&quot;https://redirect.viglink.com/?key=c2289fc62d029721c513ecb2e4794ef5&amp;amp;u=https%3A%2F%2Fwww.zappos.com%2Fp%2Fblank-nyc-faux-leather-pull-on-skinny%2Fproduct%2F8612570&amp;amp;opt=true&quot;&gt;Faux leather skinny pants from Zappos&lt;/a&gt; / Bottom: &lt;a href=&quot;https://redirect.viglink.com/?key=c2289fc62d029721c513ecb2e4794ef5&amp;amp;u=https%3A%2F%2Fwww.bloomingdales.com%2Fshop%2Fproduct%2Fj-brand-nila-pleated-leather-straight-jeans-in-black%3FID%3D3576675&amp;amp;opt=true&quot;&gt;Pleated leather jeans from Bloomingdale&rsquo;s&lt;/a&gt;&lt;/p&gt;&lt;p&gt;If you want to wear leather or faux leather, choose something that shows off your natural lines. Leather leggings and &lt;a href=&quot;https://www.thebudgetfashionista.com/archive/how-to-wear-pencil-skirt/&quot;&gt;pencil skirts&lt;/a&gt; are always good choices.&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;3. Quilted shorts&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;You can buy a designer set of quilted shorts from Self Portrait, Saint Laurent, or Sandro. But why? Like adding pleats to leather, quilting adds volume. It&rsquo;s also a cold-weather element. Put quilts on your shorts and how you&rsquo;re too hot and your hips look unnecessarily thick.&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-1.jpg.webp&quot; alt=&quot;Collage of tie-waist shorts and quilted shorts. &quot; srcset=&quot;https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-1.jpg.webp 800w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-1-200x300.jpg.webp 200w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-1-300x450.jpg.webp 300w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-1-768x1152.jpg.webp 768w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-1-735x1103.jpg.webp 735w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-1-223x335.jpg.webp 223w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-1-231x347.jpg.webp 231w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-1-347x520.jpg.webp 347w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-1-427x640.jpg.webp 427w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-1-512x768.jpg.webp 512w&quot; sizes=&quot;100vw&quot; width=&quot;800&quot;&gt;&lt;/figure&gt;&lt;p&gt;Top:&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://redirect.viglink.com/?key=c2289fc62d029721c513ecb2e4794ef5&amp;amp;u=https%3A%2F%2Fwww.asos.com%2Fus%2Fasos-design%2Fasos-design-linen-tie-waist-shorts-in-stripe%2Fprd%2F10736320&amp;amp;opt=true&quot;&gt;Tie-waist shorts from ASOS&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;/ Bottom:&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://redirect.viglink.com/?key=c2289fc62d029721c513ecb2e4794ef5&amp;amp;u=https%3A%2F%2Fwww.intermixonline.com%2Fself-portrait%2Fquilted-faux-leather-shorts%2FRS21-121.html&amp;amp;opt=true&quot;&gt;Quilted shorts from Intermix Online&lt;/a&gt;&lt;/p&gt;&lt;p&gt;Skip the quilts on your shorts. Choose a lightweight, &lt;a href=&quot;https://www.thebudgetfashionista.com/archive/5-alternatives-short-short/&quot;&gt;tie-waist short&lt;/a&gt; instead, paired with a blouse, tucked in.&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;4. Shapeless culottes&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Even a straight pair of culottes can be hard to pull off. That mid-calf length tends to sit right at your lower leg&rsquo;s thickest point which mostly doesn&rsquo;t look great on anyone. Worse is the 2020 version of culottes that features pleated fronts and a wide, A-line silhouette. They&rsquo;re shapeless, they lack femininity, and they look dated.&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/culottes-trend.png.webp&quot; alt=&quot;Collage of culottes (the bad 2020 style trend) and cropped pants.&quot; srcset=&quot;https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/culottes-trend.png.webp 800w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/culottes-trend-200x300.png.webp 200w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/culottes-trend-300x450.png.webp 300w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/culottes-trend-768x1152.png.webp 768w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/culottes-trend-735x1103.png.webp 735w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/culottes-trend-223x335.png.webp 223w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/culottes-trend-231x347.png.webp 231w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/culottes-trend-347x520.png.webp 347w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/culottes-trend-427x640.png.webp 427w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/culottes-trend-512x768.png.webp 512w&quot; sizes=&quot;100vw&quot; width=&quot;800&quot;&gt;&lt;/figure&gt;&lt;p&gt;Top:&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://redirect.viglink.com/?key=c2289fc62d029721c513ecb2e4794ef5&amp;amp;u=https%3A%2F%2Fwww.everlane.com%2Fproducts%2Fwomens-slim-straight-crop-ankle-washedblack%3Fcollection%3Dwomens-bottoms&amp;amp;opt=true&quot;&gt;Everlane crop pants&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;/ Bottom:&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://redirect.viglink.com/?key=c2289fc62d029721c513ecb2e4794ef5&amp;amp;u=https%3A%2F%2Fwww.mytheresa.com%2Fen-us%2Fmarni-high-rise-cotton-and-linen-culottes-1621253.html&amp;amp;opt=true&quot;&gt;Marni culottes&lt;/a&gt;&lt;/p&gt;&lt;p&gt;A better choice is the straight-legged cropped pant, a la Audrey Hepburn. Chic and tidy, you can wear them with any cute blouse or sweater.&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;5. And the worst of 2020 style trends: sequined loungewear&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;I loved loungewear even before lockdowns and &lt;a href=&quot;https://www.thebudgetfashionista.com/archive/socially-distanced-party/&quot;&gt;social distancing&lt;/a&gt;. I mean, the right set of joggers is flattering and comforting. And you can pair those soft pants with a nice range of tops and shoes, which is an added bonus.&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-joggers.jpg.webp&quot; alt=&quot;2020 fashion trends 1&quot; srcset=&quot;https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-joggers.jpg.webp 800w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-joggers-200x300.jpg.webp 200w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-joggers-300x450.jpg.webp 300w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-joggers-768x1152.jpg.webp 768w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-joggers-735x1103.jpg.webp 735w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-joggers-223x335.jpg.webp 223w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-joggers-231x347.jpg.webp 231w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-joggers-347x520.jpg.webp 347w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-joggers-427x640.jpg.webp 427w, https://www.thebudgetfashionista.com/wp-content/uploads/2021/01/fashion-trends-joggers-512x768.jpg.webp 512w&quot; sizes=&quot;100vw&quot; width=&quot;800&quot;&gt;&lt;/figure&gt;&lt;p&gt;Top:&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://redirect.viglink.com/?key=c2289fc62d029721c513ecb2e4794ef5&amp;amp;u=https%3A%2F%2Fwww.nordstrom.com%2Fs%2Fzella-live-in-pocket-joggers%2F5220579&amp;amp;opt=true&quot;&gt;Zella joggers from Nordstrom&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;/ Bottom:&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://redirect.viglink.com/?key=c2289fc62d029721c513ecb2e4794ef5&amp;amp;u=https%3A%2F%2Fwww.bergdorfgoodman.com%2Fp%2Fjonathan-simkhai-mylah-featherlight-sequin-jogger-pants-prod161540089&amp;amp;opt=true&quot;&gt;Sequined jogger from Bergdorf Goodman&lt;/a&gt;&lt;/p&gt;&lt;p&gt;But sequined loungewear? No thanks. Sequins are hard, scratchy, and high maintenance. It seems very wrong to add them to clothing that&rsquo;s naturally relaxed, soft, and easygoing. Maybe the idea was to add some glam to your favorite at-home pieces. But if you wanted glam, I&rsquo;d think you wouldn&rsquo;t reach for a pair of sweats.&lt;/p&gt;', 1, '2021-01-06 09:40:31', 'prerna'),
(5, 13, 9, 'How to Keep your Rabbits Cool in Summer', '1609906560_Rabbits-e1554473878896.jpg', '&lt;p&gt;The summer has arrived and while many of us are enjoying the wonderful hot weather of the season, our pets may not be enjoying it quite so much.&lt;/p&gt;&lt;p&gt;Rabbits in particular are vulnerable to heat stroke and rely on their owners to provide them with cooler conditions during the summer months. Wild rabbits go underground or hide under shrubs and bushes to keep cool, so here we look at how, as pet owners, we can help in keeping rabbits cool in the hot weather.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Give your Rabbit Plenty of Shade&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Keep your &lt;a href=&quot;https://www.thepetexpress.co.uk/living-spaces/&quot;&gt;rabbit hutch&lt;/a&gt; out of direct sunlight as much as possible. Metal hutches in particular can warm up very quickly and will retain the heat throughout the day. Placing your hutch in a shaded area of your garden is ideal, preferably under a tree or large bush in order to allow some light to shine through, whilst protecting your rabbits from intense heat.&amp;nbsp;&amp;nbsp;If you are unable to move your hutch, then try placing a large sun umbrella close by. This will help to break up the intensity of the sunlight.&lt;/p&gt;&lt;p&gt;The same applies to your rabbit run, as they are mostly made of wire mesh and are completely exposed to the sun\'s harmful rays. &amp;nbsp;A lightweight cover that allows the wind to circulate and keep it ventilated, but also offers shelter from the sun, will ensure they can enjoy their exercise time without overheating.&lt;/p&gt;&lt;p&gt;Try placing some ceramic or slate tiles inside the rabbit hutch. They are a cold material and your rabbits will like the cooling feeling against their body as they lie on top. A tunnel or hideaway is also a great idea for inside the hutch, perfect for an extra layer of shade.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Offer your Rabbit Fresh, Cool Water&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;A fresh supply of water is always essential and this should be replenished at regular intervals throughout the day during the summer months.&amp;nbsp; A combination of &lt;a href=&quot;https://www.thepetexpress.co.uk/small-pet-bowls/&quot;&gt;water bowls&lt;/a&gt; and bottles will give your rabbit access to plenty of liquids and you may find that they even enjoy lying in the bowls when the weather is extremely hot.&lt;/p&gt;&lt;p&gt;Adding ice-cubes to the water bowl will offer some cooling relief, as will offering a supply of fresh vegetables. These naturally contain a large amount of water and your rabbit will enjoy munching on them during those long hot days, whilst being kept hydrated at the same time.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Keep Flies at Bay&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Flies are perhaps the most annoying thing about summer!&amp;nbsp; They are the most persistent of creatures that can drive us to distraction and unfortunately, they have the same effect on our rabbits.&lt;/p&gt;&lt;p&gt;Flies can cause serious harm if they lay eggs on your rabbit, so keeping them away from your rabbit hutch is vital.&amp;nbsp; Scrupulous hygiene is essential and only regular cleaning of your pets bedding and litter will help keep these critters away.&amp;nbsp; If you see flies around your rabbit hutch consider hanging some flypaper nearby (out of your rabbits reach) and check your pet regularly for any signs of infestation. Keeping your rabbit groomed and removing excess hair will not only help to keep them cooler in the heat, but it will also give flies less places to lay their eggs.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;How to Spot Heat Stroke Symptoms in Rabbits&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Heatstroke in rabbits can be fatal, as for other small animals. If you can spot the symptoms of heat stoke in the early stages, then you will have time to reverse the effects. The main symptoms to look out for are;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Fast, shallow breathing&lt;/li&gt;&lt;li&gt;Wetness around the nose&lt;/li&gt;&lt;li&gt;Breathing rapidly from an open mouth whilst throwing their head back&lt;/li&gt;&lt;li&gt;Hot ears&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;If you are worried that your rabbit has heat stroke, take them indoors and into a cool, well ventilated room immediately. Do not submerge them in cold water as this can send them into shock, but do apply a cool compress to their ears. Offer them plenty of cool, fresh water and keep them calm. If they do not appear to be getting better within a short space of time, take them your local vet straight away.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Keep your rabbit cool and fresh this summer and avoid them becoming a hot cross bunny!&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Sources&lt;/p&gt;&lt;p&gt;http://www.rabbitwelfare.co.uk/pdfs/heatwaveblog.pdf&lt;/p&gt;&lt;p&gt;https://www.bluecross.org.uk/pet-advice/how-keep-your-rabbits-cool-summer-heat&lt;/p&gt;&lt;p&gt;https://rabbit.org/keep-your-rabbit-cool-in-the-summer/&lt;/p&gt;', 1, '2021-01-06 09:46:00', 'prerna'),
(7, 13, 9, 'How Long Should Puppies Go For Walks?', '1609906871_How-Long-Should-Puppies-Go-For-Walks.jpg', '&lt;p&gt;Walking your dog should be part of your daily routine. This is because dogs need daily exercise, just like humans, and a short walk can bring plenty of benefits.&lt;/p&gt;&lt;p&gt;Walking your dog regularly is an easy exercise that has a positive effect on several different aspects of your dog&rsquo;s health, weight, and behavior. For many years, pet owners believed that regular walks with their dogs will help keep their furry friends healthy, fit, and active. As more pet owners begin to realize the beneficial effects of walking their dogs regularly, more pet parents find ways to incorporate it into their daily routines.&lt;/p&gt;&lt;p&gt;How Long Should You Walk Your Puppy?&lt;/p&gt;&lt;p&gt;Every dog is different, each of which needs the right amount of exercise to release their energy. Regardless if you personally walk your dog or you plan on hiring a dog walker, like &lt;a href=&quot;https://www.hnhdog.co.uk/walking/&quot;&gt;h&amp;amp;h dog&lt;/a&gt;&amp;nbsp;walkers, it&rsquo;s important to know how long your dog should be walked.&lt;/p&gt;&lt;p&gt;Below are a few tips to get started:&lt;/p&gt;&lt;p&gt;&lt;strong&gt;1) Limit Puppies To Five Minutes of Exercise&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Puppies can get tired extremely fast. This is why, as a guideline, many people give their puppies five minutes of exercise for every month that they have in age.&lt;/p&gt;&lt;p&gt;For example, if your puppy is 6 months old, you should walk it for 30 minutes. If your puppy is 3 months old, a 15-minute walk should be more than enough to tire them out.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;2) Don&rsquo;t Over Work Your Puppy&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Even though exercising your puppy is essential, you should always be aware of how much you&rsquo;re working with your puppy. Most dogs don&rsquo;t need any extreme form of exercise, but a relaxing walk should be more than enough to tire your puppy out.&lt;/p&gt;&lt;p&gt;Exercising your dog also helps them explore the world and help them learn things around them. If your dog stops to sniff around, let them figure it out on their own, and don&rsquo;t rush them or try to keep things going. Always make sure you&rsquo;re paying close attention to how your puppy is reacting to the exercise.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;3) Pay Attention To Your Puppy&rsquo;s Body Language&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;If you&rsquo;ve ever owned a puppy, you&rsquo;ve probably watched them play around when they&rsquo;re younger. If you observe, you&rsquo;ll notice that your dog will play around for a few minutes, then lay down and relax for a few more. Your dog is the only one that&rsquo;s aware of their limits. Hence, always pay close attention to your dog&rsquo;s behavior.&lt;/p&gt;&lt;p&gt;If your puppy seems tired and wants to lay down or no longer wants to keep going, they&rsquo;re probably trying to tell you that you need to slow down and they need a break.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;4) Playtime Counts As Exercise&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Puppies have minimal energy, which is why you don&rsquo;t need to do a lot of activity with your pet until they get older. When your puppy is young, they won&rsquo;t even need to go on walks. This is especially true for giant breeds since they get tired out faster than other breeds.&lt;/p&gt;&lt;p&gt;Having a few minutes of playtime in your yard can be more than enough exercise for your puppy.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;5) Buy Interactive Toys&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;There are many toys on the market that are designed to not only work your dog&rsquo;s body out but also their mind. &lt;a href=&quot;https://www.petsworld.in/dog-puppies/supplies/toys/interactive-toys.html&quot;&gt;Interactive toys&lt;/a&gt; are great for helping your dog learn and develop. These toys will also help tire your dog out in a fun way.&lt;/p&gt;&lt;p&gt;Using these toys is recommended when your dog is going to be left alone for an extended period of time. This way, your dog can tire them self out without you taking them out for a walk.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Other than a distraction from being in the house all day, we&rsquo;ll talk about some of the other benefits that walking your dog daily has.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;1) Give Your Puppy A Healthier Lifestyle&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;If you want to see a positive difference in your dog&rsquo;s overall health, then you should definitely incorporate walking your dog into your daily routine.&lt;/p&gt;&lt;p&gt;A regular walk will help keep your dog fit, healthy, and happy. It&rsquo;ll also make sure your dog has plenty of fresh air to breathe, which is extremely important for them.&lt;/p&gt;&lt;p&gt;Dogs that don&rsquo;t get the exercise they need have an increased risk of getting overweight or obese because. Being overweight carries many health risks for dogs, such as a shorter life span, diabetes, joint problems, and even heart disease. By walking your dog regularly, you can help prevent all of these problems.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;2) Helps You Stay Healthier&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Walking your dog may also help you maintain your own health. Walking helps reduce stress, which is a good thing for your overall mental and physical health.&lt;/p&gt;&lt;p&gt;Exercising may also help reduce the risk of heart disease, cancer, and other health problems. Regular walks can also improve your relationship with your dog.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;3) Help Control Your Dog&rsquo;s Behavior&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Most dog breeds were grown for a specific task or job&ndash;whether it be for hunting, tracking, working, or chasing cattle. However, most dogs don&rsquo;t work like they used to and are used to a comfortable life as a pet. Even though this is the case, most dogs still have their natural working instincts and need to get some daily exercise.&lt;/p&gt;&lt;p&gt;If you don&rsquo;t allow this, your dog might start showing behavioral problems like chewing, jumping on people, and destroying property, which is not your dog&rsquo;s fault. Instead, it&rsquo;s merely their way of telling you they&rsquo;re bored and need some sort of activity to keep their mind busy.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Conclusion&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Keeping your dog&rsquo;s health is very important. If you don&rsquo;t walk your dog every day, they may become obese, develop health problems, or develop behavioral issues that can lead to aggression or destruction.&lt;/p&gt;&lt;p&gt;By walking your dog, you&rsquo;re taking the first step in caring for your pet. This is a simple but powerful way to show your love and respect for your pet. Always make sure you pay extra attention when walking your dog. Also, remember not to overwork your dog or put them in any dangerous situation.&lt;/p&gt;', 1, '2021-01-06 09:51:11', 'prerna'),
(10, 9, 10, 'The Second BTS Conference Is Coming May 2021', '1609907579_Capture.JPG', '&lt;p&gt;&lt;strong&gt;BTS A Global Interdisciplinary Conference II&lt;/strong&gt; is set to take place May 1-2, 2021 at California State University Northridge. This conference follows the &lt;a href=&quot;https://www.thebtseffect.com/blog/army-scholars-bts-conference&quot;&gt;successful first BTS conference&lt;/a&gt;, which took place at Kingston University in London this past January.&lt;/p&gt;&lt;p&gt;The conference committee is currently accepting pitches across a wide variety of topics, including but not limited to:&lt;/p&gt;&lt;p&gt;Participatory culture and fandom&lt;/p&gt;&lt;p&gt;Music Studies and Music Education, including Hip-Hop and Hybridity&lt;/p&gt;&lt;p&gt;Dance Studies&lt;/p&gt;&lt;p&gt;Connect, BTS&lt;/p&gt;&lt;p&gt;Identities and Intersectional practices: gender, sexuality, race, age, dis/ability,&lt;/p&gt;&lt;p&gt;National and ethnic identities&lt;/p&gt;&lt;p&gt;Music Videos: Aesthetics and Attributes&lt;/p&gt;&lt;p&gt;Documentary and Reality Television&lt;/p&gt;&lt;p&gt;BTS Graphic Lyrics&lt;/p&gt;&lt;p&gt;Mental Health awareness&lt;/p&gt;&lt;p&gt;Philosophy&lt;/p&gt;&lt;p&gt;Citizen Politics&lt;/p&gt;&lt;p&gt;International Relations&lt;/p&gt;&lt;p&gt;Education and Educational Psychology&lt;/p&gt;&lt;p&gt;Human Development and Family Studies&lt;/p&gt;&lt;p&gt;BTS and Online Gaming&lt;/p&gt;&lt;p&gt;Like the previous conference, this one also aims to be inclusive and interdisciplinary, meaning you don&rsquo;t have to be an academic, professional researcher, or a current student to submit! There are multiple methods for submission, including papers, panels, workshops, videos, and pechakucha. Submissions are due &lt;strong&gt;November 6&lt;/strong&gt;. Please see the &lt;a href=&quot;https://www.csun.edu/mike-curb-arts-media-communication/bts/proposals&quot;&gt;conference website&lt;/a&gt; for more information on submitting.&lt;/p&gt;&lt;p&gt;This year&rsquo;s keynote speakers are &lt;a href=&quot;https://www.csun.edu/mike-curb-arts-media-communication/bts/keynote-speakers&quot;&gt;Dr. Crystal Anderson and Dr. Colette Balmain&lt;/a&gt;. The conference is also currently accepting tax-deductible donations on their website &lt;a href=&quot;https://www.csun.edu/mike-curb-arts-media-communication/bts/donations&quot;&gt;here&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;At the moment, the conference is planned to take place on the physical university campus, but given the current COVID-19 situation, this may change in the future.&lt;/p&gt;&lt;p&gt;Having presented at the first conference myself, I highly encourage other fans to submit an abstract! I look forward to seeing the work that comes out of this event.&lt;/p&gt;', 1, '2021-01-06 10:02:59', 'nano');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(2, 'Technology', '<p>Keep up with the latest technologies</p>'),
(3, 'Fashion', '<p>Read blogs related to the latest trends.</p>'),
(9, 'Animals', '<p>Find interesting facts about the most fascinating creatures known to man.</p>'),
(10, 'Music', '<p>Latest gossips and up to date news about the music industry.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `reg` tinyint(1) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `reg`, `username`, `email`, `password`, `created_at`) VALUES
(9, 1, 0, 'nano', 'ngan17cs@cmrit.ac.in', '$2y$10$DGDcPB6sFlICMrthQC7KD.Io1Ppx20hJvIeIiuK10KetUj2ldaxf2', '2020-11-11 08:39:05'),
(10, 0, 1, 'nganba', 'nganba.irom47@gmail.com', '$2y$10$Y5AKcgMLS4JOdi8E2hKQMed1jvkbIFlTlFOZY0edADAzBG.OErviy', '2020-11-11 10:44:56'),
(11, 0, 1, 'abc', 'abc@ac.com', '$2y$10$V3OjVS/KrJBQisDrgx/3kO4oFu6NUvxKeS8KhtUS5F0KSCAFGMoaC', '2020-11-12 08:18:58'),
(12, 0, 1, 'test', 'test@test.com', '$2y$10$57PSUXkj4qI.fvRGCsSKbu.BF6/sIUYML45z6bg73/u4.M1Hdn3dK', '2020-12-08 07:11:26'),
(13, 0, 1, 'prerna', 'prma17cs@cmrit.ac.in', '$2y$10$EK1l2OQ.t1J7t/.A0WoR2.qJPvUIQkLsPZaCF76nKuISo0SKO6XMm', '2021-01-05 22:10:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`post_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

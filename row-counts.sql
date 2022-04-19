-- Write four queries to find rowcounts for each table, 
-- one query per table (there are lots of ways to do that)
SELECT COUNT(*) as "Row Counts"
FROM lights;

SELECT COUNT(*) as "Row Counts"
FROM light_history;

SELECT COUNT(*) as "Row Counts"
FROM thermostats;

SELECT COUNT(*) as "Row Counts"
FROM thermostat_history;


insert into Comments(post_comment, PostId, customer_id) 
    values('I am Alicia Kyes', ".$_POST['PostId'].", ".$_SESSION['id'].") 
where CommentId = '".$_POST['CommentId']."';

select Posts.post_content, Comments.post_comment, Customers.full_name from Posts 
inner join Comments on Posts.PostId = Comments.PostId 
inner join Customers on Posts.customer_id = Customers.id; 




CREATE TABLE Replies (
  `ReplyId` int(11) NOT NULL AUTO_INCREMENT,
  `reply_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `PostId` int(13) DEFAULT NULL,
  `CommentId` int(13),
  `comment_reply` text,
  `replied` datetime DEFAULT NULL,
  `reply_likes` int(13) DEFAULT NULL,
  PRIMARY KEY (ReplyId),
  KEY customer_id (customer_id),
  KEY CommentId (CommentId),
  KEY PostId (PostId),
  CONSTRAINT `Posts_ibfk_1` FOREIGN KEY (customer_id) REFERENCES Customers (id),
  CONSTRAINT `Posts_ibfk_2` FOREIGN KEY (CommentId) REFERENCES Comments (CommentId),
  CONSTRAINT `Posts_ibfk_3` FOREIGN KEY (PostId) REFERENCES Posts (PostId)
) 
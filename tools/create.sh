# create table wp_options (option_id bigserial PRIMARY KEY, option_name varchar(64) UNIQUE, option_value text,autoload varchar(20) );    
#PGPASSWORD='A_PASSWORD' psql -U postgres -h wordpress-postgresql -d postgres -c "\d"
#PGPASSWORD='A_PASSWORD' psql -U postgres -h wordpress-postgresql -d postgres -c "create table wp_users (ID bigserial PRIMARY KEY, user_login varchar(60), user_pass varchar(64), user_nicename varchar(50), user_email varchar(100), user_url varchar(100), user_registered date, user_activation_key varchar(60), user_status integer, display_name varchar(250)  );"
#PGPASSWORD='A_PASSWORD' psql -U postgres -h wordpress-postgresql -d postgres -c "create table wp_usermeta (umeta_id bigserial PRIMARY KEY, user_id bigserial , meta_key varchar(255), meta_value text);"

#PGPASSWORD='A_PASSWORD' psql -U postgres -h wordpress-postgresql -d postgres -c "create table wp_posts (ID bigserial PRIMARY KEY, post_author bigserial, post_date date, post_date_gmt date, post_content text, post_title text, post_excerpt text, post_status varchar(20), comment_status varchar(20), ping_status varchar(20), post_password varchar(20), post_name varchar(200), to_ping text, pinged text, post_modified date, post_modified_gmt date, post_content_filtered text, post_parent bigserial, guid varchar(255), menu_order integer, post_type varchar(20), post_mime_type varchar(100), comment_count bigserial);"

#PGPASSWORD='A_PASSWORD' psql -U postgres -h wordpress-postgresql -d postgres -c "create table wp_comments (comment_ID bigserial PRIMARY KEY, comment_post_ID bigserial, comment_author text, comment_author_email varchar(100), comment_author_url varchar(200), comment_author_IP varchar(100), comment_date date, comment_date_gmt date, comment_content text, comment_karma integer, comment_approved varchar(20), comment_agent varchar(255), comment_type varchar(20), comment_parent bigserial, user_id bigserial);"

#PGPASSWORD='A_PASSWORD' psql -U postgres -h wordpress-postgresql -d postgres -c "create table wp_links (link_id bigserial PRIMARY KEY, link_url varchar(255), link_name varchar(255), link_image varchar(255), link_target varchar(25), link_description varchar(255), link_visible varchar(20), link_owner bigserial, link_rating integer, link_updated date, link_rel varchar(255), link_notes text, link_rss varchar(255));"

#PGPASSWORD='A_PASSWORD' psql -U postgres -h wordpress-postgresql -d postgres -c "create table wp_postmeta (meta_id bigserial PRIMARY KEY, post_id bigserial, meta_key varchar(255), meta_value text);"

#PGPASSWORD='A_PASSWORD' psql -U postgres -h wordpress-postgresql -d postgres -c "create table wp_terms (term_id bigserial PRIMARY KEY, name varchar(200), slug varchar(200), term_group bigserial);"

#PGPASSWORD='A_PASSWORD' psql -U postgres -h wordpress-postgresql -d postgres -c "create table wp_term_taxonomy (term_taxonomy_id bigserial PRIMARY KEY, term_id bigserial, taxonomy varchar(32), description text, parent bigserial, count bigserial);"

#PGPASSWORD='A_PASSWORD' psql -U postgres -h wordpress-postgresql -d postgres -c "create table wp_term_relationships (object_id bigserial PRIMARY KEY, term_taxonomy_id bigserial, term_order integer);"

#PGPASSWORD='A_PASSWORD' psql -U postgres -h wordpress-postgresql -d postgres -c "create table  wp_termmeta (meta_id bigserial PRIMARY KEY, term_id bigserial, meta_key varchar(255), meta_value text);"

PGPASSWORD='A_PASSWORD' psql -U postgres -h wordpress-postgresql -d postgres -c "create table wp_commentmeta (meta_id bigserial PRIMARY KEY, comment_id bigserial, meta_key varchar(255), meta_value text);"

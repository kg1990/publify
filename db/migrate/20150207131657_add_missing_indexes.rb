class AddMissingIndexes < ActiveRecord::Migration
  def change
    add_index :feedback, [:id, :type]
    add_index :feedback, :user_id
    add_index :sidebars, [:id, :type]
    add_index :contents, :user_id
    add_index :contents, [:id, :type]
    add_index :articles_tags, :tag_id
    add_index :articles_tags, :article_id
    add_index :users, :profile_id
    add_index :users, :text_filter_id
    add_index :users, :resource_id
    add_index :triggers, [:pending_item_id, :pending_item_type]
    add_index :redirections, :content_id
    add_index :redirections, :redirect_id
    add_index :resources, :article_id
  end
end

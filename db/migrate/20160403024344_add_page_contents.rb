class AddPageContents < ActiveRecord::Migration

  PAGE_NAMES = %w(
    life_groups mens mens_serve womens womens_serve youth youth_serve childrens
    childrens_serve worship_arts worship_arts_serve missions missions_serve
    welcome welcome_serve
  )

  def change
    create_table(:welcome_contents) do |t|
      t.string :page_name
      t.text :html_content
    end

    PAGE_NAMES.each_with_index do |r|
      WelcomeContent.create(page_name: r, html_content: '')
    end

  end
end

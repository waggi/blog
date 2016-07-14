require 'rails_helper'

feature 'User comments an article' do
  let(:comment) do
    build(:comment)
  end

  let(:article) do
    create(:article)
  end

  scenario 'with valid credentials' do
    visit article_path(article.id)
    fill_in 'Commenter', with: comment.commenter
    fill_in 'Body', with: comment.body
    click_on 'Create Comment'

    expect(page).to have_content(comment.body)
  end

  scenario 'with empty text' do
    visit article_path(article.id)
    fill_in 'Commenter', with: comment.commenter
    fill_in 'Body', with: ''
    click_on 'Create Comment'

    expect(page).not_to have_content(comment.commenter)
  end
end
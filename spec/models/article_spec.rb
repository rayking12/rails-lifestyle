require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'creating articles' do
    it 'records cannot be blank ' do
      expect { Article.create! }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  context 'checking article author' do
    let(:user) { User.create(name: 'Luke', username: 'King') }
    let(:article) { Article.create(title: 'New Title', body: 'content', author_id: user.id) }
    it 'user author is Luke' do
      expect(article.author.name).to eql('Luke')
    end
  end

  context 'testing associations' do
    it 'should have one user' do
      ar = Article.reflect_on_association(:author)
      expect(ar.macro).to eq(:belongs_to)
    end
    it 'should have many categories' do
      ar = Article.reflect_on_association(:categories)
      expect(ar.macro).to eq(:has_many)
    end
    it 'should have many votes' do
      ar = Article.reflect_on_association(:votes)
      expect(ar.macro).to eq(:has_many)
    end
  end
end

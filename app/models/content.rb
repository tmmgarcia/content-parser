class Content < ApplicationRecord
  enum kind: {
    h1: "h1",
    h2: "h2",
    h3: "h3",
    a: "a"
  }

  belongs_to :page

  validates :kind, :value, presence: true
  validates :kind, inclusion: { in: Content.kinds.keys }
end


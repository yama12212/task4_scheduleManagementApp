class Schedule < ApplicationRecord
  validates :title, presence: true
  validates :start_day, presence: true
  validates :end_day, presence: true
  validate :date_validate

  private

  def date_validate
    return if start_day.blank? || end_day.blank?
    errors.add(:end_day, "は開始日よりも後の日付を選択してください") if self.end_day < self.start_day
  end
end

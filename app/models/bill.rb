class Bill < ApplicationRecord

  def self.import(file)
    spreadsheet = Roo::Spreadsheet.open(file.path)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      bill = find_by(id: row["id"]) || new
      bill.attributes = row.to_hash
      bill.save!
    end
  end

end

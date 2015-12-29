class PersonalRecordsController < ApplicationController

  def index
    @personal_records = PersonalRecord.all
  end

  def new
    @personal_record = PersonalRecord.new
  end
end

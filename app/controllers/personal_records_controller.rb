class PersonalRecordsController < ApplicationController

  def index
    @personal_records = PersonalRecord.all
  end
end

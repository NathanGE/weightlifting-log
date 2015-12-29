class PersonalRecordsController < ApplicationController

  def index
    @personal_records = PersonalRecord.all
  end

  def new
    @personal_record = PersonalRecord.new
  end

  def create
    PersonalRecord.create(personal_record_params)
    redirect_to root_path
  end

  private

  def personal_record_params
    params.require(:personal_record).permit(:exercise, :weight, :date)
  end

end

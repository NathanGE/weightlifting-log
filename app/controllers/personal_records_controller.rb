class PersonalRecordsController < ApplicationController

  def index
    @personal_records = PersonalRecord.all
  end

  def new
    @personal_record = PersonalRecord.new
  end

  def create
    @personal_record = PersonalRecord.create(personal_record_params)
    if @personal_record.invalid?
      flash[:error] = '<strong>Could not save:</strong> The data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def personal_record_params
    params.require(:personal_record).permit(:exercise, :weight, :date)
  end

end

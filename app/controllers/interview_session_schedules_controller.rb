class InterviewSessionSchedulesController < ApplicationController
  # GET /interview_session_schedules
  # GET /interview_session_schedules.xml
  def index
    @interview_session_schedules = InterviewSessionSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @interview_session_schedules }
    end
  end

  # GET /interview_session_schedules/1
  # GET /interview_session_schedules/1.xml
  def show
    @interview_session_schedule = InterviewSessionSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @interview_session_schedule }
    end
  end

  # GET /interview_session_schedules/new
  # GET /interview_session_schedules/new.xml
  def new
    @interview_session_schedule = InterviewSessionSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @interview_session_schedule }
    end
  end

  # GET /interview_session_schedules/1/edit
  def edit
    @interview_session_schedule = InterviewSessionSchedule.find(params[:id])
  end

  # POST /interview_session_schedules
  # POST /interview_session_schedules.xml
  def create
    @interview_session_schedule = InterviewSessionSchedule.new(params[:interview_session_schedule])

    respond_to do |format|
      if @interview_session_schedule.save
        format.html { redirect_to(@interview_session_schedule, :notice => 'Interview session schedule was successfully created.') }
        format.xml  { render :xml => @interview_session_schedule, :status => :created, :location => @interview_session_schedule }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @interview_session_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /interview_session_schedules/1
  # PUT /interview_session_schedules/1.xml
  def update
    @interview_session_schedule = InterviewSessionSchedule.find(params[:id])

    respond_to do |format|
      if @interview_session_schedule.update_attributes(params[:interview_session_schedule])
        format.html { redirect_to(@interview_session_schedule, :notice => 'Interview session schedule was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @interview_session_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /interview_session_schedules/1
  # DELETE /interview_session_schedules/1.xml
  def destroy
    @interview_session_schedule = InterviewSessionSchedule.find(params[:id])
    @interview_session_schedule.destroy

    respond_to do |format|
      format.html { redirect_to(interview_session_schedules_url) }
      format.xml  { head :ok }
    end
  end
end

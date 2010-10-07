class InterviewSessionsController < ApplicationController
  # GET /interview_sessions
  # GET /interview_sessions.xml
  def index
    @interview_sessions = InterviewSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @interview_sessions }
    end
  end

  # GET /interview_sessions/1
  # GET /interview_sessions/1.xml
  def show
    @interview_session = InterviewSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @interview_session }
    end
  end

  # GET /interview_sessions/new
  # GET /interview_sessions/new.xml
  def new
    @interview_session = InterviewSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @interview_session }
    end
  end

  # GET /interview_sessions/1/edit
  def edit
    @interview_session = InterviewSession.find(params[:id])
  end

  # POST /interview_sessions
  # POST /interview_sessions.xml
  def create
    @interview_session = InterviewSession.new(params[:interview_session])

    respond_to do |format|
      if @interview_session.save
        format.html { redirect_to(@interview_session, :notice => 'Interview session was successfully created.') }
        format.xml  { render :xml => @interview_session, :status => :created, :location => @interview_session }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @interview_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /interview_sessions/1
  # PUT /interview_sessions/1.xml
  def update
    @interview_session = InterviewSession.find(params[:id])

    respond_to do |format|
      if @interview_session.update_attributes(params[:interview_session])
        format.html { redirect_to(@interview_session, :notice => 'Interview session was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @interview_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /interview_sessions/1
  # DELETE /interview_sessions/1.xml
  def destroy
    @interview_session = InterviewSession.find(params[:id])
    @interview_session.destroy

    respond_to do |format|
      format.html { redirect_to(interview_sessions_url) }
      format.xml  { head :ok }
    end
  end
end

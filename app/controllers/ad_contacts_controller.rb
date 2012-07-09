class AdContactsController < ApplicationController
  # GET /ad_contacts
  # GET /ad_contacts.json
  def index
    @param1 = params[:param1]
#    @ad_contacts = AdContact.all
#   @ad_contacts = AdContact.where("product_id = ?",param1)
   #@ad_contacts = AdContact.find_by_sql("select a.* from ad_contacts a where a.product_id = param1")
    @ad_contacts = AdContact.find_by_sql("select a.* from ad_contacts a, products p where a.product_id  = p.id and p.user_id = 1 order by a.created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ad_contacts }
    end
  end

  # GET /ad_contacts/1
  # GET /ad_contacts/1.json
  def show
    @ad_contact = AdContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ad_contact }
    end
  end

  # GET /ad_contacts/new
  # GET /ad_contacts/new.json
  def new
    @param1 = params[:param1]
    @ad_contact = AdContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ad_contact }
    end
  end

  # GET /ad_contacts/1/edit
  def edit
    @ad_contact = AdContact.find(params[:id])
  end

  # POST /ad_contacts
  # POST /ad_contacts.json
  def create
    @ad_contact = AdContact.new(params[:ad_contact])

    respond_to do |format|
      if @ad_contact.save
        format.html { redirect_to @ad_contact, notice: 'Ad contact was successfully created.' }
        format.json { render json: @ad_contact, status: :created, location: @ad_contact }
      else
        format.html { render action: "new" }
        format.json { render json: @ad_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ad_contacts/1
  # PUT /ad_contacts/1.json
  def update
    @ad_contact = AdContact.find(params[:id])

    respond_to do |format|
      if @ad_contact.update_attributes(params[:ad_contact])
        format.html { redirect_to @ad_contact, notice: 'Ad contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ad_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_contacts/1
  # DELETE /ad_contacts/1.json
  def destroy
    @ad_contact = AdContact.find(params[:id])
    @ad_contact.destroy

    respond_to do |format|
      format.html { redirect_to ad_contacts_url }
      format.json { head :no_content }
    end
  end
end

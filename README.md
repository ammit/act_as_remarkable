### Usage

rails g model Remark content:text remarkable:references{polymorphic}

rails db:migrate



### To Model
  has_remarks


### to view

<%= f.simple_fields_for :remarks do |sa| %>
  <%= render 'remarks/remark_fields', f: sa %>
<% end %>

and create view with same fields

### To Controller

remarks_attributes: [:id, :_destroy, :content]

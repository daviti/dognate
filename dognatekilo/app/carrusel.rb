
<% @items.each do |item| %>
    <% item.item_images.each_with_index do |item_image, index| %>
        <div class="<% if index == 0 %>active<% end %>">
           <%= link_to(image_tag(item_image.image.url), item_image.image.url, ) %>
        </div>
    <% end %>
<% end %> 
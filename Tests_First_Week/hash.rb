def tag (name, content, options = {})
  #return html_text
  attr_string = ""
  options.each do |key, value|
    attr_string += " #{key}='#{value}'"
  end
  return "<#{name}#{attr_string}> #{content} <#{name}/>"
end

p tag("a", "Google it", {href: "www.google.com", class: "btn"})

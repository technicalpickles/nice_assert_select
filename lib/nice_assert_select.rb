module NiceAssertSelect
  def build_html_selector(prefix, attributes = {})
    attribute_selector = attributes.keys.map {|key| "[#{key}=?]"}.join('')
    HTML.selector("#{prefix}#{attribute_selector}", *attributes.values)
  end

  def form(attributes)
    build_html_selector('form', attributes)
  end

  def text_field(attributes)
    build_html_selector('input', attributes.merge(:type => 'text'))
  end

  def hidden_field(attributes)
    build_html_selector('input', attributes.merge(:type => 'hidden'))
  end


  def password_field(attributes)
    build_html_selector('input', attributes.merge(:type => 'password'))
  end

  def submit_button
    build_html_selector('input', :type => 'submit')
  end

  def form_method_field(method)
    hidden_field(:name => '_method', :value => method)
  end
end

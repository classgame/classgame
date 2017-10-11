class ContentPresenter < SimpleDelegator
  def initialize(content)
    __setobj__(content)
  end

  def content_partial
    __getobj__.type.downcase
  end
end

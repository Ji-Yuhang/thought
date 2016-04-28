class Shanbay
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic
  # include Mongoid::Sphinx

  belongs_to :word
  #
  # search_index(:fields => [:content,
  #                          :en_definitions,
  #                          :uk_audio,
  #                          :cn_definition,
  #                          :num_sense,
  #                          :content_type,
  #                          :definition,
  #                          :en_definition,
  #                          :content,
  #                          :pronunciation,
  #                          ])
end

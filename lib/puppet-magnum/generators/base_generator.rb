require 'pathname'

module PuppetMagnum
  class BaseGenerator < Thor::Group
    include Thor::Actions
    include Thor::Shell

    argument :path,
      type: :string,
      required: true

    def self.source_root
      PuppetMagnum.root.join('generator_files')
    end

    private 

    def target
      @target ||= Pathname.new(File.expand_path(path))
    end

  end
end

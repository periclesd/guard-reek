require 'reek/cli/application'

module Guard
  class Reek
    class Executor
      def self.execute(paths)
        UI.info "Running flay for files: '#{paths.join('\', \'')}'", reset: true

        ::Reek::Cli::Application.new(paths).execute
      end
    end
  end
end

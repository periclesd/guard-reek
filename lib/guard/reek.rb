require 'guard'
require 'guard/guard'

module Guard
  class Reek < Guard
    autoload :Executor, 'guard/reek/executor'

    def start; end

    def reload; end

    def run_all; end

    def run_on_changes(paths)
      Executor.execute paths
    end
  end
end

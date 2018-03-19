require 'charsat'
require 'cri'
require 'io/console'

module CharsAt
  class CLI
    def print(args)
      command = Cri::Command.define do
        name        'charsat'
        usage       "echo 'test' | charsat 1 2 3 # outputs t, e and s"
        summary     "Prints the n'th characters using 1-based indexing from STDIN"

        skip_option_parsing

        flag   :h,  :help,  'show help for this command' do |value, cmd|
          puts cmd.help
          exit 0
        end

        run do |opts, args, cmd|

          if args.empty? || args.first == "--help" || args.first == "-h"
            puts cmd.help
            exit 1
          end

          string = (STDIN.tty?) ? STDIN.getpass("Enter string: ") : $stdin.read
          indices = args.map(&:to_i).select { |i| i <= string.length }

          if indices.empty?
            puts cmd.help
            exit 1
          end

          puts Model.new(string, indices).parsed.join(', ')
        end
      end
      command.run(args)
    end
  end
end
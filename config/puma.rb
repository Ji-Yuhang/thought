plugin "tmp_restart"
threads 8,32
workers 4
preload_app!
require 'message_bus' # omit this line for Rails 5
on_worker_boot do
  MessageBus.after_fork
end

Rack::MiniProfiler.config.skip_paths << "/images/"
Rack::MiniProfiler.config.skip_paths << "/stylesheets/"
Rack::MiniProfiler.config.skip_paths << "/javascripts/"
Rack::MiniProfiler.config.skip_paths << "/favicon.ico"
Rack::MiniProfiler.config.skip_paths << "/__better_errors/"
Rack::MiniProfiler.config.skip_paths << "/console/"
Rack::MiniProfiler.config.start_hidden = true

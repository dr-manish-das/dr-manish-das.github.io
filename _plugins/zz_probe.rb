Jekyll::Hooks.register :site, :after_reset do |site|
  out = []
  conv = site.find_converter_instance(Jekyll::Converters::Scss)
  out << "THEME=#{site.theme&.name}"
  out << "THEME_SASS=#{site.theme&.sass_path}"
  conv.sass_load_paths.each_with_index { |p, i| out << "LOADPATH[#{i}]=#{p} dir=#{File.directory?(p)}" }
  File.write(File.join(site.source, "_probe_out.txt"), out.join("\n"))
end

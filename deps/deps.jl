# This is an auto-generated file; do not edit

# Pre-hooks

# Macro to load a library
macro checked_lib(libname, path)
    ((VERSION >= v"0.4.0-dev+3844" ? Base.Libdl.dlopen_e : Base.dlopen_e)(path) == C_NULL) && error("Unable to load \n\n$libname ($path)\n\nPlease re-run Pkg.build(package), and restart Julia.")
    quote const $(esc(libname)) = $path end
end

# Load dependencies
@checked_lib libwand "/usr/lib/x86_64-linux-gnu/libMagickWand-6.Q16.so.2"

# Load-hooks
function init_deps()
    ccall((:MagickWandGenesis,libwand), Void, ())
end


# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := run_testserver
DEFS_Debug := '-DNO_HEAPCHECKER' \
	'-DCHROMIUM_BUILD' \
	'-DENABLE_REMOTING=1' \
	'-DENABLE_GPU=1' \
	'-DUNIT_TEST' \
	'-DGTEST_HAS_RTTI=0' \
	'-D__STDC_FORMAT_MACROS' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-D_DEBUG'

# Flags passed to both C and C++ files.
CFLAGS_Debug := -Werror \
	-pthread \
	-fno-exceptions \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-D_FILE_OFFSET_BITS=64 \
	-fvisibility=hidden \
	-fno-strict-aliasing \
	-pthread \
	-D_REENTRANT \
	-I/usr/include/gtk-2.0 \
	-I/usr/lib/gtk-2.0/include \
	-I/usr/include/atk-1.0 \
	-I/usr/include/cairo \
	-I/usr/include/pango-1.0 \
	-I/usr/include/gio-unix-2.0/ \
	-I/usr/include/glib-2.0 \
	-I/usr/lib/glib-2.0/include \
	-I/usr/include/pixman-1 \
	-I/usr/include/freetype2 \
	-I/usr/include/directfb \
	-I/usr/include/libpng12 \
	-O0 \
	-g

# Flags passed to only C (and not C++) files.
CFLAGS_C_Debug := 

# Flags passed to only C++ (and not C) files.
CFLAGS_CC_Debug := -fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden

INCS_Debug := -I. \
	-Itesting/gtest/include

DEFS_Release := '-DNO_HEAPCHECKER' \
	'-DCHROMIUM_BUILD' \
	'-DENABLE_REMOTING=1' \
	'-DENABLE_GPU=1' \
	'-DUNIT_TEST' \
	'-DGTEST_HAS_RTTI=0' \
	'-D__STDC_FORMAT_MACROS' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0'

# Flags passed to both C and C++ files.
CFLAGS_Release := -Werror \
	-pthread \
	-fno-exceptions \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-D_FILE_OFFSET_BITS=64 \
	-fvisibility=hidden \
	-fno-strict-aliasing \
	-pthread \
	-D_REENTRANT \
	-I/usr/include/gtk-2.0 \
	-I/usr/lib/gtk-2.0/include \
	-I/usr/include/atk-1.0 \
	-I/usr/include/cairo \
	-I/usr/include/pango-1.0 \
	-I/usr/include/gio-unix-2.0/ \
	-I/usr/include/glib-2.0 \
	-I/usr/lib/glib-2.0/include \
	-I/usr/include/pixman-1 \
	-I/usr/include/freetype2 \
	-I/usr/include/directfb \
	-I/usr/include/libpng12 \
	-O2 \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C (and not C++) files.
CFLAGS_C_Release := 

# Flags passed to only C++ (and not C) files.
CFLAGS_CC_Release := -fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden

INCS_Release := -I. \
	-Itesting/gtest/include

OBJS := $(obj).target/$(TARGET)/net/tools/testserver/run_testserver.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/net/libnet.a $(obj).target/net/libnet_test_support.a $(obj).target/base/libbase.a $(obj).target/testing/libgtest.a $(obj).target/third_party/modp_b64/libmodp_b64.a $(obj).target/base/third_party/dynamic_annotations/libdynamic_annotations.a $(obj).target/base/libsymbolize.a $(obj).target/net/third_party/nss/libssl.a $(obj).target/third_party/zlib/libzlib.a $(obj).target/base/libxdg_mime.a $(obj).target/base/allocator/liballocator.a $(obj).target/third_party/libevent/libevent.a $(obj).target/base/libbase_i18n.a $(obj).target/third_party/icu/libicui18n.a $(obj).target/third_party/icu/libicuuc.a $(obj).target/third_party/icu/libicudata.a $(obj).target/build/temp_gyp/libgoogleurl.a $(obj).target/sdch/libsdch.a $(obj).target/net/libnet_base.a $(obj).target/v8/tools/gyp/libv8_snapshot.a $(obj).target/v8/tools/gyp/libv8_base.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := -pthread \
	-Wl,-z,noexecstack \
	-Wl,-uIsHeapProfilerRunning,-uProfilerStart \
	-Wl,-u_Z21InitialMallocHook_NewPKvj,-u_Z22InitialMallocHook_MMapPKvS0_jiiix,-u_Z22InitialMallocHook_SbrkPKvi \
	-Wl,-u_Z21InitialMallocHook_NewPKvm,-u_Z22InitialMallocHook_MMapPKvS0_miiil,-u_Z22InitialMallocHook_SbrkPKvl \
	-rdynamic

LDFLAGS_Release := -pthread \
	-Wl,-z,noexecstack \
	-Wl,-uIsHeapProfilerRunning,-uProfilerStart \
	-Wl,-u_Z21InitialMallocHook_NewPKvj,-u_Z22InitialMallocHook_MMapPKvS0_jiiix,-u_Z22InitialMallocHook_SbrkPKvi \
	-Wl,-u_Z21InitialMallocHook_NewPKvm,-u_Z22InitialMallocHook_MMapPKvS0_miiil,-u_Z22InitialMallocHook_SbrkPKvl \
	-Wl,--gc-sections

LIBS := -lrt \
	-ldl \
	-lgtk-x11-2.0 \
	-lgdk-x11-2.0 \
	-latk-1.0 \
	-lgio-2.0 \
	-lpangoft2-1.0 \
	-lgdk_pixbuf-2.0 \
	-lm \
	-lpangocairo-1.0 \
	-lcairo \
	-lpango-1.0 \
	-lfreetype \
	-lfontconfig \
	-lgobject-2.0 \
	-lgmodule-2.0 \
	-lgthread-2.0 \
	-lglib-2.0 \
	-lnss3 \
	-lnssutil3 \
	-lsmime3 \
	-lplds4 \
	-lplc4 \
	-lnspr4 \
	-lpthread \
	-lz \
	-lgconf-2

$(builddir)/run_testserver: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/run_testserver: LIBS := $(LIBS)
$(builddir)/run_testserver: TOOLSET := $(TOOLSET)
$(builddir)/run_testserver: $(OBJS) $(obj).target/net/libnet.a $(obj).target/net/libnet_test_support.a $(obj).target/base/libbase.a $(obj).target/testing/libgtest.a $(obj).target/third_party/modp_b64/libmodp_b64.a $(obj).target/base/third_party/dynamic_annotations/libdynamic_annotations.a $(obj).target/base/libsymbolize.a $(obj).target/net/third_party/nss/libssl.a $(obj).target/third_party/zlib/libzlib.a $(obj).target/base/libxdg_mime.a $(obj).target/base/allocator/liballocator.a $(obj).target/third_party/libevent/libevent.a $(obj).target/base/libbase_i18n.a $(obj).target/third_party/icu/libicui18n.a $(obj).target/third_party/icu/libicuuc.a $(obj).target/third_party/icu/libicudata.a $(obj).target/build/temp_gyp/libgoogleurl.a $(obj).target/sdch/libsdch.a $(obj).target/net/libnet_base.a $(obj).target/v8/tools/gyp/libv8_snapshot.a $(obj).target/v8/tools/gyp/libv8_base.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/run_testserver
# Add target alias
.PHONY: run_testserver
run_testserver: $(builddir)/run_testserver

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/run_testserver


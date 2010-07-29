# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := gmockmain
DEFS_Debug := '-DNO_HEAPCHECKER' \
	'-DCHROMIUM_BUILD' \
	'-DENABLE_REMOTING=1' \
	'-DENABLE_GPU=1' \
	'-DUNIT_TEST' \
	'-DGTEST_HAS_RTTI=0' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-D_DEBUG'

# Flags passed to both C and C++ files.
CFLAGS_Debug := -pthread \
	-fno-exceptions \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-D_FILE_OFFSET_BITS=64 \
	-fvisibility=hidden \
	-fno-strict-aliasing \
	-O0 \
	-g

# Flags passed to only C (and not C++) files.
CFLAGS_C_Debug := 

# Flags passed to only C++ (and not C) files.
CFLAGS_CC_Debug := -fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden

INCS_Debug := -Itesting/gmock/include \
	-Itesting/gtest/include

DEFS_Release := '-DNO_HEAPCHECKER' \
	'-DCHROMIUM_BUILD' \
	'-DENABLE_REMOTING=1' \
	'-DENABLE_GPU=1' \
	'-DUNIT_TEST' \
	'-DGTEST_HAS_RTTI=0' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0'

# Flags passed to both C and C++ files.
CFLAGS_Release := -pthread \
	-fno-exceptions \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-D_FILE_OFFSET_BITS=64 \
	-fvisibility=hidden \
	-fno-strict-aliasing \
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

INCS_Release := -Itesting/gmock/include \
	-Itesting/gtest/include

OBJS := $(obj).target/$(TARGET)/testing/gmock/src/gmock_main.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

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
	-rdynamic

LDFLAGS_Release := -pthread \
	-Wl,-z,noexecstack \
	-Wl,--gc-sections

LIBS := 

$(obj).target/testing/libgmockmain.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/testing/libgmockmain.a: LIBS := $(LIBS)
$(obj).target/testing/libgmockmain.a: TOOLSET := $(TOOLSET)
$(obj).target/testing/libgmockmain.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/testing/libgmockmain.a
# Add target alias
.PHONY: gmockmain
gmockmain: $(obj).target/testing/libgmockmain.a

# Add target alias to "all" target.
.PHONY: all
all: gmockmain


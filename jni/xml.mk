LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
buf.c c14n.c catalog.c chvalid.c debugXML.c dict.c DOCBparser.c \
encoding.c entities.c error.c globals.c hash.c HTMLparser.c \
HTMLtree.c legacy.c list.c nanoftp.c nanohttp.c parser.c \
parserInternals.c pattern.c relaxng.c SAX.c SAX2.c \
threads.c tree.c trionan.c triostr.c uri.c valid.c\
xinclude.c xlink.c xmlIO.c xmlmemory.c xmlmodule.c \
xmlreader.c xmlregexp.c xmlsave.c xmlschemas.c xmlschemastypes.c xmlstring.c \
xmlunicode.c xmlwriter.c xpath.c xpointer.c

LOCAL_WHOLE_STATIC_LIBRARIES += android_support
LOCAL_CFLAGS += -std=c99
LOCAL_C_INCLUDES := \
$(LOCAL_PATH)/include \
$(LOCAL_PATH)/include/libxml
LOCAL_MODULE:=libxml2
include $(BUILD_STATIC_LIBRARY)
$(call import-module,android/support)
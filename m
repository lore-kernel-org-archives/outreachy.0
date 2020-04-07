X-GM-THRID: 6801392738100051968
X-Received: by 2002:a2e:b4e7:: with SMTP id s7mr178178ljm.184.1586226735326;
        Mon, 06 Apr 2020 19:32:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:41d5:: with SMTP id d21ls24881lfi.11.gmail; Mon, 06 Apr
 2020 19:32:13 -0700 (PDT)
X-Google-Smtp-Source: APiQypJKERT1LG6gr6WPVwCOhY5Csmcm9JhEsC7SxiuanpF846mHjwaVLZXg3mV/NqjTppwYPR/T
X-Received: by 2002:a19:700a:: with SMTP id h10mr14045lfc.184.1586226733408;
        Mon, 06 Apr 2020 19:32:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586226733; cv=none;
        d=google.com; s=arc-20160816;
        b=KiPZ/ar24/gGKG9UdddKiuwrGnLNBFzOICJOufuWwirD9Cy/ovICB6Wsx9xVX4diLi
         4g+Ftp7znKuNs5K8HuzxkZCvmF9Kr2RP2wQJJbA8qHrEfRpWTHAFj3BjHh6FdHEje02P
         qbFO0Igyn8gZbHpOsRQe7yGwwyDDUHQrGB4teZztnL1rqWyuyZXGuDHH46cligRwv3aN
         +Q7UGHg624aPgNwfRcF274M1e+tqlWNDVtVgZKYa9ushYkStidExcj4SSfli1HuoVvlh
         XCiduLd6vVnRpNxwZmNQvVP7S8mgGlPgI438JJSEsiZhQ+kMDO2fBMLe/W7nwh9JcDsf
         BY+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:sender:from:date;
        bh=Vg58mYTnatZvaDT2su7MTkGnqx/nQuCVdqhxAy7JMgI=;
        b=cxhivhkhd9cxUEYBTW4kY6Cr9WD+MPJRr4LjD+pK2FTVUmMJUhB+HMVripoBlAMQ16
         eYohP5Id595D3ILQ9uIdvKfvZQnbgUj+HJ9JfRs4/DFNjMLA3b/o6sqHER6y9D19kfFo
         exSox15DCWdj3KoZawCMYf8zieOYXFMaXtUEpZphQIBRIOjxiXXivCLmXSwvmahxjSRO
         ulsZHNMaBvjl+lvC/OreLVGOJINvSOj2d+RH96+CGh2V6GBa543TF9xCEMEy884ucSJ3
         Pdx6svqzqkx59u8c7chS6UI8RsL+/tlk0zQ+/YP4XvrKLVJGYvZs4EY9m+lFT0V/7RDL
         U+3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id w15si127188ljm.5.2020.04.06.19.32.13
        for <outreachy-kernel@googlegroups.com>;
        Mon, 06 Apr 2020 19:32:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 7403 invoked from network); 7 Apr 2020 02:32:10 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.209.216.117)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 7 Apr 2020 02:32:10 -0000
Date: Tue, 7 Apr 2020 08:02:04 +0530
From: R Veera Kumar <vkor@vkten.in>
Sender: outreachy-kernel@googlegroups.com
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [Outreachy kernel] Re: Need help using coccinelle
Message-ID: <20200407023201.GA2637@tulip.local>
References: <284f12c6-c1ab-4f1f-a325-569a7b8bfc1c@googlegroups.com>
 <alpine.DEB.2.21.2003071102220.2483@hadrien>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="OXfL5xGRrasGEqWY"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003071102220.2483@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)


--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Forgot to add attachments.
Attached.

Thanks,
Veera

--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="cocci-context-rtl8723bs.log"


Please check for false positives in the output before submitting a patch.
When using "patch" mode, carefully review the patch before submitting it.

coccicheck failed
make: *** [Makefile:1761: coccicheck] Error 255

--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="cocci-patch-rtl8723bs.log"


Please check for false positives in the output before submitting a patch.
When using "patch" mode, carefully review the patch before submitting it.

coccicheck failed
make: *** [Makefile:1761: coccicheck] Error 255

--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="configure.log"

configure: configuring coccinelle 1.0.8 in /home/net/tmp/coccinelle-1.0.8
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... /usr/bin/mkdir -p
checking for gawk... no
checking for mawk... mawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
configure: determining version suffix
checking for date... /usr/bin/date
configure: version suffix set to Mon, 06 Apr 2020 17:59:21 +0530
configure: this configure program uses pkg-config m4 macros
configure: this configure program uses ocaml m4 macros (see setup/ocaml.m4)
configure: this configure program uses custom m4 macros (see setup/cocci.m4)
configure: some fake substitutions for required but unavailable programs may be used (see setup/fake*)
configure: verifying basic tools
checking whether make supports the include directive... yes (GNU style)
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
checking for gcc option to accept ISO C89... none needed
checking whether gcc understands -c and -o together... yes
checking dependency style of gcc... none
checking how to run the C preprocessor... gcc -E
checking for bash... /bin/bash
checking for tar... /usr/bin/tar
checking for patch... /usr/bin/patch
checking for echo... /usr/bin/echo
checking for patchelf... no
checking for pkg-config... /usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for ocamlc... /usr/bin/ocamlc
OCaml version is 4.05.0
OCaml library path is /usr/lib/ocaml
checking for ocamlopt... /usr/bin/ocamlopt
checking for ocamlc.opt... /usr/bin/ocamlc.opt
checking for ocamlopt.opt... /usr/bin/ocamlopt.opt
checking for ocaml... /usr/bin/ocaml
checking for ocamldep... /usr/bin/ocamldep
checking for ocamlmktop... /usr/bin/ocamlmktop
checking for ocamlmklib... /usr/bin/ocamlmklib
checking for ocamldoc... /usr/bin/ocamldoc
checking that the OCaml version is at least 3.12... yes
checking that the OCaml version is at least 4.02... yes
checking that the OCaml version is at least 4.03... yes
checking for ocamllex... /usr/bin/ocamllex
checking for ocamllex.opt... /usr/bin/ocamllex.opt
checking for ocamlyacc... /usr/bin/ocamlyacc
checking for ocamlfind... /usr/bin/ocamlfind
checking for ocamlprof... /usr/bin/ocamlprof
configure: verifying basic ocaml modules
configure: coccinelle may use external ocaml libraries in /home/net/tmp/coccinelle-1.0.8/bundles
configure: the following OCaml packages should be provided by your ocaml installation
checking for OCaml findlib package unix... found
checking for OCaml findlib package bigarray... found
checking for OCaml findlib package str... found
configure: configuring package dynlink
checking for OCaml findlib package dynlink... found
configure: configuring package parmap
checking for OCaml findlib package parmap... found
configure: configuring package stdcompat
checking for OCaml findlib package stdcompat... not found
configure: OCaml package stdcompat is not available
checking for a bundled substitute of stdcompat... yes
configure: using bundled substitute for stdcompat in /home/net/tmp/coccinelle-1.0.8/bundles/stdcompat
configure: verifying optional features
checking for menhir... /usr/bin/menhir
configure: system menhir will be used
configure: system menhir will be used
configure: configuring package pyml
checking for OCaml findlib package pyml... not found
configure: OCaml package pyml is not available
checking for a bundled substitute of pyml... yes
configure: using bundled substitute for pyml in /home/net/tmp/coccinelle-1.0.8/bundles/pyml
checking for libpcre... yes
configure: configuring package pcre
checking for OCaml findlib package pcre... found
checking if pcre depends on bytes... yes
checking if bytes is an actual module... no
configure: support for pcre syntax is enabled
checking for pdflatex... no
configure: pdflatex not found. Trying substitute /home/net/tmp/coccinelle-1.0.8/setup/fake-pdflatex.sh pdflatex.
checking for pdflatex... /home/net/tmp/coccinelle-1.0.8/setup/fake-pdflatex.sh pdflatex
checking that generated files are newer than configure... done
configure: creating ./config.status
config.status: creating Makefile.config
config.status: creating version.ml
config.status: creating commons/commands.ml
config.status: creating globals/config.ml
config.status: creating globals/regexp.ml
config.status: creating python/pycocci.ml
config.status: creating ocaml/prepare_ocamlcocci.ml
config.status: creating scripts/spatch.sh
config.status: creating tools/spgen/scripts/spgen.sh
config.status: creating docs/spatch.1
config.status: creating setup/Makefile
config.status: executing depfiles commands
=== configuring in bundles/stdcompat/stdcompat-current (/home/net/tmp/coccinelle-1.0.8/bundles/stdcompat/stdcompat-current)
configure: running /bin/bash ./configure --disable-option-checking '--prefix=/home/net/local'  --cache-file=/dev/null --srcdir=.
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... /usr/bin/mkdir -p
checking for gawk... no
checking for mawk... mawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking for ocamlfind... ocamlfind
checking for ocamlfind package result... no
checking for ocamlfind package seq... no
checking for ocamlfind package uchar... no
checking whether make supports the include directive... yes (GNU style)
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
checking for gcc option to accept ISO C89... none needed
checking whether gcc understands -c and -o together... yes
checking dependency style of gcc... none
checking how to run the C preprocessor... gcc -E
checking for grep that handles long lines and -e... /usr/bin/grep
checking for egrep... /usr/bin/grep -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking whether byte ordering is bigendian... no
checking OCaml version... 4.05.0
checking that generated files are newer than configure... done
configure: creating ./config.status
config.status: creating META
config.status: creating Makefile
config.status: creating stdcompat__hashtbl_ext.mli
config.status: creating stdcompat__hashtbl_ext.ml
config.status: creating stdcompat__init.mli
config.status: creating stdcompat__init.ml
config.status: creating stdcompat__root.mli
config.status: creating stdcompat__root.ml
config.status: creating stdcompat__tools.mli
config.status: creating stdcompat__tools.ml
config.status: creating stdcompat__native.ml_byte
config.status: creating stdcompat__native.ml_native
config.status: creating stdcompat_tests.ml
config.status: creating stdcompat__stubs.c
config.status: creating stdcompat__pervasives_s.mli
config.status: creating stdcompat__arg_s.mli
config.status: creating stdcompat__array_s.mli
config.status: creating stdcompat__arrayLabels_s.mli
config.status: creating stdcompat__bool_s.mli
config.status: creating stdcompat__buffer_s.mli
config.status: creating stdcompat__bytes_s.mli
config.status: creating stdcompat__bytesLabels_s.mli
config.status: creating stdcompat__char_s.mli
config.status: creating stdcompat__digest_s.mli
config.status: creating stdcompat__ephemeron_s.mli
config.status: creating stdcompat__filename_s.mli
config.status: creating stdcompat__float_s.mli
config.status: creating stdcompat__format_s.mli
config.status: creating stdcompat__fun_s.mli
config.status: creating stdcompat__hashtbl_s.mli
config.status: creating stdcompat__int_s.mli
config.status: creating stdcompat__int32_s.mli
config.status: creating stdcompat__int64_s.mli
config.status: creating stdcompat__lazy_s.mli
config.status: creating stdcompat__lexing_s.mli
config.status: creating stdcompat__list_s.mli
config.status: creating stdcompat__listLabels_s.mli
config.status: creating stdcompat__map_s.mli
config.status: creating stdcompat__moreLabels_s.mli
config.status: creating stdcompat__nativeint_s.mli
config.status: creating stdcompat__option_s.mli
config.status: creating stdcompat__printexc_s.mli
config.status: creating stdcompat__printf_s.mli
config.status: creating stdcompat__queue_s.mli
config.status: creating stdcompat__result_s.mli
config.status: creating stdcompat__seq_s.mli
config.status: creating stdcompat__set_s.mli
config.status: creating stdcompat__spacetime_s.mli
config.status: creating stdcompat__stack_s.mli
config.status: creating stdcompat__stream_s.mli
config.status: creating stdcompat__string_s.mli
config.status: creating stdcompat__stringLabels_s.mli
config.status: creating stdcompat__sys_s.mli
config.status: creating stdcompat__uchar_s.mli
config.status: creating stdcompat__weak_s.mli
config.status: creating stdcompat__stdlib_s.mli
config.status: creating stdcompat__pervasives_s.ml
config.status: creating stdcompat__arg_s.ml
config.status: creating stdcompat__array_s.ml
config.status: creating stdcompat__arrayLabels_s.ml
config.status: creating stdcompat__bool_s.ml
config.status: creating stdcompat__buffer_s.ml
config.status: creating stdcompat__bytes_s.ml
config.status: creating stdcompat__bytesLabels_s.ml
config.status: creating stdcompat__char_s.ml
config.status: creating stdcompat__digest_s.ml
config.status: creating stdcompat__ephemeron_s.ml
config.status: creating stdcompat__filename_s.ml
config.status: creating stdcompat__float_s.ml
config.status: creating stdcompat__format_s.ml
config.status: creating stdcompat__fun_s.ml
config.status: creating stdcompat__hashtbl_s.ml
config.status: creating stdcompat__int_s.ml
config.status: creating stdcompat__int32_s.ml
config.status: creating stdcompat__int64_s.ml
config.status: creating stdcompat__lazy_s.ml
config.status: creating stdcompat__lexing_s.ml
config.status: creating stdcompat__list_s.ml
config.status: creating stdcompat__listLabels_s.ml
config.status: creating stdcompat__map_s.ml
config.status: creating stdcompat__moreLabels_s.ml
config.status: creating stdcompat__nativeint_s.ml
config.status: creating stdcompat__option_s.ml
config.status: creating stdcompat__printexc_s.ml
config.status: creating stdcompat__printf_s.ml
config.status: creating stdcompat__queue_s.ml
config.status: creating stdcompat__result_s.ml
config.status: creating stdcompat__seq_s.ml
config.status: creating stdcompat__set_s.ml
config.status: creating stdcompat__spacetime_s.ml
config.status: creating stdcompat__stack_s.ml
config.status: creating stdcompat__stdlib_s.ml
config.status: creating stdcompat__stream_s.ml
config.status: creating stdcompat__string_s.ml
config.status: creating stdcompat__stringLabels_s.ml
config.status: creating stdcompat__sys_s.ml
config.status: creating stdcompat__uchar_s.ml
config.status: creating stdcompat__weak_s.ml
config.status: creating stdcompat__pervasives.ml
config.status: creating stdcompat__arg.ml
config.status: creating stdcompat__array.ml
config.status: creating stdcompat__arrayLabels.ml
config.status: creating stdcompat__bool.ml
config.status: creating stdcompat__buffer.ml
config.status: creating stdcompat__bytes.ml
config.status: creating stdcompat__bytesLabels.ml
config.status: creating stdcompat__char.ml
config.status: creating stdcompat__digest.ml
config.status: creating stdcompat__ephemeron.ml
config.status: creating stdcompat__filename.ml
config.status: creating stdcompat__float.ml
config.status: creating stdcompat__format.ml
config.status: creating stdcompat__fun.ml
config.status: creating stdcompat__hashtbl.ml
config.status: creating stdcompat__int.ml
config.status: creating stdcompat__int32.ml
config.status: creating stdcompat__int64.ml
config.status: creating stdcompat__lazy.ml
config.status: creating stdcompat__lexing.ml
config.status: creating stdcompat__list.ml
config.status: creating stdcompat__listLabels.ml
config.status: creating stdcompat__map.ml
config.status: creating stdcompat__moreLabels.ml
config.status: creating stdcompat__nativeint.ml
config.status: creating stdcompat__option.ml
config.status: creating stdcompat__printexc.ml
config.status: creating stdcompat__printf.ml
config.status: creating stdcompat__queue.ml
config.status: creating stdcompat__result.ml
config.status: creating stdcompat__seq.ml
config.status: creating stdcompat__set.ml
config.status: creating stdcompat__spacetime.ml
config.status: creating stdcompat__stack.ml
config.status: creating stdcompat__stdlib.ml
config.status: creating stdcompat__stream.ml
config.status: creating stdcompat__string.ml
config.status: creating stdcompat__stringLabels.ml
config.status: creating stdcompat__sys.ml
config.status: creating stdcompat__uchar.ml
config.status: creating stdcompat__weak.ml
config.status: creating stdcompat__pervasives.mli
config.status: creating stdcompat__arg.mli
config.status: creating stdcompat__array.mli
config.status: creating stdcompat__arrayLabels.mli
config.status: creating stdcompat__bool.mli
config.status: creating stdcompat__buffer.mli
config.status: creating stdcompat__bytes.mli
config.status: creating stdcompat__bytesLabels.mli
config.status: creating stdcompat__char.mli
config.status: creating stdcompat__digest.mli
config.status: creating stdcompat__ephemeron.mli
config.status: creating stdcompat__filename.mli
config.status: creating stdcompat__float.mli
config.status: creating stdcompat__format.mli
config.status: creating stdcompat__fun.mli
config.status: creating stdcompat__hashtbl.mli
config.status: creating stdcompat__int.mli
config.status: creating stdcompat__int32.mli
config.status: creating stdcompat__int64.mli
config.status: creating stdcompat__lazy.mli
config.status: creating stdcompat__lexing.mli
config.status: creating stdcompat__list.mli
config.status: creating stdcompat__listLabels.mli
config.status: creating stdcompat__map.mli
config.status: creating stdcompat__moreLabels.mli
config.status: creating stdcompat__nativeint.mli
config.status: creating stdcompat__option.mli
config.status: creating stdcompat__printexc.mli
config.status: creating stdcompat__printf.mli
config.status: creating stdcompat__queue.mli
config.status: creating stdcompat__result.mli
config.status: creating stdcompat__seq.mli
config.status: creating stdcompat__set.mli
config.status: creating stdcompat__spacetime.mli
config.status: creating stdcompat__stack.mli
config.status: creating stdcompat__stdlib.mli
config.status: creating stdcompat__stream.mli
config.status: creating stdcompat__string.mli
config.status: creating stdcompat__stringLabels.mli
config.status: creating stdcompat__sys.mli
config.status: creating stdcompat__uchar.mli
config.status: creating stdcompat__weak.mli
config.status: creating stdcompat.mli
config.status: creating stdcompat.ml
config.status: creating config.h
config.status: config.h is unchanged
config.status: executing depfiles commands
configure: OCaml version is 4.05.0
configure: Obj.magic will be used in redefinition when possible
    (add --disable-magic for pure redefinitions).
configure: configuration completed
------------------------------------------------------------------------------
Summary

configure flags:  --prefix=/home/net/local
findlib:          /usr/bin/ocamlfind	(an actual version is strongly recommended)
menhir:           /usr/bin/menhir
                  (for local package use --without-menhir,
                   install the menhir package otherwise)

ocaml scripting:  yes	(overridable with --enable-ocaml)
python scripting: yes	(overridable with --enable-python)

pcre regexes:     	(overridable with --enable-pcre-syntax)
pcre module:      yes	(for local package use --disable-pcre)
pcre library:     yes	(requires the libpcre-ocaml-dev package)

optimized spatch: yes	(overridable with --disable-opt)

bash-completion:  ${prefix}/share/bash-completion/completions
                  (overridable with --with-bash-completion)

------------------------------------------------------------------------------
Coccinelle can now be compiled and installed.


If you compile coccinelle again after source code changes or
configuration changes, you may need to run first:
  $ make clean

To compile coccinelle, run:
  $ make

To install coccinelle, run:
  $ make install

Then, to test coccinelle, run for example:
  $ spatch -sp_file demos/simple.cocci demos/simple.c -o /tmp/new_simple.c

Or when coccinelle is not installed yet:
  $ COCCINELLE_HOME=/home/net/tmp/coccinelle-1.0.8 ./scripts/spatch -sp_file demos/simple.cocci demos/simple.c -o /tmp/new_simple.c
------------------------------------------------------------------------------
You may need to set some environment variables so that the python
libraries are found. The frontend 'spatch' sets the following variables:

  $ export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/net/local/lib
  $ export PYTHONPATH=$PYTHONPATH:${exec_prefix}/lib/coccinelle/python

------------------------------------------------------------------------------

--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="cocci-debug-context-rtl8723bs.log"

/usr/bin/spatch -D context --very-quiet --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci --no-includes --include-headers --patch . --dir drivers/staging/rtl8723bs -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 2 --chunksize 1
12 files match
/usr/bin/spatch -D context --very-quiet --cocci-file ./scripts/coccinelle/api/alloc/pool_zalloc-simple.cocci --no-includes --include-headers --patch . --dir drivers/staging/rtl8723bs -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 2 --chunksize 1
0 files match
/usr/bin/spatch -D context --very-quiet --cocci-file ./scripts/coccinelle/api/alloc/zalloc-simple.cocci --no-includes --include-headers --patch . --dir drivers/staging/rtl8723bs -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 2 --chunksize 1
2 files match
/usr/bin/spatch -D context --very-quiet --cocci-file ./scripts/coccinelle/api/atomic_as_refcounter.cocci --include-headers --very-quiet --patch . --dir drivers/staging/rtl8723bs -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 2 --chunksize 1
virtual rule context not supported

--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="cocci-debug-patch-rtl8723bs.log"

/usr/bin/spatch -D patch --very-quiet --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci --no-includes --include-headers --patch . --dir drivers/staging/rtl8723bs -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 2 --chunksize 1
12 files match
/usr/bin/spatch -D patch --very-quiet --cocci-file ./scripts/coccinelle/api/alloc/pool_zalloc-simple.cocci --no-includes --include-headers --patch . --dir drivers/staging/rtl8723bs -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 2 --chunksize 1
0 files match
/usr/bin/spatch -D patch --very-quiet --cocci-file ./scripts/coccinelle/api/alloc/zalloc-simple.cocci --no-includes --include-headers --patch . --dir drivers/staging/rtl8723bs -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 2 --chunksize 1
2 files match
/usr/bin/spatch -D patch --very-quiet --cocci-file ./scripts/coccinelle/api/atomic_as_refcounter.cocci --include-headers --very-quiet --patch . --dir drivers/staging/rtl8723bs -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 2 --chunksize 1
virtual rule patch not supported

--OXfL5xGRrasGEqWY--


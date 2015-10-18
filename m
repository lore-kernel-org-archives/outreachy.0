X-GM-THRID: 6206946961366450176
X-Received: by 10.68.94.1 with SMTP id cy1mr21058142pbb.14.1445167456762;
        Sun, 18 Oct 2015 04:24:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.5 with SMTP id h5ls43525qge.77.gmail; Sun, 18 Oct 2015
 04:24:16 -0700 (PDT)
X-Received: by 10.13.247.132 with SMTP id h126mr20816535ywf.56.1445167456006;
        Sun, 18 Oct 2015 04:24:16 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x244.google.com (mail-yk0-x244.google.com. [2607:f8b0:4002:c07::244])
        by gmr-mx.google.com with ESMTPS id g82si1585874ywb.7.2015.10.18.04.24.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 04:24:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::244 as permitted sender) client-ip=2607:f8b0:4002:c07::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::244 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by ykfy204 with SMTP id y204so10846303ykf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 04:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=UGLk1w5+MViGIqyvyJod1d+9ry2Wn4JBqV59/2EpS7g=;
        b=AOpcOnriUDgKsakJGV1fPGY1Mzeh1gzHIbczIndjxwFPzBd5hUdTSbWm8Ozle8RoTW
         Jhg/fvjAggsUBZjkPX4HYtKTXD7tImDXtMXX6NoMxUc5gctgCcPHCxP2+oyXVxFYtozd
         Dyt3WZRXSIvDvm5nC7b7xqH1iJPQGq90zvAvCYK5KE2sin2ZebpSdXmvul/JdXZBU7+U
         oMZS3VHDu3q9fqIkNcjfrpRWHmA8Gc0GmkU7khPEq5DSKnk6UIsvoHZi9Av+6yOYb7rS
         TOTfiVa9PGGr367bEpZX8j/VANFki2PwYK495AXpOUt+zyo2EZPpPN97AJdzxEfH1f3+
         FLxA==
MIME-Version: 1.0
X-Received: by 10.129.154.141 with SMTP id r135mr15888825ywg.195.1445167455847;
 Sun, 18 Oct 2015 04:24:15 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Sun, 18 Oct 2015 04:24:15 -0700 (PDT)
Date: Sun, 18 Oct 2015 14:24:15 +0300
Message-ID: <CAHWJYFnvj6hU2wmpQYQsQAMUELD0xOGXLostAyLzf4DP660Y9A@mail.gmail.com>
Subject: MIPS cross-compile
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hi,

I am having a little bit of trouble when cross-compiling staging/octeon.
I have already tried to compile it using mips-openwrt-linux-uclibc-
toolchain but unfortunately I had no luck.

The output when trying to compile one the files is showed bellow:

ioana@yoga:~/src/kernels/staging$ make ARCH=mips
CROSS_COMPILE=mips-openwrt-linux-uclibc-
drivers/staging/octeon/ethernet-mdio.ko
  CHK     include/config/kernel.release
  CHK     include/generated/uapi/linux/version.h
  CHK     include/generated/utsrelease.h
  CHK     include/generated/bounds.h
  CHK     include/generated/timeconst.h
  CHK     include/generated/asm-offsets.h
  CALL    scripts/checksyscalls.sh
  CC      drivers/staging/octeon/ethernet-mdio.o
{standard input}: Assembler messages:
{standard input}:448: Error: Illegal operands `mfc0 $6,$15,0'
{standard input}:524: Error: Illegal operands `mfc0 $8,$15,0'
{standard input}:624: Error: Illegal operands `mfc0 $8,$15,0'

Could anyone recommend an appropriate toolchain for mips architecture?
I should mention that I have some previous experience with
cross-compiling but not for a mips target.

Thanks,

Ioana


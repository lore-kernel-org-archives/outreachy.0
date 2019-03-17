X-GM-THRID: 6668974051336126464
X-Received: by 2002:a81:3653:: with SMTP id d80mr5469579ywa.20.1552782749753;
        Sat, 16 Mar 2019 17:32:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1384:: with SMTP id 126ls2674200ybt.1.gmail; Sat, 16 Mar
 2019 17:32:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyglLkdNC+yHPV/y9pm+3Y6Yz5qHy8tiWbsdCvxh4iYgnDGMo+QjnLImOuEz2TrLIqmkqwm
X-Received: by 2002:a25:4250:: with SMTP id p77mr5452311yba.22.1552782748910;
        Sat, 16 Mar 2019 17:32:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552782748; cv=none;
        d=google.com; s=arc-20160816;
        b=rJI1j6ItTDmhdUubtl6hNw1TtA4fJpuun7Y0b7Jbf3UkQf8ei640TwOr/bquIUuiZC
         +Zt+noO4sCHnWQV3rdLDRh/k4OSfMLMsihDKo+d54lqH/rrJfeWPbFeIOueYbia0U9uN
         +unArGm5fJUWyRyrqWmTd0nlchPBLRdAzUNVx8u6KqR5LnFbgUA11TDVsMroVb6RXBJ9
         6FWhmw7NEIDmvQ4f9bdtML1sysZ3rz5q8cVzACjY7duy1apeJRHIMkUn1o1Uo7r2womW
         SbhnIj7g8ogAd+8qBW909TZSbQgIIcC3r98PkZGOa5es8XJ/lTrbttBN/L2kAo7CEmiU
         JsVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=uObJJXOUlU5FzUJmMpkCmr8Z8efdNm35xJCcfGqDxk8=;
        b=sa8/MPBUmXJr+vDP54KcrQqfTzIi8W7nqkQC+sviGohImOY4k/HhTTuPh1dGWqcfOL
         QfiMFlqzuaPYhLraxJnSgcG79jbL5kOidLnTJY8/yITM5cyUgC4NurarPOBc5fQ4ViSx
         amMOcHdQw3G4deP3XDo4QvAyJfy058Q4iPXYJI5SVAXoToEbIr44qG0jTNYihTLR5Cha
         +nBkvb8eWKmwcrb0mdl1Y3cj9FbYjhY09HjORDUzzXTs1Y08GLZv2H1DWN+KARSwnUtA
         AdYGb2okAgsM/oAz7iM7TM9cF5WCa0vp3/w9CPzfAyeb/Mw2f+eR6DhnJLP2TwbO7B6K
         FUpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="c4/2lmSr";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id k62si337183ybb.4.2019.03.16.17.32.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 17:32:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="c4/2lmSr";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id a15so10306929oid.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 17:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=uObJJXOUlU5FzUJmMpkCmr8Z8efdNm35xJCcfGqDxk8=;
        b=c4/2lmSrBpIzU96eQxfkTItY8iI1I/A7niDc76enmTN6alnUp+X4is9DarC1iTMdLA
         QdguU6hUS6Lc1JRKiHIAw8xX6CRDv80+flRrr61m3Xon5MvTxqp7od2lRGJ9kc2fYUvA
         GC5w3wfsPyKNNBDdUVFE83WBLKXgqdVG/bjETQXruyXizzMFus4MyRx6mmXC+oSBdfL+
         3d6WRVRvP1cNzsdi+1tOrSg+A3TCosquv98s9eM/vrK9xLZpZN/VmgYS4wszmG30DH1K
         JaOG2LOiZV/GyRtprPnzEAPFI19QD2oFSjUy17gyNYtfJ841K3MXQIAVOuo//fLGuz4L
         CARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uObJJXOUlU5FzUJmMpkCmr8Z8efdNm35xJCcfGqDxk8=;
        b=nTNv5/QknHVFn/9nrQ7vIdAVc7k5sVwHp3rAgAKYKiCY14W3d1k1u0Rq0DL5zWfREe
         CXqCEtRpM9BcevKH0tj5bhELNaR2Qb+4CswKVxbYcQGHB1BioypUY+cRUYX1ODfIr8ig
         0XYV34I70E8IQelA7mqoEzWJ5TYfSUVsG9OYeTCWPxPiXMj4Y5ayunnOJICRNxB2LCmJ
         wgB0b/F1sDRNXhvLkwViud/t/JMuoE75r7ovE+FG+ey/sFsn3wwQgXAZlT3w2PPZYZ7q
         KggqCF5uzqpNkcRpUSEg1hpsHxd0Raz+Beaybt8VFMbI2XY4xeCSayS9ClteKI9rgPDu
         8/dA==
X-Gm-Message-State: APjAAAUj8V18ONniVbkTvuuMe6MHfVOTSIpb+hkQjs6u1W49AaDIslHc
	7DSPHRzwkyzxL/TvsF2xtRw=
X-Received: by 2002:a54:4e89:: with SMTP id c9mr2341615oiy.168.1552782748296;
        Sat, 16 Mar 2019 17:32:28 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id n12sm2359482otl.22.2019.03.16.17.32.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 17:32:27 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 0/7] Issue suggested by Coccinelle using ret.cocci
Date: Sat, 16 Mar 2019 19:32:17 -0500
Message-Id: <cover.1552782299.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset does tasks as below: 
1) Drop wrappers and change function names
2) Convert type of local variables and return type
3) Change values of error codes in functions
4) Remove unnecessary function declarations
5) Replace error codes with values
6) Remove extern and change return type
7) Add missing NULL check for kmalloc

All these patches are relevant to an issue suggested by Coccinelle using
ret.cocci.

Madhumitha Prabakaran (7):
  Staging: rtl8723bs: Drop wrappers and change function names
  Staging: rtl8723bs: Convert type of local variables and return types
  Staging: rtl8723bs: Change values of error codes in functions
  Staging: rtl8723bs: Remove unnecessary function declarations
  Staging: rtl8723bs: Replace error codes with values
  Staging: rtl8723bs: Remove extern and change return type
  Staging: rtl8723bs: Add missing NULL check for kmalloc

 drivers/staging/rtl8723bs/core/rtw_cmd.c      | 30 +++++--------------
 drivers/staging/rtl8723bs/include/cmd_osdep.h |  3 --
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |  4 +--
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |  4 +--
 4 files changed, 12 insertions(+), 29 deletions(-)

-- 
2.17.1



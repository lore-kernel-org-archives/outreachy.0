X-GM-THRID: 6395576564216496128
X-Received: by 10.13.214.15 with SMTP id y15mr6242506ywd.100.1489086207115;
        Thu, 09 Mar 2017 11:03:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls3860285otb.38.gmail; Thu, 09 Mar
 2017 11:03:26 -0800 (PST)
X-Received: by 10.13.252.194 with SMTP id m185mr5706396ywf.145.1489086206703;
        Thu, 09 Mar 2017 11:03:26 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c123si1367363pfa.4.2017.03.09.11.03.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:03:26 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so7719949pgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pbCIjfO2Ej9zovz8RG9Z0w4yYkZulGLbFSmY43Hivds=;
        b=WsXSOL+KRl/oHCR7u2zh+e7JLE5Qu5bPjyq7p6FkN7/0fdbfZQ2gK0GNOPrAdR5plr
         bKy1pYXhFukeTO5a/GkteiUkK9ltS1cbYA85xCyiPEVZfHjeqlDYRbny2e6vFmFCZSMH
         qyz5twWakPIjUdIOcdaF32S0YrxDKP9GS83s1zMMPsU7f7UNhDq7OdOE373SSzd7pezZ
         vRplMm98wYEEaEvZetJYyfS7Po0CmwDjzL2tmAZm9sg3H4vOb4ReA+A72SmE1sM/HfS8
         qofi1J3b4QK9PC50qGlLHXsLWiTSIRccmZsk2ImKeJm4179HpI6fMDfC+7RPwm0fs18t
         23Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pbCIjfO2Ej9zovz8RG9Z0w4yYkZulGLbFSmY43Hivds=;
        b=TXFIP/sLGFp1P3XnsqMNbJ5NddA38pWx/ryfpeYKRHiCAa4+5Gd1QT6QzbYCROU1gy
         VkZKWZOnvbnElvnFDrIQBsWgOR3e5OfCuWm7Y45kCSpp7APjCM5vAJr55J7/h1oqMPlb
         WrXSPUdG8TM0Vw05X7aLLrV1VMda369KCKO7DgWg/42kDjxFd9uhH2yiq2DuBibbFpyE
         qV5L3afjOc/KEvrHq0F0hC27ZeXThDu3qhhx/Sh4+gjDRxZLptzyL/5UKwbpvRXlB26c
         RJ2+fQfslIlGIl75wsG3tyOO5rzjYOsqfud+u/LUisdfpH/iVaC8C8LVJ/oovmPSLhzw
         cdMA==
X-Gm-Message-State: AMke39lLXux+2wGq8I9DockSQ0+2Ziqc5wDwXIYAWTcWUk0KoU/xRP1rP1fPUuO2PFwHXA==
X-Received: by 10.84.128.65 with SMTP id 59mr19483639pla.167.1489086206442;
        Thu, 09 Mar 2017 11:03:26 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 15sm14042280pgh.21.2017.03.09.11.03.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 11:03:24 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/6] staging: speakup: multiple checkpatch issues
Date: Fri, 10 Mar 2017 00:33:14 +0530
Message-Id: <20170309190320.25681-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver. 

Arushi Singhal (6):
  staging: speakup: fix "Alignment match open parenthesis"
  staging: speakup: Placed Logical on the previous line
  staging: speakup: spaces preferred around operator
  staging: speakup: identation should use tabs
  staging: speakup: Alignment should match open parenthesis
  staging: speakup: Add blank line after function/struct/union/enum
    declarations

 drivers/staging/speakup/i18n.c           |  2 +-
 drivers/staging/speakup/kobjects.c       | 56 ++++++++++++++++----------------
 drivers/staging/speakup/main.c           | 11 ++++---
 drivers/staging/speakup/selection.c      |  2 +-
 drivers/staging/speakup/serialio.c       |  7 ++--
 drivers/staging/speakup/speakup.h        | 12 +++----
 drivers/staging/speakup/speakup_acntpc.c | 10 +++---
 drivers/staging/speakup/speakup_apollo.c |  2 +-
 drivers/staging/speakup/speakup_decext.c |  4 +--
 drivers/staging/speakup/speakup_decpc.c  | 22 ++++++-------
 drivers/staging/speakup/speakup_dtlk.c   | 17 +++++-----
 drivers/staging/speakup/speakup_dtlk.h   | 10 +++---
 drivers/staging/speakup/speakup_keypc.c  | 12 +++----
 drivers/staging/speakup/speakup_ltlk.c   |  2 +-
 14 files changed, 86 insertions(+), 83 deletions(-)

-- 
2.11.0



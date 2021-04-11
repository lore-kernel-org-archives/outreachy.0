X-GM-THRID: 6949457058068430848
X-Received: by 2002:a05:6512:3c84:: with SMTP id h4mr15475369lfv.617.1618138575699;
        Sun, 11 Apr 2021 03:56:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:bc23:: with SMTP id b35ls561716ljf.7.gmail; Sun, 11 Apr
 2021 03:56:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz2d3N0k8+HiY48c2VFiwtMe4PdvKO+zxWLUMXXfUtB0B0NwZhx5jOk2flzJJUWWETqwTh6
X-Received: by 2002:a2e:9a0c:: with SMTP id o12mr14370450lji.121.1618138573741;
        Sun, 11 Apr 2021 03:56:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618138573; cv=none;
        d=google.com; s=arc-20160816;
        b=XqA/HLrunHBsv7iq3br0gBg55+MHSaOZRaFEEQFvkdJqUpKWiPkQGbHVAryAQW0d9J
         NUWkQf2kcJBY6j/bjexoCIEKDf2rVqICWwj3JXz8DZbxBS3HLGDc+OifWEd7vsZjX5Jw
         gQXbMji5gaSRQEhrXEWKj/yiRU53olbUc16KW+dRe9zkvivmIYVcHHuYzcSGL0kdaNbq
         OV4jPe8Uo6JkkmJ8WkvSyqd49ZM4xJ7kjtWRp3VAIITBoMrRysrYXUfdmE+lewyoaRbr
         B7lMk/9o1k7O4F6pTAIBWJIBSrCeFeVvkliWCriMEw58I7qIQuD/MSQS5UAfOujWd5ZM
         XVhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=UHx18mF3ktk2YplTBeeApgIQRTSoHFYgv6heZZ9xW9g=;
        b=U9uqAjBcjdt555KO/8FI8ESAoL2yItIOQRWwWRflv8HKiX/VxlalbOjQCLtSpFAr1e
         4s1Czva9D6Xocygv5z0SMLs64TzJKHymys1wMzQnbZsyaBubNH9nh/v8kZ34Nfr6dqdn
         9X5KanGzK0vsJ0ghF0svqGlHUNzwhvEXA5DGrbLo8EJ3KMlQquXU0g+nn3Ke8EF+kBQK
         XVI1l2stHPKvi4kM4rMul9evafVe0Csx4IAUGlePkSaGbBoV7vVrjFczr5rVuuRa7QC5
         AVPoubSwgRcFwNF4GArceJ5n44v7IMSx+ARi3bOWeqb+Iakf3iItCDJEBZNa/xFDiBoQ
         bM4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KMPxHPi3;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id 63si584950lfd.1.2021.04.11.03.56.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 03:56:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KMPxHPi3;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x530.google.com with SMTP id w23so11567352edx.7
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 03:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UHx18mF3ktk2YplTBeeApgIQRTSoHFYgv6heZZ9xW9g=;
        b=KMPxHPi3msD31s5XLMr7zp+W0NmAA7YCJPuimu1bLKsdZ3MjxhzAMGv+mgC3kO6797
         WtPg+Wv1bLoiig/qHodOzxlUQTY6vxHwFkucInTqdO0ILz4p7dagK583GrqeyXj/6F/o
         wxiq97mPDSt5hXrA6b2gyDAD2mrdxpH2xMYUqKygog9m8b2Ne4+/7UZWYRrCHls+TtTk
         9ra+5rfCKrOIasSKXTmaO7i0dhO5D982/IGgSMqYJpNiqJGDM7uTgD7K1bZ+552GjDmg
         zcuM/shjB7/ODS1KdWlxryKNwH3/vJMhH2cwG1YFQ32rwkBiK37+sPzEaYk4IsBGAuo8
         Meqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UHx18mF3ktk2YplTBeeApgIQRTSoHFYgv6heZZ9xW9g=;
        b=nzOLBL8jjKvjYeqyp/c2LI8e+KdgNTVPqlgBH1duaGzktbPz2vESKACUXaUFrOayz6
         e28KVNuNefZSWTajqvxBvHYcktkbHULfczVUm3sc5IXjxGu5WpKrr9f9Di3KlWD5uOwR
         +vH2KHpG3JtbSRlhZfJPSzkZjxIA8nc46DDWS6/seu+a4C3o5J+RV9IxIc1joMvmIgUq
         UayJ6lM3KCdlGeWfpNA22dEZV3Rekrv/+FaTSf6EINaEpVO87TiP3dC5OMK8wPHoc57+
         g9CxahEYA3UW9zqvbeP8Byf+LcfjGjukUPt/CZblulrvI2vlhDn/HbCZb9/9I9xqVN/D
         e6Zg==
X-Gm-Message-State: AOAM530ACY6awGopM05FTlRtQTnngSKcwFdzWT8xgr72g/Z27c6SkZa3
	ljzzfLoGM8ifRLY4bw74svg=
X-Received: by 2002:a05:6402:42d3:: with SMTP id i19mr24911008edc.220.1618138573320;
        Sun, 11 Apr 2021 03:56:13 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id f10sm4369100edd.29.2021.04.11.03.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 03:56:12 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v4 0/4] staging: rtl8723bs: Change several files of the driver
Date: Sun, 11 Apr 2021 12:56:04 +0200
Message-Id: <20210411105608.12900-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove camelcase, correct misspelled words in comments, change 
the type of a variable and its use, change comparisons with 'true'
in controlling expressions.

Changes from v3: Move changes of controlling expressions in patch 4/4.
Changes from v2: Rewrite subject in patch 0/4; remove a patch from the
series because it had alreay been applied (rtl8723bs: core: Remove an unused variable).
Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.

Fabio M. De Francesco (4):
  staging: rtl8723bs: Remove camelcase in several files
  staging: rtl8723bs: include: Fix misspelled words in comments
  staging: rtl8723bs: include: Change the type of a variable
  staging: rtl8723bs: Change controlling expressions

 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |  2 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  | 18 +++++-----
 drivers/staging/rtl8723bs/hal/hal_intf.c      |  2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c   |  6 ++--
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  2 +-
 drivers/staging/rtl8723bs/hal/sdio_ops.c      | 14 ++++----
 .../rtl8723bs/include/Hal8192CPhyReg.h        |  8 ++---
 .../staging/rtl8723bs/include/basic_types.h   |  2 +-
 drivers/staging/rtl8723bs/include/drv_types.h |  2 +-
 drivers/staging/rtl8723bs/include/hal_com.h   |  2 +-
 .../staging/rtl8723bs/include/hal_com_reg.h   | 34 +++++++++----------
 drivers/staging/rtl8723bs/include/hal_data.h  |  2 +-
 .../staging/rtl8723bs/include/hal_pwr_seq.h   |  2 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |  6 ++--
 drivers/staging/rtl8723bs/include/rtw_mlme.h  | 18 +++++-----
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  2 +-
 drivers/staging/rtl8723bs/include/rtw_mp.h    |  2 +-
 .../staging/rtl8723bs/include/rtw_pwrctrl.h   |  4 +--
 drivers/staging/rtl8723bs/include/rtw_recv.h  |  4 +--
 drivers/staging/rtl8723bs/include/rtw_xmit.h  |  2 +-
 drivers/staging/rtl8723bs/include/sta_info.h  |  2 +-
 drivers/staging/rtl8723bs/include/wifi.h      |  2 +-
 23 files changed, 70 insertions(+), 70 deletions(-)

-- 
2.31.1



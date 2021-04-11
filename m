X-GM-THRID: 6949457058068430848
X-Received: by 2002:a19:f017:: with SMTP id p23mr15687216lfc.232.1618129756617;
        Sun, 11 Apr 2021 01:29:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:588:: with SMTP id 130ls337325ljf.9.gmail; Sun, 11 Apr
 2021 01:29:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzMZEXf9fE+k6Lj1gJwvj6r6U/BZs6ZIKlIrHc9Z9tgH2JWQWPYIJGZ9KSZ+eC2s8qo8Gj8
X-Received: by 2002:a05:651c:1117:: with SMTP id d23mr15082076ljo.220.1618129754680;
        Sun, 11 Apr 2021 01:29:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618129754; cv=none;
        d=google.com; s=arc-20160816;
        b=jzVtTkATdiWYM+Ml+3+h8CrP3w+Ik5UZ5FU4tJC8ZlfCuBkQXtwUkRc7Vt+gWvg+g0
         SMXkd9B/a3hb3DEBVhc0ekV3lYPxpHo/A3l9elSGEaUuE4HLaM4ih5mnf0JcCx7RTrql
         Okp1JmD3ox8gq5iT9WwEBcEenL7SMiZxew4/VHTCBKt/oRZq4Uk9v6PtGCpVIWpEeM5f
         UnXSsTNXo6TiM4lWRrt/z1JYxvuEbAhpCv5LA0hLhmR6CgNMxFAcI6aatKynd9UZjWyV
         46A+rN+F2rgcZbLkIjUwGFOKD7QTevaxTu0UbvlkPoOiDKDvmQJli6K5vctw/m5qnzC2
         wASg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jbd5H0UwYLbMR62cEsPc4FBrxl4fQyEDt4D7w7SlNtw=;
        b=Q5wO0GGCXQoxXFrH2fTbXzUWmNTARWeZfBYytSk+6vVSP6kPDwET9iGnq6OkBSk9QX
         hh9DEAbkGP4aeFX4+v7Y25pD6KSqtomIHBPfnBUz8JcSfgs/55dZddUdocinsD+Ul4OR
         s6Af8MUDaJq3WvtGk+D0Tma+92ORQ00slxUXIyD18LGnR8bQYtzeU+Hcc+Sw7N5fAl7f
         r+XVVJ6RPwG0HmXHHpCToU2cjba/pTQZj66uJlNndmlkKumjJFz28/iM4z3SYbiQ1qBf
         FMASFVWIFdT1xglQZD1+OazK/YL+OVSxSglzoH1+u1XAhFhZGDiOzFKkxhLFnW+78w13
         APlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xv+wlrWw;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id j7si486300lfm.9.2021.04.11.01.29.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 01:29:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xv+wlrWw;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id a7so15248188eju.1
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 01:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jbd5H0UwYLbMR62cEsPc4FBrxl4fQyEDt4D7w7SlNtw=;
        b=Xv+wlrWwbWGUutpihPJnRxfmD1h93HBgETHnKDs03pQmldV52gKO05pW6sz3C7biTv
         K1mTrXxIAkBzz7G9vs1kg9aJm9sCLn+kH76GDBbkLpftIzSV56bNGbUoLZ5NdSoC3fZJ
         UNnaP4ApddRQ4NgTYZR+p30Y5uC9Zi4QqzzmL1SJsvBZc9MnAB+s3bThHq1qIzHODgVf
         7xvlmYG7upHGLnvRilaJDLRNub+8JkZYMLSobfhGwhtvQPEEryxAQ4OHikY30Wmztunw
         TXtXp8yskYxwJQcOgiG+uwvMqdOqmdrIVlug47ZcVg34gUchpxzd2l7of34ao4NC6EwI
         bUkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jbd5H0UwYLbMR62cEsPc4FBrxl4fQyEDt4D7w7SlNtw=;
        b=lZ1u73EJDiFqzN2T4WfTFLeq9NsImdUeYdps+R/a7PnGo/wGc+0aV0CkEQaRCqSpXN
         vHdTlAZ/EbLELxZbKCLgncg3ONiGhWzgEvRt2YurapWVGLqzb0Vo/TmuUeu7shTPazAn
         9uunw4fqQKZCoxadiH3oQgRx+3Or10X+kNHsvJoQx5I8849lQYyZ8/NFQKbZzAmL61UT
         GCNndajPMa0Os0kr7i+hP7OAqeAhfLeFWmzlXSZMYswt6XhOhxpSV7k+7bka9E/H+3IT
         0JY5pM5IfWUS39vMUcwVjtiBxS4gA1tenLlQSuYl48eQ8J59ZbUBYPNuRS0PzLXUpCZ3
         gZfw==
X-Gm-Message-State: AOAM531GMn0eLy2d5jNYZMmW8evkIK/CFixHyXBMmSF6p1M1buvTzmLU
	ddIeLn4nHfrUp2X2pFoHF20OWImBWtZ8HBDw
X-Received: by 2002:a17:906:9b2:: with SMTP id q18mr22788236eje.147.1618129754397;
        Sun, 11 Apr 2021 01:29:14 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id hp12sm3682541ejc.46.2021.04.11.01.29.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 01:29:13 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 0/4] staging: rtl8723bs: Change several files of the driver
Date: Sun, 11 Apr 2021 10:29:04 +0200
Message-Id: <20210411082908.31876-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove camelcase, correct misspelled words in comments, change 
the type of a variable and its use, change comparisons with 'true'
in controlling expressions.

Changes from v2: Rewrite subject in patch 0/4; remove a patch from the
series because it had alreay been applied (rtl8723bs: core: Remove an unused variable).
Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.

Fabio M. De Francesco (4):
  staging: rtl8723bs: Remove camelcase in several files
  staging: rtl8723bs: include: Fix misspelled words in comments
  staging: rtl8723bs: Change the type and use of a variable
  staging: rtl8723bs: core: Change a controlling expression

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



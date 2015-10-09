X-GM-THRID: 6202672545102036992
X-Received: by 10.112.54.197 with SMTP id l5mr2919309lbp.21.1444420297861;
        Fri, 09 Oct 2015 12:51:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.227 with SMTP id dv3ls420588wib.6.gmail; Fri, 09 Oct
 2015 12:51:37 -0700 (PDT)
X-Received: by 10.194.83.169 with SMTP id r9mr2982511wjy.6.1444420297487;
        Fri, 09 Oct 2015 12:51:37 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id m4si14585wib.0.2015.10.09.12.51.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:51:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id lk2so84298450wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=XxtiN9Ot6CkVnyUuhoE7wAakPPMmPwQBgzlTn0T8O0g=;
        b=fKLXKWMRitPt0QOWNRR/sJNi4BdIKjoOBq8hbxSowbAQ3q6WW1Mu8FeGBCpYPcl+AW
         Zq8scBTCIhqiNu4y0TkPf66kbitRGFewVgL7F0dclR2g2kQlf5kyrIyGeIG72xcLol+a
         LM9DtDe1BLy0JBUllNLcENCqGFpVnvLyMrPBWFds9USZwRJQOgq1lfR1sMeceJj2faED
         kn0ihW/2U+fUfzxHLzkyFDja49lBbgI7+0nKKYZ4zz7QaKtL9+DxBz4Jh/m1hoqFAaKN
         LMOExY+c5OhuBd4ejR60DaR88Tuw6vlZv7tBLLxKxaRxxGVO7zLVmme+A5wII5JmIiOc
         TKdw==
X-Received: by 10.180.37.113 with SMTP id x17mr992971wij.33.1444420297408;
        Fri, 09 Oct 2015 12:51:37 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id wj4sm3895064wjb.10.2015.10.09.12.51.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 12:51:36 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v3 0/9] staging: iio: adc: fix multiple checkpatch issues
Date: Fri,  9 Oct 2015 22:50:59 +0300
Message-Id: <cover.1444419393.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset fixes multiple checkpatch issues.

Changes in v2:
    - removed commit 09/10 from previous version since it introduced build
    warnings

Changes in v3:
    - reworked patch 2/9 so that it does not introduce any other checkpatch
    warnings
    - changed the cover letter description in order to keep up with the other
    updates


Ioana Ciornei (9):
  staging: iio: adc: use kernel types u32 and u64
  staging: iio: adc: properly indent to match open paranthesis
  staging: iio: adc: remove explicit comparison to NULL
  staging: iio: adc: remove space after cast
  staging: iio: adc: add spaces around binary operators
  staging: iio: adc: add blank line after declarations
  staging: iio: adc: remove multiple blank lines
  staging: iio: adc: remove the use of CamelCase
  staging: iio: adc: properly indent block comments

 drivers/staging/iio/adc/ad7192.c      |  94 ++++++++--------
 drivers/staging/iio/adc/ad7192.h      |   2 +-
 drivers/staging/iio/adc/ad7280a.c     | 196 ++++++++++++++++++----------------
 drivers/staging/iio/adc/ad7606_core.c |  23 ++--
 drivers/staging/iio/adc/ad7606_par.c  |  15 +--
 drivers/staging/iio/adc/ad7606_spi.c  |   5 +-
 drivers/staging/iio/adc/ad7780.c      |  13 +--
 drivers/staging/iio/adc/ad7816.c      |  53 +++++----
 drivers/staging/iio/adc/lpc32xx_adc.c |  20 ++--
 drivers/staging/iio/adc/mxs-lradc.c   | 185 +++++++++++++++++---------------
 drivers/staging/iio/adc/spear_adc.c   |   4 +-
 11 files changed, 323 insertions(+), 287 deletions(-)

-- 
2.1.4



X-GM-THRID: 6202672545102036992
X-Received: by 10.180.208.7 with SMTP id ma7mr667565wic.5.1444241636447;
        Wed, 07 Oct 2015 11:13:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.33 with SMTP id e1ls203931wij.19.gmail; Wed, 07 Oct
 2015 11:13:55 -0700 (PDT)
X-Received: by 10.194.6.170 with SMTP id c10mr520070wja.7.1444241635394;
        Wed, 07 Oct 2015 11:13:55 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id bj4si167733wib.1.2015.10.07.11.13.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 11:13:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id lk2so225628087wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 11:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Nc2J8/5iQA10hHleeDsRoUljXCwjGEDn3t9Jckm0jMk=;
        b=1Em/31K5ajdjTgJHE6/sVDhdwtWQWNHCiChMQJYLL2piuOXA+nxzUzdHTaglP3DjA+
         mYRVY3ZkB7R4Rh5ar4tJ1rD6f2nTpFITqA1XjQMzX6btDY7inuTa6C37pz8UHxGDfBo0
         Jf/JiIF8YooPPnzSNcGqa0TKMs5vqrL8WeHzhbisHBSGn+nj9D6JX9J5b3n1VX8MiTwt
         fBFBbo+HkdD1C0BaVpG8ntHMnoNRSxErdSyAogpSk6P0JMQfHvr3hNeBobOnJptDymsn
         8Zy23NXY9eZRsAeckM66QvHe568Te3t9CBAP46mtrgDGZqP8TcG+wMzQ6LjWbr8asmWD
         iUnQ==
X-Received: by 10.180.81.199 with SMTP id c7mr3271776wiy.87.1444241635310;
        Wed, 07 Oct 2015 11:13:55 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id jf3sm3629403wic.8.2015.10.07.11.13.54
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 11:13:54 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 0/9] staging: iio: adc: fix multiple checkpatch issues
Date: Wed,  7 Oct 2015 21:13:38 +0300
Message-Id: <cover.1444241200.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset fixes multiple checkpatch issues.
Patch 2/10 introduces some lines over 800 characters, thus some other checkpatch
warnings, but the readability of the entire core is improved by aligning the
arguments and the parameters of the functions to match the open bracket.

Changes in v2:
    - removed commit 09/10 from previous version since it introduced build
    warnings

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

 drivers/staging/iio/adc/ad7192.c      |  91 +++++++++--------
 drivers/staging/iio/adc/ad7192.h      |   2 +-
 drivers/staging/iio/adc/ad7280a.c     | 186 +++++++++++++++++-----------------
 drivers/staging/iio/adc/ad7606_core.c |  21 ++--
 drivers/staging/iio/adc/ad7606_par.c  |  15 +--
 drivers/staging/iio/adc/ad7606_spi.c  |   5 +-
 drivers/staging/iio/adc/ad7780.c      |   9 +-
 drivers/staging/iio/adc/ad7816.c      |  53 +++++-----
 drivers/staging/iio/adc/lpc32xx_adc.c |  20 ++--
 drivers/staging/iio/adc/mxs-lradc.c   | 168 +++++++++++++++---------------
 drivers/staging/iio/adc/spear_adc.c   |   4 +-
 11 files changed, 290 insertions(+), 284 deletions(-)

-- 
2.1.4



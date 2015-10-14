X-GM-THRID: 6202672545102036992
X-Received: by 10.112.169.34 with SMTP id ab2mr1093978lbc.23.1444846708393;
        Wed, 14 Oct 2015 11:18:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.146.9 with SMTP id u9ls72438lfd.63.gmail; Wed, 14 Oct 2015
 11:18:27 -0700 (PDT)
X-Received: by 10.112.150.229 with SMTP id ul5mr1138590lbb.2.1444846707958;
        Wed, 14 Oct 2015 11:18:27 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id h2si967217wiy.0.2015.10.14.11.18.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:18:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id q12so95823104wie.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=T0Fwiz5TlRULDKnD+PC29NegjxzLeL7oaLT7YVsGZSE=;
        b=iGISBqqnjb2fPXQUPyVUl9Pbn6HbMccJRDoEi6tonPLQITEsW6aLsn6PaIW8qNNZMX
         v7VylAxBCXQS0HoH5kSupmVWQrQW6FzogIXROLbVwJR9Kie1m4Yl0gmak+ghxDT2lfWl
         Vcp+11l4gxTzyDrlJyF75oACjEq7O4lBcPQud9ogDT/Tue7o93XpIvT28SWE5YSDwmI4
         Wx+vvaTiPpRCjWseD2mXcMH0sZZ9N0/8JTYflmL9pfu+ps3AyGBoxMvs1luFVjrvh92v
         N13RgLObWUVwDzc5GRrL2KkdXrVK1tCM5HvIWo9UnhMkyHjZ+rg2AE+3ZsEDHoQYoFe2
         Q8mQ==
X-Received: by 10.194.24.68 with SMTP id s4mr6154370wjf.12.1444846707782;
        Wed, 14 Oct 2015 11:18:27 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id p4sm20285140wia.15.2015.10.14.11.18.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 11:18:27 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v4 0/9] staging: iio: adc: fix multiple checkpatch issues
Date: Wed, 14 Oct 2015 21:14:11 +0300
Message-Id: <cover.1444845354.git.ciorneiioana@gmail.com>
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

Changes in v4:
    - reworked patch 2/9 in order to follow kernel coding style
    - changed patch 5/9 in order to not break user space
    - reworked patch 8/9 because abbreviations are not considered camel case
    - changed patch 9/9 by moving block comment above the macro def

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

 drivers/staging/iio/adc/ad7192.c      |  97 ++++++++++--------
 drivers/staging/iio/adc/ad7192.h      |   2 +-
 drivers/staging/iio/adc/ad7280a.c     | 178 ++++++++++++++++----------------
 drivers/staging/iio/adc/ad7606_core.c |  23 +++--
 drivers/staging/iio/adc/ad7606_par.c  |  15 +--
 drivers/staging/iio/adc/ad7606_spi.c  |   5 +-
 drivers/staging/iio/adc/ad7780.c      |  13 +--
 drivers/staging/iio/adc/ad7816.c      |  53 +++++-----
 drivers/staging/iio/adc/lpc32xx_adc.c |  14 +--
 drivers/staging/iio/adc/mxs-lradc.c   | 185 +++++++++++++++++++---------------
 drivers/staging/iio/adc/spear_adc.c   |   4 +-
 11 files changed, 313 insertions(+), 276 deletions(-)

-- 
2.1.4



X-GM-THRID: 6202672545102036992
X-Received: by 10.112.181.10 with SMTP id ds10mr5799313lbc.3.1444172241318;
        Tue, 06 Oct 2015 15:57:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.93 with SMTP id h90ls7lfi.9.gmail; Tue, 06 Oct 2015
 15:57:17 -0700 (PDT)
X-Received: by 10.112.26.212 with SMTP id n20mr7041826lbg.2.1444172237684;
        Tue, 06 Oct 2015 15:57:17 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id c7si659107wiy.3.2015.10.06.15.57.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 15:57:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id fx3so3770727wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 15:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vI1MqN7LNRA++/7ppf5soP9MD/25yaNExdSjCG9wkPU=;
        b=J8yGURyy/rjV7CNGdT9PJ1KQRcflXIeq1tqrA1CTkSWN4LvgplbaRcKmD3Duh1Zo33
         +z7fyK3AYHFjsbAgsbWCMgs9Ou1CpCCYivBEP6ZUAoGbDkhw/MzQ5miWkZ1h3ajPx6/0
         n4vJbzvL1ay1NYO6ga6rJfj3Ndig/X8eBNouBTGqefjGPK3p58o49fqcrVBMMDYglVTW
         RfxEE/u3I7FpcIW9oE+QaA1LeO4r2AQFIBiUE/2q2jFm3SFzLXd2vJOJ5V4nr5uLUFps
         sQF7J7Ak/F+LTvQ2cegE7JxYvPum6sb1wuy2StuFqY+hNCT/E9V461KA6TOevByIgmCR
         MwcA==
X-Received: by 10.194.58.177 with SMTP id s17mr46680717wjq.102.1444172237581;
        Tue, 06 Oct 2015 15:57:17 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id cv4sm35261421wjc.17.2015.10.06.15.57.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 15:57:16 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 00/10] staging: iio: adc: fix multiple checkpatch issues
Date: Wed,  7 Oct 2015 01:57:00 +0300
Message-Id: <cover.1444172065.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset fixes multiple checkpatch issues.
Patch 2/10 introduces some lines over 800 characters, thus some other checkpatch
warnings, but the readability of the entire core is improved by aligning the
arguments and the parameters of the functions to match the open bracket.

Ioana Ciornei (10):
  staging: iio: adc: use kernel types u32 and u64
  staging: iio: adc: properly indent to match open paranthesis
  staging: iio: adc: remove explicit comparison to NULL
  staging: iio: adc: remove space after cast
  staging: iio: adc: add spaces around binary operators
  staging: iio: adc: add blank line after declarations
  staging: iio: adc: remove multiple blank lines
  staging: iio: adc: remove the use of CamelCase
  staging: iio: adc: use BIT macro
  staging: iio: adc: properly indent block comments

 drivers/staging/iio/adc/ad7192.c      |  93 +++++++++--------
 drivers/staging/iio/adc/ad7192.h      |   2 +-
 drivers/staging/iio/adc/ad7280a.c     | 186 +++++++++++++++++-----------------
 drivers/staging/iio/adc/ad7606_core.c |  21 ++--
 drivers/staging/iio/adc/ad7606_par.c  |  15 +--
 drivers/staging/iio/adc/ad7606_spi.c  |   5 +-
 drivers/staging/iio/adc/ad7780.c      |   9 +-
 drivers/staging/iio/adc/ad7816.c      |  53 +++++-----
 drivers/staging/iio/adc/lpc32xx_adc.c |  20 ++--
 drivers/staging/iio/adc/mxs-lradc.c   | 170 +++++++++++++++----------------
 drivers/staging/iio/adc/spear_adc.c   |   4 +-
 11 files changed, 292 insertions(+), 286 deletions(-)

-- 
2.1.4



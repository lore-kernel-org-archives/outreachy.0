X-GM-THRID: 6332371296265961472
X-Received: by 10.66.14.193 with SMTP id r1mr5604840pac.117.1474370084418;
        Tue, 20 Sep 2016 04:14:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.72 with SMTP id p8ls1544617otd.48.gmail; Tue, 20 Sep
 2016 04:14:43 -0700 (PDT)
X-Received: by 10.13.194.69 with SMTP id e66mr5332818ywd.152.1474370083849;
        Tue, 20 Sep 2016 04:14:43 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id e66si2390304pfk.2.2016.09.20.04.14.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:14:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id 21so6502144pfy.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 04:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=D9I0YGEK97Ymd6tlQnMzfeqXaLKLayXom5p0MzFlOco=;
        b=zUMVIdOL8TSABJWCL8samryueMWErd5VMGak4+2CaOGj+l0ElS43pVZk8/A6a5mwpT
         qcZEYsex9Ct1MxeLd923z3NLYLXta2Lp9QumaNtRYwbYUBkdwIoYdo5r1hBUUFhhuBEe
         LF+xSw04bqXonAC7UIDJ0RC+gN5rgwLrqj+SK/eAwl+tNVmCbgbICSY14fk6EFHrIPeb
         QM0xNRmaYn305eReigz9CjglHNUj7EJQKh5cZQBrjpvLUQFPnoEx1IGYsyxKtM2xK/MS
         RXmPVaYb1QoltbhCIBSzzTdf7Fz0pcj4jDWhnEpz9vrJzJ5/wnmxW090G2umzpZrFm19
         P6mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=D9I0YGEK97Ymd6tlQnMzfeqXaLKLayXom5p0MzFlOco=;
        b=ABHm5OTi99+P8hdU5b3bIqtUKC0+yL/E8YOP4Bb4oJSdLNCGrsjjaVxtTdX9yw+kAb
         KmEUt8TlcmEl7s9dqA/wWmPCvThRzM0Ob2tlFoNrOztuXngzi0vKsshEz8WbRQNQBT3s
         mBAY10ZDjs3wsglZCZINmBvwbacPN7nn27EOhxA4T/qBT1VSl8gRI14JNCApl/DU4HcH
         oNYVZBHoLBztqtBOD6zw+eylXT+TislDCfrEY7u05FFsjYhwkMPPKB0YZEXPYKo3Fecv
         j9dJ9zBtPICzgHPWupm1n3cw1Bv8YOMwYSJyi+DnGAmsTxSOGCmk+sKPtsodCkkBOJU5
         C37g==
X-Gm-Message-State: AE9vXwMFMmyvooB+01I/A88gN366w0hyEqeBVb+YMJujjgAbye+qvDxuFSh0wSaU9CXIxQ==
X-Received: by 10.98.155.154 with SMTP id e26mr54284431pfk.68.1474370083627;
        Tue, 20 Sep 2016 04:14:43 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id j1sm4548783pfg.95.2016.09.20.04.14.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:14:42 -0700 (PDT)
Date: Tue, 20 Sep 2016 16:44:33 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/7] Fix multiple checkpatch issues
Message-ID: <cover.1474369970.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes multiple checkpatch.pl issues in rts5208 driver.

Rehas Sachdeva (7):
  staging: rts5208: Remove unnecessary parentheses
  staging: rts5208: Add spaces around operators
  staging: rts5208: Remove explicit NULL comparison
  staging: rts5208: Fix indentation
  staging: rts5208: Put constant on right side of comparison
  staging: rts5208: Use BIT(x) macro
  staging: rts5208: Remove space after cast

 drivers/staging/rts5208/ms.c        | 30 +++++++++++++++---------------
 drivers/staging/rts5208/rtsx.c      |  2 +-
 drivers/staging/rts5208/rtsx.h      | 12 ++++++------
 drivers/staging/rts5208/rtsx_card.c |  2 +-
 drivers/staging/rts5208/rtsx_chip.h | 30 +++++++++++++++---------------
 drivers/staging/rts5208/rtsx_scsi.c |  2 +-
 drivers/staging/rts5208/sd.c        |  6 +++---
 drivers/staging/rts5208/xd.c        | 12 ++++++------
 8 files changed, 48 insertions(+), 48 deletions(-)

-- 
2.7.4



X-GM-THRID: 6249599077237915648
X-Received: by 10.50.13.101 with SMTP id g5mr8604585igc.6.1455098175361;
        Wed, 10 Feb 2016 01:56:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.134 with SMTP id g128ls196613ioe.45.gmail; Wed, 10 Feb
 2016 01:56:15 -0800 (PST)
X-Received: by 10.107.130.28 with SMTP id e28mr39597957iod.34.1455098175001;
        Wed, 10 Feb 2016 01:56:15 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 12si239065pfb.1.2016.02.10.01.56.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:56:14 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 71so722787pfv.1
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 01:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=MXXslH2RA6HuuzKSbfMEHmu+rr9szydfjEk3Vc8Cp+0=;
        b=O9uRtPo57S3obx6moh6jAkQIJdXnRocKk+HhSkgL3bHd1ycRox36E7I7OXLfJjHzk6
         XX9vDJbQcwRhAmvNTIi5XbHHWM+ZAq9J24YSk45Lf4VhsDwh3P600QqSWo9xui/hK8xk
         jlF+fTtZ+UT554vaeb46Ki3cOr1hs8lwMsnd7L93ikVzHCTwpUYMpUBSQ6Szl84B8XJE
         HV7TFf5Z75eZeSZOHBk9+Y0PLTv3JC0mp/Oj2+JvqkqZ1j54Ugv03mTdLwPQQE44Yj6a
         hDdbF+KH3eufXoCYRn7hqD67b9llD8AT4WuECyj6mLuXvYCvemNOaXlEP+5QwnTQoFh+
         x0lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MXXslH2RA6HuuzKSbfMEHmu+rr9szydfjEk3Vc8Cp+0=;
        b=SZi6JTeq2nBoAjI7lSZuQj/QSFiHv7JlCOuaGAJ8tkgJtdg3D9SqklaBaLcqpzp1R6
         8zsqOY919UviwmNnL8BNNlq+n7BUNgWbxtPCAHdCL5Hr/HszfUKhSuv0oxKuyT0YKyHI
         ZYOxW8JjCv66mXIwYF7OMSF9dU7eT6MBQGr/NIJkH/4a7h6AI0HdN66hyYI55XYDU9VT
         rJG1p/A13lAME7mT9V94JnR2ciRvAgfXBaMzsTHzgvR+QJAxL4LblUxkgsVi+IjLTZMx
         392MGx+/GZ+h8rmG3FMAvDRUzPXyAI1GakKZzlpNnHzu9bwXvqIt//j+own2OGVX6ow4
         zlBA==
X-Gm-Message-State: AG10YOTPkKEho069+OltkSgXyLMhl7ikJ2IUYBYtt6Bf/hicG840mGRQ2xBM6NjMoaVHdw==
X-Received: by 10.98.8.80 with SMTP id c77mr35234835pfd.42.1455098174890;
        Wed, 10 Feb 2016 01:56:14 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.165])
        by smtp.gmail.com with ESMTPSA id fa3sm3784246pab.45.2016.02.10.01.56.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 01:56:14 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 0/4] Fix multiple coding style issues
Date: Wed, 10 Feb 2016 17:56:05 +0800
Message-Id: <1455098169-17667-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Address checkpatch WARNING and CHECK issues on the fb_hx83nn series of files.

Eva Rachel Retuya (4):
  staging: fbtft: Fix block comments according to kernel coding style
  staging: fbtft: Indent to match open parenthesis
  staging: fbtft: Add blank line after function declaration
  staging: fbtft: Remove blank line after '{' brace

 drivers/staging/fbtft/fb_hx8340bn.c | 117 ++++++++++++++++++++----------------
 drivers/staging/fbtft/fb_hx8347d.c  |   9 +--
 drivers/staging/fbtft/fb_hx8353d.c  |  31 +++++-----
 drivers/staging/fbtft/fb_hx8357d.c  | 106 ++++++++++++++++----------------
 drivers/staging/fbtft/fb_hx8357d.h  |  28 ++++-----
 5 files changed, 153 insertions(+), 138 deletions(-)

-- 
1.9.1



X-GM-THRID: 6393347982886961152
X-Received: by 10.200.47.130 with SMTP id l2mr1250015qta.52.1488567325361;
        Fri, 03 Mar 2017 10:55:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.2 with SMTP id u2ls870289itc.10.gmail; Fri, 03 Mar 2017
 10:55:24 -0800 (PST)
X-Received: by 10.99.54.15 with SMTP id d15mr1777333pga.148.1488567324342;
        Fri, 03 Mar 2017 10:55:24 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s64si208709pfk.0.2017.03.03.10.55.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:55:24 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so13443227pgy.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 10:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=L8+3mqgCAnpYNATKgwijGN9/HdgIZlIM6zJ9ANO2RLM=;
        b=Xt2Wm0P+Ebjcq4j2vQUP5wE2x7vl4Xlz23+tHzysSA9mBdc8Zf2CCBxLSGTQkOFO7U
         EcBcpIgEKjihfD1JyX6vUiE2C3kItu6bqThKuPJZBGqMwHILv1/whkC8u39pQM+9PGEx
         CmiUkkb2L+v0XtdZVJzJqiyF5Y++rST39uXiAKoe116RAEI5eFW4eSYGkf4T6ozC0b0l
         NR2MtwHrcZVsBgi5RvO4bY5r2/B95Rsf0EcUAgHMS+KYeS+y9xYtBgJCr9SqqHnwRjVm
         ifE1ADLziVP1+EPidLfgrdB2ZmZiZ58onwvd4WRfD/IsTBP4wpo0ccrV0LocWqbFKMib
         Wanw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=L8+3mqgCAnpYNATKgwijGN9/HdgIZlIM6zJ9ANO2RLM=;
        b=ekT7J6IvXJ8oiwLHhu9XNtPyHw8Jw8cHrNJXHzm2DLj4EV1C0uSu/d3VcmFvUH06qJ
         lhfhnt7eW0THz6uGY4oeV3175OxeijmX29gH+VSNeHNDoio//uNBmVncW/iSZQ1RCFKI
         c/ZP0g1cCeCL0b+JRX8LuL5TVCkECPEOXXpqBAZ2a8oMm67wEvAzl+GAWYAuctzb3rQb
         T7A9WcNF7ZpqI6UmBTnWWJcCTdx89RgmTy+MTX9jCsfFOj7LYMQ2ONmdO4tSWyZYeXS4
         aUstO3y0FaF0nyvt6TDVd4c/H7sbcnK9ojUHqlgSsS6dUCsAh+09WoY8e2cU6lUE4GE6
         KphA==
X-Gm-Message-State: AMke39lGlI4tmRypF6ehRDjZDnxrrQhmUmSOwqd8QVV9SACwFFaH43Jg+1RMZ36a1vaJXg==
X-Received: by 10.84.241.130 with SMTP id b2mr5049218pll.32.1488567323813;
        Fri, 03 Mar 2017 10:55:23 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z7sm24765076pfz.128.2017.03.03.10.55.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 10:55:22 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Clean up tests if NULL returned on failure
Date: Sat,  4 Mar 2017 00:25:17 +0530
Message-Id: <1488567319-25989-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series tests if functions like kmalloc/kzalloc return NULL 
on failure. When NULL represents failure, !x is commonly used.

simran singhal (2):
  staging: media: Clean up tests if NULL returned on failure
  staging: rtl8192e: Clean up tests if NULL returned on failure

 drivers/staging/media/atomisp/pci/atomisp2/atomisp_fops.c | 2 +-
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c      | 4 ++--
 drivers/staging/media/lirc/lirc_zilog.c                   | 6 +++---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c              | 2 +-
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c              | 2 +-
 drivers/staging/rtl8192e/rtllib_crypt_wep.c               | 2 +-
 drivers/staging/rtl8192e/rtllib_softmac.c                 | 2 +-
 drivers/staging/rtl8192e/rtllib_wx.c                      | 4 ++--
 8 files changed, 12 insertions(+), 12 deletions(-)

-- 
2.7.4



X-GM-THRID: 6255949616211034112
X-Received: by 10.182.75.196 with SMTP id e4mr415961obw.36.1456576775802;
        Sat, 27 Feb 2016 04:39:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.132 with SMTP id h4ls1717204qgf.70.gmail; Sat, 27 Feb
 2016 04:39:35 -0800 (PST)
X-Received: by 10.140.143.200 with SMTP id 191mr5019890qhp.3.1456576775240;
        Sat, 27 Feb 2016 04:39:35 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 12si2534632pfb.1.2016.02.27.04.39.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 04:39:35 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id w128so6140347pfb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 04:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=db3eBRvdhEdaxlmKsnLr29p6OpzWtDunHfdA9K3GHbg=;
        b=VE40VksxGwz838SZ29d4RTC28YRXKHQmJhn3j96j5sH4EEx2G0XGXlLbmv52ZSrKKW
         LhrB5hZd4bRY5vqGAxKDrCz5sVXQiv2Eeyry/qbA2edYIpeI5ahJMmUwEqJFU8apO8dY
         g8y0G8So+DJ7+7xZqiWFLQQYSp4Bagu/ur9vXhraAO3MSmp75n26KiC2h26WHwCb267G
         XRk6wYtwDRCaaf+SWjdQb/ampgSteaZJRF5ji5lLlcOL5yYlO5XziAyruoCAL4hKiFLF
         PRaVqc4soJvDxf9COwRIs36YKd2d8DnBVc2Ld95wiJEmSUBXBSdwynNYz/ISJARDZ9L6
         +kdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=db3eBRvdhEdaxlmKsnLr29p6OpzWtDunHfdA9K3GHbg=;
        b=K3dkYdCty4wwsnZzWUkt4QeNZ9mzYSogh6gGKuyYgrvec/GrVlOW9K7CJvPQiuKHcw
         a0CR2hNOB8jsYWBiJlLvbCIzHet519e6J3oj6oMcFrn8EZFNyN882SMrdUHD7A3BsQUZ
         0ydCw2S23WQXRtbQxZNFJ+IZU3aBL7pVqld0MBHyW9drsxnWac+8DpNZEsJTrKgeagpV
         SuT1fYWg+wiCwURZguE8WpcmTqC78mo61KLAmioF2vpAPNfYoX7vusG1ejMOn8pypzLO
         gh9BCi//qlVj9Dz0WNy8JF4/YN1Mk5UP+1vnkHhYkoJTVKaN3p7FcndxX+YPkuRsZTAo
         4l1A==
X-Gm-Message-State: AD7BkJI+IHHaoxDeaA8UgYeU1iDPnKQ6ANSlUEa43j1UFMB/mOZ1+j2K5LBSNrAaFKrB4A==
X-Received: by 10.98.72.70 with SMTP id v67mr9256000pfa.100.1456576775084;
        Sat, 27 Feb 2016 04:39:35 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.192])
        by smtp.gmail.com with ESMTPSA id 70sm25983471pfs.78.2016.02.27.04.39.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 04:39:34 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 0/4] staging: cleanup NULL tests
Date: Sat, 27 Feb 2016 20:39:21 +0800
Message-Id: <1456576765-29100-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Comparisons to NULL are simplified into '!x'. Coccinelle detected and applied the changes.

Eva Rachel Retuya (4):
  staging: [media] mn88472: simplify NULL tests
  staging: ste_rmi4: simplify NULL tests
  staging: rts5208: simplify NULL tests
  staging: wlan-ng: simplify NULL tests

 drivers/staging/media/mn88472/mn88472.c       |  6 +++---
 drivers/staging/rts5208/ms.c                  |  8 ++++----
 drivers/staging/rts5208/rtsx.c                |  6 +++---
 drivers/staging/rts5208/rtsx_scsi.c           | 22 +++++++++++-----------
 drivers/staging/rts5208/sd.c                  |  4 ++--
 drivers/staging/rts5208/spi.c                 |  2 +-
 drivers/staging/rts5208/xd.c                  |  4 ++--
 drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c |  2 +-
 drivers/staging/wlan-ng/hfa384x_usb.c         | 14 +++++++-------
 drivers/staging/wlan-ng/prism2fw.c            |  2 +-
 drivers/staging/wlan-ng/prism2usb.c           |  2 +-
 11 files changed, 36 insertions(+), 36 deletions(-)

-- 
1.9.1



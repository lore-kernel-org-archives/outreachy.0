X-GM-THRID: 6211302879745015808
X-Received: by 10.107.161.83 with SMTP id k80mr11467503ioe.8.1446298212642;
        Sat, 31 Oct 2015 06:30:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.207 with SMTP id 76ls835985iot.4.gmail; Sat, 31 Oct
 2015 06:30:12 -0700 (PDT)
X-Received: by 10.66.147.33 with SMTP id th1mr10236462pab.27.1446298212137;
        Sat, 31 Oct 2015 06:30:12 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id fa8si1140063pab.1.2015.10.31.06.30.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 06:30:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hy1so94839845pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 06:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=SSaCkUXLNTNg9royGB2OSipbJz0vWX7dKPJu/K0hH10=;
        b=S7kUa2W3cCpuQdSoV7RqnmtkAGIYxRgC5mwRcBYqh3VsuNKk09Uvoo5B0qANM8/7UP
         faTKvKo7axSg0B46wm+JL/iPc/CF8iDr4sUfLs0y3ESuth5FdnUVPSSW9sv2Jf9KlNUU
         AvQ+QQKtSzObErKYaJiYpOl2H6zWdoALfFVJ4ThEpprC8hVmcF8mAD/NZFKBV7uxsfV4
         TKDzlb4nBv8pW2y0b/WdYTMZgeX1zPdqg54/X8tPUU2D8K/wRf2loGt6iqiZwAewy1Cm
         XDIeA5VTyl92Hw9vKweGnM08zshfvhTOfog+9gi2t5ojcB3Sj7PTVRDtwrrSCu+Tc5zF
         RKeQ==
X-Received: by 10.68.249.164 with SMTP id yv4mr10875209pbc.51.1446298212031;
        Sat, 31 Oct 2015 06:30:12 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (108-60-106-94.static.wiline.com. [108.60.106.94])
        by smtp.gmail.com with ESMTPSA id tj2sm14050804pab.4.2015.10.31.06.30.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 31 Oct 2015 06:30:11 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 0/2] Staging: comedi: Fix sparse warnings
Date: Sat, 31 Oct 2015 06:30:05 -0700
Message-Id: <cover.1446297932.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix sparse endian warnings in ni_mio_common and adl_pci9118.

I didn't fix warnings of ni_pcimio driver because it seems more
complex and one solution that I see is to change struct ni_private
with adding a new field (unsigned int), but I don't know if that's
a valid solution.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Changes in v2:
 -fix build warnings caused by changes in v1

Ksenija Stanojevic (2):
  Staging: comedi: ni_mio_common: Fix endian sparse warning
  Staging: comedi: adl_pci9118: Fix endian sparse warning

 drivers/staging/comedi/drivers/adl_pci9118.c   |  3 ++-
 drivers/staging/comedi/drivers/ni_mio_common.c | 18 +++++++++++++-----
 2 files changed, 15 insertions(+), 6 deletions(-)

-- 
1.9.1



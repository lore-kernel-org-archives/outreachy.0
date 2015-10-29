X-GM-THRID: 6211172623866396672
X-Received: by 10.50.164.167 with SMTP id yr7mr4325122igb.13.1446151319894;
        Thu, 29 Oct 2015 13:41:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.3 with SMTP id d3ls429101ioe.74.gmail; Thu, 29 Oct
 2015 13:41:59 -0700 (PDT)
X-Received: by 10.107.132.77 with SMTP id g74mr4395143iod.10.1446151319404;
        Thu, 29 Oct 2015 13:41:59 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id vy6si386606pbc.1.2015.10.29.13.41.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 13:41:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hk11so50632744pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 13:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Eih+0Z07iwiHEdkgvIO1PZIQjoyKdrCLYKnKi1FgrVM=;
        b=FAK6v2nKHbbtMqAhE+/X5Cer2SaCxywiI/VtVIWfQpISkXhXkFtno/t/3u/USmdN3q
         /4UV3V0S5WnbhPWmIbWc7IWle4r2eguxkg0HmytmaMiMXoPbExFb3AOzhdHNMUAaFxXm
         eVpfBxCq6pMWye4c3Rpo9olya2trGjtVsBspzjcVjqHrj23kggepKe2ArxnRTj8kzlf7
         KikyEDqkfzH5i+s0Tudt9hzqdGUk7f/TykjQkQTqft3Ku0WpYWH8VHDSeU7YDBUtcwaV
         GRu9iMb51845OmL5YBtN6EyJ7zzL8l4az60K+UUxrI1/5Y7PWPR/zDvPkhqycl57RA1t
         FS6A==
X-Received: by 10.68.69.79 with SMTP id c15mr4073042pbu.90.1446151319275;
        Thu, 29 Oct 2015 13:41:59 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id ou3sm3951329pbb.44.2015.10.29.13.41.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 13:41:58 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/2] Fix sparse warnings
Date: Thu, 29 Oct 2015 13:41:51 -0700
Message-Id: <cover.1446151073.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove EFUSE_Write1Byte and make Efuse_ReadAllMap function static

Found by sparse.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (2):
  Staging: rtl8723au: Remove unused EFUSE_Write1Byte function
  Staging: rtl8723au: Declare function static

 drivers/staging/rtl8723au/core/rtw_efuse.c | 45 ++----------------------------
 1 file changed, 2 insertions(+), 43 deletions(-)

-- 
1.9.1



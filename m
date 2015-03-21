X-GM-THRID: 9438545051648
X-Received: by 10.50.122.7 with SMTP id lo7mr4236150igb.7.1426961645584;
        Sat, 21 Mar 2015 11:14:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.67 with SMTP id ru3ls995272obb.14.gmail; Sat, 21 Mar
 2015 11:14:05 -0700 (PDT)
X-Received: by 10.182.181.105 with SMTP id dv9mr83180946obc.16.1426961645349;
        Sat, 21 Mar 2015 11:14:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id pj7si242170pbb.2.2015.03.21.11.14.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 11:14:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pacwe9 with SMTP id we9so143081675pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 11:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8ApaflZw4681fMGKowCnhjPrkq9ICSFb4SwfHxkOHXM=;
        b=QaSOhHbeS3yvEuhmyHP3QQ6ZonYji62I9FV/+pTx/rdXcRffOMMqsRfaCq9gVwPWvm
         PXYNPalahV4X7d0XUfC4urpWDnFhCTWi1NhaEJdcLfbZouzCfGWmvK8ZK9SUXZYVsHTI
         tc6iqZ8h2U80/kJX8udPPaTBVk9cWCnhFstts2lEkGpiQMc23IyLuaZQtv2bfrA05wZE
         sWcEN25KreTAJbuZ5hoppUBhtDs9MMRFliy7qrLSNxO1pNuZrxZqkA4n3IXcyvbafAM0
         uO3KalGoadHmfTE4QYOm8fK7jSlnQfPn22lMb3K/mRzmYM/TpioVzC+H8EKaYkhgWuMj
         dEQg==
X-Received: by 10.68.237.226 with SMTP id vf2mr6725434pbc.12.1426961645181;
        Sat, 21 Mar 2015 11:14:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.209.90])
        by mx.google.com with ESMTPSA id mi9sm12256919pab.3.2015.03.21.11.14.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 11:14:04 -0700 (PDT)
Date: Sat, 21 Mar 2015 23:44:01 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: Use tabs instead of spaces
Message-ID: <20150321181401.GA27560@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes warning in file ddk750_chip.c of using spaces rather
than tabs.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index de56302..b748689 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -102,8 +102,8 @@ unsigned int getChipClock(void)
  */
 void setChipClock(unsigned int frequency)
 {
-    pll_value_t pll;
-    unsigned int ulActualMxClk;
+	pll_value_t pll;
+	unsigned int ulActualMxClk;
 #if 1
 		/* Cheok_0509: For SM750LE, the chip clock is fixed. Nothing to set. */
 		if (getChipType() == SM750LE)
-- 
1.9.1



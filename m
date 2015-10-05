X-GM-THRID: 6202244108484870144
X-Received: by 10.182.117.225 with SMTP id kh1mr26996966obb.12.1444072487738;
        Mon, 05 Oct 2015 12:14:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.63.17 with SMTP id c17ls1527657obs.14.gmail; Mon, 05 Oct
 2015 12:14:47 -0700 (PDT)
X-Received: by 10.182.246.98 with SMTP id xv2mr21599865obc.3.1444072487442;
        Mon, 05 Oct 2015 12:14:47 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id wl2si3798627pab.1.2015.10.05.12.14.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 12:14:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hy16so44674267pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 12:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=VKGFcJIq4P3Ok8PN8TUei4gzjqAIyU4Al94qpTq2JRQ=;
        b=rxPj1QUwJ7v2TP2vmm9r1kwbPlCd+BsCkydH4j/aQNslAHq4/HlwoCG08ljN7UG5SV
         SPmFvJSq4ML+WdeBQnJETKjPREG5bL5RHckexIbDbE0yC9K7iYEfd7xOuaOStEVSfWGC
         MEug2LnyKjMRzmZZf+yX10pm2mtvqdCqncG7uBHNd2NT9keM8SD0BjPYiiQzmQmM+gkN
         9nSaRdNViSo0+5iHRReL3AWUgdTfGEU32LB/EdJOb29l6nFMgc+F32+7V7eRZQt/2iDw
         ONbYYyH1Lt9wgXNzBWsUjw5PuwaZNL3+sHV9at4w/ytDeiyredrsT2wC4Z4b+dZBz2Zy
         rOhQ==
X-Received: by 10.66.121.110 with SMTP id lj14mr41444520pab.61.1444072487260;
        Mon, 05 Oct 2015 12:14:47 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.14])
        by smtp.gmail.com with ESMTPSA id pu5sm29045482pbc.58.2015.10.05.12.14.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 12:14:46 -0700 (PDT)
Date: Tue, 6 Oct 2015 00:44:42 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8712: Add spaces around '|'
Message-ID: <20151005191442.GA21566@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add space around operator '|'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '|' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 601d8c6..425c2b1 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -246,15 +246,15 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 
 		/* 3.Enable CPU */
 		tmp8 = r8712_read8(padapter, SYS_CLKR);
-		r8712_write8(padapter, SYS_CLKR, tmp8|BIT(2));
+		r8712_write8(padapter, SYS_CLKR, tmp8 | BIT(2));
 		tmp8_a = r8712_read8(padapter, SYS_CLKR);
-		if (tmp8_a != (tmp8|BIT(2)))
+		if (tmp8_a != (tmp8 | BIT(2)))
 			goto exit_fail;
 
 		tmp8 = r8712_read8(padapter, SYS_FUNC_EN + 1);
-		r8712_write8(padapter, SYS_FUNC_EN + 1, tmp8|BIT(2));
+		r8712_write8(padapter, SYS_FUNC_EN + 1, tmp8 | BIT(2));
 		tmp8_a = r8712_read8(padapter, SYS_FUNC_EN + 1);
-		if (tmp8_a != (tmp8|BIT(2)))
+		if (tmp8_a != (tmp8 | BIT(2)))
 			goto exit_fail;
 
 		r8712_read32(padapter, TCR);
@@ -335,7 +335,7 @@ uint rtl8712_hal_init(struct _adapter *padapter)
 	netdev_info(padapter->pnetdev, "2 RCR=0x%x\n",
 		    r8712_read32(padapter, RCR));
 	val32 = r8712_read32(padapter, RCR);
-	r8712_write32(padapter, RCR, (val32|BIT(25))); /* Append PHY status */
+	r8712_write32(padapter, RCR, (val32 | BIT(25))); /* Append PHY status */
 	val32 = 0;
 	val32 = r8712_read32(padapter, 0x10250040);
 	r8712_write32(padapter,  0x10250040, (val32&0x00FFFFFF));
-- 
1.9.1



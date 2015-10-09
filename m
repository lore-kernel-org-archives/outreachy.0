X-GM-THRID: 6202253257836855296
X-Received: by 10.66.122.201 with SMTP id lu9mr12299177pab.8.1444424733996;
        Fri, 09 Oct 2015 14:05:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.171.73 with SMTP id as9ls735782obc.99.gmail; Fri, 09 Oct
 2015 14:05:33 -0700 (PDT)
X-Received: by 10.182.240.202 with SMTP id wc10mr13507744obc.9.1444424733430;
        Fri, 09 Oct 2015 14:05:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id w5si359755pbt.1.2015.10.09.14.05.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 14:05:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hy16so96235990pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 14:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=CsiToW0fE1u7xYyBPKe8w/QTdBP8F5EaiUQTniX3g4o=;
        b=FxqtolXdLXbF8J+Y5YYvNjfJd+dNs33JT2KmOGO4qPCgpIi52VbYrYOVgbFbhicEzL
         sl2pcYBZ0td8q5qqQxFk+Zg1W5Ec8ytLM3n19z0JeMNUmHqlYr/2eDsA5S5B3IYdjcCv
         iSO1wjW51zEBgxDOUghSosK+k56lx9hTDZpiuu6iYqIq/IMyl+fJJZPgSlQ64EC7Pq7A
         ubU9ePoG/3fdpaafeBex8sGwwVXyikKEJETYz62nvxXEzb97ykVcFvpW6sizF2woa8Q+
         kCx9ipHae5fLOlYIl/0MuYSTOYz3F/1QIBPzFnG+TGUr3V92ZwMxoP4hqPq314YO9lvZ
         G5aA==
X-Received: by 10.68.57.175 with SMTP id j15mr17644704pbq.34.1444424733268;
        Fri, 09 Oct 2015 14:05:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.135.155])
        by smtp.gmail.com with ESMTPSA id tk4sm4156125pab.45.2015.10.09.14.05.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 09 Oct 2015 14:05:32 -0700 (PDT)
Date: Sat, 10 Oct 2015 02:35:28 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8712: usleep_range is preferred over udelay
Message-ID: <20151009210528.GA29402@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix checkpatch.pl issue: "CHECK: usleep_range is preferred over
udelay;
see Documentation/timers/timers-howto.txt".
Replace `udelay()` with a call to `usleep_range()` with a reasonable
upper limit determined by the other sleeping functions present.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Modified commit message
        -Replaced the second udelay() with usleep_range() present in the 
         same function

 drivers/staging/rtl8712/hal_init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 15c6160..2031291 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -209,7 +209,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 		i = 10;
 		tmp16 = r8712_read16(padapter, TCR);
 		while (((tmp16 & _IMEM_CODE_DONE) == 0) && (i > 0)) {
-			udelay(10);
+			usleep_range(10,1000);
 			tmp16 = r8712_read16(padapter, TCR);
 			i--;
 		}
@@ -237,7 +237,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 		i = 5;
 		tmp16 = r8712_read16(padapter, TCR);
 		while (((tmp16 & _EMEM_CODE_DONE) == 0) && (i > 0)) {
-			udelay(10);
+			usleep_range(10,1000);
 			tmp16 = r8712_read16(padapter, TCR);
 			i--;
 		}
-- 
1.9.1



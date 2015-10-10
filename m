X-GM-THRID: 6202253257836855296
X-Received: by 10.50.20.227 with SMTP id q3mr3783095ige.11.1444479854739;
        Sat, 10 Oct 2015 05:24:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.194 with SMTP id 185ls1144402ioo.0.gmail; Sat, 10 Oct
 2015 05:24:14 -0700 (PDT)
X-Received: by 10.50.78.170 with SMTP id c10mr3829150igx.6.1444479854234;
        Sat, 10 Oct 2015 05:24:14 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id wl2si602770pab.1.2015.10.10.05.24.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 05:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id ve7so52995631pab.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 05:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=StRS+VDfoqY/EPulSRJclZKaBbi5kDo4+IdVsFHvIuU=;
        b=fohoEUs84FByTzOy7HJSfCY0l5lDT4bTXHTduwhijOchC5fejfpRCf1Je5k2BsEjk+
         GeQ9cnTTc7+9WvYSgPUbRsn1L1nNJxrBy9g0v/KRWqhToWbhSO2o+WnjoQATyveNVe/T
         oELJG90s8EUkx+j9q2/p/utPYmHSnZMeXtf15d3kF4w46vGSrwoSLVvPXzDCit5bOU6W
         AEoogporVjTGRCZn+k4c/8G3gKn/e/pvDz76gQt6NTOCUNVO4FEEvpU5Wm3jmcJOg0wi
         BdMqtIOrzZqPgD1M9mS/JkvKCJWxD4TyCCEu6EiNhDH6m8wAiI0KoKowX4fPPaVhEX5B
         64dQ==
X-Received: by 10.66.102.106 with SMTP id fn10mr22429751pab.156.1444479854058;
        Sat, 10 Oct 2015 05:24:14 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.220.154])
        by smtp.gmail.com with ESMTPSA id ci2sm7962857pbc.66.2015.10.10.05.24.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 10 Oct 2015 05:24:13 -0700 (PDT)
Date: Sat, 10 Oct 2015 17:54:09 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rtl8712: usleep_range is preferred over udelay
Message-ID: <20151010122409.GA805@amitoj-Inspiron-3542>
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
Changes in v3:
        -Removed checkpatch warning of space after ',' occurring in
         previous version

 drivers/staging/rtl8712/hal_init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 15c6160..7f1f21b 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -209,7 +209,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 		i = 10;
 		tmp16 = r8712_read16(padapter, TCR);
 		while (((tmp16 & _IMEM_CODE_DONE) == 0) && (i > 0)) {
-			udelay(10);
+			usleep_range(10, 1000);
 			tmp16 = r8712_read16(padapter, TCR);
 			i--;
 		}
@@ -237,7 +237,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 		i = 5;
 		tmp16 = r8712_read16(padapter, TCR);
 		while (((tmp16 & _EMEM_CODE_DONE) == 0) && (i > 0)) {
-			udelay(10);
+			usleep_range(10, 1000);
 			tmp16 = r8712_read16(padapter, TCR);
 			i--;
 		}
-- 
1.9.1



X-GM-THRID: 6254956616259469312
X-Received: by 10.66.236.129 with SMTP id uu1mr37845158pac.18.1456345574344;
        Wed, 24 Feb 2016 12:26:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.112.98 with SMTP id ip2ls1339950igb.27.canary; Wed, 24 Feb
 2016 12:26:14 -0800 (PST)
X-Received: by 10.66.55.4 with SMTP id n4mr38046548pap.22.1456345573968;
        Wed, 24 Feb 2016 12:26:13 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ff2si711916pad.2.2016.02.24.12.26.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:26:13 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id a7so194752pax.3
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 12:26:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jXqbtjjaByVjgu8XBYKX4/GPWOfkp3w1EoFdz+lxfM0=;
        b=nq1JRfTbSB2BY2ztVz7V+n1oMnrsIj1/NdHyff+X5+KNEX47JM/vh+8klHU4ukDhN8
         IhUkouiEUDSQLapPEMbI5IagfYVjq3Q2kJPxXMm3gUeBmbc/vIUt2gxw04YsyxX3arX6
         HyYFC/e/5yaWUdtDY8+MLXzpDar7z5fgR9I3zVkyEPY/GbrYAWjE70yVYFS+oHuvOli6
         GFZTS68amBZyGM8LVfYIEJQx6eccjz5iohcGuPYRZlsgEvNRD4cyJAptJOrcqzC4urxJ
         QeedJbK6Xm7unFJAlgKB8CLuhkBDVbyHraMdOjD4QRAKreDNmU/xZ5kd+Ah5+BgMDU/e
         l9iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=jXqbtjjaByVjgu8XBYKX4/GPWOfkp3w1EoFdz+lxfM0=;
        b=bOcnuRETearbBrvUB3qSK7tlO7I8fDLUT2qUKxpEEqjL0X2D5DtjUFrrsbLc4kjqoB
         Q/1K00dMvG1aJIQU/4zKr6c/S5aNemgrSSo+C0YMFt/2wDEFTPua66nfjHMNfFfc8xcK
         upmP6xomK4fpVlpeY9hTv00Tr4On9vAVa+DVdik3GEEDqK8TSn/4XBpike45bOHwhUZB
         OW46ob/eZfTMSKSY2supVD6LyQU6RKj8licvF5AXypQYeSXs2TE/5c5EEsl1NoP6Wo4F
         jYo3JdRMpuJ2YvhBYbT2wSr3FRCBsQA5CvKSp6dsAjMf95/5DIkIPzRIbbKlNMGYazxp
         pFoQ==
X-Gm-Message-State: AG10YOT8emA0Eoz1y/FNGf+RqITnnp+4MI+a7Y+Wlx7Wg5Q8QT2E/E0K/OOJxpKB2X57yA==
X-Received: by 10.66.90.136 with SMTP id bw8mr57780524pab.52.1456345573842;
        Wed, 24 Feb 2016 12:26:13 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 70sm6956833pfs.78.2016.02.24.12.26.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 12:26:13 -0800 (PST)
Date: Thu, 25 Feb 2016 01:56:48 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/8] staging: rtl8188eu: os_dep: Remove useless return
 variables
Message-ID: <20160224202648.GA22965@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:
@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/osdep_service.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/osdep_service.c b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
index d87b547..5a90ef6 100644
--- a/drivers/staging/rtl8188eu/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
@@ -41,10 +41,7 @@ inline int RTW_STATUS_CODE(int error_code)

 u8 *_rtw_malloc(u32 sz)
 {
-	u8	*pbuf = NULL;
-
-	pbuf = kmalloc(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
-	return pbuf;
+	return kmalloc(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
 }

 void *rtw_malloc2d(int h, int w, int size)
--
2.1.4



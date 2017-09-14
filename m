X-GM-THRID: 6465665383361675264
X-Received: by 10.55.17.10 with SMTP id b10mr11428557qkh.54.1505405032773;
        Thu, 14 Sep 2017 09:03:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.205.196 with SMTP id d187ls5434137iog.38.gmail; Thu, 14
 Sep 2017 09:03:51 -0700 (PDT)
X-Received: by 10.31.63.210 with SMTP id m201mr13062348vka.27.1505405031955;
        Thu, 14 Sep 2017 09:03:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505405031; cv=none;
        d=google.com; s=arc-20160816;
        b=PbFUVW3m8Brq5GUZ5GurUeXR5AmKPtvAQj323wZAs5EpZu1ETSZRuUrNWyrsXZFIs9
         tiWFSDnRKxqLYNpNP1oY4laeSjqc07QllaaYW2AEktcI4k3UZ5Om+EEXySn88DdLisPV
         E3twJ91JFKKbLLJ0W9hrq3yacznrTyr3CeaYjdf1a2OLy6RsTriKa9vLxYYmNQhpmSN6
         dIPsqauyT44zaVj/BqW2tP9dJcIONNsYjTk83J+yjpwjNT/RNDrwZvvYgB3gDkdBiiXV
         6OVWE1JXXykuAfnXhXLAqh3y2Zgcm4UIJDLmzDTc8Dze9LKpiObwCD76OwTmSYLwYmvP
         cjQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ByYvloWNTNXo0lPqeaYP13ZZj10glE8UBcKkXwUJpuw=;
        b=d2LtQGOCDzieXMz5TEQ89HFhbacz/hj+PLGSn5dkSu6uG6KOWJLHyhjGF3m1d83kga
         n5+LN7oTXh76i2mePUD2f3kyaZy+9SvUklruhjjWFiDsO5CMflHQCHFdlZX7tcJ9dS1Z
         DtNeSJEvJcxJrddlVCScpMa8kvHq+CtQbv3tnGNfD3WvAy5zM/bU09ExZtrj/oYdTNHR
         ykrGptyYSpemwyp/Cd6jRnJDAIALAFH4XvJIFjRmybE6Vv3NzUcx2x52j20/YjHYqjW2
         ZpDo7GM5Z6Ze/HQ4XZNmrTamUDaeFKuNF3B//gMlwLjArkrEWfreNtRXDjGOHfoF2mrI
         lUJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=npW08Ni7;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id k76si68329pfb.5.2017.09.14.09.03.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 09:03:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=npW08Ni7;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i130so1924508pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 09:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ByYvloWNTNXo0lPqeaYP13ZZj10glE8UBcKkXwUJpuw=;
        b=npW08Ni78Ug937hw9NNW6KKuq199xSejKyC099Jf5NZJ0ZiegJfAFSpFnxTZrdR5/L
         ++BJQLO1zdqP93RSTr6Yr8ck0xwcF2uBj2YnawDmNN6lEqjz5E9SK3gYClkmFzeuHc4m
         NAal4DiZ+JksfNQs1wDGsiQiWFxy8IemOlShj/32JMtwMf7cb4wrdKpb2PIbkJrVAGQ+
         s8xxuZ+pxlKX1a3YljncTUraInIZk1WsU/HpsqUBSjL0wbrY1pRi23adL169mCJfBa3o
         S4cnG/p22Ipaxxflagf0Xn7E7rKiVfFdg1JtmCjq9PKdjPXMuQJ+ZKt5o6+at9lNDCZ1
         JCAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ByYvloWNTNXo0lPqeaYP13ZZj10glE8UBcKkXwUJpuw=;
        b=Up/5p0QPhGbJgmL8M17Jpsn6e2FQ6FKrXDag1b11V2RmvHpY1kNRtCtM11Xf6wchf4
         vsdSVVRjYkh9V/rq4AmvhRhp96UUsZT6kTaDevKS+bvN21hA9bjEudbPR5V2W12o/feS
         1ZAHt+n2qji1K8c4RtzzmiJ5laSF0FXdf2lvxtXfEN9jGmx8JtGAyqU3J2cj4VyWBGVZ
         fZrwzQgULmTGy5AHObCYbi4+60f3+NFwBuHwPxqv6FuEo8B9tDYkxwTuJdl9bqDgbTvT
         yUJwCkAdt+bX+y3QiY+7eb0DSF3aZ916d94BYIx8ZQK7nLYum8Mnm/V4Spu6+os7yD29
         4++w==
X-Gm-Message-State: AHPjjUh4o5wnuktCgQiO7sV15wQbYi4vX1diyxLioBZYt9FcKQN01I2F
	tPRYpq+lYJFPyLlY
X-Google-Smtp-Source: ADKCNb5okaHkUoeJl5Y/m391+i+N7R8kkRuceBcyaDKaaiqI6uR2VTqom8HfPuM10nrxVBljr5zsig==
X-Received: by 10.84.138.1 with SMTP id 1mr22895473plo.404.1505405031285;
        Thu, 14 Sep 2017 09:03:51 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id j1sm28562936pfc.169.2017.09.14.09.03.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 09:03:49 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: rtl8723bs: Remove unused variable ret
Date: Thu, 14 Sep 2017 21:31:50 +0530
Message-Id: <1505404910-11548-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove unused variable ret as it is not used anywhere.
Remove multiple blank lines.
Done using following coccinelle semantic patch

@@
type T;
identifier i;
constant C;
@@

(
extern T i;
|
- T i;
  <+... when != i
- i = C;
  ...+>
)

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index ffbb35a..7935dc5 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2337,10 +2337,6 @@ static int rtw_wx_read32(struct net_device *dev,
 	u32 data32;
 	u32 bytes;
 	u8 *ptmp;
-	int ret;
-
-
-	ret = 0;
 	padapter = (struct adapter *)rtw_netdev_priv(dev);
 	p = &wrqu->data;
 	len = p->length;
@@ -2352,7 +2348,6 @@ static int rtw_wx_read32(struct net_device *dev,
 		return -ENOMEM;
 
 	if (copy_from_user(ptmp, p->pointer, len)) {
-		ret = -EFAULT;
 		goto exit;
 	}
 
@@ -2375,7 +2370,6 @@ static int rtw_wx_read32(struct net_device *dev,
 			break;
 		default:
 			DBG_871X(KERN_INFO "%s: usage> read [bytes],[address(hex)]\n", __func__);
-			ret = -EINVAL;
 			goto exit;
 	}
 	DBG_871X(KERN_INFO "%s: addr = 0x%08X data =%s\n", __func__, addr, extra);
-- 
1.9.1



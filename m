X-GM-THRID: 6526221446486687744
X-Received: by 10.55.27.229 with SMTP id m98mr4320177qkh.58.1519504340016;
        Sat, 24 Feb 2018 12:32:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.25.69 with SMTP id g5ls5646590qtk.5.gmail; Sat, 24 Feb
 2018 12:32:18 -0800 (PST)
X-Google-Smtp-Source: AG47ELtoFJ56rMiG1525Ne9TcFxrUBlvnOUemHT01EbXWI+X4v/jOWlz7CwnZJP80O83cRv5fT+A
X-Received: by 10.200.27.237 with SMTP id m42mr4596640qtk.14.1519504338359;
        Sat, 24 Feb 2018 12:32:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519504338; cv=none;
        d=google.com; s=arc-20160816;
        b=pIuq6MpUukXAqd3iFtWszMRaENR34lRBlmk6UJ+xF/J+4ijyOWujqLYChIPGa4PaSG
         +tPyUYN3r1uTVqDu0dg7FE9xbEqiUOQ6fyi6lcgSzT8SUbMvepwwZ7pHisxF+Do0VEqf
         6GIivSKBIQ9zo4mE5aVztnS8e3MvTDT8VUGOe58qpxYVVEXdqsdBt3x+ga23dGLWCOEP
         UNIxdnIEAg9ZNm7x56CsXeZAZda8N5VPzRl4bDYwrTs4kriKcErLRD0ZmOQpGjxoufMQ
         amlhCt7pMtKiKxssjXKQOfO65knoaiRQjlPMqXo/6I7zobIgB9wUy5RFAqoVloAMgxBL
         V0tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=bo6PFBzpA5EjZ8l5N1FNSUxXQftlG/XFBrn2aXjBcAw=;
        b=Y4wxruUByIPNc4rbB5gdOAQxRlNivHmSE1+de9LnP8mycSasCPzbWkAltV7aMy7s+F
         fyhnf6qMN8vJgBX9v8GnWrLuFL3z8Xl6aAqWgRle9Qd5hmV5dnJ5JZGjPvzgx9tGTtJ1
         s8X/ZnSvZNMkAsZ2HoaJ5fRjzHGX2tEKPtFCdLz8oYlmAV/OJ56/kgf9V2IeKqIrkJY3
         UV/gHeirgBzRFnY2+ayOThgIOCuLUEmz/6+0C8MxmcVex1uX6YjF3viTvD4J+fI1JzOG
         Ib0Bb4CF7sdhIq+wHdpafCJYwK84177eWyMwg70nrgrqKF6DyPlJ4AEQEmLE7prX6ubI
         r8/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D84yZos3;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h55si260330qtc.4.2018.02.24.12.32.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 12:32:18 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D84yZos3;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id y8so4684407pgr.9
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Feb 2018 12:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bo6PFBzpA5EjZ8l5N1FNSUxXQftlG/XFBrn2aXjBcAw=;
        b=D84yZos3nCr3TODzCznql8wYtMBXLjcQGLwvefsTpaOigKUX9XYeH2bqUH/iSDixgz
         op17pNIkogwr/vE555XAJb2IdzQ18bcPi4IqAmHSiCYUle+tMR1yhdc4b5FzvefOuqDr
         GsVBsPYN5YWKQWMtLNnRWlY8PH0fSUsgXvtsEq0fPRPMwCLgoMoErwni7vI2JtHM2E9R
         I48OF887RPzN8P7QBb6cncDjtUqOHnv6oR1Ym6erUiDvy492XUoSf01Yahf1k8Z+zC+x
         mb5k1+evb9O1IOT9c1vsRxKZpR0zPAW/MwWfddBOmSLm/PWrm/cuHKOy2ev7JZLXeqW8
         wvVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bo6PFBzpA5EjZ8l5N1FNSUxXQftlG/XFBrn2aXjBcAw=;
        b=KkPkyygxkrP9AcUZ+x9na4qZCRPdVOTFdAHrJdC0sU8ZPMNsOjQxLkwcMTHDVpm9Q8
         rN2acAdJoJcTW4fazz5gpOLPeHFXgr8GMXaq+aRUjh0zICMscHrL8mPsjd9y7JZEyQ5I
         QuOvhO1VC68HDCnPex5C2zkggcWSFdtcu9o8yXrUum4vWaLUqbguK1ZTEdzcbRwkSSip
         VfKyU2Qyekg6zeJ2V/RnldPX05PcQA6D+4i/5Co3v4HaMNFWGGi+/9Q3g4O++pS+oTHU
         PTNe4/DMNNYsbDi9ZLCUCMlErw3gPxoRGT+EFubTU2Zs54ZYIeO/CD8rjCMh643Schln
         wwWg==
X-Gm-Message-State: APf1xPCgnuG+hzYc0TmpwziZDqPY71g+MMKSlktUeWdUyL8d9cTFKD0r
	jcJRMcG5TmnaiqsXuARHLSo=
X-Received: by 10.99.113.85 with SMTP id b21mr4784340pgn.305.1519504337518;
        Sat, 24 Feb 2018 12:32:17 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id d75sm8173188pga.63.2018.02.24.12.32.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Feb 2018 12:32:16 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: garsilva@embeddedor.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: rtl8192e: use structure pointer to get the size of the structure
Date: Sat, 24 Feb 2018 12:32:10 -0800
Message-Id: <1519504330-9936-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Use pointer to the structure to get the size of the structure. Issue
found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index 03fbff0..bd06bec 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -371,7 +371,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 		struct lib80211_crypt_data *new_crypt;
 
 		/* take WEP into use */
-		new_crypt = kzalloc(sizeof(struct lib80211_crypt_data),
+		new_crypt = kzalloc(sizeof(*new_crypt),
 				    GFP_KERNEL);
 		if (new_crypt == NULL)
 			return -ENOMEM;
-- 
2.7.4



X-GM-THRID: 6259745724451258368
X-Received: by 10.129.78.78 with SMTP id c75mr583056ywb.30.1457460626320;
        Tue, 08 Mar 2016 10:10:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.139 with SMTP id 11ls249449iom.103.gmail; Tue, 08 Mar
 2016 10:10:25 -0800 (PST)
X-Received: by 10.50.50.137 with SMTP id c9mr4738105igo.3.1457460625830;
        Tue, 08 Mar 2016 10:10:25 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id r75si687991pfr.0.2016.03.08.10.10.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 10:10:25 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hj7so1627701pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 10:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mEwzHi+sOjV3pGeqwKLuKi4qNzcMYx6Y7pLb/Xv7pnw=;
        b=oiyO9Dr6eDxiA40pbegcJ6l47eQKxvIVVOYVv4UaJl6AOYS8xw+zSGIQKyX+zB/OKI
         dZM/YXOyaUGY+qMXIfWQWb6Wq/iZaAm14kFqrAq3QNk8eguzsw0OF0gZCJsZSUMzy8Ao
         ap85onTPe8GoWFRPAqqVoGga7ymUjsriArOMdkUR+42HRCR+i8vgWrKOyU1HgJzpjKfv
         sMa3KHM2LyCOgHZj5VjVZ7Zsjz/w1kL2iXBRbyMsiPkgTHM7e/RY090CzsA6L3nRoxXk
         +nXB3a6gYo0qie7MH32y1ypmIcDzINZ2ryWtb3rEbi2wEx0bt/xNKrlo6sSHxMZfXy8t
         JgcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mEwzHi+sOjV3pGeqwKLuKi4qNzcMYx6Y7pLb/Xv7pnw=;
        b=ax/PL6eC15RIjIdRdekdPJCkyuRL7fJwGra2bqcVGnp4K2dYaSfPCbYIctPoO97Q+b
         /29QPR6BFj4+t/dVz0HJrrNuI7DfzWsbvPZfbHqzhRGAiJr8CNT0FNGFQ5ck+e8tspfg
         zaezfVEZCLaPD+MWBlRznMImcYj13of97JQ99yiDGWb2Qmsw20aweQp8pnSB7oRgXvVf
         DbZ/0F44lUKX0aFOp7J1fgku9zQkxq7kI71i5pRdUQoVvVd+eOTCwSM9IIw4biAcCPZK
         ga7GfVDBDj146pw0rf2Y7SwxwW91GQp2Qs2zKcDy0uIei5AUyRbSYtx/3ww5s+a8dz8/
         duhA==
X-Gm-Message-State: AD7BkJJszAwu3+s5wgAm8SIph6fMBMoMlCWergInW5vaTC5OIwBh47Q42Me1qvloYTwsCw==
X-Received: by 10.67.3.67 with SMTP id bu3mr43296173pad.39.1457460625683;
        Tue, 08 Mar 2016 10:10:25 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id yx4sm6558133pac.5.2016.03.08.10.10.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 10:10:25 -0800 (PST)
Date: Tue, 8 Mar 2016 23:28:13 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] staging: rtl8723au: hal: Use macro DIV_ROUND_UP
Message-ID: <20160308175813.GA30276@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v3:
	-No change in this patch
	-Dropped the other two patches from the earlier patch-set(in staging/most/hdm-dim2 and
	 staging/most/hdm-usb) that were breaking the build.

 drivers/staging/rtl8723au/hal/usb_halinit.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/usb_halinit.c b/drivers/staging/rtl8723au/hal/usb_halinit.c
index 3c2d03e..fa47aeb 100644
--- a/drivers/staging/rtl8723au/hal/usb_halinit.c
+++ b/drivers/staging/rtl8723au/hal/usb_halinit.c
@@ -736,8 +736,7 @@ int rtl8723au_hal_init(struct rtw_adapter *Adapter)

 	rtl8723a_InitHalDm(Adapter);

-	val8 = (WiFiNavUpperUs + HAL_8723A_NAV_UPPER_UNIT - 1) /
-		HAL_8723A_NAV_UPPER_UNIT;
+	val8 = DIV_ROUND_UP(WiFiNavUpperUs, HAL_8723A_NAV_UPPER_UNIT);
 	rtl8723au_write8(Adapter, REG_NAV_UPPER, val8);

 	/*  2011/03/09 MH debug only, UMC-B cut pass 2500 S5 test, but we need to fin root cause. */
--
2.1.4



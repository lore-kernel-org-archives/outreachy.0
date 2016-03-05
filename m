X-GM-THRID: 6258679975389429760
X-Received: by 10.50.57.17 with SMTP id e17mr4428505igq.11.1457212487229;
        Sat, 05 Mar 2016 13:14:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.241.74 with SMTP id wg10ls402768obc.3.gmail; Sat, 05 Mar
 2016 13:14:46 -0800 (PST)
X-Received: by 10.182.27.101 with SMTP id s5mr10811309obg.35.1457212486819;
        Sat, 05 Mar 2016 13:14:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id yd9si2078006pab.1.2016.03.05.13.14.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 13:14:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fl4so54880287pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 13:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MuHKkNMtmZPfJUsJNTNL0Ihz0BXh5d4n56LCuK2GFZo=;
        b=bvsiG1gIVwdHwxtOFV0VuA6lNB9WtHtOjemiInZhMaZ7ikUVRQR0LuymGJ84QeRaXR
         tD9pZ9pjYd1YFzSu2zv+hc7jUFq6OD/4CZm3ESPw4rPiOHeZYGRjqDFSF89ZvsxAXtI6
         uMkIY+RD7BGkPNJlQvpivAaSYeK6MeqzBHTgdvH+SPTlUxf51qBZv3oNlJjfgVh/NYK9
         1T8yB6G1n/uyABmVMmgzWuF1C7m5BWDa5D7rpO0c4qU3D6Lozt9bV8/hp8/UXs8yz2N9
         ZR5yZBhPrsufwU7StVxILujeajURFx4i/27JS10ICxNeGR3u1OG4sb+lrVmY9FjC7gzh
         cFig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MuHKkNMtmZPfJUsJNTNL0Ihz0BXh5d4n56LCuK2GFZo=;
        b=LuvSyzi8CjBo3rcLUFNgWe907j5bCi0p0YFv1oyo7AuODWd+bsJIy4UkcPYJmjLOlR
         OldpZba8Mhdsf32tqj1QvRyJMMEL/QJNml6FMrVVNzGrnXaWSeLOJUhX0jAMRNN37OE8
         faPju1tfhox0SylpCk02htEaBDu2Q5LsiSV0wyTvqg1DUsg3unVbfQ8DwU4xUIAHaSUL
         c29QKimGBhNw1Dg7uwNqprLj65hQ5mTsKUw7wqMTj6ZrRGAXDQ1+fN8nHhQdOma0XLiH
         nsrNPBJfXZYVGVvcgLh48wa7pabDleweKVtRGfQNIlrlL68Poyt0BNCWkVdNp2X6BePY
         JDzg==
X-Gm-Message-State: AD7BkJLG1FU65XMZw0Y/rLLnpXJ3RFm3MlaQWaFqm+YGP/m8WA5cJS0ots3GHmEmOboPkQ==
X-Received: by 10.66.146.39 with SMTP id sz7mr22566530pab.76.1457212486641;
        Sat, 05 Mar 2016 13:14:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 82sm14293876pfi.78.2016.03.05.13.14.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 13:14:46 -0800 (PST)
Date: Sun, 6 Mar 2016 02:32:23 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Remove multiple assignments
Message-ID: <20160305210223.GA22841@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes multiple assignments by factorizing them.

This was done with Coccinelle.

@ identifier i1,i2; constant c; @@
- i1=i2=c;
+ i1=c;
+ i2=c;

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index b6b714d..6834652 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -887,8 +887,10 @@ static void _rtl92e_dm_tx_power_tracking_cb_thermal(struct net_device *dev)
 			tmpCCK40Mindex = CCK_Table_length-1;
 	} else {
 		tmpval = ((u8)tmpRegA - priv->ThermalMeter[0]);
-		if (tmpval >= 6)
-			tmpOFDMindex = tmpCCK20Mindex = 0;
+		if (tmpval >= 6) {
+			tmpOFDMindex = 0;
+			tmpCCK20Mindex = 0;
+		}
 		else
 			tmpOFDMindex = tmpCCK20Mindex = 6 - tmpval;
 		tmpCCK40Mindex = 0;
--
2.1.4



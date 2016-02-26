X-GM-THRID: 6254956616259469312
X-Received: by 10.182.28.41 with SMTP id y9mr394245obg.14.1456479584076;
        Fri, 26 Feb 2016 01:39:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.106 with SMTP id e97ls842707qgd.67.gmail; Fri, 26 Feb
 2016 01:39:42 -0800 (PST)
X-Received: by 10.129.158.2 with SMTP id v2mr383730ywg.42.1456479582542;
        Fri, 26 Feb 2016 01:39:42 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u66si1943461pfa.2.2016.02.26.01.39.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 01:39:42 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id w128so4415147pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 01:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8jD0xTs8iNGOQ0CBEVRUgMeSk55UYkGTwABs/xYW+Qw=;
        b=UxNpMTTJkMV/j+eY9ojrFPch8CYxST/b7+oTsFTAldHua64G5Z0oTV9aWyzBZ1G5yS
         mc91hh6NTHvG9kX4EjtjnA9+3Z2Twsfe/gL0NsMD5sUEkjWjM/i6aePQcQf2UyaeMeff
         2rCtDLP/XYke8YwqNriSkOfwnAdn0liwtUR6u+iGT21XL+HTkWdwoi4H77cvoh6inBzF
         xkOttj+YV7hnWUw+zH+PKw8HU9m8USiEq0SK+bb/IOoE28iOWnTh5MQCjWGKkUBuXFcS
         d36s+u8ctdH4IKQ53N7vR/xL+5lJHpgkWSg9p1qQO37zP4RztT6o7jRoGoUkP3npZe2a
         L1Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8jD0xTs8iNGOQ0CBEVRUgMeSk55UYkGTwABs/xYW+Qw=;
        b=RwjJpC+JGJm6cDk52IY8ztwjggpMsk8gmrvQzIw/MJqFa4Om7WWumdtiOXJHe1sIAJ
         J1X/KYX3Ad9SOgLjUcWK+3pCmPz6Wqg+7jhxBxiDE9ZKcYwtaCyrNnbStSH154CGyPcC
         Iji58W4BzBAw5wSMOqncgvjN/D8ZvMtrctUlUjOTFmZCeTgbkmgG8bjSajE+i0ebSKdE
         ifC/mwCyRBKxE7vprdu9+LC/hEvk5xkZAm0vPznR7v3bUP+v85B7dB6sPYiyjHEXjBK1
         0HT3+knLKeMVmRK4FGdNWsR8feGZpU3QArUV7tkAxLOaKoJeFD8c7DbtXn3kDlZlR4Y5
         fgMA==
X-Gm-Message-State: AD7BkJL1NY/1oDED5RoduJZdNd8gwkz1z8JNI8DdEnsSwkt9VUhXaXULHOjUH1M0FCkH5Q==
X-Received: by 10.98.86.91 with SMTP id k88mr526810pfb.78.1456479582363;
        Fri, 26 Feb 2016 01:39:42 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ss5sm17974601pab.15.2016.02.26.01.39.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 01:39:42 -0800 (PST)
Date: Fri, 26 Feb 2016 15:10:18 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 2/5] staging: rtl8188eu: os_dep: Remove useless return
 variables
Message-ID: <20160226094018.GA10589@Karyakshetra>
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
 Changes in v4:
	-No change

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



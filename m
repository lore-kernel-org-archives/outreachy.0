X-GM-THRID: 7122168315904
X-Received: by 10.236.207.230 with SMTP id n66mr23102002yho.30.1425834477627;
        Sun, 08 Mar 2015 10:07:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.141.234 with SMTP id rr10ls627656igb.21.gmail; Sun, 08 Mar
 2015 10:07:57 -0700 (PDT)
X-Received: by 10.43.1.71 with SMTP id np7mr16793479icb.15.1425834477423;
        Sun, 08 Mar 2015 10:07:57 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id m1si2151989pdc.0.2015.03.08.10.07.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 10:07:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablj1 with SMTP id lj1so60279979pab.8
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 10:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=VBkQu/PbsvqYfkbczCoVFXmoB+KtxUb1miMATzkgqBA=;
        b=hL4kyO/NFJdlUun+8q15i2QFe1VzgJ7aG/HsHdal21ORbvTLfWUqAMVL9wCocL7XYB
         QNbmR+ZUOnpj845wL9UcpPi3AL394pJlKLnXFh+qDIZC4cqjEglel8Syo3VspiTDG+BU
         wszBNrlxWiVkDXLG9oQgKyswpeZAgLwOvSoYswa/1cr5c4i6PHqhx3Pd7bDx1z3QKrWm
         OLHUkE+GIoZ3UyAeTYfB8OAi7gJVzZvmV6UOpiyTDkP2zm6werInAIJvO9tVDHxeIbZj
         VA6NaI95MY8c/5V/U7/DtPds5iShmG0DLZHmY7RNnA3PJlZj3qbvJe3cr9dZ57ePk9ZB
         9Wyw==
X-Received: by 10.66.152.43 with SMTP id uv11mr43808292pab.121.1425834477325;
        Sun, 08 Mar 2015 10:07:57 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([122.174.223.151])
        by mx.google.com with ESMTPSA id cy6sm15241849pdb.15.2015.03.08.10.07.55
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 10:07:56 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 3/3] Staging: rtl8192e: replace min with min_t
Date: Sun,  8 Mar 2015 22:36:32 +0530
Message-Id: <8af55228b8d4679edc59c0ffda4d8aabc9455b7e.1425833758.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425833758.git.darshanapadmadas@gmail.com>
References: <cover.1425833758.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1425833758.git.darshanapadmadas@gmail.com>
References: <cover.1425833758.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch replaces min with min_t and eliminates
the following warnings found by checkpatch.pl:

WARNING: min() should probably be min_t(u8, network->ssid_len, 32)
WARNING: min() should probably be min_t(u8, network->hidden_ssid_len, 32)

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_wx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index 309cda0..2e665ed 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -74,7 +74,7 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 	iwe.cmd = SIOCGIWESSID;
 	iwe.u.data.flags = 1;
 	if (network->ssid_len > 0) {
-		iwe.u.data.length = min(network->ssid_len, (u8)32);
+		iwe.u.data.length = min_t(u8, network->ssid_len, 32);
 		start = iwe_stream_add_point_rsl(info, start, stop, &iwe,
 						 network->ssid);
 	} else if (network->hidden_ssid_len == 0) {
@@ -82,7 +82,7 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 		start = iwe_stream_add_point_rsl(info, start, stop,
 						 &iwe, "<hidden>");
 	} else {
-		iwe.u.data.length = min(network->hidden_ssid_len, (u8)32);
+		iwe.u.data.length = min_t(u8, network->hidden_ssid_len, 32);
 		start = iwe_stream_add_point_rsl(info, start, stop, &iwe,
 						 network->hidden_ssid);
 	}
-- 
1.9.1



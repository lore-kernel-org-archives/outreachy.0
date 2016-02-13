X-GM-THRID: 6250655488927596544
X-Received: by 10.182.119.199 with SMTP id kw7mr5111710obb.15.1455344355484;
        Fri, 12 Feb 2016 22:19:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.148 with SMTP id 20ls1048059iom.103.gmail; Fri, 12 Feb
 2016 22:19:15 -0800 (PST)
X-Received: by 10.50.70.42 with SMTP id j10mr1552474igu.9.1455344355117;
        Fri, 12 Feb 2016 22:19:15 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id u66si2001122pfa.2.2016.02.12.22.19.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:19:15 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id zv9so408250pab.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 22:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TBcLQHyQHzWIi6bztf4ZoY6toFLtyLeU9d23GhEGpCo=;
        b=fdrAyhfqDPQyqD5yMNj4jqrSvlMJWs9+aQRCNed6YL4yqkd/EvLCYLlOMZ9f4gTPNN
         cUNbzXIgsP9B9XCape1FoXlU0RhlTLUV+Drnz7g82LVXR75w7p7BOoyAQcpRtW5jdThV
         /nNQ9z9JcSmHQrd5riMCxQLrW2Nu8Zt/o6LWkyW0UGyGuy6TmWMqf6HncfRw/ZVXlLMG
         VbCXXe7vVP3Q6VwQ+G4usArty2q+gmx4W1eymb9VLJo82xt6tRxXBwKK1aK9g0/kPRWI
         NWNUB3F2QO2OwYYLWNKs1sWkhPA9oIEReuj9YhV9X7BS+JqoVyCs/JhQ5MohoT5bEWNN
         EbVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=TBcLQHyQHzWIi6bztf4ZoY6toFLtyLeU9d23GhEGpCo=;
        b=EtHLL3DeqqvEkJXd5Cv0ra+cy/SVAjzffTQsvg9IhPP1lZ6nG6IWoxSspz1DERi0NR
         cUyAw1PaDcpOVq6yq3Q60PDbjyDffW8KLB/PBNx61zPTUcewANYFclUavjYJxow7fnDC
         QoQNaDM5x4I2Cj4xLMfVVfuajZDOd+WbqKyVyiKpqplZVj9C8GPS4qSqn1ceoOwrxr4o
         pxHyXxtjYYBZ5PGXZqhfTglM1hClEgQwWlaNaynZRvK2fa2bDSvc0DRjH0vGK+hETrYJ
         bpEIjOY37WNMlm/Sf6RuQc+Y4yiNL7Ot6Vk0QwuQE1ZIuwMckoctuOrb+WjlhQWS9HVP
         XGoA==
X-Gm-Message-State: AG10YOTvd1wI1xmVURu2ZkVFWesdOKBP6owj4nqMhiS2/dAhhRxktoiMVoIZiaOwnYVPlg==
X-Received: by 10.66.222.129 with SMTP id qm1mr7783021pac.22.1455344354993;
        Fri, 12 Feb 2016 22:19:14 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.145.71])
        by smtp.gmail.com with ESMTPSA id t87sm23509330pfa.14.2016.02.12.22.18.50
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 22:19:14 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 13 Feb 2016 11:48:04 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/2] Staging: wlan-ng: Remove multiple assignments
Date: Sat, 13 Feb 2016 11:48:02 +0530
Message-Id: <2edb6b4002cf596af3f24fe0ac863f4134e7beaa.1455343091.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455343091.git.bhumirks@gmail.com>
References: <cover.1455343091.git.bhumirks@gmail.com>

Remove multiple assignments by factorizing them.
Made a coccinelle script to match cases:
@@
identifier a,b;
constant c;
@@
-a=b=c;
+a=c;
+b=c;

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wlan-ng/p80211wep.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211wep.c b/drivers/staging/wlan-ng/p80211wep.c
index e9f990a..22c7970 100644
--- a/drivers/staging/wlan-ng/p80211wep.c
+++ b/drivers/staging/wlan-ng/p80211wep.c
@@ -188,7 +188,8 @@ int wep_decrypt(wlandevice_t *wlandev, u8 *buf, u32 len, int key_override,
 
 	/* Apply the RC4 to the data, update the CRC32 */
 	crc = ~0;
-	i = j = 0;
+	i = 0;
+	j = 0;
 	for (k = 0; k < len; k++) {
 		i = (i + 1) & 0xff;
 		j = (j + s[i]) & 0xff;
@@ -260,7 +261,8 @@ int wep_encrypt(wlandevice_t *wlandev, u8 *buf, u8 *dst, u32 len, int keynum,
 
 	/* Update CRC32 then apply RC4 to the data */
 	crc = ~0;
-	i = j = 0;
+	i = 0;
+	j = 0;
 	for (k = 0; k < len; k++) {
 		crc = wep_crc32_table[(crc ^ buf[k]) & 0xff] ^ (crc >> 8);
 		i = (i + 1) & 0xff;
-- 
1.9.1



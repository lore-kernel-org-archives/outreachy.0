X-GM-THRID: 6263452956283109376
X-Received: by 10.140.102.163 with SMTP id w32mr12755102qge.10.1458323783187;
        Fri, 18 Mar 2016 10:56:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.97 with SMTP id b88ls298030qga.6.gmail; Fri, 18 Mar
 2016 10:56:22 -0700 (PDT)
X-Received: by 10.140.94.117 with SMTP id f108mr12767973qge.0.1458323782325;
        Fri, 18 Mar 2016 10:56:22 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id tu5si1936640pab.2.2016.03.18.10.56.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 10:56:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id x3so177139644pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 10:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=I6ys2k+6abKGql4pX5ZTbkvk7TiuG19t8gclc81lZCA=;
        b=c1bKGljHjD1uJ7vBVg4zE7YuaiaEuw0JIfbR3SgoebqtG0C3DmKgecX+zDawcSRZvK
         z9nPCARuG6tbKt1k+G+7zOJjUIJH2DKy4K11jPKk2F7kR/7Tam7KM5OCvZq222hNfNqn
         TYI/DnSt81soYJccImmw8LRo7LjDIJih1b6piKhC/PVNowBcYNuDukRBQTtEbA17MFUQ
         5y0W1W2jMmj2qY5w74eEXtQpHU7Oo5GtRMrdet3DGN9mKbiaIPsTT+CJ0qG3H99vHNAj
         hrpeTyaSGtslxfx1IJtGEuXYhHIWuBhu9zpK8AuhmDx7xxxxx2rEnOPvLIKL+crf+9Bb
         h6Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=I6ys2k+6abKGql4pX5ZTbkvk7TiuG19t8gclc81lZCA=;
        b=k/8rsq8K/mLHy7TemuJ8qGZRCYC0oXxrFV6FDwC5b3n5lPv/xER7H9A9CeEKLBMhmo
         GE7YuVYwRN6SKET1dKfyC0tx9IqSH2tieH0cfmB9AAfOSuE+yMRiGlvYpxsnKUsItOjC
         0tpbpztoAJHiw6h48cZ/qyQ8cjyOjUMoTSxkonlREn0Ywaw9K+EOMDDSQYwuwmnuhHte
         sGK1H9oh5l7qQdrkkQA9K5Gwil8vkHf9QDXAdo8Dmlws3EybyqoUeckXg0XUq33la6Y1
         L6x06fK6RA2RxFj0rnQE0oeKseKqgc1k8+3if4GsQc9q4FSyvPKomAhRarPnt9cUV9iP
         Fs5A==
X-Gm-Message-State: AD7BkJJWZhgNXOUDVy2q3wKfGllePSDNXue6DVkJWpQ6EFRwW0xaUgWkJ17DjUAAXnkdSA==
X-Received: by 10.66.142.168 with SMTP id rx8mr25785949pab.14.1458323782138;
        Fri, 18 Mar 2016 10:56:22 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 79sm22458188pfq.65.2016.03.18.10.56.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 10:56:21 -0700 (PDT)
Date: Fri, 18 Mar 2016 23:26:18 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: rtl871x_ioctl_set: Remove unused macro
Message-ID: <20160318175618.GA17090@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Removed Unused macro IS_MAC_ADDRESS_BROADCAST.
Grep'd to find occurences.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_set.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
index f772675..56760cd 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
@@ -34,12 +34,6 @@
 #include "usb_osintf.h"
 #include "usb_ops.h"

-#define IS_MAC_ADDRESS_BROADCAST(addr) \
-( \
-	((addr[0] == 0xff) && (addr[1] == 0xff) && \
-	 (addr[2] == 0xff) && (addr[3] == 0xff) && \
-	 (addr[4] == 0xff) && (addr[5] == 0xff)) ? true : false \
-)

 static u8 validate_ssid(struct ndis_802_11_ssid *ssid)
 {
--
2.1.4



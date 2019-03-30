X-GM-THRID: 6674267883353145344
X-Received: by 2002:a1f:3c0a:: with SMTP id j10mr4809467vka.17.1553974105142;
        Sat, 30 Mar 2019 12:28:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2743:: with SMTP id a61ls942440uaa.0.gmail; Sat, 30 Mar
 2019 12:28:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyLcMI7/R8RfmXYk/fYXcCCAWYG3GGBVpeCEbFpnXbH3r1Jj3zbxJwgsSe226WfTyDzJuKi
X-Received: by 2002:ab0:1d18:: with SMTP id j24mr5689578uak.6.1553974104646;
        Sat, 30 Mar 2019 12:28:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974104; cv=none;
        d=google.com; s=arc-20160816;
        b=0rX9Ukvoq3Y1ghry6o2DOKDhpBuSU+W4QJMgDXOik9oLwwyPq4r49zxtanCqqaGgfT
         Zkhp2WoPGXAzwfCmTDTft2UTf5fq58vwNS8l4TnMrk9TBY1ElhBIAAYTE/u76B7zFDNo
         11KMgXiz3muBl1Nw4Ffl3psuB/dE2bHFOIp45a9gR482LOV97qIgZe/KrZWqvyydkNDd
         S6oAGXPYzVRbgBRvnFDwMpnYsFSj+0RTpzCPLDrerXnbQRJxBXzeng7RWD86uULxNd/M
         zHROOph2511+nw1bG6JYTz479rxcGfNr9Ijbq46Hvt7UCUoeRz0WvpSyB87Na1pnYR+8
         6ouw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=qUT2xnWdzsxjwJ/AekHXnnpT/3kVFPaZ9ZzIFwiw4iE=;
        b=GBgfLQgxwaeDAp05ziLdetFxJrcDq4Ijv3GXN5BdDpyJt2mqfbQ3QbKBHf2VpJ3nll
         ahNC+IC9ok2+uEnEQW1Ho2+9VLsLe3sWJI3woemf/Y4IzNhUMk88EPwNIy8B3BNkm3Kb
         okbGOgQglEtRP+qifJPWRnokHkwVsjOYhAm356w6Oq5aYJXhBK3PiZWkYIYqkDrGlH2i
         gamRIKwH+B+Fg09GibUBq1e2ZOL+HAptSrXFLBDwjPQ/pKfyzbbk3gBDE8YRs7CgUBPI
         mIy/yt780KHddUjZjpAfRIwQ70lqYTo1ZUhjJc69wkTfqC87H1gjwsdOFWXrC+rsPNSV
         EeIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W6zvr6AY;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id k77si337227vke.3.2019.03.30.12.28.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W6zvr6AY;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id g8so2774428pgf.2
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 12:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qUT2xnWdzsxjwJ/AekHXnnpT/3kVFPaZ9ZzIFwiw4iE=;
        b=W6zvr6AYv4k2jsrzadWKzwUNx7Ausj1h+rHvb2D1PMg5R/Vd5c+Ad37mygBfaQN2ve
         R2yA9Ybs1an0ly7Pc+NyKPcD331jyR9HJcGE4K0GMViMbcmyktyZdf3qraKfJgpqN2Dx
         p/fiR7/gtthJsnjAOJExiaKbuVD0+GTLpoIqIA4u2lHilg7ubY/2pY5Zb/QiZVmKdScA
         R7WgDJVNoWbpXT8uOE36nuVvL14MFfN7ldZ2ZMGGhK7xVfj/LAzz4rB0RZwpl0vwKppF
         PKb7+BOvrJR4G97d7YX/HibLnwV+LLZCxQR3Jn2EE/bS9iW6OVzSS8xrul4B16jhRmVG
         POnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=qUT2xnWdzsxjwJ/AekHXnnpT/3kVFPaZ9ZzIFwiw4iE=;
        b=Vk4lr/fjOzYnzQMr409t5GYkA2I3P7TxQQ6HxK12jDxugdGSgKzjPOEzTN2N2wH0o9
         lo8UvV9/HW1UciDuVSJbpwXAt/pkaFiWApGliC8DLxqBQY8vGc2U+YuYd20bkX8WNPPV
         swoW09/VxkQhQUrcrrdZweSzhbARaknyBsSIhiqeujmIoX/tWDcUFqs1wdvrli5N7HGS
         njWXMvvE0X+AMcqZPwiVEQ9o79mFtRHB2BKR3TUcaVhy9E4JUdED7Vqx9bvfNWxqwwrL
         BOrm0zpmrpEew0R00c1NVTKAlLQSm9aIGx9xlizuGKPZbtnkPAOIdJC7Q2VL3ag0BKmC
         PxdQ==
X-Gm-Message-State: APjAAAUIsR5LfCCHZf2C0H3BvfLjvnJFKjsmnpjfAT5LoDXdpNwEFYIy
	bIPYwZYyoV78JNVyTW1ILMU=
X-Received: by 2002:a62:e518:: with SMTP id n24mr35439796pff.174.1553974104193;
        Sat, 30 Mar 2019 12:28:24 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id m2sm7984189pgr.74.2019.03.30.12.28.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:23 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 6/7] staging: rtl8712: remove unnecessary NULL check
Date: Sun, 31 Mar 2019 00:57:41 +0530
Message-Id: <20190330192742.65250-7-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330192742.65250-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>

Remove unnecessary NULL check for wlan_network *pnetwork as
container_of will not return NULL in this usage.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 1a15c45aa83b..be44c6b2819b 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1119,8 +1119,6 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 		}
 		pnetwork = container_of(pmlmepriv->pscanned,
 					struct wlan_network, list);
-		if (pnetwork == NULL)
-			return _FAIL;
 		pmlmepriv->pscanned = pmlmepriv->pscanned->next;
 		if (pmlmepriv->assoc_by_bssid) {
 			dst_ssid = pnetwork->network.MacAddress;
-- 
2.17.1



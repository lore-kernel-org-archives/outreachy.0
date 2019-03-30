X-GM-THRID: 6674267883353145344
X-Received: by 2002:a25:d956:: with SMTP id q83mr1248591ybg.79.1553974093767;
        Sat, 30 Mar 2019 12:28:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:8303:: with SMTP id s3ls334772ybk.14.gmail; Sat, 30 Mar
 2019 12:28:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx5oD7Y39tePx+yXV0usK8wv4LLSSGWhHIWLamkwkNblT6Ng7d0qWsXRhBqBUvUsR8YHrLA
X-Received: by 2002:a25:3b0c:: with SMTP id i12mr717747yba.68.1553974092812;
        Sat, 30 Mar 2019 12:28:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974092; cv=none;
        d=google.com; s=arc-20160816;
        b=mA6fZwel/btJ+eersEcob+PQNx0p3TJQS9tL7I+9Hsag7PqbgelSCwvM+tJFnAkKpR
         mRjwX4YKboPRtnkjeQxEqmFqBIS/r+aRuh6JcMgoc5c68LrQq1wIZf5T7xOxZHBAKeZE
         f8qYfPgpTMUFYQ5JyQxVmNT7tYgHhe0nyEayYeOnVOcVrWLPecsfMV+yKAzCTrzwEcN+
         myZNdac0sO/FVD49QxG7QVp6PXXci9LW+cz19mD222Vw8P3iqkh8UWwj4yZ6KKRm7T7v
         AvUJV1isR03zIxivGeniqbNYREKMnckALUghT1nLkV6o7w8fOmQ9KTV7OZrP92d5UR5K
         hVaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=0lwOHzuhieRYMRze4KZqK0DjlGru92jX/p0Oe1Lv80M=;
        b=O4EqdRC+z4R6LrVQInHfRWXTZrZlUddB1KNPtnXOx+kYC4tRfu9Hmc8bT0lWpn0N0c
         js1rmn0EwHdKx1G+a1tiXG8KYUz8eu6vadVK/wOti0d6uSvmf6HrKpbGAvbaaRKi4T28
         /gzAe2Z1BJBQsQhYycrMoXrOPM3fve2aaKNbV0mDnVkT4ghSqo/CyNQArY6a6v5dHIgp
         gJPUSEFpQLV3FIw4v+uw8TOxGU7GEol8h1NZXhcObmQiMcom1zGJWqehi5ul90cog1h6
         Wg/CzaRS7Y6FNfXN0SHlRvma56IO8CwM5v9JEKlReNhbpiVou42IOoLhIN+ekQmmmQK3
         N2jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n5BkgpL2;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id r83si39488ywg.5.2019.03.30.12.28.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n5BkgpL2;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x529.google.com with SMTP id y3so2750307pgk.12
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 12:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=0lwOHzuhieRYMRze4KZqK0DjlGru92jX/p0Oe1Lv80M=;
        b=n5BkgpL2Do5fmTcsBtnNYCgoo2E5dfFvLGYXAq7lFsB0Iyy5VxEXNWXMXY96HWKC0Y
         OFcHSQ0STLs76iPoTYHMRE5GqKvzW0f3EadvnnbfTiowtorRyBJIw3rr7hg3gkr0Dax7
         5XCcWIoFDBxhPGTbqqavpSZ2Ea4GATyzVK6/8fvGce4HprYdGLmoAkRAGNfX/fCtWlTw
         s2quLTB5MP1MlPx8vUSY8AqgbjN1pOci8FemR6Q5Hvp8l/d9DgIcLZBMaT96tmJZHV0r
         AKIvTjuCmyZbMV1u9lKL8Ln9aADkCWGzSeW85S0mLPHfF6Uwieoh7M9vPiJwg+132hXR
         BAgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=0lwOHzuhieRYMRze4KZqK0DjlGru92jX/p0Oe1Lv80M=;
        b=E3Mt6t7TnCJNe7L23HRqpdDJys7N0IDZcUgJ8ibaTkz4DQwVGI9pIXeK2Bd08EEi8F
         VvkwC01lbaLEyAQvj4DUfJ3ahwh2M4Nku+2g66jLU2UIpVFboZrRfwDmooPqKszzLxV1
         92uADY/XhUp0vTeBkUmCKjeRQElmMa3+RoLB5IQyp35drVoHmg5592hn0aZOzCuvd2XG
         MUyZOFRGnUz4KrbxNG0O08W7hhqDWgK1ecH5EhwA3mq+u/rcsRCPifWwAD1JDWgfDs80
         ThEOoGYmGgpq3NNsd+ClqKYhw6zFxRbz3nMa8vC75BXMI9wqZBxxmBhw5QL78K1fhEj3
         or4Q==
X-Gm-Message-State: APjAAAV0g0BdyW7a0G3DM5RSbtAKG2uchAAocLJ/GZvc6euhtlOdaSPa
	/wl9kC9Ig18M114aOri7MN4=
X-Received: by 2002:a65:6148:: with SMTP id o8mr11765381pgv.153.1553974092393;
        Sat, 30 Mar 2019 12:28:12 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id m2sm7984189pgr.74.2019.03.30.12.28.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:11 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 2/7] staging: rtl8712: use list_for_each in function _r8712_find_network
Date: Sun, 31 Mar 2019 00:57:37 +0530
Message-Id: <20190330192742.65250-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330192742.65250-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>

Use list_for_each to iterate over list scanned_queue->queue in
function _r8712_find_network().

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 9bfceaeaa05e..6912d73e8172 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -141,9 +141,8 @@ static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
 	spin_lock_irqsave(&scanned_queue->lock, irqL);
 	phead = &scanned_queue->queue;
 	plist = phead->next;
-	while (plist != phead) {
+	list_for_each(plist, phead) {
 		pnetwork = list_entry(plist, struct wlan_network, list);
-		plist = plist->next;
 		if (!memcmp(addr, pnetwork->network.MacAddress, ETH_ALEN))
 			break;
 	}
-- 
2.17.1



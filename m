X-GM-THRID: 6672800566949707776
X-Received: by 2002:a2e:91c4:: with SMTP id u4mr277480ljg.29.1553632450796;
        Tue, 26 Mar 2019 13:34:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:429a:: with SMTP id m26ls2033997lfh.10.gmail; Tue, 26
 Mar 2019 13:34:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw//kTvUFNxWxyHi/qXHZ/KsgohhHTWkT8sG1PXccYrN/lI5HIzj4mbuQCe01wbrrdvq2qw
X-Received: by 2002:ac2:54b6:: with SMTP id w22mr305022lfk.15.1553632449871;
        Tue, 26 Mar 2019 13:34:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553632449; cv=none;
        d=google.com; s=arc-20160816;
        b=swxhqKpHR0/1hS/jrRJORNtCnZjkZQg6Cc7sLZIoiXDdXyvMbvqPzI3ieRQZullVQ2
         Nf1T6DVtpAF3+xak9sr90XO725MZ4NevI1pW5XPHZK3a+TYyPtD/Or5W7X/0YdVB3thB
         gb4RL0ZhftwRPs0KD/zpx4CWs+O0gGMJ5IQ2iNhMF0/o5AkCvIaLVeUq1V9xL7mLtCv1
         6GCZx8bsfcQUoOZFY8uu+YpUGGMWBEmsLufrjp8gayr0KicG//uLlFhrNbeyNCNFCwQL
         4CurW9vjIl0s0tWQY5puf7/760PKetX8yCMSlFZatF+OLFidxlWeV/u0cJqHihBu8X7P
         i6dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Cfx5CoCwJRRWrndyiNY9lMd3HLHS82p+JeITmzjr0R0=;
        b=YqY+ZnhcI74MariSd6RCqxNVNcsCfkehbgDtZzWmRcMAJhVqAHYfRnXFlN9ZoHjigB
         n2mv+Rh07VFd/5eb0Y00oUM/Qp7QXZam08bRHFNitsRovuQoEJIwCTlwVsCa7Mjsxg+D
         fdFCqmaM5WXmfd035UyivgkCfSsSCDYwTMMBhFK+D8LivflcsD7msTcoOT6v5hAtTAmY
         3t9t6dfVTuvsgBHyw/ePgN8mEr+RSR2ct24YQUyZpFkAr4y/zSNnby9YG/KXl4uJdNmx
         pcChsW4PLek+bFSNbBN7+bvGSq9BvuXA1D/pXGol2lZN09thd01B4m539tdr5AnZ8F8I
         hbZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=trknJZq5;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id t82si192691lje.3.2019.03.26.13.34.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 13:34:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=trknJZq5;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x436.google.com with SMTP id o1so15927211wrs.13
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Mar 2019 13:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Cfx5CoCwJRRWrndyiNY9lMd3HLHS82p+JeITmzjr0R0=;
        b=trknJZq51zeAlbf4xL/TKEGNBa08K8zkSUk8hfn7KT654XQwOirlmh39yXsdt6vKlv
         7ZTZGAIxC/zduUcY0x+CphsxeSGSKC9mKLp9tnY/1iPx9fVrKl7rqtuSQEO3q7H69FK8
         YJuhqmPr1codhlmhiZU8tjcq2wvVrKeJE5aOkPOseDH95vpGRjy2GFfrHqrPLwUBhOq3
         /NSgMyawJEuoCd9tvLFC30oPFRdmC8ETE83xs/Y+d1pvso2o9ULt6/exkRlaAbUHsaJo
         EYEH95LlaS5tJO/NIWy6/rwudMFdGuqIMN/Z4VOTh0JNk1b+IydGINCNJygxjHw7DUYs
         SKCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Cfx5CoCwJRRWrndyiNY9lMd3HLHS82p+JeITmzjr0R0=;
        b=kpPeI/xUNtVIVBET2JoChTWl6seZugT9ZL5ySKECdUx0CY1/XqcY/zgGTjehiX/ykL
         CNn0sRgBzAZiqlBraUhs49q964Lt8H2iyaIF0mWFR/w3DvB28/d/oVtc6MhzXyzSigtq
         5nax2qUhfndElZ2le04hv4juCy9LDwe307fJeZm+qMWK2V1S52cOirV2Z17nF1iLgL0c
         kDg6dDc2TEsxmQ0J89xMQAj8fLHybuyttW7B/TKsK/vf72ly2KM8LtjYt0XUjq+QBC/t
         JCEIoAL5ItoMcZh1CqSeER4Db/0s9A5X/QmOLjanLryCjoy/CcymawSDyMZReSohxTym
         V1aA==
X-Gm-Message-State: APjAAAVrgSQa25hxsLLZtbNeR9/dCpE1OFUoh0rjPTL+OfpDoi0BOcZ6
	HupcPhI6zyv7F4O1x9BYHSCKdStD
X-Received: by 2002:adf:b601:: with SMTP id f1mr4310870wre.158.1553632449450;
        Tue, 26 Mar 2019 13:34:09 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id e193sm45600814wmg.18.2019.03.26.13.34.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 13:34:07 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH] staging: rtl8712: Use list_entry instead of container_of
Date: Wed, 27 Mar 2019 02:03:49 +0530
Message-Id: <20190326203349.9048-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

Use list_entry() instead of container_of() for conversion to
wlan_network.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index c666e038f43e..5b1fc327fbd2 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -142,7 +142,7 @@ static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
 	phead = &scanned_queue->queue;
 	plist = phead->next;
 	while (plist != phead) {
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 		plist = plist->next;
 		if (!memcmp(addr, pnetwork->network.MacAddress, ETH_ALEN))
 			break;
@@ -163,7 +163,7 @@ static void _free_network_queue(struct _adapter *padapter)
 	phead = &scanned_queue->queue;
 	plist = phead->next;
 	while (!end_of_queue_search(phead, plist)) {
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 		plist = plist->next;
 		_free_network(pmlmepriv, pnetwork);
 	}
@@ -290,7 +290,7 @@ struct	wlan_network *r8712_get_oldest_wlan_network(
 	while (1) {
 		if (end_of_queue_search(phead, plist) ==  true)
 			break;
-		pwlan = container_of(plist, struct wlan_network, list);
+		pwlan = list_entry(plist, struct wlan_network, list);
 		if (pwlan->fixed != true) {
 			if (oldest == NULL ||
 			    time_after((unsigned long)oldest->last_scanned,
@@ -371,7 +371,7 @@ static void update_scanned_network(struct _adapter *adapter,
 		if (end_of_queue_search(phead, plist))
 			break;
 
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 		if (is_same_network(&pnetwork->network, target))
 			break;
 		if ((oldest == ((struct wlan_network *)0)) ||
@@ -1118,8 +1118,8 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 			}
 			return _FAIL;
 		}
-		pnetwork = container_of(pmlmepriv->pscanned,
-					struct wlan_network, list);
+		pnetwork = list_entry(pmlmepriv->pscanned,
+				      struct wlan_network, list);
 		if (pnetwork == NULL)
 			return _FAIL;
 		pmlmepriv->pscanned = pmlmepriv->pscanned->next;
-- 
2.17.1



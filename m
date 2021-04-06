X-GM-THRID: 6947727064751407104
X-Received: by 2002:a17:906:24c7:: with SMTP id f7mr34181782ejb.473.1617724699182;
        Tue, 06 Apr 2021 08:58:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1488:: with SMTP id x8ls1815039ejc.3.gmail; Tue, 06
 Apr 2021 08:58:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxdVVwSDZj5HnHZ7aap+5FLC2EGZd3LXyc91UxfoNIaM/KOhoIDKYYt8nxgMLQYKZuanD+I
X-Received: by 2002:a17:906:1408:: with SMTP id p8mr34162325ejc.89.1617724697693;
        Tue, 06 Apr 2021 08:58:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617724697; cv=none;
        d=google.com; s=arc-20160816;
        b=HmdqCGAgCE3g42ct6ZHbTfZG6iw1KAl+CqM5sIgvkRNKy8qOt51mwQqKelbSUIvbNu
         mwgNqtlA2kBcPyXSiTqVrKiUsgiahjsEefGD+6mAdREpPpjOStfU58dQtO1mp2y+Bucg
         U3Y5w+1pfpxtHe33vjoWGZJHwt5eCk1BxYYuCxha6NJg6C0f0FCMR71eQhqpawKCkRP3
         HGU1/HgD2shqCGr00vcUS42YEI1Flg5tgB3Hn/bn6RW7B33KaFgp7tbimMQygdOju/Tj
         ULl5v6tFbnghY8qt8e0S9q9/1yDC5xNLXCQM7EBYTEaoD80Et0qWccPgKveto4MHIpBZ
         z54Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=rJVOsPOpPhvCUvR1+VHBhDpILBtur99NXP6x6WnJpx0=;
        b=jF+Z8/1odc8AG6MLU9EvVS//RjYL67EPX9TPwLrcMSz2/ZIP/uRHD876p78ur/A9MR
         0MrzojiHNQLrMLYaHU40qN7T3m7UzAR5nyhzzVW+FS3xGMvxdDbprhkbt4fTGb/kMFzK
         wfzSr13zTHl2thgdl9aICgcqyG74D+iRY6ooI0xwTqXBMHM6u1j2srEbIs/bEMFnYPIY
         G3ZQGedBpt301gW/gontV65d1ywyNS1yAo4HySEswjxyyDwXE8QGWqA1Mtl5mm8atFmv
         +4fo8av4slNzW4acoolJ5CAeh3/KnmbIiCj0lVw76m5y3ZpTnMxFT2VHs7/JhrmFjTxo
         LaJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tZVerhjv;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id ck26si3006653edb.1.2021.04.06.08.58.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 08:58:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tZVerhjv;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x433.google.com with SMTP id i18so11334537wrm.5
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 08:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rJVOsPOpPhvCUvR1+VHBhDpILBtur99NXP6x6WnJpx0=;
        b=tZVerhjvml6oRiaS0NFeGshg/9K5fZet4K8K6R2oIVFt21ysMu4++4OtjxKrLlagqs
         OUgC54isLnwPHxX/omg6M+hrXW1ZMZtOLOeknH6nW7mMo8e8VHnfwUJnPpLB9+mCLOzr
         9tUL36yQdYijp5cKfO0EcqZVznYDo7AHcQEuTC5G9OFtjxi3YQJTxBrQaLloYTCNnfBc
         jhsKHI2/tGBw/fM/yD5cuJphuaER+AyZBh+eJG9+mLj6JwiD/5uzsIGAj6V1TuP1qrfE
         wEg6iiUPHRsOIlPknMonrD8jD8lRCytIwZdnNPHLwFahJQbKbTckmzWSj3TLnf9IgugO
         Hd1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rJVOsPOpPhvCUvR1+VHBhDpILBtur99NXP6x6WnJpx0=;
        b=lqNBDOWpH8RrLtd4z1oPRIdE+3X9/Fyq73tva2xj2IuV5AunwKrRi744n/xM1m3MIk
         SEnwTovF7gEVRKryVjFQ2Qd5APprrkHvQ3//gJaXsOzyhv75u8ZG0DE9xlzefrqqNn45
         S57VgyXUPURt4O0cvPqsEfJt1ff18ao1ifG3HOv7XNSYXXV71K/uXfCOlsy7f1XNVBwT
         iHb556KGK6lKSYslDIJavmgEsiq24JfOcqRHStQKjTISsh02JgSukmiYgP/ATlGOgYeC
         BkFLNnJi3RODDyVipIY9VI8HoADr8v80VcpP2fHNkH3gA4oP1UflS0QX+kfhsNe1TK/F
         Mzww==
X-Gm-Message-State: AOAM533Zw5gTighZpGDJzu0zXsZTmA6lseZ0G0mYOPcuw9AgaJwxtmky
	mJnDtLRynTQoFPgVooBLo+s=
X-Received: by 2002:a5d:6852:: with SMTP id o18mr35818377wrw.173.1617724697503;
        Tue, 06 Apr 2021 08:58:17 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:ad13:af9b:f63b:bc4b])
        by smtp.gmail.com with ESMTPSA id k7sm23219508wrd.24.2021.04.06.08.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 08:58:16 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8723bs: core: reorganize characters so the lines are under 100 ch
Date: Tue,  6 Apr 2021 16:58:15 +0100
Message-Id: <20210406155815.90271-1-martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up warnings of "line over 100 characters" but avoiding
more than 90 characters in file rtw_ap.c

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
Changes in v2:
	- revert some cleans up warning previously applied wrong

This patch came from patch series that could find in:
https://lore.kernel.org/linux-staging/cover.1617641790.git.martinsdecarvalhobeatriz@gmail.com
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index bee4f83a6db7..d65832b06444 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -278,7 +278,8 @@ void expire_timeout_chk(struct adapter *padapter)
 
 			if (psta->state & WIFI_SLEEP_STATE) {
 				if (!(psta->state & WIFI_STA_ALIVE_CHK_STATE)) {
-					/* to check if alive by another methods if station is at ps mode. */
+					/* to check if alive by another methods */
+					/* if station is at ps mode. */
 					psta->expire_to = pstapriv->expire_to;
 					psta->state |= WIFI_STA_ALIVE_CHK_STATE;
 
@@ -309,7 +310,8 @@ void expire_timeout_chk(struct adapter *padapter)
 			);
 			updated = ap_free_sta(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
 		} else {
-			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
+			/* TODO: Aging mechanism to digest frames in sleep_q to */
+			/* avoid running out of xmitframe */
 			if (psta->sleepq_len > (NR_XMITFRAME / pstapriv->asoc_list_cnt)
 				&& padapter->xmitpriv.free_xmitframe_cnt < ((
 					NR_XMITFRAME / pstapriv->asoc_list_cnt
@@ -375,7 +377,8 @@ void expire_timeout_chk(struct adapter *padapter)
 			if (list_empty(&psta->asoc_list) == false) {
 				list_del_init(&psta->asoc_list);
 				pstapriv->asoc_list_cnt--;
-				updated = ap_free_sta(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
+				updated = ap_free_sta(padapter, psta, false,
+						      WLAN_REASON_DEAUTH_LEAVING);
 			}
 			spin_unlock_bh(&pstapriv->asoc_list_lock);
 		}
@@ -1117,7 +1120,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 				*(p + 8) |= BIT(7);/* QoS Info, support U-APSD */
 
-				/* disable all ACM bits since the WMM admission control is not supported */
+				/* disable all ACM bits since the WMM admission */
+				/* control is not supported */
 				*(p + 10) &= ~BIT(4); /* BE */
 				*(p + 14) &= ~BIT(4); /* BK */
 				*(p + 18) &= ~BIT(4); /* VI */
-- 
2.25.1



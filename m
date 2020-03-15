X-GM-THRID: 6804292371114622976
X-Received: by 2002:a2e:9c9:: with SMTP id 192mr11800901ljj.77.1584247772014;
        Sat, 14 Mar 2020 21:49:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:211:: with SMTP id y17ls2621793ljn.10.gmail; Sat,
 14 Mar 2020 21:49:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtqfe+/a6A3YRIzQzPFkJVrbOMx21wp8EXd3w2asU8JNXaoFTKBEFpiEjpp22u7YUsMmQvF
X-Received: by 2002:a2e:9ad1:: with SMTP id p17mr13203428ljj.26.1584247770613;
        Sat, 14 Mar 2020 21:49:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584247770; cv=none;
        d=google.com; s=arc-20160816;
        b=r+hQccKMZdxJCUiCl11ZoJHGr8034Gi2BW1jkMzr2dSrn13DkjFUx+GbhH9yQ+z8KZ
         Oj2iozorDNe7M82ZM4zUqpwcXEIXaoK7PHzj6IdpBnNHmQy9mUxcXwiDrUz/5x+wHrWC
         e2HGK5Cf2Oh2jr4wn4FTWL4nJdamDMvp3qKo+L9MDi8O/h5sMRApFFpg1yyl7KGnTnDM
         BzPGPL/TN1s3DnIPkZ0q7JL00AUmNVrN45DJ07OFZiXjWXzhAOPSl0O9+SoXKVskq6WM
         GcQ9nxYoF+aO7IDJPo1a7/dlzq4KIfLL7EzwSf7e6JB6lc3qydLNCG7CpXG7/RFeaYKl
         7anw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=GD1Ffr5dVA5gMXyWCXEEzbpO2xWAsFANvKnkwZ3oEuk=;
        b=F+0lJRCiT3Qj3A14GqlAP79Gh1xfUxUNV26xiITPxKQ9LsC33xB9IIfMVdu5J8+aml
         ouEsizZ1l1sYSLesLrn40DEdwpDpz0cHMbgXAF6nWKhI0/aaFo/+VOzuO1S/XWHHWTl5
         Fj4yhGEg7N4WWdDrJIDZoZrJHs/2r6DVlp+5Mq18sILbTbr9eQZN/C6ERTVnm7JrPL3m
         QeYnO/5W/lDwhyItHRHWyeJ0fSRAbPtjpZFSwqATq61pJBN7Bi15lRtPqb1dLeNHWKWM
         PdEbvlG1X7FwAyRQk/ZEkR90hAfYJk3mxl7ANwEGjU8YZNNPYFr4CtIOQGEg6OLyDgPM
         Xqqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=VnwUnA3G;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d12si622223lfi.2.2020.03.14.21.49.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 21:49:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=VnwUnA3G;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x441.google.com with SMTP id z15so17062352wrl.1
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 21:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:subject:date:message-id;
        bh=GD1Ffr5dVA5gMXyWCXEEzbpO2xWAsFANvKnkwZ3oEuk=;
        b=VnwUnA3GhmBM1qRT3wG7Xtq7JSHNtnSifs0sddIM8DsT062ussCuoe24VcIJjvvgzS
         3bAXTbphlGjGFpqnPMsYLTYtVXqma/xxsFoy3ocR8Ib4QPqNONr5TffssARQAGtkAzP2
         JEWQkzFUO0ScaJvTGoWpEyQl3zfjpXdoI12Oc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=GD1Ffr5dVA5gMXyWCXEEzbpO2xWAsFANvKnkwZ3oEuk=;
        b=mLrmVKtBa6WDgO/QSRm7pGMz7+pVA3PjpvC+dTW9AgMw883oS7Ds2y5Mo+WIGPm5am
         7c6n6Gin6mrzwJso5MmRoGgqE3HiabQKIbGvbZtEXsm4XdyJeXMciGbzI1yODh4twXiQ
         MQ4P6ajDykh8VCsD1nZIaNhcNo7QOnKLOJNEtOl6Ktdds+P+HEz3VqhRLZgkco8I17mP
         bgb9fZFDclhaMaYt0HWkDc4Rtv4Bmr6iOJXffJZqx8bd6nchSd1t+3RW143adQSugent
         xeCKxkaqxOIk41YPRWVd5I7PxhCYBq8oXv5g1h7FA4qko3l8soFjSI6r8T/ogG3bKoFW
         K6MA==
X-Gm-Message-State: ANhLgQ0h/g2z849UvqG+SS4l581Yx9W3PP/Ul2lra6OLnUywE8AGQR9U
	DTqGgnmEe9F+0Vas8bpFsAivWJ2U/pqZiA==
X-Received: by 2002:adf:f5cb:: with SMTP id k11mr20446925wrp.214.1584247769698;
        Sat, 14 Mar 2020 21:49:29 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id f15sm12386065wrt.9.2020.03.14.21.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2020 21:49:29 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	jerome.pouiller@silabs.com
Subject: [PATCH] staging: wfx: remove unneeded spaces
Date: Sun, 15 Mar 2020 05:49:22 +0100
Message-Id: <20200315044922.14249-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Remove spaces after type casting operators in order to comply codding
standards.
Issue found with checkpatch.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/wfx/queue.c | 2 +-
 drivers/staging/wfx/sta.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index ed6dc8297738..39d9127ce4b9 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -540,7 +540,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 		skb = wfx_tx_queue_get(wdev, queue, tx_allowed_mask);
 		if (!skb)
 			continue;
-		hif = (struct hif_msg *) skb->data;
+		hif = (struct hif_msg *)skb->data;
 		wvif = wdev_to_wvif(wdev, hif->interface);
 		WARN_ON(!wvif);
 
diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index a60ac03fa73d..07a9991929fd 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -903,7 +903,7 @@ static void wfx_update_tim_work(struct work_struct *work)
 int wfx_set_tim(struct ieee80211_hw *hw, struct ieee80211_sta *sta, bool set)
 {
 	struct wfx_dev *wdev = hw->priv;
-	struct wfx_sta_priv *sta_dev = (struct wfx_sta_priv *) &sta->drv_priv;
+	struct wfx_sta_priv *sta_dev = (struct wfx_sta_priv *)&sta->drv_priv;
 	struct wfx_vif *wvif = wdev_to_wvif(wdev, sta_dev->vif_id);
 
 	schedule_work(&wvif->update_tim_work);
-- 
2.17.1



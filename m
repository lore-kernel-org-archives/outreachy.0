X-GM-THRID: 6754760383787958272
X-Received: by 2002:a7b:c38c:: with SMTP id s12mr11492247wmj.84.1572800005325;
        Sun, 03 Nov 2019 08:53:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:c4:: with SMTP id q4ls11781865wrx.3.gmail; Sun, 03
 Nov 2019 08:53:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqxFrfVDigFsiZMqCYy5UcHpYTMgyBulRjop6c0mGeA4FHavhFsNhAJxZxYyeOyeOSfBI2wJ
X-Received: by 2002:a5d:4d4a:: with SMTP id a10mr4567230wru.35.1572800004573;
        Sun, 03 Nov 2019 08:53:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572800004; cv=none;
        d=google.com; s=arc-20160816;
        b=DPDdGLsesHb9LLXt6Hs7J52JMBQQeBRp9dXOW4q9hhu7BP4yPpCrytO4GWFRKNbXQ7
         P/Gy7OKIREd7TuT3iIU9GwAK1zdVBTJ9IA3eJo9TZklX7omMZZ3bNxxWk+h/oKUvcFd7
         r5oMoUMpP9/VPN8qGm/YeN5m8C4e7Hmw6ra+Vmw2A9DzGxFtm8Ww0P4tZJK+RhbHA9yU
         zCxk1F6QFYEF/rtrlKPznmA7QXC0S3OeMyPpjxtpTKa7ICSRc1pG6qfLFhAdZa5ocVTV
         l3i0oZdHSnbZebbyrgeXvsHg3HdAaCzkM4aoq1F8VA3HBYkdtnnbG2s5HF8eKeK6lG7R
         qESQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Bgup/V6vrh2fKQAAnn+xZFmdwYPfyZKEmRId87ej8Jw=;
        b=e3KdXNLeYJvo35+3phqBfrJrkQ7ti7tkx66rQAFHmFEqW5Gjil3d82QCh13KI0XHta
         6tqv52KvgdM2vkDVF01nNvJn4SRtr5E3jIhpEsOIw6VbKbt52SBmCbCVY2nYpvqgrM96
         PkHk6N6C2HqFEjMMzkd1/CD5QiCn7kCs5ya/GvUnQVHuiKjF5lXAkQTatqKM7bPjKN7t
         6nEj9BzKfLVTcICIsRRxrkRmMTilf004SHdlYfcKCbi7Gz0xfFtEGeKgkDq4KgjE+zGG
         UZHbDJgrzOmzLS0LHZbAMw0OlfpANosyd/7sbBJfTZ3u58kEN/SVo2qDIyjUEhLLuGAO
         xPWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZbU8WMBy;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id s126si1007745wme.1.2019.11.03.08.53.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 08:53:24 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZbU8WMBy;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id a11so14415547wra.6
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 08:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Bgup/V6vrh2fKQAAnn+xZFmdwYPfyZKEmRId87ej8Jw=;
        b=ZbU8WMByjsXBliVwY1vphx4iSUXSWEkv9hSzmyIb6EwJeCf79BPrRLtMcF7fUANOuM
         UiXIb751/HOOpXVQUyIHeVeQxNLWh+AX1VeR7zOwHfiZRN5szkacV1n1ge8hJJQEMrXB
         bG3EQegeDBx8FLJ/uqc1ETF503Vu3F4D2kg2eO490yqvcKxMwCG7M/PRPOwxIYJClLKZ
         mOUBaI91sW3WXpTi0SoiG9QxRajXdmrTdm3LOkyKSm+JieIONxEK8LvmXDluPOk3kZ/C
         W7rzGQqQbtypIQZbieqNciQyHx6c3K85hhoWoY59SG4ZjHiTBpwIpBLG+pbTf7K77sa3
         580g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Bgup/V6vrh2fKQAAnn+xZFmdwYPfyZKEmRId87ej8Jw=;
        b=WC0qjdYS/CE/X7Lu/qDVSZByBBhlBGcvEAKFWypuCkxZMM3fjHtWMM1hzpilmcBVoh
         Z1lM5lqe0STFdds7MeCvGpkTydNDQaS5UwozBxN2b9y2zND4+VJwcDpFy5aNCtuav/s/
         4S80Opw1TljTNuhkYza8FtaeghCewquZS65wIczqIVA6T59WWraQwXrz6hltB4nEXzZf
         IPGf5i9oJYu9l4D2VeDon7YI7AZKwlggQdYJUDh/e4mOS3iSGf6gOPJdYmxvYEJoAUEl
         afu8rdx6138W4Nk4daSUPsJQdeh0eQ9dqAwtfYOJcmj84SMv9eQFvf8hJILreYUC3b5I
         kZPw==
X-Gm-Message-State: APjAAAUjYUcZzbr9cwXcyMpTPYDGsJjBHeYLhvzNh9uvEC3pnvwN9Rlq
	CZojdGpiNPmPcHl8Yx6Vf1J4EqSH0vEI
X-Received: by 2002:adf:fd91:: with SMTP id d17mr3091151wrr.214.1572800003806;
        Sun, 03 Nov 2019 08:53:23 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id o187sm13180408wmo.20.2019.11.03.08.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2019 08:53:23 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com,
	jerome.pouiller@silabs.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v4 2/2] staging: wfx: replace 1 by true when stored in a boolean variable
Date: Sun,  3 Nov 2019 16:53:08 +0000
Message-Id: <20191103165308.23843-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191103165308.23843-1-jbi.octave@gmail.com>
References: <20191103165308.23843-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace 1 by true when it is stored in a boolean variable.
Recommended by coccinelle tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
v1 submits change of 1 to true with no accurate log message of what
was done reason.
v2 merges two patches for the same issue into a single one, improves on log message description: rephrase, change the term warning to recommended by coccinelle tool.
v3 gives accurate description on what was changed and reason behind:
change from fixing to replace to indicate what was done.
v4 includes logs of changes done on each version.

 drivers/staging/wfx/queue.c | 2 +-
 drivers/staging/wfx/sta.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index 5d29bce65f71..71e92744fed0 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -550,7 +550,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 			spin_unlock_bh(&wvif->ps_state_lock);
 
 			if (vif_more) {
-				more = 1;
+				more = true;
 				tx_allowed_mask = vif_tx_allowed_mask;
 				queue = vif_queue;
 				ret = 0;
diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 688586e823c0..ea5707ff8847 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -291,7 +291,7 @@ u64 wfx_prepare_multicast(struct ieee80211_hw *hw, struct netdev_hw_addr_list *m
 			ether_addr_copy(wvif->mcast_filter.address_list[i], ha->addr);
 			i++;
 		}
-		wvif->mcast_filter.enable = 1;
+		wvif->mcast_filter.enable = true;
 		wvif->mcast_filter.num_addresses = count;
 	}
 
-- 
2.23.0



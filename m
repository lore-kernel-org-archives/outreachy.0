X-GM-THRID: 6749515623301120000
X-Received: by 2002:aa7:d44d:: with SMTP id q13mr15611858edr.48.1571494071706;
        Sat, 19 Oct 2019 07:07:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:d7a3:: with SMTP id pk3ls2021639ejb.3.gmail; Sat, 19
 Oct 2019 07:07:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyluK7XAeLd/nFybfEJ1Euw7jmw0h9a697KkinUMsaatxTtX/JmPbQglzRe7Lp6mBL3z2IG
X-Received: by 2002:a17:906:4d06:: with SMTP id r6mr13694689eju.90.1571494070739;
        Sat, 19 Oct 2019 07:07:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571494070; cv=none;
        d=google.com; s=arc-20160816;
        b=qduqyGRVkzv9ElAz9jHGy1qGCMpOJ7xxW2ytefwmaqdUD0HGyOwSVg+d3FZaY+pZvr
         RQPpyTauJgzkbwGq8NI8L5fgE0FTRilFMQvzzNVS75Oyn21pi9PX/wCQdXnK+9Pd4ZBh
         ZslzhWV4PFrfJn8AI7yichgfNLA89yFnKLjs2X1lDG81l1vZO7vz7HxYn0R9hFehbWjQ
         n0xo9raApRoWFagrzZOSw3eNVpsXeZ5agA6L8PxxxYg+T9dUUYf6n2VCQmzuknB8TTWc
         AFluj5pqi3th9XOi5lVP340UsV39yZsRkuDqEfB0bFSHMJTQLPQ7G5DE+cGtBbkoRAJT
         TxmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KnTNLw2zsQ+5FjLMZo6V27teAR8omoAiJIuKZyNFMzg=;
        b=lM/LuaegkGPyLiezty8tvM4BdYhuxgbcv17xlullfmUyyS7sMuFLOHLPSoekalxCSd
         CCdvUq86Ni6UYeBhaionW5Iynzg/voYvrGaezYXi/e4NyiRDPw30uZTa4TydChE5gDCU
         5fvqlBldAOkzU7wmIi+uHMIf67sMpVADNkgefsVuLEx5HA4PWRkot7S2CsJBYpewmLiN
         mpoP/EDUuzZOAEsQy0lFAkA7ZTWw546+kxFMFj78+3Tr32rS0z4504ShPLxxjtAe/Ccp
         WlI9teR1Pua6bJhLmSKwZ7JkArRT6F5dSWC7t81ALh4qluCosXlMzqO3qBBxIbllI6WN
         cIwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ada3B9dY;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id d11si419247edh.3.2019.10.19.07.07.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Oct 2019 07:07:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ada3B9dY;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id y135so11279301wmc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Oct 2019 07:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KnTNLw2zsQ+5FjLMZo6V27teAR8omoAiJIuKZyNFMzg=;
        b=Ada3B9dY1uk12JQ19eWuDMptg1aPGMH0mO3rVcZ8Q0JJ0dJfgYJlGo64uNHpgbj+bS
         sHMFewjUMl7apRYWPCrz682VekIr/DxSmGu+HZ3nTzA3apqlFW7twjiqhaRIiBc4SFK0
         3V+RvOE13cJm3Xuc8NdauZ0Jc3HBhciuA2XeXwIPd9yFSMLyk6ebn1Zs1eSsDrNxt1LX
         p/4ypmiwwGvGjH4C9LClKX1bEgQhaBPTnYEaBcZYVkwYMEdC5zT1YUI7uc9Sh4eDMHHn
         vzAEaU4J/DkTJlMvwg4haXWG+SM1XsDGBoq1ws45kbkB4o/BAs6Dj5VhmTNIvDiF7mcF
         cQuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KnTNLw2zsQ+5FjLMZo6V27teAR8omoAiJIuKZyNFMzg=;
        b=GzWkEbgptLMD7nWVsWMYN/zXR6jl9I/iTHIHyAMaL2urOPEvkn6vJ4Y0TFgZZJ1EK5
         fBZnopHDusyrvUZpUDZRBpN2q/wuS9fY4LWrmQmAHB96tsQ/ZKss+biCWi4DguM/fgst
         jvc4JKFE6I/urzpNvZc9yARyNRp2CgDTqHkZ200CJJE8l6kuYMSoYx5m50stsKD99lxZ
         b+ivq/eqebjI8GSkyVGFc2u6RnfnX6Aax2lUYWIj+cp1JeRrst6eNradQ+cnMBdNVv3+
         pLrnkHaoOak9g7X+L+QwwG5vo7+QLOsBfeogPlXc0oCRNFSBE5QztfLEuawmBJCQ9uzy
         qdSg==
X-Gm-Message-State: APjAAAWsDY/oVZ+W8dmykp5lN9dlRSaaOrbw6xL0/HPPMzTdMw8nYDFI
	dOCqvfgygJmAQAaOBQNndpNmE6ZdHeae
X-Received: by 2002:a1c:f417:: with SMTP id z23mr12232552wma.77.1571494070148;
        Sat, 19 Oct 2019 07:07:50 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
        by smtp.googlemail.com with ESMTPSA id t4sm7893080wrm.13.2019.10.19.07.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2019 07:07:49 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	jerome.pouiller@silabs.com,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v1 3/5] staging: wfx: fix warnings of logical continuation
Date: Sat, 19 Oct 2019 15:07:17 +0100
Message-Id: <20191019140719.2542-4-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191019140719.2542-1-jbi.octave@gmail.com>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix check warnings of logical continuations
should be on the previous line.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/data_rx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 522592d71aac..52fb0f255dcd 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -163,14 +163,14 @@ void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg,
 	}
 
 	/* Filter block ACK negotiation: fully controlled by firmware */
-	if (ieee80211_is_action(frame->frame_control)
-	    && arg->rx_flags.match_uc_addr
-	    && mgmt->u.action.category == WLAN_CATEGORY_BACK)
+	if (ieee80211_is_action(frame->frame_control) &&
+	    arg->rx_flags.match_uc_addr &&
+	    mgmt->u.action.category == WLAN_CATEGORY_BACK)
 		goto drop;
-	if (ieee80211_is_beacon(frame->frame_control)
-	    && !arg->status && wvif->vif
-	    && ether_addr_equal(ieee80211_get_SA(frame),
-				wvif->vif->bss_conf.bssid)) {
+	if (ieee80211_is_beacon(frame->frame_control) &&
+	    !arg->status && wvif->vif &&
+	    ether_addr_equal(ieee80211_get_SA(frame),
+			     wvif->vif->bss_conf.bssid)) {
 		const u8 *tim_ie;
 		u8 *ies = mgmt->u.beacon.variable;
 		size_t ies_len = skb->len - (ies - skb->data);
-- 
2.21.0



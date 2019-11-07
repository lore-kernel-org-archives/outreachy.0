X-GM-THRID: 6756641036009734144
X-Received: by 2002:a7b:c858:: with SMTP id c24mr4587144wml.174.1573153082071;
        Thu, 07 Nov 2019 10:58:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:c447:: with SMTP id a7ls3083579wrg.5.gmail; Thu, 07 Nov
 2019 10:58:01 -0800 (PST)
X-Google-Smtp-Source: APXvYqwrlYxNVCPBFkTq3yP1gsQceHb6NHyZSd13lO0wOijog5mjl2iBwe88Xfyh43RbKfNtiiUk
X-Received: by 2002:a5d:5091:: with SMTP id a17mr4670804wrt.249.1573153081195;
        Thu, 07 Nov 2019 10:58:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573153081; cv=none;
        d=google.com; s=arc-20160816;
        b=mkoK1dA1OCrs7bmrpwvCzRp+PuhETBwWkopHgaCc2tSxSfrsEJCk+VH855gJePOlEG
         Gkcs+9z4mXaQ94LiEhV6Fmf8h9WQiVVNitDya+G7AjRnvn1nTm9DsiFCsBA5Rl4KlzYB
         b5z8Ey8tD/HeLGYmjol1rScX+bg+hFl9m00jGI38HPxJdW130ZH/TZkVJ0rFyLkFOQcM
         Kmdu6A7UY5zbmNUGYhvwtxmxQ8rYNKA3n5n6ycoNE0SNeimHw+52jNvqQg34iehkE92B
         Tr8U1gdqYV8MoQUxStyMBazqzYzD1sCjrFQ2D2+aza4vstM/+haIlIHfirG6/E5B9lvl
         lWMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CzeKvPijp9M7l7f4BmpQ81EDunJZBAJxIzvRPFJjgdc=;
        b=L5KhWVSBvpWPHHh8FzXkw7HIqxPCOIdJIpVDSOERS+WXot7oRh11lILxMw0sDlHTV1
         Qr0zstynL45tUR5ow370IOLYhzctTKl0M9OWB1eBJFX4kRexX1lIvfubQzvQ/b9FxBNG
         eTn/tkkP0POnNOI5BXyrci05JWb3p2V/Rm1Pr0M62PgwKcR5CKgyMR61xaf5p5jsK4BW
         RLbrCnXuzB+veXiji+b0qbyMkhSvciRdORfsFvg4WUqx3zYr1w5v1Am/c51JVs5m5jJd
         E2TnHHeuuOAXQiW8PfbQJl9a1hMTh1gRxp3W7NLZJcVt5YQ+fxIghikqhNKHfZryo/0Z
         zw/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HjsnCTCM;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id y140si216169wmd.0.2019.11.07.10.58.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 10:58:01 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HjsnCTCM;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id q130so3670157wme.2
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Nov 2019 10:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CzeKvPijp9M7l7f4BmpQ81EDunJZBAJxIzvRPFJjgdc=;
        b=HjsnCTCMK/fY+NWaK549+M/R8QB7vb4heqtioc47yKJ3YoPknf3i/2XDbtdCpU7StK
         Y/YSTCspMeUGo2SZpVEvK6Ctc6yPhjSlT8nH1Z3QjUPR3LDaAe40fOiEZIdCJm/9ORiX
         zcPLf0D6FmAtY6bWhcT7YdPjvTxpB1F7nQ7RUrrak9fjcTiHHfFBwwAzijOwjA+DE4jO
         e/p16LJZU5pjmeE1n2FsGn6vde1Gm6GEqcdYiJnx7047ZGOOWirsVQi3ARBcqA9ncQkr
         PbqIR5+Sy1wlqtycQjCqTURKudnxrNqdmeJiJS6uUDQd8RBbrYYJsaSAD/51QaRp8ula
         mK+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CzeKvPijp9M7l7f4BmpQ81EDunJZBAJxIzvRPFJjgdc=;
        b=kZjyGu76uubCN81A5IHH3c2l7mS9j/KyJymkB3JV+C0TQInxt795YNhBxaQv+KmOxw
         NWt0YVK5SzO0Arc8QUw2839Sr1GxDrOIRz2QT6JssJmQ6tc89i8nAEANlljVnvkbINvd
         z2dag6sfC6lAWfcTst0eBJI1f5GnW/pNPrXso8oeQgRho4Jtix+GvTCq60AqKhTZU6YQ
         uJcisF7mEdXMXhkaA7iPRIVKUE3jDH5HXfmY+9vp7QKOBtNi6FRSCXl8P9r/Hytp+vtb
         yTAyiI00GCSqSDX+OkLYTH81D7zGF4FASLIaICyG2itRoY759vpG6gp97oEGdL553ky4
         EeRw==
X-Gm-Message-State: APjAAAX9TH3ZP7IhBBqYNOK7rtBQhCv+CuzSSeg34KfJVFQaclvGSaIV
	eBqj8WNTfkvXJETcGirnew==
X-Received: by 2002:a7b:cf27:: with SMTP id m7mr4515721wmg.45.1573153080642;
        Thu, 07 Nov 2019 10:58:00 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.org ([213.205.241.171])
        by smtp.googlemail.com with ESMTPSA id j67sm2968939wmb.43.2019.11.07.10.57.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2019 10:58:00 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	jerome.pouiller@silabs.com,
	ast@kernel.org,
	songliubraving@fb.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v2 2/3] staging: wfx: remove space between cast and variable
Date: Thu,  7 Nov 2019 18:57:39 +0000
Message-Id: <20191107185740.381485-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191107185740.381485-1-jbi.octave@gmail.com>
References: <20191107185740.381485-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove space between cast and variable to fix
checkpatch tool warning
"CHECK: No space is necessary after a cast"

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
v1 did not include all the checks fix in the driver
v2 includes all the check fix in the driver

 drivers/staging/wfx/data_rx.c | 2 +-
 drivers/staging/wfx/data_tx.c | 4 ++--
 drivers/staging/wfx/data_tx.h | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index e7fcce8d0cc4..1d26c1b77725 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -50,7 +50,7 @@ static int wfx_handle_pspoll(struct wfx_vif *wvif, struct sk_buff *skb)
 
 static int wfx_drop_encrypt_data(struct wfx_dev *wdev, struct hif_ind_rx *arg, struct sk_buff *skb)
 {
-	struct ieee80211_hdr *frame = (struct ieee80211_hdr *) skb->data;
+	struct ieee80211_hdr *frame = (struct ieee80211_hdr *)skb->data;
 	size_t hdrlen = ieee80211_hdrlen(frame->frame_control);
 	size_t iv_len, icv_len;
 
diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 76a474bf2e85..ee01eaa8ae86 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -482,7 +482,7 @@ static uint8_t wfx_tx_get_raw_link_id(struct wfx_vif *wvif,
 				      struct ieee80211_hdr *hdr)
 {
 	struct wfx_sta_priv *sta_priv =
-		sta ? (struct wfx_sta_priv *) &sta->drv_priv : NULL;
+		sta ? (struct wfx_sta_priv *)&sta->drv_priv : NULL;
 	const u8 *da = ieee80211_get_DA(hdr);
 	int ret;
 
@@ -615,7 +615,7 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta,
 	struct ieee80211_key_conf *hw_key = tx_info->control.hw_key;
 	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	int queue_id = tx_info->hw_queue;
-	size_t offset = (size_t) skb->data & 3;
+	size_t offset = (size_t)skb->data & 3;
 	int wmsg_len = sizeof(struct hif_msg) +
 			sizeof(struct hif_req_tx) + offset;
 
diff --git a/drivers/staging/wfx/data_tx.h b/drivers/staging/wfx/data_tx.h
index 29faa5640516..4e7217e70157 100644
--- a/drivers/staging/wfx/data_tx.h
+++ b/drivers/staging/wfx/data_tx.h
@@ -85,7 +85,7 @@ static inline struct wfx_tx_priv *wfx_skb_tx_priv(struct sk_buff *skb)
 static inline struct hif_req_tx *wfx_skb_txreq(struct sk_buff *skb)
 {
 	struct hif_msg *hif = (struct hif_msg *)skb->data;
-	struct hif_req_tx *req = (struct hif_req_tx *) hif->body;
+	struct hif_req_tx *req = (struct hif_req_tx *)hif->body;
 
 	return req;
 }
-- 
2.23.0



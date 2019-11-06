X-GM-THRID: 6755994568036974592
X-Received: by 2002:a1c:44b:: with SMTP id 72mr84776wme.72.1573002565413;
        Tue, 05 Nov 2019 17:09:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f61a:: with SMTP id w26ls490752wmc.5.canary-gmail; Tue,
 05 Nov 2019 17:09:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqyN/Gf0x/pCkCYd+kiEzJ+rttao2zYcOwDE1pNcid2ofJrdvrPr/dc8ahYEYl7zIqXuVOPj
X-Received: by 2002:a1c:544b:: with SMTP id p11mr94533wmi.46.1573002564754;
        Tue, 05 Nov 2019 17:09:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573002564; cv=none;
        d=google.com; s=arc-20160816;
        b=Ip6HEjUYRXtofqMe6hlDS7O9QOr4BBjw7n2BbGHsT+uar9zeNp5pH8BWVDEVIIotrF
         b6TgHiXhTTBmQdpycp1SizLOfN52Ypu2NSxtSvx2InEAkqqQHiEBL/fTUHBTXQ4V8jdH
         RQTpMO2CR3MKv3ciFqAbdp+1bpeKenoAm6tC1Mw30Jcx3P72GVQ/Mya3kORyttW3O+Ln
         h9roXubNPSXjc5ZGOcFSpy7r25p5yukZft/nUeLIG7pJVu5Yxnjud2DIBlLUGRuzqt7J
         raQE1D9pb7fL6KDQXnQ7vyIVdf+SJ8PpQsmCgh47LGoyPSjsGkhzAXd6d1v7AycDU3YP
         T36Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JwovVAHc4XS4vNbWvUYGUBrYltlzaW8FFAkQ9gEkJ40=;
        b=ChEUGKGoopONL2Mh1i9wOkIWTS7hyQjEXmYU3q24Q0V+MFoz1NatDX8G5weBxfygSk
         s65rNeQj4p4/HaiCGIIEemHicpknDocLJmYYz5e/35sfwDCg2l3ztQ9cBjkntraoV7Ht
         AIA6Gf6GaSo4BRASX6cRa5Yl210lNhkaudbzCZwBcQA2DPlL8O5CrqGpE2qSQfCdu7KH
         yLzRD2Z0KMbYqMVdJXfOgKvUcABKQuwC9SMNenMmgoDyoERi53+c1kuy7u1/Ml8jns3q
         PwYm+YGqnlC9z+EfApM7Pddqrii37fhRP+CNFemCgpYI/5lpiQjJXNqU87sp9ixDbMjf
         HtKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZF8rzldV;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id y188si64918wmc.0.2019.11.05.17.09.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 17:09:24 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZF8rzldV;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id q70so1497478wme.1
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 17:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JwovVAHc4XS4vNbWvUYGUBrYltlzaW8FFAkQ9gEkJ40=;
        b=ZF8rzldVsWDkYeIPlftbMyQ/IHzihxjCXaWQHuOeTPoUEfMmiKVNSyn+gRfoTzo6CL
         00O1QQ+j5kQwJPePTMTSOqpVAtwTEkqPijpeJoP/P8bOmCZMYvv+PFqUyyGFk102dpc7
         Dtj6krEub76kwyuk6E09sCJTwfOmLfnYLv3r8ohsFaNiCbd+7fBAw4FRpJXnAh044OTN
         jgpyM3bGLEhf9tBUoisNuqqgeTrBrkk5mRiyFd3OwG7DA3gPaKfVBSFwxagNq68faobJ
         WZ4/7tfwzlkGGMTA8jHnidRBvfOqVfBvqJRlZP94I2qOlCOr+w4LIs4gy/Hpe+wdxSf4
         k0Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JwovVAHc4XS4vNbWvUYGUBrYltlzaW8FFAkQ9gEkJ40=;
        b=mB/H4+/ejUYWKOJZNx+omPn0bcUu4/u/0GaaVj65/bhy3i9tY/JGrHsaPC3oQ/88Rj
         OfVFmB0QLNXcNvhKYJGDYhbwP9nF659Toy6i/1rF5mqztsJ5awNGsHBdqCkzNdrmrNL8
         I9NKVCxKIJqpZ4UYN31n3i4l6XkBThYuZUKf18n2ryivkKpYUAvgQeKHLwixOH1+cHq5
         MaGvEa2wOUVL+Qo+anHvwaCg+7mdiPxMVczuzWivKtjTF92i+C4h9ZlzcgAapSguqBSx
         gP8Dk9IOk7dhonqQxYeeY4LfdAlU5eqoLTL6bWxlofrOU4zP/VlDoxo/sIv9xnTDRE7u
         YVvw==
X-Gm-Message-State: APjAAAWCqNEF2TP4IA8Tz+Sjuy7KNt2o7i2k9dross11VGHo3s/WE9x8
	RYGV9v5wUojadLML+e9ysrIsayUGzmLH
X-Received: by 2002:a1c:dd45:: with SMTP id u66mr92836wmg.12.1573002564101;
        Tue, 05 Nov 2019 17:09:24 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id b17sm13334650wru.36.2019.11.05.17.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 17:09:23 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jerome.pouiller@silabs.com,
	gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH 3/3] staging: wfx: remove space after a cast
Date: Wed,  6 Nov 2019 01:09:11 +0000
Message-Id: <20191106010911.157294-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106010911.157294-1-jbi.octave@gmail.com>
References: <20191106010911.157294-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove a space after a cast to fix an issue
raised by checkpatch tool.
"CHECK: No space is necessary after a cast."

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
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
index f203697a9617..a8323d60d909 100644
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



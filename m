X-GM-THRID: 6802585330019991552
X-Received: by 2002:a81:4603:: with SMTP id t3mr21430912ywa.97.1583850341797;
        Tue, 10 Mar 2020 07:25:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ca87:: with SMTP id a129ls3690492ybg.6.gmail; Tue, 10
 Mar 2020 07:25:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvcBmBlXeaFPrVmwMPkjvn7Svg2UW0/V21VSjliVVfSAikGwa0CQLIAwbJsd9ucgAv48g0K
X-Received: by 2002:a25:22d6:: with SMTP id i205mr24313264ybi.403.1583850340549;
        Tue, 10 Mar 2020 07:25:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583850340; cv=none;
        d=google.com; s=arc-20160816;
        b=oKHX7zxR8HWVUgWH8pxT/L0YMjfV3D2ksbA6nmOzvRGP1M0A/bQMXgrPtPzKhfDAQ/
         WgHt4LWK+djSvP5WWLCVY2M4xMFexa6PCA+2Cue+kkgEfCOOW9/4bjhcKBIpd+XX86vI
         lVBJAAAZ62RQRCaCMazJB5dYyAZn6OLUzcdQvOvxqG5j9sbmaMxTCiRma+g+BAtIWvYJ
         XLpDPSWAphJCBhbFR9DbS1s7BhvXRyEwwh7i/WYlSVreyrN6mbwPRq9if+haang+UoIw
         BTm47nq559kmsOaUbsoZV/jB2iC4yJVlPC/Q0t7NXDMf5haEGzYNBaGLWcdrggxJX7M8
         kv4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=syvCwf6ZqpEJnx620eN1i7j7JHcqLPLaHESC2yaW85s=;
        b=QGjPCJTf4hCjGkiri+73iG08qEwCqddVp/M8K5FNbqRl2IFg+/XXnYO18cUcJkha2w
         EFsADa4eHw4nu2rF1494JRzFRIAiMu64rzKFqrou2dOWzeLH6MJ9zMjWSvA4m0CGzNhi
         jzVTvzJnJ6EbO21XWLfTY11CeVbaeIc9EihzCUOaw5choKWU+aQIw40jeyC8aujPVq1i
         wOO3eBJFKLiqm7N6evJaCWOBPzBpsJqM7tbtjKXG/fGC4FsQNOTJdhyUECscPa/IQdzD
         lX7dHSXgYGODpK4rshsSrezMnu4DdIbaKt9FH/MUIJGN+/36F3Jl2zQ4cZ66Nj7/v9Oq
         Y7/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=pKac045E;
       spf=neutral (google.com: 2607:f8b0:4864:20::442 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id w18si913532ybe.0.2020.03.10.07.25.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 07:25:40 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::442 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=pKac045E;
       spf=neutral (google.com: 2607:f8b0:4864:20::442 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pf1-x442.google.com with SMTP id i13so6559817pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 07:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=syvCwf6ZqpEJnx620eN1i7j7JHcqLPLaHESC2yaW85s=;
        b=pKac045EWpobD4HDwzJgjQFCygnRQlWbOyT4olA0o8JCEElSAwzjLUNBffGiFLVbg4
         4PLfrrOoDpAu3rpDiz89i4HYA6jc28fp1sCFKeAXZrQul684YvLenCIHVJ+434NPAptU
         FFLvbkVtN8mqxZaEhmB6wUIqeVJqXd01FXfwd3eQh0/3xgiBEFcpuoiil4P+yPTdJhfy
         MhDAuKKbszMPB/cxqyikkfCkNRbailaKXGHyKjcwLgsSai9knLgcaP/kXscRAX6XfbQa
         sEBJrkJGawHM+2K03UrvUC84rdma+SumlHIxeiSFn2V06Aiue1EO6ieji1qMI5qkGzT0
         G54w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=syvCwf6ZqpEJnx620eN1i7j7JHcqLPLaHESC2yaW85s=;
        b=pAdIpdWuLyKusIPJ/ukfXeCl+kbGILxVzX3WxxgdnxBx4k6ZzoLfIyKezxrin6LFr1
         DBuxGXTSUlL/fxUyH7X6/2v8dH1NI+6yZp5/yoIiTSQQQJNBjhRHVpb5Y4JmVc4EWQUC
         715XFA3RBlzx3RU7g6Gn7BoqezZkjEmuSpjbnI3qatattrmMg2LOzKkZkXOcxn5hse7J
         aSZQrUdW/gfGKjUCidBPC/oLQssQHsUIl4hfvD167rgz93KJsfITL53eJENmJybQo8ge
         0Xw0Ua28jJUQ6rfYw+RFgC3sIv/46ay7i8JW3f8EVqn5Vl/VoiXa8Hkut6i4zMjDUtCQ
         ZNwA==
X-Gm-Message-State: ANhLgQ2K3d43t4j91AY18kr4O5csUNZuClmBfmDbFBkgE5/dZy0wIfhA
	i8r/XAoqU6zAdliyZuxapn+W0IB03on/oQ==
X-Received: by 2002:a63:104a:: with SMTP id 10mr20772884pgq.276.1583850339619;
        Tue, 10 Mar 2020 07:25:39 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id e18sm2620434pjt.41.2020.03.10.07.25.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 07:25:39 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: jerome.pouiller@silabs.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	kgupta@es.iitr.ac.in
Subject: [PATCH 3/6] staging: wfx: dat_tx.c: remove space after a cast
Date: Tue, 10 Mar 2020 19:55:06 +0530
Message-Id: <20200310142509.25632-4-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
References: <20200310142509.25632-1-kgupta@es.iitr.ac.in>

remove extra spaces after casts in file data_tx.c

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/wfx/data_tx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index ef617347abad..42183c70d4df 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -304,7 +304,7 @@ static u8 wfx_tx_get_raw_link_id(struct wfx_vif *wvif,
 				 struct ieee80211_hdr *hdr)
 {
 	struct wfx_sta_priv *sta_priv =
-		sta ? (struct wfx_sta_priv *) &sta->drv_priv : NULL;
+		sta ? (struct wfx_sta_priv *)&sta->drv_priv : NULL;
 	const u8 *da = ieee80211_get_DA(hdr);
 
 	if (sta_priv && sta_priv->link_id)
@@ -430,7 +430,7 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta,
 	struct ieee80211_key_conf *hw_key = tx_info->control.hw_key;
 	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	int queue_id = tx_info->hw_queue;
-	size_t offset = (size_t) skb->data & 3;
+	size_t offset = (size_t)skb->data & 3;
 	int wmsg_len = sizeof(struct hif_msg) +
 			sizeof(struct hif_req_tx) + offset;
 
-- 
2.17.1



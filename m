X-GM-THRID: 6752726404247322624
X-Received: by 2002:aca:5247:: with SMTP id g68mr1713778oib.13.1572241635046;
        Sun, 27 Oct 2019 22:47:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7a58:: with SMTP id z24ls362otm.1.gmail; Sun, 27 Oct
 2019 22:47:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzKLd5vQtHVrBtcB26M3EZjOy1tJcJNEZDY3cnQW90QRmSP7ieQAmoFqGY6WI84y+iaFOuo
X-Received: by 2002:a05:6830:1be3:: with SMTP id k3mr12401129otb.180.1572241633517;
        Sun, 27 Oct 2019 22:47:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572241633; cv=none;
        d=google.com; s=arc-20160816;
        b=Jlnpvm9P9o1veQ1ws4VQdb21iBr+Z7EVCVLQcqJOhfASxod1fsrhvqjJTDFiRCZhTe
         0Bvs2czbWElddl8NLdfQAQOWvo6hPEBE40abgJtLgpquuApAEdrq1fHC3Tj5QHZZ6mTt
         GbGsu9NZuJBnuyKAfv+nzWrgNJOT7PW/k083QXmC+VsUN5UPAYlvkIn6LfhpLhjRso+x
         8H9Ak2W8eG9x0NOADhju7erYdQq4nnxhSfzYfBl3zXPw9R5CWvUnlQqmCDZmskzhO9Hr
         JyFNY7sDbF3DCN592VY+tCX0CNSDnGEc1L1Jq20Ov5PAwp4fGARGVmG7w/u0cn11IfPd
         2cGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=0sdPMsIaGeTJ6+yCvTne+NPFlHVl/+7wxfLNkzaa9Ys=;
        b=asv33aMJ07kaOM4SBqIFzMDyfwOUYS2Nfru458pIVjgMcTf1KVNhJyvAgFvVi7xR/d
         Rk38P24IMxkJUDFl3ZouxR7fHaQeM1pDbAkfvsIawmxf0DTl+recA6vlNpKD48KXfJjm
         JGFPWhI2hIfCxKnmsNmeMuhFV+Evw/rsrlGml3P95+SlmgnLtOGBrfG/Vz0ufB9RKwwi
         sib6E9NoQPhrGPMW6zzP8P8mAod4mfM0ux79KdQKaQPngCbyqjh7eHg2wMmTedahBJCm
         jNffaUFTx7H9/ZeHFjgpsJ4gjubQOpWK7xcveMNroHSsrb5zVLuSyXE/f0vXIlrVVxbc
         IUHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=xLJai+vH;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id j19si191106oij.5.2019.10.27.22.47.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2019 22:47:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=xLJai+vH;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x944.google.com with SMTP id v2so1099752uam.9
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Oct 2019 22:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0sdPMsIaGeTJ6+yCvTne+NPFlHVl/+7wxfLNkzaa9Ys=;
        b=xLJai+vH96iL1jbhrcf/5/Uv7OjDGmJW2EdoJvBgGk13LLdGLCD/2s+CpfaELtYQ33
         yhE1zb/Ze2w4rxUMw8zX/rnedXEW/RBodfWN+1YJyslrQCVfzYm7whiDYS+HyCbBheng
         AbH0OhgyLnw6WQs3sqFzbGlsfkkvESVbxNJ09lcyX9xUZl34myAdgjhw20oNXyp1KZVf
         RFb4U2UTtilzz7NzvjFyoiys2g2eor3sOEBRs7ywptr4t2wCVfma0jSWR1IxIh8NTIXY
         WIjuau0kxEObgG94Cvfwsf3PHDJmJFDFjUorOhET1EXA1Ah00at4HVKEJDNqCTEWKpTh
         /lJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0sdPMsIaGeTJ6+yCvTne+NPFlHVl/+7wxfLNkzaa9Ys=;
        b=kjaU+aMl5AxTjb75wXb8o8TEHQq6NKIo2cxQAoCifY4KLYCzlOL5I06yKf0ToGJBJI
         Jx6u+i3wDShcVqY2KaYWCoK/0OeJX6GDl8L4WWRjlBDT9sPaS0c8LXQMVZdboOJCdn47
         XV2KgK+YbTPmzEatIxR+NVJCYyjxGUp1s0xJWGBkxUm+hlUC4SF7ZgFgVOvLap2ThsJy
         rvq7KpX5CrZ7QR0O/X2yyhnXkLJYRlapaOUY87tkgBLZv12JsKh6Kw0tnx8WBXfCRcUJ
         wQQ4TnfZMIW/P52y6NWo7+Hcmsx8Gedk9/R/7LQt/ZzWxesPkX110fsM1ZCDXSIDtH/O
         YBhA==
X-Gm-Message-State: APjAAAVLB2xtcD50sP6igThz6hHorZf75Vzh9sYIDvcNnWT4d4Mr167P
	w5fbw8PSqXpsuosMbpX73vSlFv7gEMG2tw==
X-Received: by 2002:a9f:2304:: with SMTP id 4mr3529652uae.69.1572241632660;
        Sun, 27 Oct 2019 22:47:12 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id u131sm4128562vke.11.2019.10.27.22.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2019 22:47:11 -0700 (PDT)
Date: Mon, 28 Oct 2019 05:47:10 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH] staging: vt6656: Fix alignment issues
Message-ID: <20191028054710.jo6u2jy4ftae22jh@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

checkpatch message:
"HECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis"

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/vt6656/rxtx.c | 26 +++++++++++++++++++-------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index f9020a4f7bbf..b5ac49179f13 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -595,17 +595,24 @@ static u16 vnt_rxtx_rts(struct vnt_usb_send_context *tx_context,
 	u8 need_ack = tx_context->need_ack;
 
 	buf->rts_rrv_time_aa = vnt_get_rtscts_rsvtime_le(priv, 2,
-			tx_context->pkt_type, frame_len, current_rate);
+							 tx_context->pkt_type,
+							 frame_len,
+							 current_rate);
 	buf->rts_rrv_time_ba = vnt_get_rtscts_rsvtime_le(priv, 1,
-			tx_context->pkt_type, frame_len, current_rate);
+							 tx_context->pkt_type,
+							 frame_len,
+							 current_rate);
 	buf->rts_rrv_time_bb = vnt_get_rtscts_rsvtime_le(priv, 0,
-			tx_context->pkt_type, frame_len, current_rate);
+							 tx_context->pkt_type,
+							 frame_len,
+							 current_rate);
 
 	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
 						frame_len, current_rate,
 						need_ack);
 	buf->rrv_time_b = vnt_rxtx_rsvtime_le16(priv, PK_TYPE_11B, frame_len,
-					priv->top_cck_basic_rate, need_ack);
+						priv->top_cck_basic_rate,
+						need_ack);
 
 	if (need_mic)
 		head = &tx_head->tx_rts.tx.mic.head;
@@ -627,12 +634,17 @@ static u16 vnt_rxtx_cts(struct vnt_usb_send_context *tx_context,
 	u8 need_ack = tx_context->need_ack;
 
 	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
-					frame_len, current_rate, need_ack);
+						frame_len, current_rate,
+						need_ack);
 	buf->rrv_time_b = vnt_rxtx_rsvtime_le16(priv, PK_TYPE_11B,
-				frame_len, priv->top_cck_basic_rate, need_ack);
+						frame_len,
+						priv->top_cck_basic_rate,
+						need_ack);
 
 	buf->cts_rrv_time_ba = vnt_get_rtscts_rsvtime_le(priv, 3,
-			tx_context->pkt_type, frame_len, current_rate);
+							 tx_context->pkt_type,
+							 frame_len,
+							 current_rate);
 
 	if (need_mic)
 		head = &tx_head->tx_cts.tx.mic.head;
-- 
2.17.1



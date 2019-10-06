X-GM-THRID: 6744769542622281728
X-Received: by 2002:a37:b707:: with SMTP id h7mr19307681qkf.69.1570389033247;
        Sun, 06 Oct 2019 12:10:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3341:: with SMTP id u59ls3241321qtd.12.gmail; Sun, 06
 Oct 2019 12:10:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyJqCDabGrEV9XBIGdfuDKOgxM1wAvM7oWoeXVt7peYWZrbWZWBYK7Rc9MyuyOlUEL5xDGA
X-Received: by 2002:ac8:444e:: with SMTP id m14mr26505431qtn.19.1570389032183;
        Sun, 06 Oct 2019 12:10:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570389032; cv=none;
        d=google.com; s=arc-20160816;
        b=mTfGHUYr4o+ekVSJtJpbJ92vekGndk+ig4J17+IsSMtaplZ+RZmXbc+cQGdWLJdLGV
         /DsfNvCuUSHRqhp0Nz5+HhRkDiQWY6zzA27Yun5+K1CYzGoi2c0ZeozmPIOd5WsY8i3i
         28v1VmwzxDsx65YmV62Jd7aDQaDyu/qoQyZ1D5Ysnbwt23IRiS0OZBRXZ+b2M7O0bMKN
         BC0Gb6NzJUKZa6wVmA9tN9bmamWvXFsIFk7UOIuhsa4O6YTFpa7s7MP3xNqedSrimJTA
         Wrqga1CF+m9mYcPLhM91CojSR3YRAtHq5i1d61mzkxfMdIX5VK9Z9n7EtcfC3N9dtY0P
         rKdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=tCwKqi1o+pVk0eCqSLaVvuDUC0Ngrzkx/4GvgrlbAtI=;
        b=np64dinq49IDWniKEhBGVnXXnfmTuREdm4kgAAKIUnuKMw+mzQj6CED7NjpwqrQXwd
         6S/empMdYAmv1Nh2vyQtmM5qyCNdfS+nPXfbbZyQ++fg9o+CRyWItRRIUtur6+6CDhwX
         GSHS2hHf1rXu5wccyVYOv4tdGminQa5osmK0Z6FD2JlI9xw9BlZPHmIhJVqBPPN/0nI+
         bqxWckuDPH4y85erYNDURdmcu+265a/gOFTXTroku8m409rN1F/PywhAGx9BDGRiSXtd
         OONxK7tQwWkEX205/vNaYXHJt5ukE29R8MZbAvxkmsNDzokpKKP1e9CEu472PRkdXz9C
         ejRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mS7P9O3Y;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id h4si391354qkm.2.2019.10.06.12.10.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 12:10:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mS7P9O3Y;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id u40so16155686qth.11
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 12:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tCwKqi1o+pVk0eCqSLaVvuDUC0Ngrzkx/4GvgrlbAtI=;
        b=mS7P9O3YIav8KEuZm3+CXz4iU8nGdp24dICzN6qTpCAj4FyyDIKphC91akWM3JaX3B
         NlHUo+PhefyQp5gX1NvaEIbsb77IcnHVcrt5lrCN8LLmWTkwyUmuepDsxxyghv/q8PE2
         ijoeLEBozBqnRaz+blVh4hzLwGgrNd6JeQAaCFF2edWP3/Esr06CZYIcFS8s4a7ajZeW
         2GOZ8vRTaeI8yQo0j0n+d6vCTbkzWv3MRQoDynqv5Hiu1AVON2pdtuwEs8dlH0zwtoqo
         cVeiSRmFWCq6nHnrPYHb5WfSy2xLWNCiJYD96V7SC48PGSGhYHZ8dz8/PdXLtZzUuXK2
         yIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tCwKqi1o+pVk0eCqSLaVvuDUC0Ngrzkx/4GvgrlbAtI=;
        b=Vl66tkziOtavBxf1LKoOPjBLs7pHQ3PwdMh/vQQs2nV1j5OONv9yzYR01fXu0C7MrH
         OoAmRDRFAXXwPKJk5X6Uxy0Lpw9cXKdjJFIZcYF2/Xymf9+USuuSFQEBZm4rqjxKBuXY
         vqUTWaaENDpuwV5dofWZuVzbLW8/Z86JUFJ3V+bYwrBzjuafv7Xk3jlCdkn54lDis0Os
         9XbTWaqUY69GbWj7gYAGFMLVeHu+PxQ7qc9YmCbQDBUFHmT8+SgvC+o5krBV9DJ6z5F+
         p9ku10cSchayFmAbpxyrquVhj5rwl/uA/mTEjPIU1jIPjfJ5IdrqQvXYa9BhCOxgk6Tb
         Sb1A==
X-Gm-Message-State: APjAAAUC0wsEIKuON2PDxrzpm/aIwzbOtXtu3DBTVpBAQpscSRbEK+gV
	ZnyuZKVWR6mR3rgpqTEuZ/gZRSajzuHgMQ==
X-Received: by 2002:ac8:6e8b:: with SMTP id c11mr26342411qtv.77.1570389031557;
        Sun, 06 Oct 2019 12:10:31 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.terracota.local ([177.103.155.130])
        by smtp.gmail.com with ESMTPSA id u132sm6577518qka.50.2019.10.06.12.10.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 12:10:30 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] staging: vt6656: align arguments with open parenthesis
Date: Sun,  6 Oct 2019 16:10:20 -0300
Message-Id: <20191006191020.7435-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up CHECKs of "Alignment should match open parenthesis"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 63 +++++++++++++++++++++++------------
 1 file changed, 41 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 9def0748ffee..c7522841c8cf 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -285,14 +285,15 @@ static u16 vnt_rxtx_datahead_g(struct vnt_usb_send_context *tx_context,
 		buf->duration_b = dur;
 	} else {
 		buf->duration_a = vnt_get_duration_le(priv,
-						tx_context->pkt_type, need_ack);
+						      tx_context->pkt_type,
+						      need_ack);
 		buf->duration_b = vnt_get_duration_le(priv,
-							PK_TYPE_11B, need_ack);
+						      PK_TYPE_11B, need_ack);
 	}
 
 	buf->time_stamp_off_a = vnt_time_stamp_off(priv, rate);
 	buf->time_stamp_off_b = vnt_time_stamp_off(priv,
-					priv->top_cck_basic_rate);
+						   priv->top_cck_basic_rate);
 
 	tx_context->tx_hdr_size = vnt_mac_hdr_pos(tx_context, &buf->hdr);
 
@@ -325,7 +326,7 @@ static u16 vnt_rxtx_datahead_g_fb(struct vnt_usb_send_context *tx_context,
 
 	buf->time_stamp_off_a = vnt_time_stamp_off(priv, rate);
 	buf->time_stamp_off_b = vnt_time_stamp_off(priv,
-						priv->top_cck_basic_rate);
+						   priv->top_cck_basic_rate);
 
 	tx_context->tx_hdr_size = vnt_mac_hdr_pos(tx_context, &buf->hdr);
 
@@ -595,17 +596,24 @@ static u16 vnt_rxtx_rts(struct vnt_usb_send_context *tx_context,
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
@@ -627,12 +635,16 @@ static u16 vnt_rxtx_cts(struct vnt_usb_send_context *tx_context,
 	u8 need_ack = tx_context->need_ack;
 
 	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
-					frame_len, current_rate, need_ack);
-	buf->rrv_time_b = vnt_rxtx_rsvtime_le16(priv, PK_TYPE_11B,
-				frame_len, priv->top_cck_basic_rate, need_ack);
+						frame_len, current_rate,
+						need_ack);
+	buf->rrv_time_b = vnt_rxtx_rsvtime_le16(priv, PK_TYPE_11B, frame_len,
+						priv->top_cck_basic_rate,
+						need_ack);
 
 	buf->cts_rrv_time_ba = vnt_get_rtscts_rsvtime_le(priv, 3,
-			tx_context->pkt_type, frame_len, current_rate);
+							 tx_context->pkt_type,
+							 frame_len,
+							 current_rate);
 
 	if (need_mic)
 		head = &tx_head->tx_cts.tx.mic.head;
@@ -655,18 +667,25 @@ static u16 vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
 	u8 need_ack = tx_context->need_ack;
 
 	buf->rrv_time = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
-			frame_len, current_rate, need_ack);
+					      frame_len, current_rate,
+					      need_ack);
 
 	if (need_mic)
 		head = &tx_head->tx_ab.tx.mic.head;
 
 	if (need_rts) {
 		if (tx_context->pkt_type == PK_TYPE_11B)
-			buf->rts_rrv_time = vnt_get_rtscts_rsvtime_le(priv, 0,
-				tx_context->pkt_type, frame_len, current_rate);
+			buf->rts_rrv_time =
+				vnt_get_rtscts_rsvtime_le(priv, 0,
+							  tx_context->pkt_type,
+							  frame_len,
+							  current_rate);
 		else /* PK_TYPE_11A */
-			buf->rts_rrv_time = vnt_get_rtscts_rsvtime_le(priv, 2,
-				tx_context->pkt_type, frame_len, current_rate);
+			buf->rts_rrv_time =
+				vnt_get_rtscts_rsvtime_le(priv, 2,
+							  tx_context->pkt_type,
+							  frame_len,
+							  current_rate);
 
 		if (tx_context->fb_option &&
 		    tx_context->pkt_type == PK_TYPE_11A)
@@ -767,10 +786,10 @@ static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
 		ether_addr_copy(mic_hdr->addr2, hdr->addr2);
 		ether_addr_copy(mic_hdr->addr3, hdr->addr3);
 
-		mic_hdr->frame_control = cpu_to_le16(
-			le16_to_cpu(hdr->frame_control) & 0xc78f);
-		mic_hdr->seq_ctrl = cpu_to_le16(
-				le16_to_cpu(hdr->seq_ctrl) & 0xf);
+		mic_hdr->frame_control =
+			cpu_to_le16(le16_to_cpu(hdr->frame_control) & 0xc78f);
+		mic_hdr->seq_ctrl =
+			cpu_to_le16(le16_to_cpu(hdr->seq_ctrl) & 0xf);
 
 		if (ieee80211_has_a4(hdr->frame_control))
 			ether_addr_copy(mic_hdr->addr4, hdr->addr4);
@@ -1036,7 +1055,7 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 
 		/* Get Duration and TimeStampOff */
 		short_head->duration = vnt_get_duration_le(priv,
-						PK_TYPE_11B, false);
+							   PK_TYPE_11B, false);
 		short_head->time_stamp_off =
 			vnt_time_stamp_off(priv, current_rate);
 	}
-- 
2.20.1



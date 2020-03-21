X-GM-THRID: 6806789560169660416
X-Received: by 2002:a1f:abc7:: with SMTP id u190mr2043323vke.65.1584829810809;
        Sat, 21 Mar 2020 15:30:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:29c5:: with SMTP id p188ls60070vsp.10.gmail; Sat, 21 Mar
 2020 15:30:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vve+J27rBzUxeoj2PCW0yVy0cO6V+6tJuWSdzSQdi7BjKJodfgWFDAiBpExYrDRWNUr8tvz
X-Received: by 2002:a67:b85:: with SMTP id 127mr11626736vsl.62.1584829809581;
        Sat, 21 Mar 2020 15:30:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584829809; cv=none;
        d=google.com; s=arc-20160816;
        b=ALm+/cTSPwhbo8L0/pVHJdXEbbD/rWqW15dE18XEClXWiaLrqQrDqHvzEezLIHdgv6
         v6z+4WknCOZJLvZM8BnX9GBqUWw5eDll/STTJvBt2pXul3TNJ6ZDFJtp/qWwkmbZYP8k
         XRGcC/PpTF/BzewokNI4kboNGijDIcYc6P14dah4peZITx1zGDfEzxyaFzs+KDinwtFq
         xRXebxRmyzK5LRffkqHrqtBW1OUrljxUidIjJCIhiKcBB229PW6nd2B33HeJRPT45dg3
         9vhTJsUU1M+z8du8/PiU83b/bnYAORkNjZ0/Iu8Gc4YHrikP26SKlv4ZcgFSadyTI9UH
         4PtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=B5qFJrGFQqJyZwNKSurlZaktra2A1JiMh2eH8abzUa8=;
        b=X6fKQ+0pX3tZiXPL0hTrQU1Cyf/ZskeBfcJrWOfld/JTmhrxzt5tTMJvtsK6YgygJ9
         G/vHXzUZZW2aQUEFdq59rB4I3cmbIyYMj75UDOmodFBg17K2ddo4DaPDrbdvi8fml2EX
         LoXWTrJ+wy0T5b/ZTBaRC8RUrgkQionNgupuL4NRokXgLXAGiPa+a06f21DewdCJi7ZO
         PO2xoWJM685N98Tnjbon+Rb8iozUMBECLMPqNZVLkfRBUcaSvy70eV8kVnxO6J8IOZlT
         rIaPv1htu61PYLlChPVFgWTMlPxqTBNv47AtE9MSrd5uPnpr+JWxKPg8Vnz17RmcystT
         pmpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E41elm12;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id c9si514731vsq.2.2020.03.21.15.30.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 15:30:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E41elm12;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id t3so4136238plz.9
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 15:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=B5qFJrGFQqJyZwNKSurlZaktra2A1JiMh2eH8abzUa8=;
        b=E41elm12jd11riNXAxZcemim/OxYinkuqYLL8oC+r4tkR5+6JCTftkVbwJxr5NWhwd
         bQAP85rscxX0Jx/qnXpQqUDzgnu/EAKq8c24Y55N1UWxdS7IRe+ClebYXwlWq4DQPPDU
         PyVvsznktL62JBkK3d4x6NrQdzlJ0C0CUGGEFm8y+9Vqt3iNEY8HkxrPOXdGHtKNs6k5
         lN1OiTf71jTBZoRR7XrC1EYosNoiLW7gbmWH3SLT8BdBunOzNHGLulEKWbic20Q0iVz8
         e9XjmvnAsPDgVvnMeeXXh4X/c/+umih9KwNGJF8x3iMEENXElRKdiPXmt4rXl6FJYGQK
         +QJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=B5qFJrGFQqJyZwNKSurlZaktra2A1JiMh2eH8abzUa8=;
        b=umMcS2rHcx9ycSGd4MKZYeRhh8+WaD85Y3+faKL/wDGcE03YihnHTBuQaPA5wpd5JI
         UllJ9wnUD2BGYqPfqNH6YdLBd0Wttns6MpZl/K2vRMiAINiW4Umb7QK+tJGia91KRjco
         66eQnc/0Tbwr8EWH8URkj4pw27moC/4hIf1R7i8OmYlRPKyMYIm/la+rma3zA1gc+//B
         dTDfW1h/++Hcb7gIdgthRpDncVniPsABZ7K/IKX6pO/QzosIBPt6Szz9xSE1NOWUOot9
         tkTOj3qzQcW4BbjWOOskvYlQj9aORUmUaZxCTU2g12XIAremj/Mo+N9nXhv+lsr6G/2+
         zrXQ==
X-Gm-Message-State: ANhLgQ3QvVd7wqITBdFJPMLzjeTDzfr8qN8YToiLdVZFfU69c2KtEoUX
	76n3Ce9VNcEtYPgoCctyLc4=
X-Received: by 2002:a17:902:b198:: with SMTP id s24mr14576295plr.89.1584829808477;
        Sat, 21 Mar 2020 15:30:08 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([113.193.33.115])
        by smtp.gmail.com with ESMTPSA id k6sm8136655pje.8.2020.03.21.15.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 15:30:08 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [Outreachy kernel] [PATCH 11/11] Staging: rtl8188eu: rtl8188eu_xmit: Add space around operators
Date: Sun, 22 Mar 2020 04:00:02 +0530
Message-Id: <cf8c629e7aa360fb3f86329d8d7df7e49ec360d4.1584826154.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584826154.git.shreeya.patel23498@gmail.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>

Add space around operators for improving the code
readability.
Reported by checkpatch.pl

git diff -w shows no difference.
diff of the .o files before and after the changes shows no difference.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff rtl8188eu_xmit_old.o rtl8188eu_xmit.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 .../staging/rtl8188eu/hal/rtl8188eu_xmit.c    | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
index 2808f2b119bf..7d315bd438d4 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
@@ -58,12 +58,12 @@ void rtl8188e_fill_fake_txdesc(struct adapter *adapt, u8 *desc, u32 BufferLen, u
 	/* offset 0 */
 	ptxdesc->txdw0 |= cpu_to_le32(OWN | FSG | LSG); /* own, bFirstSeg, bLastSeg; */
 
-	ptxdesc->txdw0 |= cpu_to_le32(((TXDESC_SIZE+OFFSET_SZ)<<OFFSET_SHT)&0x00ff0000); /* 32 bytes for TX Desc */
+	ptxdesc->txdw0 |= cpu_to_le32(((TXDESC_SIZE + OFFSET_SZ) << OFFSET_SHT) & 0x00ff0000); /* 32 bytes for TX Desc */
 
-	ptxdesc->txdw0 |= cpu_to_le32(BufferLen&0x0000ffff); /*  Buffer size + command header */
+	ptxdesc->txdw0 |= cpu_to_le32(BufferLen & 0x0000ffff); /*  Buffer size + command header */
 
 	/* offset 4 */
-	ptxdesc->txdw1 |= cpu_to_le32((QSLT_MGNT<<QSEL_SHT)&0x00001f00); /*  Fixed queue of Mgnt queue */
+	ptxdesc->txdw1 |= cpu_to_le32((QSLT_MGNT << QSEL_SHT) & 0x00001f00); /*  Fixed queue of Mgnt queue */
 
 	/* Set NAVUSEHDR to prevent Ps-poll AId filed to be changed to error vlaue by Hw. */
 	if (ispspoll) {
@@ -91,16 +91,16 @@ static void fill_txdesc_sectype(struct pkt_attrib *pattrib, struct tx_desc *ptxd
 		/* SEC_TYPE : 0:NO_ENC,1:WEP40/TKIP,2:WAPI,3:AES */
 		case _WEP40_:
 		case _WEP104_:
-			ptxdesc->txdw1 |= cpu_to_le32((0x01<<SEC_TYPE_SHT)&0x00c00000);
+			ptxdesc->txdw1 |= cpu_to_le32((0x01 << SEC_TYPE_SHT) & 0x00c00000);
 			ptxdesc->txdw2 |= cpu_to_le32(0x7 << AMPDU_DENSITY_SHT);
 			break;
 		case _TKIP_:
 		case _TKIP_WTMIC_:
-			ptxdesc->txdw1 |= cpu_to_le32((0x01<<SEC_TYPE_SHT)&0x00c00000);
+			ptxdesc->txdw1 |= cpu_to_le32((0x01 << SEC_TYPE_SHT) & 0x00c00000);
 			ptxdesc->txdw2 |= cpu_to_le32(0x7 << AMPDU_DENSITY_SHT);
 			break;
 		case _AES_:
-			ptxdesc->txdw1 |= cpu_to_le32((0x03<<SEC_TYPE_SHT)&0x00c00000);
+			ptxdesc->txdw1 |= cpu_to_le32((0x03 << SEC_TYPE_SHT) & 0x00c00000);
 			ptxdesc->txdw2 |= cpu_to_le32(0x7 << AMPDU_DENSITY_SHT);
 			break;
 		case _NO_PRIVACY_:
@@ -127,7 +127,7 @@ static void fill_txdesc_vcs(struct pkt_attrib *pattrib, __le32 *pdw)
 		*pdw |= cpu_to_le32(HW_RTS_EN);
 		/*  Set RTS BW */
 		if (pattrib->ht_en) {
-			*pdw |= (pattrib->bwmode&HT_CHANNEL_WIDTH_40) ?	cpu_to_le32(BIT(27)) : 0;
+			*pdw |= (pattrib->bwmode & HT_CHANNEL_WIDTH_40) ?	cpu_to_le32(BIT(27)) : 0;
 
 			if (pattrib->ch_offset == HAL_PRIME_CHNL_OFFSET_LOWER)
 				*pdw |= cpu_to_le32((0x01 << 28) & 0x30000000);
@@ -144,7 +144,7 @@ static void fill_txdesc_vcs(struct pkt_attrib *pattrib, __le32 *pdw)
 static void fill_txdesc_phy(struct pkt_attrib *pattrib, __le32 *pdw)
 {
 	if (pattrib->ht_en) {
-		*pdw |= (pattrib->bwmode&HT_CHANNEL_WIDTH_40) ?	cpu_to_le32(BIT(25)) : 0;
+		*pdw |= (pattrib->bwmode & HT_CHANNEL_WIDTH_40) ?	cpu_to_le32(BIT(25)) : 0;
 
 		if (pattrib->ch_offset == HAL_PRIME_CHNL_OFFSET_LOWER)
 			*pdw |= cpu_to_le32((0x01 << DATA_SC_SHT) & 0x003f0000);
@@ -171,7 +171,7 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 
 	if (adapt->registrypriv.mp_mode == 0) {
 		if ((!bagg_pkt) && (urb_zero_packet_chk(adapt, sz) == 0)) {
-			ptxdesc = (struct tx_desc *)(pmem+PACKET_OFFSET_SZ);
+			ptxdesc = (struct tx_desc *)(pmem + PACKET_OFFSET_SZ);
 			pull = 1;
 		}
 	}
@@ -263,11 +263,11 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 				ptxdesc->txdw4 |= cpu_to_le32(BIT(24));/*  DATA_SHORT */
 			ptxdesc->txdw5 |= cpu_to_le32(MRateToHwRate(pmlmeext->tx_rate));
 		}
-	} else if ((pxmitframe->frame_tag&0x0f) == MGNT_FRAMETAG) {
+	} else if ((pxmitframe->frame_tag & 0x0f) == MGNT_FRAMETAG) {
 		/* offset 4 */
 		ptxdesc->txdw1 |= cpu_to_le32(pattrib->mac_id & 0x3f);
 
-		qsel = (uint)(pattrib->qsel&0x0000001f);
+		qsel = (uint)(pattrib->qsel & 0x0000001f);
 		ptxdesc->txdw1 |= cpu_to_le32((qsel << QSEL_SHT) & 0x00001f00);
 
 		ptxdesc->txdw1 |= cpu_to_le32((pattrib->raid << RATE_ID_SHT) & 0x000f0000);
@@ -278,7 +278,7 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 			ptxdesc->txdw2 |= cpu_to_le32(BIT(19));
 
 		/* offset 12 */
-		ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum<<SEQ_SHT)&0x0FFF0000);
+		ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum << SEQ_SHT) & 0x0FFF0000);
 
 		/* offset 20 */
 		ptxdesc->txdw5 |= cpu_to_le32(RTY_LMT_EN);/* retry limit enable */
@@ -288,7 +288,7 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 			ptxdesc->txdw5 |= cpu_to_le32(0x00300000);/* retry limit = 12 */
 
 		ptxdesc->txdw5 |= cpu_to_le32(MRateToHwRate(pmlmeext->tx_rate));
-	} else if ((pxmitframe->frame_tag&0x0f) == TXAGG_FRAMETAG) {
+	} else if ((pxmitframe->frame_tag & 0x0f) == TXAGG_FRAMETAG) {
 		DBG_88E("pxmitframe->frame_tag == TXAGG_FRAMETAG\n");
 	} else {
 		DBG_88E("pxmitframe->frame_tag = %d\n", pxmitframe->frame_tag);
@@ -301,7 +301,7 @@ static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bag
 		/* offset 8 */
 
 		/* offset 12 */
-		ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum<<SEQ_SHT)&0x0fff0000);
+		ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum << SEQ_SHT) & 0x0fff0000);
 
 		/* offset 20 */
 		ptxdesc->txdw5 |= cpu_to_le32(MRateToHwRate(pmlmeext->tx_rate));
@@ -466,7 +466,7 @@ bool rtl8188eu_xmitframe_complete(struct adapter *adapt,
 
 	/* 3 2. aggregate same priority and same DA(AP or STA) frames */
 	pfirstframe = pxmitframe;
-	len = xmitframe_need_length(pfirstframe) + TXDESC_SIZE + (pfirstframe->pkt_offset*PACKET_OFFSET_SZ);
+	len = xmitframe_need_length(pfirstframe) + TXDESC_SIZE + (pfirstframe->pkt_offset * PACKET_OFFSET_SZ);
 	pbuf_tail = len;
 	pbuf = round_up(pbuf_tail, 8);
 
@@ -517,7 +517,7 @@ bool rtl8188eu_xmitframe_complete(struct adapter *adapt,
 		pxmitframe->agg_num = 0; /*  not first frame of aggregation */
 		pxmitframe->pkt_offset = 0; /*  not first frame of aggregation, no need to reserve offset */
 
-		len = xmitframe_need_length(pxmitframe) + TXDESC_SIZE + (pxmitframe->pkt_offset*PACKET_OFFSET_SZ);
+		len = xmitframe_need_length(pxmitframe) + TXDESC_SIZE + (pxmitframe->pkt_offset * PACKET_OFFSET_SZ);
 
 		if (round_up(pbuf + len, 8) > MAX_XMITBUF_SZ) {
 			pxmitframe->agg_num = 1;
-- 
2.17.1



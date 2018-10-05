X-GM-THRID: 6608897994052861952
X-Received: by 2002:a17:902:32f:: with SMTP id 44-v6mr5778402pld.22.1538754294926;
        Fri, 05 Oct 2018 08:44:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:47c7:: with SMTP id f7-v6ls2642708pgs.6.gmail; Fri, 05
 Oct 2018 08:44:54 -0700 (PDT)
X-Google-Smtp-Source: ACcGV626bT+xQbSGZWG7K0xgJRLk8lw7DU7VIcxbfZ5YxNVvJWWrB2AGlv9mw6EWXhTpuq0sj7gP
X-Received: by 2002:a62:9c4f:: with SMTP id f76-v6mr5085588pfe.33.1538754294144;
        Fri, 05 Oct 2018 08:44:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538754294; cv=none;
        d=google.com; s=arc-20160816;
        b=RVNJAilAr0GBWqynDDtny66MDAVygs6/nbBwb/BZZnjrK1RzyUMLI9NBqSh5pys5R9
         x8aZJyxnOX6ZJAj7hYxMQ1qcr/HC/fwKlD+bjroYl6dMdowRkwuFt1zYskT8GIRJ9Be8
         DkTvvbNx3fuDcoTBL4GnW/vjFspqur3ZKlEStIeCUsYENKUkMKga1dZJgebwpYZSifoJ
         fsbQHmrR4KA8Pi4xlJgtFMmRyA8Cc1fYFwWSP2Gz2TGS9ENArihCcbLeadK792jPmpJm
         61RR5AgZ7V2Rg76wGgmkL6h9412M7gK7osLhVy8/XdN1mJ0UcTQMwArvYZ55fa786rN0
         Zsfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bj8VKQJRIdYVs94snfqRMlDvN5Ucm8NWCXQEz50BQS4=;
        b=V0T9jgT3Wwd9g9yFy6SfuarRgjobGa4kXqZhLcPx4d+s9jdfIas78iLalZIQubBsCj
         KYKdFonKPwkTyPHbXb9ur7eUbPDMbyDVhg2Eb6zy9GXS5BLWI0zuOQJVqDLDM1u+0iOq
         gA5m+w0xARt5uWlotMEWTpdPT30OggMGzl3tiQRSSquQZjLj62RC5lmQgGYSuo1309km
         20iJDNqqitEWKnmIKPh2ungRa5l+qe5AjXbdOWwCFTX0qx3Vcc0h+TGzDzbR4Jqh2u2o
         GOcBNbi3E+VHY2gB90Ux+fHUBicrmrPJ608YgSQ1akZDkM2HKaKEf4Hcss54HnfNHOzk
         vT9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="RoH2JOS/";
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id v186-v6si406896pgb.4.2018.10.05.08.44.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 08:44:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="RoH2JOS/";
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id f18-v6so4922566pgv.3
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 08:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bj8VKQJRIdYVs94snfqRMlDvN5Ucm8NWCXQEz50BQS4=;
        b=RoH2JOS/KT4/1FwZubLu+IVDzphAns2Z1PlcFgat406Ub9smRr4wPErEBocOVTQpli
         IfFBH0jZ75s8RenEysjVPDTuSbATh54nX4H81mOlps0BwW6GiGVn1UOOeQNLGPnuLK7W
         zu7blsrw6U4/s3260Kkld39UlGJwi9l3MzpuOq/FkbIySyUAF60ep84NDz9jlzxACwTW
         NiZw67MYjwsVohrFXcOJgR7KxTGVaXX7yv+m/lMAuWMv8qGxZsE9zC6zQRS1vz8ITldY
         nl9W12n46W43R2XIs4MSE7asW4+bhlE8b5x5nM20sr7ui7KV6SRHz2+6HTyIuvxWsN9J
         pIVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bj8VKQJRIdYVs94snfqRMlDvN5Ucm8NWCXQEz50BQS4=;
        b=cIUxUfQZyXms9gS1QUXy2C7mAG7HTY7/pCT6thmPfohzzctimzXPsdLfqAc4cfPxYA
         qau1lb7HoMry5FJoIqv1iA2I8Ys+LwdLHU5c4KyvOfcBTlbhYelVQHLTu2LCcrn46vZj
         yZlsNWvtRo8E6+3qrUEIKW5PHJubh6XJhe680YHp5Q3H5KqxVwW+UTwoB1J8glpHrFUr
         y+rWG4W4O6mTQKzoQj1dQkqi2716CXfN0yChvhqPsr4nuSniTmq/d/4n16MEBM1wz7i0
         mtvWDPX6OVI9cUY7RHc9ECJhIbKX+GDOH6vWtETxXOMVzQqECve0M7NZNs2zfuw9uSV+
         kZ0g==
X-Gm-Message-State: ABuFfoiNuYe338AfGLxENJ87Ve28+ByphHT5ItShEW5CgDrW5rQvpgMf
	v0YLfXWT0r1T+E1MyjLNxWw=
X-Received: by 2002:a63:9c3:: with SMTP id 186-v6mr10824822pgj.249.1538754293769;
        Fri, 05 Oct 2018 08:44:53 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.105.99])
        by smtp.gmail.com with ESMTPSA id b14-v6sm10153626pgn.49.2018.10.05.08.44.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 08:44:53 -0700 (PDT)
Date: Fri, 5 Oct 2018 21:14:49 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH 4/4] staging: vt6655: Remove space after cast
Message-ID: <3f08f1b38daae08c25cdf5d4a11daa76aa45a732.1538752705.git.mamtashukla555@gmail.com>
References: <cover.1538752705.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538752705.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space after cast to fix checkpatch issue.
CHECK: No space is necessary after a cast

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 1eb8cea..a7c1e46 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -1094,7 +1094,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 							sizeof(struct vnt_tx_datahead_g);
 			} else { /* RTS_needless */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
-				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts));
+				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts));
 				pvRTS = NULL;
 				pvCTS = (void *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts) + cbMICHDR);
 				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize +
@@ -1106,7 +1106,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 			/* Auto Fall Back */
 			if (bRTS) {/* RTS_need */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
-				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts));
+				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts));
 				pvRTS = (void *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts) + cbMICHDR);
 				pvCTS = NULL;
 				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts) +
@@ -1115,7 +1115,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 					cbMICHDR + sizeof(struct vnt_rts_g_fb) + sizeof(struct vnt_tx_datahead_g_fb);
 			} else { /* RTS_needless */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
-				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts));
+				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts));
 				pvRTS = NULL;
 				pvCTS = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts) + cbMICHDR);
 				pvTxDataHd = (void  *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts) +
@@ -1129,7 +1129,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 		if (byFBOption == AUTO_FB_NONE) {
 			if (bRTS) {
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
-				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
+				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
 				pvRTS = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab) + cbMICHDR);
 				pvCTS = NULL;
 				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize +
@@ -1138,7 +1138,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 					cbMICHDR + sizeof(struct vnt_rts_ab) + sizeof(struct vnt_tx_datahead_ab);
 			} else { /* RTS_needless, need MICHDR */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
-				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
+				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
 				pvRTS = NULL;
 				pvCTS = NULL;
 				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab) + cbMICHDR);
-- 
1.9.1



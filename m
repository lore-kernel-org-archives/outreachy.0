X-GM-THRID: 6608897994052861952
X-Received: by 2002:a24:1a89:: with SMTP id 131-v6mr11088480iti.3.1538825500659;
        Sat, 06 Oct 2018 04:31:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6b8f:: with SMTP id v137-v6ls1186636itc.3.canary-gmail;
 Sat, 06 Oct 2018 04:31:39 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63wthrOvdAPV57yjaQXraLvYrJit8MUsoCzUKBZBXMLl1qDLrjgTCYgGK4rdnB/FGE+KrwR
X-Received: by 2002:a24:b713:: with SMTP id h19-v6mr11198525itf.28.1538825499564;
        Sat, 06 Oct 2018 04:31:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538825499; cv=none;
        d=google.com; s=arc-20160816;
        b=Znrky9tWe95zT5GFWI3WurVrXq5hzuQuyH0QgRzVB4/mup8jn5YwSPIApMJVZ9/2B6
         vql9niK8Q9QjqSf6dqJDFYisoRFw/KVOJVlvlyGdYNdlf6eD+Z7og3Ymi1KDYVA9xk1F
         ogLk4ZgcKzqo6ndhY9nh9dkwEPtZfkHgowhj4J10ZWKjf0s3wXte+RYnrYtxIWNGmk32
         byrykTiBxq++tonea+KnpJynJMtxlfyX+iYJjpTaOsZl+TGk5ZBnWztTOSjg+xBl9yQP
         i/w0LbvXeKKzaGG9skO+mo2Yt4nsY7bzoL2luy+nBmulxUCY7pW/un1og33vhXl9Fx8S
         5WLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MygEdsLo8AKWLhGXs3xnbUBLy4JOmZaxXlAjCB7dyp8=;
        b=msd1L1ZBQl0VRJX9iUxCkeyV4MLWhNFBIEsUUA58X8QqQt14CY7yuoCPE6V9UDJNzT
         bd243oUhQscbITS0z7B7nBmV3UrWFDH0fwT6sQFtqQf3+RGBcxCPQUd6emIIp1q0ORgt
         VM6XkL2PmOEztBdu0iNwa/J6oH/N4qNhPlUfHR8BGgX8bu2zCxVw0oHcIV0l7xhgIDaS
         6TkTMH8Fkq377Ro/z6pid1tBOs8eW5LV6Fs2QlsSYELq+c5s5AATNPV2DJAa1bzWCobO
         gkpelNBh2wdcAsBvjsLaDuRO4MgaMh9s/eHCM4k7o0YmXTpKwz4Lq044qIUimZimo3wn
         x19A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XLEUii8Z;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id q132-v6si96269itb.1.2018.10.06.04.31.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 04:31:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XLEUii8Z;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id r77-v6so5847556pgr.5
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 04:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MygEdsLo8AKWLhGXs3xnbUBLy4JOmZaxXlAjCB7dyp8=;
        b=XLEUii8ZxtwXo4pR/aqVRu8Mk5R/GujjnIxnbztPFNyJhgNRqewXpTg0JyKJYYgqF6
         ihk08duNzhb0hevr+eu9LSv0mMf6ikU1CY0U4b4cW+8BjWH9JZxyp+KoB7fD7GGR7NfU
         BZD7yj/n6mDThM+yPZKAUVRQKY+T4nrOt+7CK855PHYvGz4P8e7R0AIL23i94tysiqmb
         IIlZY3Y3RT4iSeuFtJ0hwiRHh8m7nCoWCCc+NMx2e9UqKS6V8Jx3/MBi922nP6rLOxQb
         S0+ZaVdapGnmQLMnE+YdKjRq7OP0T5YKy5zukMn6VE9OWDjb+BYYX3awQk2guW2ToGnS
         UiaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MygEdsLo8AKWLhGXs3xnbUBLy4JOmZaxXlAjCB7dyp8=;
        b=nqIo8HtaT6oy0vwRqU2vZTXc/05UAxDGQblXzeQc59FnDmovo81brbCBrQ4uUFFWLn
         na6jDLWERu3OVeOljYOlklV6AUwQkTDUuT7EfgWK+DE7XYoPJAY6+5V+cVTGZp5vUXqK
         HRTMQYRWUwILGAOH9z2V2WVmXBrHg+DyMDL51aeRdWUDTs6J4xM6JvO22JnNFN/Ohdfq
         fBGCn/bfnWczDklNsq5wWD0V3Jk8Rv08d0Ymd47MvMIdRcmgLB33y5qHjL6rCEgbhMqO
         D8Xd5UfbiHD+JoEqIhYZ9vEhYfn8tewj50Ii2x4Ykl/TFDJ8CyW0tMuycOk2luArM4Wk
         Oqvw==
X-Gm-Message-State: ABuFfojM/h8RDKlkWk3UC3Yoqpc5iUpumU16vs07PVDO5+4boFtglyBf
	NAbiQu2WMdp/fob9blsY7apyin4RBWY=
X-Received: by 2002:a62:c60a:: with SMTP id m10-v6mr15480226pfg.15.1538825498891;
        Sat, 06 Oct 2018 04:31:38 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.64.93])
        by smtp.gmail.com with ESMTPSA id d65-v6sm15659640pfe.42.2018.10.06.04.31.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 06 Oct 2018 04:31:38 -0700 (PDT)
Date: Sat, 6 Oct 2018 17:01:35 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH v2 3/3] staging: vt6655: Remove space after cast
Message-ID: <dbcd26b975bccc860d61ee4dfdf0cf58f3c77929.1538823377.git.mamtashukla555@gmail.com>
References: <cover.1538823377.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538823377.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space after cast to fix checkpatch issue.
CHECK: No space is necessary after a cast

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
No change in v2.

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



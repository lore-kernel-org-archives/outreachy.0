X-GM-THRID: 6804165512608612352
X-Received: by 2002:a2e:9d0f:: with SMTP id t15mr11976160lji.171.1584218235200;
        Sat, 14 Mar 2020 13:37:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5476:: with SMTP id e22ls1933493lfn.7.gmail; Sat, 14 Mar
 2020 13:37:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsnsFsr9WK/BoZ0USWYmOMBlcvYzrnPxBYbZoSiAyX2hyNpYaiTp2kiDyPdhyWVI0CvFo89
X-Received: by 2002:a19:a415:: with SMTP id q21mr12106940lfc.21.1584218233279;
        Sat, 14 Mar 2020 13:37:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584218233; cv=none;
        d=google.com; s=arc-20160816;
        b=0EPGTQW7vCtqUWNIIdScaWMS+IJdWHSUhL9rcWqAIaEpNImhz9HyXjMT7X+96VTby4
         VgAJd5nrgKLa2k7NIE89hCj6/y8BSeOMJuyBd3VPqNrCU8SPyy5g775PMYmYTq5Ji7/1
         2DSOrq+nQbpsV1C4yF2ME0Wm/6CFkA8pIeMM6GfZ6cA9vBt8HI8RepCBOIkHx0UD5Lfw
         UjuJm+RXNhI0lewMvyecUUPUQzUmKh4c7SBqapai3HcnO6lhRdkLq1RdBFgwRlM11gW7
         aKl7X9iGEFFF28yOFvIn34GkorEoOiQKMMg3gYrc56ebV2li4J5dP2SB7kcOJSIm22yD
         Gcpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=vYUWxAGmJdWf5SS6InIlqJiQ+QFfExwsWoKgHMZLbeQ=;
        b=e8aNvneCd8uKOPx70kW+9AB4akt97/k83CCiXFsShQOfPXK1QLwUECiQH+QJ0Don0M
         MJoUbft1gE1PXsoNimWklQJeSj6skKojQWBlkxqsxD0ZZ1absaxBEbgZuQb1MX1DJ/0i
         1XoV4v/2e8QRC4oC7Da0JujsWWTcrWYZzCqppPsTDIV161jMIrlPSDZSrzdwOyLZNsRT
         EgNxILkt6xK/lVtN7ZuxZfpd3G5gZwluLgWE8eE6q50X1iKc1rLU+XtbnAf5co+K8yHu
         TPASSpk+UWv642Gh1ZyUTpdDLiwXPkNyGSKluPGqFDpdp3SN8v8p1r9xPUN2rxmjmtqO
         t2Pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HN0A6qKO;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id j11si510972lfe.4.2020.03.14.13.37.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 13:37:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HN0A6qKO;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id q10so10739917lfo.8
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 13:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vYUWxAGmJdWf5SS6InIlqJiQ+QFfExwsWoKgHMZLbeQ=;
        b=HN0A6qKOBSYY/EF7UJai8i9+tnN+2Uc/5yAqxpw9t8d73u0uon1ld4onprbdjcAhp6
         unsmyUVRWhPHlfqUhaUVqgOYMxpAXdQ6UaCnUY3DMRBLyJ4zB0DvBe7leY719S9RmlL9
         H/025eSMCNj0NObmweZaGfa6ruaAkDiiPfqSiG/RB4G1J4dcIhWKFxf1WBnYBLB3sMim
         BV6o0vYfPpXQIpNVebPN3JDlzSNhl78rs7XWJXhmHHmzzMLWMXNGpVpuBybBDfT08gQL
         hs6vi4gHnsmc1oAV/EtyyOLuNH403lVrziQw1RM2pJKYLsYdhI1Jo05Zb7qWv4vlli2c
         ydlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vYUWxAGmJdWf5SS6InIlqJiQ+QFfExwsWoKgHMZLbeQ=;
        b=FhIyqXi86t1RenvC3noPETfMFOVwxW5Y3OnzAVnADTEexmG3kptWNKO7t+/2LamLEz
         mSmujT5WA4pm6T5AQJutXS90EATjUjqCbcUNzUBYvT1kJpv9TJ9iaAU8h/vF7mM+bdlX
         WdcmpId8Mij6wvxo0TCVDWhCDnmemjFokYInsFGVYp7o2kcDmYjUHVoP6AFj1CgRakEZ
         dq+bBmi6HyftGNTumR3sIS+JS+SJFy1hyuN+KWEgyj/THtoVlgHC5/YPP8KFsVyfYdi2
         ajPVn9tH5JrEOy40rEjDPGx3OIHRBINXBtTYTJwt6U3mJ6IouITsBGiffmxuljo6lzr2
         MQcg==
X-Gm-Message-State: ANhLgQ0citEbDBaFnGcBVQdEfP4IV/QFxkyGPqsHys+qu0XPm49pwTI2
	f1yTVUsSprN2zFLCa8xGbJEsyu34QLs=
X-Received: by 2002:a19:7b18:: with SMTP id w24mr12277659lfc.188.1584218233065;
        Sat, 14 Mar 2020 13:37:13 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([85.107.72.16])
        by smtp.gmail.com with ESMTPSA id r186sm18268705lff.66.2020.03.14.13.37.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Mar 2020 13:37:12 -0700 (PDT)
Date: Sat, 14 Mar 2020 23:37:10 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: vt6655: rearrange line exceeding 80 characters
Message-ID: <20200314203710.GA14591@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix line over 80 character for function.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 37fcc42..b19faa4 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -1176,8 +1176,8 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 	s_vGenerateTxParameter(pDevice, byPktType, tx_buffer_head, pvRrvTime, pvRTS, pvCTS,
 			       cbFrameSize, bNeedACK, uDMAIdx, hdr, pDevice->wCurrentRate);
 	/* Fill DataHead */
-	uDuration = s_uFillDataHead(pDevice, byPktType, pvTxDataHd, cbFrameSize, uDMAIdx, bNeedACK,
-				    0, 0, uMACfragNum, byFBOption, pDevice->wCurrentRate, is_pspoll);
+	uDuration = s_uFillDataHead(pDevice, byPktType, pvTxDataHd, cbFrameSize, uDMAIdx,
+				    bNeedACK, 0, 0, uMACfragNum, byFBOption, pDevice->wCurrentRate, is_pspoll);
 
 	hdr->duration_id = uDuration;
 
-- 
2.7.4



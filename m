X-GM-THRID: 6804165512608612352
X-Received: by 2002:a1c:b7c2:: with SMTP id h185mr23104274wmf.67.1584285674946;
        Sun, 15 Mar 2020 08:21:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls7807284wrd.5.gmail; Sun, 15 Mar
 2020 08:21:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtWW55OQTQv4MYoSjF2rxNM1HhmtW3gUFz9BUhTeqHubTePmFELICiCEpDe/QNrMvk/hvCk
X-Received: by 2002:adf:ed8a:: with SMTP id c10mr30555075wro.423.1584285673500;
        Sun, 15 Mar 2020 08:21:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584285673; cv=none;
        d=google.com; s=arc-20160816;
        b=Jzdc8OhQro+AjWkjOstIN6Q6Krcf1DI97MjpASj61YMWSElQqxDU7yAJvnMcv57uxJ
         m3rsXUrCzuGbxUthtw/yCPH4R9YfskTWtt1CBLPVWfQ5e/Q9mpMmZoKRtEz/xzgJIw/a
         yHYsBWSLSX5Jjj8FRXc5mwYNXmc46+bxIq09tZvckPGlRwaTqRvTNbx4TXDW8mE0di6m
         D2HgH8Z47OAqdQwCiJ7GNL9BJC2cekJvNQAXX/4L4AmctmRhzVUi9+OBJNLxAiiCAbqD
         y/AL8vs1ETXcWrrO6llE85E/ds11I/ywwGEM64UFI19WMCEtfo/UkBqSbAAZbV476PFc
         sTWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=yZxGbM/gRsJEfZCeqsHjQgmYNtPTTdcycLO1yVCBiNk=;
        b=JIxsRCB9Nk7H2e9Ir4gcF6UirzKK2W3OvtyLplv10ivSSBAr2k/0HbgZ7RB9gxywEO
         poh5lm0vu5btAKaDFPQu5CrqeXrfUnydkbiw3JYzmYwh/deCWhv7VfDSuAjvcXb11ocV
         a83Kk6Y3NRv3orUkOMe7QjqcEPx33RNrqhtIhfdF1WUz3T+19syRh2qXmnuopWNiR+Wn
         QfImbd1GgoofR+aio8wOvzV3CyvvESf2iiVyFILhs39iEC4AocjBTzJ5WUrNNvACGXeU
         YZy0tcYht54C50Ft374wwYh1cwM6vWaq1L4dn7NI944DQrwjSHAbdqlNH3nc0k2I7WSg
         IaOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RiDGVDIw;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id a18si98166wra.0.2020.03.15.08.21.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 08:21:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RiDGVDIw;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x142.google.com with SMTP id c20so11860250lfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 08:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yZxGbM/gRsJEfZCeqsHjQgmYNtPTTdcycLO1yVCBiNk=;
        b=RiDGVDIwyXQ+LSj/O92oeF//ZIEOR2n9sWAdsRdWaPPifIfvxkzyk2NSzsby6+e1wS
         ixrbIF4Vo6a/mCPXavKc+Rsp/EnJtsUUuCNUoM87Qnmm0Ts1BvzY57yWlZD0rS7bLeRU
         NqQjlTn99i3b6dXeqbQvZolcgATCJLAHKUGMTdPqCXORAj709i3rnHMPKZxAfaRWLvgd
         HmNEEQE92rkY8wH1m9e0oRri2r3X35H/14LNz1Ad4j07zuGXxiMdiNnwWMevPl92hLmE
         97XxS6rHW+zp1vhlosYub+HRS4joWn/bferhoArFF+PBJ7xD6gzupCcuYQqA6p1YYIlI
         S41g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yZxGbM/gRsJEfZCeqsHjQgmYNtPTTdcycLO1yVCBiNk=;
        b=uGcWi6AqeAVsE4nAyl+5hnycVvxdQt9dDHeMUBkwZuu8LCBFz25J5mONhrpFYKf4Ia
         isPCGuoK4/I9d8DfEeVaM/l87QOyEBFlTl148KRA0dGMFPbl2iVU5giIidXvcP/9c+z5
         XEwfBqYwWoIx9HQFMa9EkORhl6LAY6h7lY2fEArhAAA4xA4q2nASBy6aRMGO8hv/aHyE
         1qVA4ggoGgAE/27IZf63ARviw9YmGnmU6AMklR6jENgv8Ff7F64LYkTpxrNGZVOb9BpS
         A8Wa9V326ZN62I+IQJo1Kx+0Gy8CO7f7aeVTETrdygV8ffeRGlJ/wosoX45dlFoYqrzF
         q7rQ==
X-Gm-Message-State: ANhLgQ17F8tMjJQq0rwK9sptEW4vHOrimQlxxfUxEHPMUr1gAEZzWvqf
	24ZlzTnntxzsPbnrV8w3p4gfT7ivDKg=
X-Received: by 2002:a19:6101:: with SMTP id v1mr8346462lfb.56.1584285672887;
        Sun, 15 Mar 2020 08:21:12 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.64.169])
        by smtp.gmail.com with ESMTPSA id u6sm25855731lff.35.2020.03.15.08.21.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 15 Mar 2020 08:21:12 -0700 (PDT)
Date: Sun, 15 Mar 2020 18:21:10 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: vt6655: rearrange line exceeding 80 characters
Message-ID: <20200315152110.GA7184@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Some function parameters have been moved to the bottom line for in order not to exceed the 80 character limit.

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



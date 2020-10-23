X-GM-THRID: 6886883229146546176
X-Received: by 2002:a2e:83c9:: with SMTP id s9mr1315154ljh.168.1603477455042;
        Fri, 23 Oct 2020 11:24:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:888a:: with SMTP id k10ls451681lji.10.gmail; Fri, 23 Oct
 2020 11:24:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzPFVEBaJ7Q7rj5eQNEdxmPdEC9sBwI7DWQK4GWSdh3hfboDCBclUrJ9tf3PfEFh+zgQuSZ
X-Received: by 2002:a2e:b0c7:: with SMTP id g7mr1296855ljl.433.1603477452776;
        Fri, 23 Oct 2020 11:24:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603477452; cv=none;
        d=google.com; s=arc-20160816;
        b=iGkNcquGD8xWUA1DxxthEs70EGuviAOjuZ52TidsC0uyQY75R6ivjzMb4Gj0h+X14T
         Ef4NzKg7oFFWFdpWRyB2tnMWSHJkGbb6jNtanKXb+wMTlMYrze9eziDigbgSvldNOqKs
         VtNS/z48YgUn6TKeVtoImg/S3WLs6RwoFxkxSoV63SPSJNaHXF9EU3ImTN2Y+7D5B4P0
         29cY3+nrHd+AaJveJLgcPVN1x59DxmcmkGbn65D8Ugmmi5jPGMI5+u0Nt0GBWwXo09HR
         krgz9/lQw7ADD+DcMyBhqcHY3mhv4ZEbI/61TR2uAZHnCv8unye0iRW6S0WjaXGP00FI
         exTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id:dkim-signature;
        bh=BKCKwmKkZDMRVwm+LJLI0T0g3sR43/Q0IGPNyvuspeM=;
        b=dguClqJH4BQa20NaJcx639No6KugBjbqAkh3/GUGVgAjU4McOG4z60FwgO56n9M1Nc
         c6yZGA7fGZqZW15jGAMab59k18Dmx/+Lu/hCqth5xakXmA1zP4QzyvCiOeBB0Zp/Dz51
         HQHwpKbLSd6wKZITlm5C7DwMtxeI1+wDuihCsZfoQ4qbsE7vZ+rJg0/RtawWY8AdDSdB
         33EK8yKMT5CwO3K93h+WlkkXmNFLDwZa3vecU87rEJvVCdAYvZpMw98nBXGHdppxaVMV
         PzlGoDFFe772TaIjEW7n7e09ly6/Cy1akWv92RWNTpJmaudOu3Sqe2VUrqESV5zskDgo
         y1dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="pExkK/6T";
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id o22si46202ljp.8.2020.10.23.11.24.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 11:24:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="pExkK/6T";
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x142.google.com with SMTP id r127so3171177lff.12
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2020 11:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=BKCKwmKkZDMRVwm+LJLI0T0g3sR43/Q0IGPNyvuspeM=;
        b=pExkK/6T81YSs+OenXupZovdpoFbz4r/cuNfHra/6rK0JKKoGlSpXM8xCQ0YwDtPw7
         cOz0mGYw0tsiFVE/8izY72ziIfmuoM8wYBsDGxNj2/At9fbHBYV+apK+ALW+t7UKcsmQ
         LIZwRRTKV8FZqNDOoaxngjiocJmaofxOTzER5OGIa53kEPkHiOuvBpRV5/kr5MF0z/1O
         K6jkofhKKxPO2yBgdkNW5T1nnymVTeAbCgk5B9akVGM/5aX4HZRXnukKKopsXn8hw5Pv
         JrbYyNaFiTy4VDmpCYSGYITvfKzKnIqWs+g+ax3DE0Ok0Z+mCeJ/1zSRnXyoiENe6zSc
         oHWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=BKCKwmKkZDMRVwm+LJLI0T0g3sR43/Q0IGPNyvuspeM=;
        b=iEK0/JVgQ+SqeFRlM9JYeZl6hp0OFgoig1/q5dpV3/OkSEOgvtYyTeIDzV3hGclLB8
         RTaq/Y8Gpbkl3eBCxFikJxKRbpW7tJKPuyiDjfoIaegHWhzQg2GMkH36QuRjsU3YEzlE
         WHz+h/o9Yq3dCbxyvhMmqASt5D78/PcD9vC5vpBCmz5OdwDRK3mWxX1H8xaei1rnw0Dq
         fQoskUFT6Lba30y8rGeFqEC6wOTJv/ejDvYA+/w+brrP2O5ltyqaUkMdEjiHIzFgLOLu
         DrHZkD8s/wITpJ67fume0WBrSnoT/pV6j+Lm/py/XRGGw23KKUaIJwmtbK1sz/nrdazS
         euZA==
X-Gm-Message-State: AOAM530ILFjFe+mCH3XQgSasR6ryFk6oshRnNctsUBRZb9pe6lAhKAj0
	6C03O2re9vGEcMg+/b299yoZtB0Pf/vQ90MV
X-Received: by 2002:ac2:4903:: with SMTP id n3mr1120962lfi.490.1603477452460;
        Fri, 23 Oct 2020 11:24:12 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from [192.168.167.128] (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id x69sm206809lff.54.2020.10.23.11.24.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 11:24:11 -0700 (PDT)
Message-ID: <afff1ded817cb27631f87146ae198e2915ad61fe.camel@gmail.com>
Subject: [PATCH v2] staging : rtl8712: correct the code style for comparison
 to NULL
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Date: Fri, 23 Oct 2020 11:23:57 -0700
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

The coding style (!bar) is more common than (bar == NULL). Reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
Changes in v2:
	- correct the subject line
	- correct the commit message

 drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index e83c256e1474..ea1aad4a5561 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -136,7 +136,7 @@ int recv_func(struct _adapter *padapter, void *pcontext);
 static inline u8 *get_rxmem(union recv_frame *precvframe)
 {
 	/* always return rx_head... */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_head;
 }
@@ -144,7 +144,7 @@ static inline u8 *get_rxmem(union recv_frame *precvframe)
 static inline u8 *get_recvframe_data(union recv_frame *precvframe)
 {
 	/* always return rx_data */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_data;
 }
@@ -154,7 +154,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
 	/* used for extract sz bytes from rx_data, update rx_data and return
 	 * the updated rx_data to the caller
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_data += sz;
 	if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) {
@@ -171,7 +171,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
 	 * return the updated rx_tail to the caller
 	 * after putting, rx_tail must be still larger than rx_end.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail += sz;
 	if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) {
@@ -189,7 +189,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
 	 * updated rx_end to the caller
 	 * after pulling, rx_end must be still larger than rx_data.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail -= sz;
 	if (precvframe->u.hdr.rx_tail < precvframe->u.hdr.rx_data) {
-- 
2.25.1




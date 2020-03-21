X-GM-THRID: 6806789560169660416
X-Received: by 2002:a63:89c1:: with SMTP id v184mr15853483pgd.333.1584829763933;
        Sat, 21 Mar 2020 15:29:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls5917709pjo.1.gmail; Sat, 21
 Mar 2020 15:29:22 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuQYbP1+HBUmMToqMlULSLFKeNur7is3PccZ+FSefJXS9B4MpRFR3LVPliT+WxDuHepBWy0
X-Received: by 2002:a17:90a:34e:: with SMTP id 14mr17218914pjf.32.1584829762311;
        Sat, 21 Mar 2020 15:29:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584829762; cv=none;
        d=google.com; s=arc-20160816;
        b=HaSMD6QsiUx9OISKbCttxp8MTk0/42RIdXPR+AcAQUNgbVJQChQbZ1tPvKGX99Vz++
         32wkCu/eGipcZsboWOhGGUyThT1vb+EfRpi1svLNr8cUTTJavy/oJvkd523FYfFxEShj
         3LKrxvvikr7L01z6dkVWFRGip1CuYRCmGkOFBqlOk1A3q/9hK7tx3e7JxNhRSqe7N0wT
         +tHTof490xtctPneNhUyat/U92+59YN7WvkokCdfidbObrlu1hsqxY6BS9f9mSF41ReJ
         YNxMI7/nNEbbK4XQOfiCZ3FHwMfqpiwxeKYX1tX2SXKRUotMflrLq0Mu7N7rNZtT9wVQ
         SVGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=SuELOfyOz/CEz/99d3bI8dTWcwrsJmXIVlGN6B64z0M=;
        b=NlPwKTjwr7kn9VsvVKvXpX/9elP2lZdfQhyp4DOFwjxkDb9/ryg6yoZvGr6Y5oTiWW
         eDmRK2xoWdSQUt0DhC8LeSZhOvs8bWpnPtgJUDyUlOS5FZTLewAmaJCmC5LQknTLcZiW
         BveADO6lIPL51/BpQpF40OGRl0LtdvrpoxTiaWhlLVXhRMLf4kqsxf5zesJUYTLXYXU7
         ttpkf/2oDo3y+/5/7ocOCePKOqaMC88EdZuT9FFXxavbflrVheGW0bMFlleUyAKCvBQF
         Ftji9XWETE2bri3XOzc2JHuluIlstiY4gJwt8+ZywWievMgNeRb6iEmsSduzer+0wHYm
         Ci8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aEYHyGmQ;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id c125si54073pga.5.2020.03.21.15.29.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 15:29:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aEYHyGmQ;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id g18so4157743plq.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 15:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SuELOfyOz/CEz/99d3bI8dTWcwrsJmXIVlGN6B64z0M=;
        b=aEYHyGmQpxeFZqEXPnIVSbEYZqdPTYPzvm6I7qtE9TfIpAIOdzBlTi5iQpxQZlcjY+
         v46ovDZ4QD5bsOL8QD/SOypuvp3yLfF3VTvNJr8wwkG50UhaKBXUbcMJfrF2xzgMRf9b
         TuA1ghjjfDsIAX/O/QH57ctYs/8ODWVLDBjBfKtrLTWrJxnfrx7ER/1Scv2dOykwUnpy
         B3xUNHZs4YUtnsoX8WUneCtV8CnMNOdOlmFtV0LsdZVdcgX/ftj3A92R386vsk9bMo+G
         +I9nrPrWutswAjFF1ubcdoadzbzhZqYvqHVYOYDjomtorqarhDIb6c80fhG/3AiUKyKe
         voxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=SuELOfyOz/CEz/99d3bI8dTWcwrsJmXIVlGN6B64z0M=;
        b=s31Tw5XSsWMZRhRGZnyOlN9efRW5wgh8C9298vlInH5HuvcpM5vjGwMTzRm2H5pZ/B
         itT7K5fMNf5qg+Ph/vFYzp0DNQm4g5GoQ9m8lk7MyxnO6E6ZAfghxDImf2/T4yfkXLCk
         C9mHEFUN/rh79ie8oYfQG0PrFUlYfitY0cs8i6eic3oqAMJoaVc5qqKvTN7kwOnxlm6R
         8C0NLl6EbFni3VrZFoUeFGl4kyoeUslyWNlIbJQBfC/WgzPEOcXmT/snCfLebtA3m4Hj
         1Mx/GWf+sIsRoHDRMIoeFosKo1NFsoXiTAkSXr1lmNSPfqkyCJKDjDCc3AVCCBx02Rcg
         aMKg==
X-Gm-Message-State: ANhLgQ1QqYk4djoOPI0tT5VTpfTOd+Ft/qj/lQprxahVt7cA+s5C8C4F
	kQP8ave22D//cD1yVoLRQ66bm3TEXhY=
X-Received: by 2002:a17:90b:3c3:: with SMTP id go3mr17475019pjb.10.1584829761900;
        Sat, 21 Mar 2020 15:29:21 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([113.193.33.115])
        by smtp.gmail.com with ESMTPSA id e38sm8416270pgb.32.2020.03.21.15.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 15:29:21 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [Outreachy kernel] [PATCH 10/11] Staging: rtl8188eu: rtl8188e_rxdesc: Add space around operators
Date: Sun, 22 Mar 2020 03:59:15 +0530
Message-Id: <8d558ee0228cee22a2b0e058dba0c505b14ee1b6.1584826154.git.shreeya.patel23498@gmail.com>
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

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff rtl8188e_rxdesc_old.o rtl8188e_rxdesc.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
index 0a900827c4fc..7d0135fde795 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
@@ -182,7 +182,7 @@ void update_recvframe_phyinfo_88e(struct recv_frame *precvframe,
 			rtl8188e_process_phy_info(padapter, precvframe);
 		}
 	} else if (pkt_info.bPacketToSelf || pkt_info.bPacketBeacon) {
-		if (check_fwstate(&padapter->mlmepriv, WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE)) {
+		if (check_fwstate(&padapter->mlmepriv, WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE)) {
 			if (psta)
 				precvframe->psta = psta;
 		}
-- 
2.17.1



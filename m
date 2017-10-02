X-GM-THRID: 6472270540266536960
X-Received: by 10.28.99.67 with SMTP id x64mr1681869wmb.31.1506942915206;
        Mon, 02 Oct 2017 04:15:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.10.83 with SMTP id 80ls1990544wmk.1.canary-gmail; Mon, 02
 Oct 2017 04:15:14 -0700 (PDT)
X-Received: by 10.223.171.237 with SMTP id s100mr1522523wrc.31.1506942914215;
        Mon, 02 Oct 2017 04:15:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506942914; cv=none;
        d=google.com; s=arc-20160816;
        b=Cb93Mbpe8rUxuRwe8kerFruwnKYNqgzMIP79AZ/6kjLpeiCoh4PO+kRE1Fs5jtmQPp
         DytDVJcwiAVCiPnhNhy2Fu28jwDofJ7w+GQxvMCHhiskBQudwAbr/mgziLrOOzvqmHjp
         2pVhvV8orHVq9g3x8uD8RUllCse0i66GhY5R65DO6NEPOSj34YyiLEmHyYtkd0gU/iie
         8r35IuP46MIvzhOdoOAbKHn6KbUsLsb7FG8LEqmVbBjwRFHRGY21Qd2cN3sE8OU1PpxX
         UQWYODDnnTMD/cWJ/caR3Sy0UV7vYisRRP7Y3JVUrHfwy9FV0uJ79qSedNjrPLdfJYXa
         awPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=5jMLjs+awpdUYduTtP5UKH2Rv/qUfIhJOwXoFX0IlS4=;
        b=gNMqZFaR015IBEw/b+U9VXEWzg9DkSp94Ti3Jzs6QqjKCaZGBoF5d5QlRdQJjk0lZm
         +nBW7UXQBl3iDE3eUYEOSAXgVRqegpooFp3gdrH3oWTmA0UhrnSh9tdXsyHM7gv0k5kc
         BHXpLZBjFu55sOBbjLk5FgLJzUWjg2xq/Ys3bUh/YtnIVQii1sX+XSz0bmYMGPSgyYPB
         uzsC/5BfUVW5OYJke2Havzs/Y21wNw1uXlzvv394++lrKjjqCqFdyeL8bQ42ZjhpFGT+
         g9G2D7ZavL6SfSeseSvaGXWMM2QIS0UVhW3/7I4yqoLpHn/DjeG6pr0ILY6D1/lVjtqY
         JoTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ms54DFs6;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id 191si983945wmn.2.2017.10.02.04.15.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 04:15:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ms54DFs6;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id k10so3568877wrk.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 04:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5jMLjs+awpdUYduTtP5UKH2Rv/qUfIhJOwXoFX0IlS4=;
        b=Ms54DFs6qLqROFEEICBXNVyNDcJWad5iKWib88oxD06Pm9OYx/z3sLs4rRJVpvYtG/
         p9r6Ev1fV30ih9dzqMDPX4V2sfwxmqPPAIuIfmz8fGNSYje78Ug8/0qAHg5ZiFXFZNtT
         VdGtv+Wp6hx2A3QSJ3ZrTU2NUImmtx/48teciYnZF30p001a00AsC2EfMyW2zMKiBcp0
         gqOcndDFDR2aZ9Ye0xi84tv7uFKLXAt6QEqjz9zdI+NSE4xvF4pcmXeXl8uDkJE/Y53A
         BTGkRrp4UETUe2/RnrFHMh/9PzWuUV01yNr+pgz6+HS3TvF1/QoHVyJi1XCOf9VQz96V
         yrGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5jMLjs+awpdUYduTtP5UKH2Rv/qUfIhJOwXoFX0IlS4=;
        b=mhA1VXAnx8XFCRm59YmQj/1DWCoXZi3Xp48xnuRWV+w9CVkl5zTMB18MXpBQBgLdDk
         k+im6J7+WDv9s3ARspBxA8I8at2aRYXUI9+s8F1K+JkyHfbPAuZcs1RYSnvawAJ8SrxU
         gubWQj8fgQnio9stQLoP9TlRhC8sYESJCCcw8hVwZ2MDYJ+KPBqMzv3abY4TiZDLZD3u
         vP+G+lTIVY9Nbu5lZ61cjfDHzt80Zb4SXbYRPpL1UJHB/JeManCT1NVaLNYZqNur0aYM
         BuXZOzdIDQEd/3D45w/XC1+aTAlwcbCm7QRqZNOAh4Ei5OtXwASwqGAfLtb9/7yUtF+q
         X3KA==
X-Gm-Message-State: AMCzsaVZuebHBfJbaV7kn+7NAYqfflxAPSPf1kCU+nMUtxz/jE/UEJMF
	l2FFNnzhm5ARsv012MJCw28Ru9up
X-Google-Smtp-Source: AOwi7QCvPuAi/bbMy2jmgVJ6tzgc+3R4HgKTK/YONumdZPOXWOvht7ZzFeHvDKb2Bb+nogsG78wEtA==
X-Received: by 10.223.186.20 with SMTP id o20mr9039934wrg.3.1506942913807;
        Mon, 02 Oct 2017 04:15:13 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id m128sm10618569wmf.0.2017.10.02.04.15.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Oct 2017 04:15:13 -0700 (PDT)
Date: Mon, 2 Oct 2017 04:15:11 -0700
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: sm750fb: Remove typedef struct _dvi_ctrl_device_t
Message-ID: <20171002111511.GA13283@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes typedef from struct and renames it from
"_dvi_ctrl_device_t" to "dvi_ctrl_device" as per kernel coding
standards.

Issue found by checpatch.pl

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/sm750fb/ddk750_dvi.c | 4 ++--
 drivers/staging/sm750fb/ddk750_dvi.h | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index 87a199d..6ecdcf0 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -10,7 +10,7 @@
  * function API. Please set the function pointer to NULL whenever the function
  * is not supported.
  */
-static dvi_ctrl_device_t g_dcftSupportedDviController[] = {
+static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
 #ifdef DVI_CTRL_SII164
 	{
 		.pfnInit = sii164InitChip,
@@ -40,7 +40,7 @@ int dviInit(unsigned char edgeSelect,
 	    unsigned char pllFilterEnable,
 	    unsigned char pllFilterValue)
 {
-	dvi_ctrl_device_t *pCurrentDviCtrl;
+	struct dvi_ctrl_device *pCurrentDviCtrl;
 
 	pCurrentDviCtrl = g_dcftSupportedDviController;
 	if (pCurrentDviCtrl->pfnInit) {
diff --git a/drivers/staging/sm750fb/ddk750_dvi.h b/drivers/staging/sm750fb/ddk750_dvi.h
index 4a83945..692888c 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.h
+++ b/drivers/staging/sm750fb/ddk750_dvi.h
@@ -25,7 +25,7 @@ typedef unsigned char (*PFN_DVICTRL_CHECKINTERRUPT)(void);
 typedef void (*PFN_DVICTRL_CLEARINTERRUPT)(void);
 
 /* Structure to hold all the function pointer to the DVI Controller. */
-typedef struct _dvi_ctrl_device_t {
+struct dvi_ctrl_device {
 	PFN_DVICTRL_INIT		pfnInit;
 	PFN_DVICTRL_RESETCHIP		pfnResetChip;
 	PFN_DVICTRL_GETCHIPSTRING	pfnGetChipString;
@@ -36,7 +36,7 @@ typedef struct _dvi_ctrl_device_t {
 	PFN_DVICTRL_ISCONNECTED		pfnIsConnected;
 	PFN_DVICTRL_CHECKINTERRUPT	pfnCheckInterrupt;
 	PFN_DVICTRL_CLEARINTERRUPT	pfnClearInterrupt;
-} dvi_ctrl_device_t;
+};
 
 #define DVI_CTRL_SII164
 
-- 
2.7.4



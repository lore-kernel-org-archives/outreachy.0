X-GM-THRID: 6528466201738215424
X-Received: by 10.107.10.39 with SMTP id u39mr5562126ioi.115.1520055242922;
        Fri, 02 Mar 2018 21:34:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.66.12 with SMTP id i12ls658863itb.8.canary-gmail; Fri, 02
 Mar 2018 21:34:02 -0800 (PST)
X-Google-Smtp-Source: AG47ELtrBJHju1N+dbVK94lkUHXV3xvUJr1s/8ns141sIadgIKnrjTaJzLtquDBOutzmUovxfuZl
X-Received: by 10.36.95.209 with SMTP id r200mr3229663itb.54.1520055242347;
        Fri, 02 Mar 2018 21:34:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520055242; cv=none;
        d=google.com; s=arc-20160816;
        b=VqqkY9gQMRwSmn/hfK42xvnec4Lz1bpIWuqnOXwtYaz7iWt56VsDzpx2I9LzwiNcIH
         CU7vJZxDY8JXTYIjw1oGsXcgRVpS0m/O27+TB8ofjJ9filpgNqXa7uaG1OCV4+mA3rMd
         SVihXBgWq03S069QVuJIeS9gjNA876rimVflxopAV6k6ZL+5yFUIfTY04YsEVJhd3Wzb
         EQXKPe7xLiLwrqjVa0mL+0oDmnErK8Qr2C8+nrr8MCF16osS53fPmVv5BQHf5l9yQwsy
         zhSKDGLJbgJ2TufyKBv+p+Fn9/9CtzFv+wbnoXcVSt4axfpGwkKop/jy12I03J3xbyip
         ujSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=VThnTDxtxLOKPx+8NZy8Gp4Z8pXJjMh0ogajEyqAQF8=;
        b=BDrHx2bT3fCvceZPAxOT/PaXi/hYDJ4s/3ovhb+byv6O/zBsSJTwEzSEeZeIMf2wPh
         okEfvT5RWUAWf6/irqpFG6TzXIzE8EihcClGvr7V+zaObt0551E9t6DZSkLk47Q/sg+X
         QbMsz0Nrhjc+rZ2n1wHeIZnTeMkFPSOOrfzbk/wQUggE4rOEv7kAfhJV9SAWash77vJx
         y64vGa3s2r2jU/qRwTouDVxSuAXKb5CG0RZiKI3aJXXAtVyQr45byCaBIMaK+qqmFqxb
         V4ytBSL8qix+bej+KE/+DNCqA0oh+8v4cTka+mNhdBQMJ2j5S87Ol6KlFsmCsfEWTU2h
         hngg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HxF37NRU;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id l8si877699iog.3.2018.03.02.21.34.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 21:34:02 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HxF37NRU;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x241.google.com with SMTP id f23-v6so6901168plr.10
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 21:34:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VThnTDxtxLOKPx+8NZy8Gp4Z8pXJjMh0ogajEyqAQF8=;
        b=HxF37NRUs+2jCdE/o6mnnAc+Az2OM1vHe+n2GopNIyCR0iGrJ5pNJTND5nYdhNVpXk
         eKnVGIAVuVzcXatamk1VRTxr85Z23wVcNipqxaOBRmxGNgDARztmkVwTssR0KEwRDRs/
         vWbrJD6mM7o5AYF9uvqZkImUZnM2Jno35eSPMjgZPrAkcO3AvhK6zCxuA6z4sPnN/UIE
         ZPU4+esc+w35SVu4bCuxHjtXcVpZJgrs6YO/9iJ1YTe3iA+KhfV5eN4yqwpLsDlB3tT+
         qftigLXRE+KJ/6h6W4heZqBZe73fnCVlnyAzX8xSrewM7E/90UIBptCWhDD+DpST/n6q
         COKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=VThnTDxtxLOKPx+8NZy8Gp4Z8pXJjMh0ogajEyqAQF8=;
        b=kcBDZx/syWMknsxX0p3VXJ4uY6IIsx+EoCiLTdQS67xfzypBP8s5juC9HiOwfYxJLp
         MCCZofCjqf5x0xlME23tsTiTaHXpuf+RxWok7DRL5uRbcsz8/Qa7lXye02dsW2Wp7RGO
         SyNdCM+RpOqyUViYMTYLhhXdaNoRk5uqCJqap7eMDjUWvHIS/tX5DN/9Z34P51KWtUVt
         DOJA1bLepoczL/LmqZ9xyp6LcLVxy6o14qCfQgNB34TzjiHVt+sUF9NVTOog3SYvxgjs
         5URf1BcZstMthnWhmgQtFlk8Ej+nSH8LOVtkx1I5+xp2DQ4ROO73TgyEMjNqotowEW4P
         vu3g==
X-Gm-Message-State: AElRT7FjJFb3CnHLipXXK5Gqzm/ZB/jjcTVT0SLaVGE9WKFucDbrZ64q
	q5yp5g+5TTVGlcxesnmshXiLbQ==
X-Received: by 2002:a17:902:7082:: with SMTP id z2-v6mr4087478plk.130.1520055241426;
        Fri, 02 Mar 2018 21:34:01 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id m22sm16008604pfg.188.2018.03.02.21.33.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 21:34:00 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 5/6] staging: rtl8712: Add spaces around '|'
Date: Sat,  3 Mar 2018 11:02:35 +0530
Message-Id: <1520055156-8388-6-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>

Add spaces around '|' to conform to the Linux
kernel coding style. Issue found using checkpatch.
CHECK: spaces preferred around that '|'.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h | 2 +-
 drivers/staging/rtl8712/rtl8712_gp_bitdef.h      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h b/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
index b7dda90..4b8985d 100644
--- a/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
@@ -63,7 +63,7 @@
 #define _IMEM_CHK_RPT			BIT(1)
 #define _IMEM_CODE_DONE			BIT(0)
 
-#define	_TXDMA_INIT_VALUE	(_IMEM_CHK_RPT|_EMEM_CHK_RPT)
+#define	_TXDMA_INIT_VALUE	(_IMEM_CHK_RPT | _EMEM_CHK_RPT)
 
 /*RCR*/
 #define	_ENMBID				BIT(27)
diff --git a/drivers/staging/rtl8712/rtl8712_gp_bitdef.h b/drivers/staging/rtl8712/rtl8712_gp_bitdef.h
index 44c9060..66c35c9 100644
--- a/drivers/staging/rtl8712/rtl8712_gp_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_gp_bitdef.h
@@ -70,7 +70,7 @@
 #define		GPIOSEL_PHYDBG	1	/* PHYDBG*/
 #define		GPIOSEL_BT	2	/* BT_coex*/
 #define		GPIOSEL_WLANDBG	3	/* WLANDBG*/
-#define		GPIOSEL_GPIO_MASK	(~(BIT(0)|BIT(1)))
+#define		GPIOSEL_GPIO_MASK	(~(BIT(0) | BIT(1)))
 /* HW Radio OFF switch (GPIO BIT) */
 #define		HAL_8192S_HW_GPIO_OFF_BIT	BIT(3)
 #define		HAL_8192S_HW_GPIO_OFF_MASK	0xF7
-- 
2.7.4



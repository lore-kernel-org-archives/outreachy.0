X-GM-THRID: 6748514042587906048
X-Received: by 2002:a9d:6043:: with SMTP id v3mr257236otj.276.1571260881563;
        Wed, 16 Oct 2019 14:21:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ead5:: with SMTP id i204ls660832oih.8.gmail; Wed, 16 Oct
 2019 14:21:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwYCawODTlLgt73cBBQjuJNnTzYkao7h+SreTI5VLlZbRF/QQ8XoKk0sZ4yvXXcmOAMDhXP
X-Received: by 2002:aca:eac2:: with SMTP id i185mr348086oih.9.1571260880666;
        Wed, 16 Oct 2019 14:21:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571260880; cv=none;
        d=google.com; s=arc-20160816;
        b=ZupbnZvGnLXVG/AT/0xTDeqhUx1QfX/pNuZ/QgTU0xeZI9tA+2AjxR/4E82f03p0iM
         tar7rmp3r8pGKlBNuJCfdGzK2MdS18WeZm+6NJRATZ6QLVUyriQ8/OA9fgl4w3VVAjsq
         xFT1q4jdJEu6eu/5vKXoT3i+tZh77HWpL4Bdybf5LasDQu+VIQ7dDVOxLupYdjcP1WJK
         A6P08+pd6lu2FlfWOw5QLD67ujBnmJnVf5jnSFzeoYQ1ae6ZetaBLlGPdbfeTCFPluOY
         zif7xAJd982H2vIteqCN0aP9IdLggmN0s2T/mynzLOM3ODdJhz8CPaXbUksq+3HQNTkD
         MrOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=1AJw22jTEfbtVkv+ZkEN9WypVxxUjQMkC5ikEei/nfE=;
        b=ITLaCYVNQ/lylthNCDE9NghSPiREdIJ6mQwl/DJmf4GdlFf7hS3zi7mgu97Fyr8WhI
         fqtfYVaHDu0b2TtaugI/zpXyMIuqkQd1vFFuHGwqFmN5wLP7ZiORfWd362RoBPxaJs0c
         Hk9l+Fn1oqXtB89a4XjHXweM6Bg19VPKi4lck9MPGwZY6Lvf7z737385BEQT4QKkbKx5
         uUU39gdHhS5b6tDAFXnnAp/bVrkE9+ePVLrsWYDSmyaM+xiBWhX6hOTJhcsgXZgWkiLO
         rMU8e/OeGDfy3x7zdbgz6PG3/CV0/DC4uBhQ2SkyrS84WnEsghjLF/jJqx915ui//Yr7
         ZviQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=exmaRsDd;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k61si4810otc.1.2019.10.16.14.21.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 14:21:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=exmaRsDd;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id x127so179333pfb.7
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 14:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1AJw22jTEfbtVkv+ZkEN9WypVxxUjQMkC5ikEei/nfE=;
        b=exmaRsDdaa8A8jfwy0FNWjKWPu89JFm82jBd2ba4CCnLrarTc1tAThNqrpS6EqlzWJ
         6VOrFjlCyhaAnIZGXFe33KBw1nRPZpw2m+e2wi0Q/S5Kx7WjQ/okmYr084XyghvnSbH/
         /HEM10CdrHsZw/TyoemYfnSCebDhOAcx/PRmQmQJqYnL05xMpI0ox4eGOZFBrmt2b1zh
         Srkn9B+ghXBeK/jy4TvIdF5nZoaq3/A4GQf/tKdqSZfOspnxTwLTg/AiLORc0tSyuYZ1
         +tHZPgbphIIxU4Xz/av3gLnuKfi4/Wzeh4JUzejLfmZt0tMmwdK6+0seqEzMZD3f0TJc
         KKRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=1AJw22jTEfbtVkv+ZkEN9WypVxxUjQMkC5ikEei/nfE=;
        b=abVJnKpg2yVn4jqJ3x1fiSJ7O1ZmVY77B4KZGSpTx1lWwF3wAhCsbEADE5u2+VJA9M
         Trjg3T5GCLPIASHeTDIGx7eIvpBioINxlMYKFxLB2qrGY3URgecsn+QxC2/AMsw1FNUw
         ytdB/w+wRI3cIYzE/QENBu+027F2I9ntBdDDTksFm4JAlQ1HrLYrWnQqdYRb/OII/7GU
         opKLidj6XrGkvAcKsCTHt0UzMiNs3MpRc1axfyZlgpZT8PKhQ4Aj67JjAzGpi559V1B6
         hFwyf+m0aOFH7ET6P/Pt7GPLBrTdMt3cMdE5K5EctdjI2BLHvmTF+bC9e7Ab+nwtCMLi
         QcTQ==
X-Gm-Message-State: APjAAAW+mAXJ5sBVtrgjnSq+Rpb1BmOpRCBuINdBjHJdFLBn4Qp881jB
	dxs58Seef4LbBpr335aocLjrX6eglhY=
X-Received: by 2002:a63:e148:: with SMTP id h8mr201740pgk.297.1571260879901;
        Wed, 16 Oct 2019 14:21:19 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id g35sm26079845pgg.42.2019.10.16.14.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 14:21:19 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	jamal.k.shareef@gmail.com
Subject: [PATCH 2/4] staging: sm750fb: Edit CamelCase in ddk750_dvi.h
Date: Wed, 16 Oct 2019 14:20:46 -0700
Message-Id: <cc9a4082ab170fc26de11786fe8ad8a09d72370d.1571260724.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571260724.git.jamal.k.shareef@gmail.com>
References: <cover.1571260724.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1571260724.git.jamal.k.shareef@gmail.com>
References: <cover.1571260724.git.jamal.k.shareef@gmail.com>

Edit CamelCase naming in ddk750_dvi.h file.
Issue found by checkpatch.

Edit depends on related files which are also being patched
as part of the patchset.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/sm750fb/ddk750_dvi.h | 64 ++++++++++++++--------------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_dvi.h b/drivers/staging/sm750fb/ddk750_dvi.h
index 1c7a565b617a..d3ea365d1509 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.h
+++ b/drivers/staging/sm750fb/ddk750_dvi.h
@@ -4,54 +4,54 @@
 
 /* dvi chip stuffs structros */
 
-typedef long (*PFN_DVICTRL_INIT)(unsigned char edgeSelect,
-				 unsigned char busSelect,
-				 unsigned char dualEdgeClkSelect,
-				 unsigned char hsyncEnable,
-				 unsigned char vsyncEnable,
-				 unsigned char deskewEnable,
-				 unsigned char deskewSetting,
-				 unsigned char continuousSyncEnable,
-				 unsigned char pllFilterEnable,
-				 unsigned char pllFilterValue);
+typedef long (*PFN_DVICTRL_INIT)(unsigned char edge_select,
+				 unsigned char bus_select,
+				 unsigned char dual_edge_clk_select,
+				 unsigned char hsync_enable,
+				 unsigned char vsync_enable,
+				 unsigned char deskew_enable,
+				 unsigned char deskew_setting,
+				 unsigned char continuous_sync_enable,
+				 unsigned char pll_filter_enable,
+				 unsigned char pll_filter_value);
 
 typedef void (*PFN_DVICTRL_RESETCHIP)(void);
 typedef char* (*PFN_DVICTRL_GETCHIPSTRING)(void);
 typedef unsigned short (*PFN_DVICTRL_GETVENDORID)(void);
 typedef unsigned short (*PFN_DVICTRL_GETDEVICEID)(void);
-typedef void (*PFN_DVICTRL_SETPOWER)(unsigned char powerUp);
-typedef void (*PFN_DVICTRL_HOTPLUGDETECTION)(unsigned char enableHotPlug);
+typedef void (*PFN_DVICTRL_SETPOWER)(unsigned char power_up);
+typedef void (*PFN_DVICTRL_HOTPLUGDETECTION)(unsigned char enable_hot_plug);
 typedef unsigned char (*PFN_DVICTRL_ISCONNECTED)(void);
 typedef unsigned char (*PFN_DVICTRL_CHECKINTERRUPT)(void);
 typedef void (*PFN_DVICTRL_CLEARINTERRUPT)(void);
 
 /* Structure to hold all the function pointer to the DVI Controller. */
 struct dvi_ctrl_device {
-	PFN_DVICTRL_INIT		pfnInit;
-	PFN_DVICTRL_RESETCHIP		pfnResetChip;
-	PFN_DVICTRL_GETCHIPSTRING	pfnGetChipString;
-	PFN_DVICTRL_GETVENDORID		pfnGetVendorId;
-	PFN_DVICTRL_GETDEVICEID		pfnGetDeviceId;
-	PFN_DVICTRL_SETPOWER		pfnSetPower;
-	PFN_DVICTRL_HOTPLUGDETECTION	pfnEnableHotPlugDetection;
-	PFN_DVICTRL_ISCONNECTED		pfnIsConnected;
-	PFN_DVICTRL_CHECKINTERRUPT	pfnCheckInterrupt;
-	PFN_DVICTRL_CLEARINTERRUPT	pfnClearInterrupt;
+	PFN_DVICTRL_INIT		pfn_init;
+	PFN_DVICTRL_RESETCHIP		pfn_reset_chip;
+	PFN_DVICTRL_GETCHIPSTRING	pfn_get_chip_string;
+	PFN_DVICTRL_GETVENDORID		pfn_get_vendor_id;
+	PFN_DVICTRL_GETDEVICEID		pfn_get_device_id;
+	PFN_DVICTRL_SETPOWER		pfn_set_power;
+	PFN_DVICTRL_HOTPLUGDETECTION	pfn_enable_hot_plug_detection;
+	PFN_DVICTRL_ISCONNECTED		pfn_is_connected;
+	PFN_DVICTRL_CHECKINTERRUPT	pfn_check_interrupt;
+	PFN_DVICTRL_CLEARINTERRUPT	pfn_clear_interrupt;
 };
 
 #define DVI_CTRL_SII164
 
 /* dvi functions prototype */
-int dviInit(unsigned char edgeSelect,
-	    unsigned char busSelect,
-	    unsigned char dualEdgeClkSelect,
-	    unsigned char hsyncEnable,
-	    unsigned char vsyncEnable,
-	    unsigned char deskewEnable,
-	    unsigned char deskewSetting,
-	    unsigned char continuousSyncEnable,
-	    unsigned char pllFilterEnable,
-	    unsigned char pllFilterValue);
+int dvi_init(unsigned char edge_select,
+	     unsigned char bus_select,
+	     unsigned char dual_edge_clk_select,
+	     unsigned char hsync_enable,
+	     unsigned char vsync_enable,
+	     unsigned char deskew_enable,
+	     unsigned char deskew_setting,
+	     unsigned char continuous_sync_enable,
+	     unsigned char pll_filter_enable,
+	     unsigned char pll_filter_value);
 
 #endif
 
-- 
2.17.1



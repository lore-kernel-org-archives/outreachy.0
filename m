X-GM-THRID: 6748514042587906048
X-Received: by 2002:a17:902:8f8c:: with SMTP id z12mr379571plo.36.1571260879907;
        Wed, 16 Oct 2019 14:21:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b115:: with SMTP id q21ls6903plr.1.gmail; Wed, 16
 Oct 2019 14:21:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwxULPmVFAsQnjLizjAdb38/8A0Pf5dXJrGI2xphFHmIXyCx/31QRaoS24x+wq5Xfx9egfG
X-Received: by 2002:a17:902:d691:: with SMTP id v17mr322349ply.340.1571260878105;
        Wed, 16 Oct 2019 14:21:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571260878; cv=none;
        d=google.com; s=arc-20160816;
        b=gm3/oXHXl648AOhOzWEYx9DrNsEo9V6bzYxyfHaUlR7J7CKEhjC2u2jy0gTa8KVXT9
         eQLPKJ09ESdo/F6GFpPPXO3/ADG0kd1SgAIoczuNya6NigT0BxoUGIPrvX9LmWFf1f4/
         1OOt8JWjALXRgXCXionvqhrKhCyR+e5kJ++6nHapmR4GvuGbt+uOOONmTd+D7YaJOhFB
         R+slS3RY8cQmjuQQtflgir57Sucr/QZPY9KVc97hMyse3oY2uMC5PZ0RJf7lxmpV+gkm
         /shg2TJ/Iz8pneJCK+rVsHXVOVrySSV349l4ptuZVSpl42iPSXmhj+zQldmw7eULCkrv
         ZBxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=sTCalI+Sg5itdKrZWZvi3ZgrJ7v/vBARIJMQVGFyZc8=;
        b=NEZJRU4rvS0Aa5kA/Y/uFdMbLh/PLm05oB8Dnre0zPSV8i7ZM2Id57Wf24i2tZB6Tm
         kiEbmv+gdMeA/QSQBdBbJzpVv5AITT51Msxew5ChqpYtwGozfFqlS092JlD3rDaOCIie
         Bda+z0M17/v9bwGxAm5aJY5EP2guP/6EWUERO67j/v6kc8zjCfgdR3Y4QrzASaUS2wIe
         3axGduP0SZ0qqESl2l8G2ldSVG4xUxqbo6DO59W/i1b6lFGSgoJNzyWqHyt8dGQ8jNJj
         JatDono7U5KduuCom78cI8XWO4U4c64Am1bnSjiPbtpBtniIPSMVAKkCdtcass4Exraz
         kDNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IjbuP/q+";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id b64si5074pfg.0.2019.10.16.14.21.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 14:21:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IjbuP/q+";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id w3so8120434pgt.5
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 14:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=sTCalI+Sg5itdKrZWZvi3ZgrJ7v/vBARIJMQVGFyZc8=;
        b=IjbuP/q+ehzMav4qtozJA4EKjzXOfD5j5XbgJCFqciNRJglWlSrWR6gk6Qhu7E+Y0m
         xW4At9r8EogR8BFTEZ9NOqNcVQ0prPnfa8zymP77U6WdlttUQN9v5wW/QBFyBD8lVFVe
         rmJrftziq9wXpvkBWY5G24S2pA61ptvqjY0QkGAVFf30A1J2ip3wM0WcJH9N13c0yyPC
         o0+l+1npE8I2fVUWuzqeoJSSBm9EZD356c5OedV9Jy9AUqG6Jl/Http98NwSFxsUSxTs
         odysYu01wSyQhh8puhjNelXHk5dtgd5v/oIjHHBUYDM8Dm/qwddZFz4QvHRBrWKTqXwc
         XFfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=sTCalI+Sg5itdKrZWZvi3ZgrJ7v/vBARIJMQVGFyZc8=;
        b=fIMXYqLKAHdC//HG408d9K0ANhPHxvY57fbfe861/QPZ20fTgxmOHiOLU5Ppib/c5f
         ttq1w4I6DugEEWpeZspiOJ4qn0YYDYvcHJxFsqMm/Zk5EFZO7KT5KACb8+QF//cqXaox
         MgPZek4IaJf68YSqJZip+xTMNHSh4Rd/nKMpFUc/47Rbw+eDaNF2U5/+2Lme9UMPhB12
         4JYAqBc9e6kZSCmRUIW1QreAj7Ynuhl7m6lIPTNW2pZu3GruMhwlGQbAvHgjyO+fpm8X
         B/4VbNzZNoZXXONljYSziUSGi5qwpq5PLe64RaC53yRUgz5Ho+0Xkwq18unbyqUDskVv
         uZFQ==
X-Gm-Message-State: APjAAAWr9J9biF9IDbzfe6x3bnCrfwHO9gT18DdpgBdBXRaYko8HJMQI
	KsiDjRgrnShbdSgtR7BPpEw=
X-Received: by 2002:a17:90a:c389:: with SMTP id h9mr39073pjt.11.1571260877715;
        Wed, 16 Oct 2019 14:21:17 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id m22sm25718003pgj.29.2019.10.16.14.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 14:21:17 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	jamal.k.shareef@gmail.com
Subject: [PATCH 1/4] staging: sm750fb: Edit CamelCase in ddk750_dvi.c
Date: Wed, 16 Oct 2019 14:20:45 -0700
Message-Id: <0ccb65c7e5844541bb96a791c39caabb05a49afb.1571260724.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571260724.git.jamal.k.shareef@gmail.com>
References: <cover.1571260724.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1571260724.git.jamal.k.shareef@gmail.com>
References: <cover.1571260724.git.jamal.k.shareef@gmail.com>

Edit CamelCase naming convention in ddk750_dvi.c file.
Issue found by checkpatch.

Edit depends on related files which are also being patched
as part of the patchset.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/sm750fb/ddk750_dvi.c | 68 ++++++++++++++--------------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index cd564ea40779..6fa77d4effef 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -11,50 +11,50 @@
  * function API. Please set the function pointer to NULL whenever the function
  * is not supported.
  */
-static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
+static struct dvi_ctrl_device g_dcft_supported_dvi_controller[] = {
 #ifdef DVI_CTRL_SII164
 	{
-		.pfnInit = sii164InitChip,
-		.pfnGetVendorId = sii164GetVendorID,
-		.pfnGetDeviceId = sii164GetDeviceID,
+	    .pfn_init = sii164_init_chip,
+	    .pfn_get_vendor_id = sii164_get_vendor_id,
+	    .pfn_get_device_id = sii164_get_device_id,
 #ifdef SII164_FULL_FUNCTIONS
-		.pfnResetChip = sii164ResetChip,
-		.pfnGetChipString = sii164GetChipString,
-		.pfnSetPower = sii164SetPower,
-		.pfnEnableHotPlugDetection = sii164EnableHotPlugDetection,
-		.pfnIsConnected = sii164IsConnected,
-		.pfnCheckInterrupt = sii164CheckInterrupt,
-		.pfnClearInterrupt = sii164ClearInterrupt,
+	    .pfn_reset_chip = sii164_reset_chip,
+	    .pfn_get_chip_string = sii164_get_chip_string,
+	    .pfn_set_power = sii164_set_power,
+	    .pfn_enable_hot_plug_detection = sii164_enable_hot_plug_detection,
+	    .pfn_is_connected = sii164_is_connected,
+	    .pfn_check_interrupt = sii164_check_interrupt,
+	    .pfn_clear_interrupt = sii164_clear_interrupt,
 #endif
 	},
 #endif
 };
 
-int dviInit(unsigned char edge_select,
-	    unsigned char bus_select,
-	    unsigned char dual_edge_clk_select,
-	    unsigned char hsync_enable,
-	    unsigned char vsync_enable,
-	    unsigned char deskew_enable,
-	    unsigned char deskew_setting,
-	    unsigned char continuous_sync_enable,
-	    unsigned char pll_filter_enable,
-	    unsigned char pll_filter_value)
+int dvi_init(unsigned char edge_select,
+	     unsigned char bus_select,
+	     unsigned char dual_edge_clk_select,
+	     unsigned char hsync_enable,
+	     unsigned char vsync_enable,
+	     unsigned char deskew_enable,
+	     unsigned char deskew_setting,
+	     unsigned char continuous_sync_enable,
+	     unsigned char pll_filter_enable,
+	     unsigned char pll_filter_value)
 {
-	struct dvi_ctrl_device *pCurrentDviCtrl;
+	struct dvi_ctrl_device *p_current_dvi_ctrl;
 
-	pCurrentDviCtrl = g_dcftSupportedDviController;
-	if (pCurrentDviCtrl->pfnInit) {
-		return pCurrentDviCtrl->pfnInit(edge_select,
-						bus_select,
-						dual_edge_clk_select,
-						hsync_enable,
-						vsync_enable,
-						deskew_enable,
-						deskew_setting,
-						continuous_sync_enable,
-						pll_filter_enable,
-						pll_filter_value);
+	p_current_dvi_ctrl = g_dcft_supported_dvi_controller;
+	if (p_current_dvi_ctrl->pfn_init) {
+		return p_current_dvi_ctrl->pfn_init(edge_select,
+						    bus_select,
+						    dual_edge_clk_select,
+						    hsync_enable,
+						    vsync_enable,
+						    deskew_enable,
+						    deskew_setting,
+						    continuous_sync_enable,
+						    pll_filter_enable,
+						    pll_filter_value);
 	}
 	return -1; /* error */
 }
-- 
2.17.1



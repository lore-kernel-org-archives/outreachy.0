X-GM-THRID: 6956886688242073600
X-Received: by 2002:a05:600c:4ec9:: with SMTP id g9mr15392148wmq.145.1619776408239;
        Fri, 30 Apr 2021 02:53:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:410e:: with SMTP id j14ls2723906wmi.1.gmail; Fri,
 30 Apr 2021 02:53:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwmwZW8NOCNbG+Je2GyD88D1R1OPwwlbuYslzdkB0l07Gw+U3EdeyXeRhpBfk9QDC8ZkGA1
X-Received: by 2002:a05:600c:4f15:: with SMTP id l21mr5287113wmq.34.1619776406948;
        Fri, 30 Apr 2021 02:53:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619776406; cv=none;
        d=google.com; s=arc-20160816;
        b=HSBeUGdwlnXmtjPVBAMjynnkZxs9leDg2iWv28tlM2XTxrEJsyYAMn/rqzOoeWVhlw
         XkGxK6hG0BFZpkzV3jXaxcxSNPmnGCicQNPZlCcsVXF7BdCgznhmSuZW8VdMS1xzgl8i
         lFRYlERKc8HIYpuk4/EyXW06XiWo/xLsSATccGym6kMx4zOJIZqdSdXa8fZE2kMb185E
         KlDalfjV9trcBo1A7a2gHdmwEG7MibbLkMPH30EShajCV6NSL3ng0uH66YQ+aQD9Qa7v
         kYjP3snHUDHreS2IJxfqDJLYxEVbexTjhrHDumGqyrLBoYU7W55qfn75AHeiZKh8xIzw
         pzPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MW4Zu+04I2pf8trbMMxIEZXFmmjHoSTSqQhr0jRymOE=;
        b=UFZj7yBNAlORy8W6ZNlBbtdaTUkQJRmdZwy4VjdBYW7A5LyPUtxxj+weYoCJDqTwjI
         qUqPRDaDbFX60ps57cW5UBRu76ezGZkgkSzN5UJ5JA8tHDKILcyoS0ETKK89IXc0+loN
         FLygdAyn0rJrdyLQxbM87kNNNcDgL9JymQWnKv5892yKtCwo5CA9B0IxW0eAIjwMxcQW
         626TGmCr9afh6S5wSM4BH9RiGT7TkpS1I4GP8aaqL6YI/AczWRt/5GvVsI5yalYaMhpl
         +VtUbl9KiL81LfEHPn/tvIUdjHZQUJb797LLMEh3pSZjPUfeaOopM+LA34pucY+snVwa
         DjCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jg+KSRSQ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id s9si936675wmh.2.2021.04.30.02.53.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 02:53:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jg+KSRSQ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x534.google.com with SMTP id g10so13966064edb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Apr 2021 02:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MW4Zu+04I2pf8trbMMxIEZXFmmjHoSTSqQhr0jRymOE=;
        b=Jg+KSRSQPQQcV3bK/ichZmxSYH9xuDnVibtg+xnvKg4exE8C7ddnz172N5eHn3PwJD
         QYGP0E9+OBRF7a22SoawsnEME34Qq2rlXeopqi36sIwqmciTNDp85DbDagJA9asWXJYS
         agBSphrNL6SkQGBstFeUk05XFY6ZeT0j6OzSNq0Qa7FuXvApcPETkkyx0/VTmtj3hP0f
         824rsvyvPH0B/Kox5QvozpSa80Fi4TF0mxgVkZiXWojNQ5zRr8smzm7hGtoaeYj9QbmR
         uHrGLCSF9gi+9EvHNQbstPmzT/DrBGAK1cg13G0wMwb/i4NivmfdtwFXgfcoxVUQkHig
         gVew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MW4Zu+04I2pf8trbMMxIEZXFmmjHoSTSqQhr0jRymOE=;
        b=HCouCSowL/bHiz6AJeCLfSESl59vpggPWyd53AqfBymyCcdaEw9aJSxn7IweFCshdc
         6NHV/lty9N+BwaWyCLLwFP2bFREt5A3r9+o8VXuaQMdWBp+EOUrF8+8k8LBJQJJXMpjg
         Aprbw8PP2+aVkjBBdDvi+sX2p55gMgn1DGCPrfBinhnsRvPWgVkSsm+BTeUmbexPltHN
         ONcZ78LlwR5IK6hf16/PX7Mp+hWYStT7TlwDdFiyZQazQkEyQHRn1jd4iwJ3CtUZgJBH
         GkxqwlcjLrk7lDLHAeZCEe4o/Jmsl0nY2jSWt+Mv7ffe6E3mLfVtUjwAmry5ORrEGsUH
         8M9A==
X-Gm-Message-State: AOAM531RnF5FYY2PAdkLVv2ntWSJRaPK1lSPtW+H1Y+SeX6yzebAiZJO
	AA9BWawXaGkO1d2L1EiDZ81vj99UR75wAQLO
X-Received: by 2002:aa7:c412:: with SMTP id j18mr4820800edq.163.1619776406529;
        Fri, 30 Apr 2021 02:53:26 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id f30sm1626861ejl.62.2021.04.30.02.53.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 02:53:26 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 1/2] staging: rtl8723bs: hal: Remove set but unused variables
Date: Fri, 30 Apr 2021 11:53:18 +0200
Message-Id: <20210430095319.23226-2-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210430095319.23226-1-fmdefrancesco@gmail.com>
References: <20210430095319.23226-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed four set but unused variables. Issue detected by gcc.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: No changes.

 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 082448557b53..96cb4426a0f4 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3900,14 +3900,11 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum hal_def_variable variable, v
 			u32 cmd;
 			u32 ra_info1, ra_info2;
 			u32 rate_mask1, rate_mask2;
-			u8 curr_tx_rate, curr_tx_sgi, hight_rate, lowest_rate;
 
 			cmd = 0x40000100 | mac_id;
 			rtw_write32(padapter, REG_HMEBOX_DBG_2_8723B, cmd);
 			msleep(10);
 			ra_info1 = rtw_read32(padapter, 0x2F0);
-			curr_tx_rate = ra_info1&0x7F;
-			curr_tx_sgi = (ra_info1>>7)&0x01;
 
 			cmd = 0x40000400 | mac_id;
 			rtw_write32(padapter, REG_HMEBOX_DBG_2_8723B, cmd);
@@ -3916,8 +3913,6 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum hal_def_variable variable, v
 			ra_info2 = rtw_read32(padapter, 0x2F4);
 			rate_mask1 = rtw_read32(padapter, 0x2F8);
 			rate_mask2 = rtw_read32(padapter, 0x2FC);
-			hight_rate = ra_info2&0xFF;
-			lowest_rate = (ra_info2>>8)  & 0xFF;
 
 		}
 		break;
-- 
2.31.1



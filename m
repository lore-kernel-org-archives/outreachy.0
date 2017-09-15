X-GM-THRID: 6465879632669310976
X-Received: by 10.107.161.67 with SMTP id k64mr2490368ioe.0.1505454931161;
        Thu, 14 Sep 2017 22:55:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.147.195 with SMTP id v186ls5903703iod.2.gmail; Thu, 14 Sep
 2017 22:55:30 -0700 (PDT)
X-Received: by 10.98.59.207 with SMTP id w76mr10483582pfj.40.1505454930682;
        Thu, 14 Sep 2017 22:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505454930; cv=none;
        d=google.com; s=arc-20160816;
        b=EYA5TsxKg4zo2cL0RTJslCr0hYLFRV+cmiJyLDC+UojEqSxdBRXmwD2h7ZqjgxXsgF
         /dlE2x16+mn6xhc/DSJTFheNM3AFhzI8CVBR3YsPai0lnyOFBpF1EKnCpja8UjrycKOU
         z9S3HwvqBJPFsv5OpEE2fOKu4oitmwF/ZWw46fiqEk49XDqu02jXubUT0QhlCUQI6zUY
         /FvhrQUQPm3x9t2uUfG3FfhFp72L7K/iorSUPbHdaI/HYp1rTWs8O9XnSumKWE7qlKc5
         Zo1+OOdfPT60KM6jpm/9+CIeRmEPBrczklpaggF2ZuYH/giHwhy9tbqLmy1xhR5u4UF5
         7b7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=J0+5uT6hMVr7SBC6TIwWQqbViQ1JnzwDNR8QvBwuRGc=;
        b=fih1WMIqQSzpswWB+x9k1pN91LL/xakwc8AxMEkU1HrUbAHVPSKvHzvNyRyQSzu3if
         ZZkMclsdtoey/6NiFtRN0qwNt73V2QWJCPyAWew3nOF342jwfzfRMer4kd0EsyE0ahHx
         wMp4QMGLQIXxa7NxpUwMKbtjn7g9f9kOgyAlBecrty2PTKt3heuklDnINgNPryYgToBS
         0Bb/p0d6+Spr3pGgp/effQH2YJRHXybW0v2MGSzioQvQagI1LMF3iVJD+oPVX8icvoyy
         /m5R6Y9Zhde4OV5DD+nccBd2ondVzKJsP7SuQhBni5QAeDE8WkXt2FGMZ5UQMQOQcefZ
         gcug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dN4lFVgP;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id t77si12220pfi.13.2017.09.14.22.55.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 22:55:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dN4lFVgP;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q76so771936pfq.5
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 22:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=J0+5uT6hMVr7SBC6TIwWQqbViQ1JnzwDNR8QvBwuRGc=;
        b=dN4lFVgPZ3b5Tq3guEnSMIC10ToUcLkwUtoRQkiSEvPpHbl3LaQe3XkgPXkFNKJdYG
         MoWMvlPXSp8OyHd9nO/el09pNf+bZIi8BiXWk21vsK6wK072f8Ec5yXAviCFne3raENi
         n+v3UamQaVqeuiJLse0NdN+jwb4/azkK8/KkeeSEp6fV13mV7Gi1AN4qa9QwwKLgr+Jp
         AQLa3m2zeiH4zZRmTTb1Pt0TIbGw+YKbpEO4mUf0NdfXqi2OAdt//j8nq2vLFWMXwYqS
         mtr1pLnTF6RyUCFGzTDb0+lJobkX/80H1+wjV4t8MPcdAVNYp43zf4AWOv+ej/vkpacn
         lM0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=J0+5uT6hMVr7SBC6TIwWQqbViQ1JnzwDNR8QvBwuRGc=;
        b=JqPkXTIDAmUatOh9fjE6WRIoHmw7QcC/UDxELREk7cXPUQtlikcGxsxn5xmOXtPBq6
         lKUX9hPcEk7T2qBX3BDwovS+LrAayC5fajj8q74b4ag7318uoyeirbdJskt3WkSWRInU
         dwWLDSWhUYCfiJXvYU43v8v95JZs8MRqHP1Zft89hogoaGDgigwG9U0SrhpdGXhpeKOF
         nFCP3EuvJmB4G61F4TybI/bmag+UnVeEAfPdiNjiMYaS+bdpy4jummShRdBbuiaEtPtA
         EwtJws9MT/Q1PG8CPeim7Yq8Yeqm8sZ3es2fw7G9nXCSd3GL6mfwJVHmaiftxeF8XK7T
         ee9g==
X-Gm-Message-State: AHPjjUgpuBqh2B7CCwOwxm2Qp4GBlaYh1vgK8TeqX+KpZYTra/GXfShs
	iYLG+ZYnzPZh/Q==
X-Google-Smtp-Source: ADKCNb5vLG1HWvqeZuS5J6z9Xly5g6g8/dv7nTuUJV2rTt3om7tSJKXNVi5jxY/WLpTas0wHV5xJiA==
X-Received: by 10.98.192.18 with SMTP id x18mr23484971pff.2.1505454930421;
        Thu, 14 Sep 2017 22:55:30 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id j2sm460623pgn.26.2017.09.14.22.55.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 22:55:29 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 3/8] staging: lustre: ldlm: fix line over 80 characters
Date: Fri, 15 Sep 2017 11:25:03 +0530
Message-Id: <d3740f5fe367a2015438115696ffbbcad7cd950f.1505454643.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
index 36808db..9776c39 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
@@ -88,7 +88,9 @@ struct ldlm_namespace *ldlm_namespace_first_locked(enum ldlm_side client);
 /* ldlm_request.c */
 /* Cancel lru flag, it indicates we cancel aged locks. */
 enum {
-	LDLM_LRU_FLAG_AGED	= BIT(0), /* Cancel aged locks (non lru resize). */
+	LDLM_LRU_FLAG_AGED	= BIT(0), /* Cancel aged locks (non
+					   * lru resize).
+					   */
 	LDLM_LRU_FLAG_PASSED	= BIT(1), /* Cancel passed number of locks. */
 	LDLM_LRU_FLAG_SHRINK	= BIT(2), /* Cancel locks from shrinker. */
 	LDLM_LRU_FLAG_LRUR	= BIT(3), /* Cancel locks from lru resize. */
-- 
2.7.4



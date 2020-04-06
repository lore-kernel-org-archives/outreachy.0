X-GM-THRID: 6812465234894127104
X-Received: by 2002:a1c:2c41:: with SMTP id s62mr20580776wms.188.1586150692229;
        Sun, 05 Apr 2020 22:24:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f2cf:: with SMTP id d15ls5626999wrp.8.gmail; Sun, 05 Apr
 2020 22:24:50 -0700 (PDT)
X-Google-Smtp-Source: APiQypJthHIx0Y3vg4mfu5wWYe5gPqvYyHgKnI7Tg5Ly4HGmYFbNJ0NPvAEaozDMAnmBkQ1u1F5m
X-Received: by 2002:a5d:460f:: with SMTP id t15mr22240141wrq.413.1586150690846;
        Sun, 05 Apr 2020 22:24:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586150690; cv=none;
        d=google.com; s=arc-20160816;
        b=ihY7AnUzXJTQbpkFr0KZIae3xL1unI99HXcqpQhCKWdQqLXKkgiDppA8sQ95tlRhcU
         uQDD7Rt0ygzUt6sWPTx3f2THS3yV2N1/O1T/D+CBke93xfeRQlEPOjzz7DLdUM/ye8Te
         uPUKrjfYfTK4FPxSbvmB51ta3TOqCmh0wRv3sQBXszhCvS/o95uKrHH3SKbHFZi4VQIm
         wDVTe477IEzMzoy0+SqyMWkyXKx0aRpEuBYZbLcQqy1Tdai1zktP1IpkxrypStLOyr2N
         b847XWfFcCpYoeDn/9OJElPzrM6nJukt35lN3SWEDtIYRHcmwIMaYCi0i+9jBDjQGcue
         FC1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=3K8gMiM36SipYWEdlD64ct9CixQlJ38O0AGLqASDY28=;
        b=jwSAblqM4JgpT/8wgxELK2PPyb0CcwzsQakDiRtEphDpfSIZuldEzc+3YfxeFmrlEK
         ccgOmjtxwN59sLerXHRfCymshQcI+n9DBxxRZLrCj96Ieo/ekQeRkxJVDTbbf6jh19Vw
         ccGFP7psOwo3LgUUtcMoQiD/1SyD9gxHeZTo44+nXvzruYfDoJ9fVLP3Yxz2LqwCjSVW
         gVbS7JPG8FIrgrnXaEEqkzsCvgAju2xq8PQKR2RlAOzUq2q0JCtxCM/E5c4zK01VhW9F
         hd8q2uVYvqz3hxMnkcT90xb7rg9yne/fz4zUQKO7U5K6VKhrnuZVnXLRJNWFO7UvJ1FI
         cl+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id o125si1227202wme.4.2020.04.05.22.24.50
        for <outreachy-kernel@googlegroups.com>;
        Sun, 05 Apr 2020 22:24:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26380 invoked from network); 6 Apr 2020 05:24:49 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.219.218.209)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 6 Apr 2020 05:24:49 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 4/4] staging: rtl8723bs: hal: Correct misspelled symbolic name
Date: Mon,  6 Apr 2020 10:54:14 +0530
Message-Id: <fcfebf68a37cab58ab2e18f00189baad66824a90.1586150254.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1586150254.git.vkor@vkten.in>
References: <cover.1586150254.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct misspelled symbolic name.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h b/drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h
index f2c0707aad4c..1c6c08000e27 100644
--- a/drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h
+++ b/drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h
@@ -31,8 +31,8 @@
 #define	ODM_REG_TX_ANT_CTRL_11N			0x80C
 #define	ODM_REG_BB_PWR_SAV5_11N		0x818
 #define	ODM_REG_CCK_RPT_FORMAT_11N		0x824
-#define	ODM_REG_RX_DEFUALT_A_11N		0x858
-#define	ODM_REG_RX_DEFUALT_B_11N		0x85A
+#define	ODM_REG_RX_DEFAULT_A_11N		0x858
+#define	ODM_REG_RX_DEFAULT_B_11N		0x85A
 #define	ODM_REG_BB_PWR_SAV3_11N		0x85C
 #define	ODM_REG_ANTSEL_CTRL_11N			0x860
 #define	ODM_REG_RX_ANT_CTRL_11N			0x864
-- 
2.20.1



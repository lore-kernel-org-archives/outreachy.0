X-GM-THRID: 6812465234894127104
X-Received: by 2002:a50:f602:: with SMTP id c2mr19541881edn.184.1586187731018;
        Mon, 06 Apr 2020 08:42:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:748:: with SMTP id p8ls8642120edy.8.gmail; Mon, 06
 Apr 2020 08:42:09 -0700 (PDT)
X-Google-Smtp-Source: APiQypJmdPI3aw/qPRt7s7aZPLILp+z3W7luoYZa27AH8UIqfjpuYzfHeIRO2Ro+HoBIrjOneB5M
X-Received: by 2002:a50:9e2a:: with SMTP id z39mr20464937ede.178.1586187729818;
        Mon, 06 Apr 2020 08:42:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586187729; cv=none;
        d=google.com; s=arc-20160816;
        b=NCuJQ1ueovhbvN1LBELSHqvskoAI15LbIUkDYh2MtLMe2gHHAG0IBOlpfWjAjqpgzj
         A6/BpPyeI6v1yWJpMV/iljmmaXq3IUqQEyQ1n+KPhN3yPZhOmcPjhPEOSH26Qxm77kMj
         Bq9Wlp3AcROCh+u3eZJjWj0tWh7ImPTRdLNnkJftLZIQadzeSwg7k3md7DlBMTaybCaH
         6TCophyxLiLorlz3rcZp9/iLLB4Cr+DnUaVi6TJBsZLZYxe8xk47u4/hoDlgfr4X3zVD
         m9DBbI3LIIq1J8XY043pTvGGhmuHIcTfwwy0KYZyNRX4bX3mbUKmFKTDmrsS4E37novB
         3ZPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=tJvZPiNLjRZCnSP1bl147LbqOWxEccJBcWpl1/7UWXM=;
        b=GR7j3DnIw0SNhSD4DFygv5x98d8RlrTlC5xqN1sRKQNUO85hIfcVVMrxiO7Lqn/28k
         7sjScq38gkECG9Z00sSDsOjH9rQDDASoG8X5rteNq6UifqF5zqpuaNn9XRt5dA4rZQTs
         dwxxJwNjkqLlB8FWZ/FHZOSX+FfO2agbXg6I4VFhfaIblaQxdrMX9ncJ4hSATjETssBD
         vLw8VGJVxAO+TDtG0KdvDuGLoZDUBKPVP7A82DFCjByUdrmiP4M3PXuv8vLC44GoLhJM
         Y6ocglza0+TrUmA7YKQ7mmQKdwg/fZlybb6LvvGnFllm6Ag+0Lu6QB/es4VSFGq76+Up
         I0CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id a10si1050198edq.5.2020.04.06.08.42.09
        for <outreachy-kernel@googlegroups.com>;
        Mon, 06 Apr 2020 08:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 873 invoked from network); 6 Apr 2020 15:42:04 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.219.218.209)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 6 Apr 2020 15:42:04 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/3] staging: rtl8723bs: hal: Correct misspelt enum name
Date: Mon,  6 Apr 2020 21:11:25 +0530
Message-Id: <d091fa95d537f613c24e55a2dee638d4493534b5.1586187304.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1586187304.git.vkor@vkten.in>
References: <cover.1586187304.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct misspelt enum name.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/odm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index b77d1fe33a28..16e8f66a3171 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -541,7 +541,7 @@ typedef enum tag_Operation_Mode_Definition {
 
 /*  ODM_CMNINFO_WM_MODE */
 typedef enum tag_Wireless_Mode_Definition {
-	ODM_WM_UNKNOW     = 0x0,
+	ODM_WM_UNKNOWN    = 0x0,
 	ODM_WM_B          = BIT0,
 	ODM_WM_G          = BIT1,
 	ODM_WM_A          = BIT2,
-- 
2.20.1



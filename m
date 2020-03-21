X-GM-THRID: 6806789560169660416
X-Received: by 2002:a05:6102:2087:: with SMTP id h7mr5317542vsr.226.1584829611120;
        Sat, 21 Mar 2020 15:26:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab51:: with SMTP id u78ls502350vke.8.gmail; Sat, 21 Mar
 2020 15:26:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtnaaUnX/ioAULd9x1NMtaXqSxKZzj95MLGhlnYDRRh0s7xq7mF5T7q0lr4URUKSlZMOGvf
X-Received: by 2002:a1f:3d05:: with SMTP id k5mr10682964vka.76.1584829609736;
        Sat, 21 Mar 2020 15:26:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584829609; cv=none;
        d=google.com; s=arc-20160816;
        b=I/LYiWU3MkwG4FMuIfR3PZoPGYH7MDKF/x3SRtRQp9e+d3QT63FVYcmZK3K02jkqKX
         cTsEB4XkusStjZhQO5mpFmX0IN/CbaMQ5/8N1dF+H1X19bDtY6T9fBQxpFaUgE55W1Pz
         UBEfABB9RrTfzZHR8j+GUB0CBLAl4aOSTNPrqPGBYhz8DYMqQCj8tbE+f6+vxPunhl42
         cc7NZsa/lKwyq8g1aOGjnTRsVNaxdLy+WretPunYupYQSEzTJMmLphwQNVCZGUItbYnE
         dqxZG+u3QJekfupjp3Bzv0tQFNVyYR+KGhwGLdm2ZhXAGZzf9W/y6xgYIhdjNxqDCz0p
         uO7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ywrv/YxqmMIS6BbmjMP+A5ZaWbyGuTGBex2n9c9Zhpo=;
        b=MmTLf2Bg1Q5OjGH9UA/9fT8zCjJ2jgu1pyFWa956Xch2zCWHHn5DSDI20yy61OVMcW
         yqjjg6a3t5DWPWNNUZMTOYaNrivQ2ib2mgs31AlxAM9S+dNRvDhCPI2RlXCxgUH6+e3N
         qO7GKgvvi59+/qjiQwA518Tz3EvybzhhxFl1Vl6b3tZuvqMbxrUt70f9tQ9HpeeLdlRB
         rJs0Nt0uvpChUwxnCJofg1mGDKFpgYrrx3OjKnEGveSwFzTqhtSezsANdHTtb0DByOTD
         PyncN3e3MFuM4kul1KGHkOptxmMR5ky156YK0+/mO1zl4nYiKcRmUuzUMQlWwCScg6Fw
         ag5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Q/gqYFf3";
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t191si470631vkt.0.2020.03.21.15.26.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 15:26:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Q/gqYFf3";
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id t24so5051363pgj.7
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 15:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ywrv/YxqmMIS6BbmjMP+A5ZaWbyGuTGBex2n9c9Zhpo=;
        b=Q/gqYFf3q1Q4c4SAAakxM39b/dJ1ZQeT2PdRHX61uOkvXmYEfy0V0XbtJ5enT/mVUr
         mJLA/cAp2VR6cyo0jHgzv4iMGgjMHB2EI78f94C2tYMB54Y96bu1OM/ROxcy0NtcNVJy
         +pwTWt7MKFbQAOBegPYhA9pbvRPZb9ERn10EyJBksXlBEzLWclme4MnWYCN6Q4qDo9Y0
         4izSpJnihHZeqbCDwBFjpCzYqjEx1CduMELQ05cvwQvCGtfR7VkWdfBCEgHFO1dmTZJk
         N1ow+1fQgOLv9b2gPzAtEh2sAWgHfr130YbZcMmFAnClc4yNxo1ItgoVyQzR2RNbzmEg
         CPzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ywrv/YxqmMIS6BbmjMP+A5ZaWbyGuTGBex2n9c9Zhpo=;
        b=VMn1adm7lL8CUZ9bEYTmadIYJ10XLTgX0coy4sxPQ7uI+n6RwSBsp1EqbJlfcS4SDu
         d7TegNXk7UOYPsCX0jiCe2yib5T2DsZ8ISi4pqMH7oFo2zm444lx7O+GYJKJsaxDpF7X
         m4+SyMOhD82lgrezLq/yzLLfqGSzK9N4Z3EIjXY2rA1lBi9bMRgi59wo855qdpbfbCzP
         xXdc5alUfrHxWp9qCZOSYFkg9FJNWfNphEpLIj5fKufLhyIKmn3KeuIk3ESJDD9ADk4c
         o3fbS6OdlNlIFHd5ciPVg/jhUNd/TED5ADdxJJMv6SN6I5WQXdDjgE2WvGKUDcL4GkGD
         Adbw==
X-Gm-Message-State: ANhLgQ13nQArweP1yr695w0kXksNXYoNC83fh9pZVta7eBw1f6QysGMe
	kHgqrVe8kTXuUwi9pBgL1bg=
X-Received: by 2002:a63:ec4d:: with SMTP id r13mr15436063pgj.232.1584829608726;
        Sat, 21 Mar 2020 15:26:48 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([113.193.33.115])
        by smtp.gmail.com with ESMTPSA id 184sm8312634pgb.52.2020.03.21.15.26.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 15:26:48 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [Outreachy kernel] [PATCH 07/11] Staging: rtl8188eu: rf_cfg: Add space around operators
Date: Sun, 22 Mar 2020 03:56:42 +0530
Message-Id: <c1a6f5a1c5fb3a176ee77cc01446976b180bd999.1584826154.git.shreeya.patel23498@gmail.com>
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

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/rf_cfg.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff rf_cfg_old.o rf_cfg.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/rf_cfg.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
index 004e19301eae..0b20e62f9a68 100644
--- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
@@ -143,7 +143,7 @@ static u32 Array_RadioA_1T_8188E[] = {
 #define READ_NEXT_PAIR(v1, v2, i)	\
 do {								\
 	i += 2; v1 = array[i];			\
-	v2 = array[i+1];				\
+	v2 = array[i + 1];				\
 } while (0)
 
 #define RFREG_OFFSET_MASK 0xfffff
@@ -190,7 +190,7 @@ static bool rtl88e_phy_config_rf_with_headerfile(struct adapter *adapt)
 
 	for (i = 0; i < array_len; i += 2) {
 		u32 v1 = array[i];
-		u32 v2 = array[i+1];
+		u32 v2 = array[i + 1];
 
 		if (v1 < 0xCDCDCDCD) {
 			rtl8188e_config_rf_reg(adapt, v1, v2);
-- 
2.17.1



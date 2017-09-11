X-GM-THRID: 6464551056446586880
X-Received: by 10.31.170.201 with SMTP id t192mr7132162vke.11.1505145583278;
        Mon, 11 Sep 2017 08:59:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.82.209 with SMTP id d200ls4527381itb.12.canary-gmail; Mon,
 11 Sep 2017 08:59:42 -0700 (PDT)
X-Received: by 10.99.121.77 with SMTP id u74mr7339590pgc.12.1505145582341;
        Mon, 11 Sep 2017 08:59:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505145582; cv=none;
        d=google.com; s=arc-20160816;
        b=n5b63FKCnQ9Vs8y5+Hn267o26ylbpHFMGWH5YrOwpgsf4E0cgShHmEf5ZPpHvDVwk0
         ENCL+ClxPzcY8sUvR7Ah5QXuP/qLa/2YXlIm5fxNtGDBQdO8oqBL+dGEK4C8hQlS5Roi
         PHL3EhzowDGGm+hxrqIzz4dmUg4bWJEH5tOOFUZPbvU2scd18xSN8dJk4Qpnc+1m2uk2
         l4OdtaueIjTi0ctNNBl3oGVtKgC+UK9257VPzTKdJNhmqb3QonEXZ19wrT3APS0G34kz
         ykltt6HA5/tgp0lFHdOjPH+oLUKIk+zms6YRqm0CDKU0P0oliUYZ2z3GVSQLPlHz+wUT
         ZfSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Z6+vcf592jjHwHAB404V+bEZhe+DqVWmbxR7/bGApjI=;
        b=P+mHSd8SEqbqBzk3RnAbvLQyWmA/MOc04nLfgdiz7wSYyUr9S1JRPfOKley/Qz8+hM
         BPr2A+bO7hXYsFiLw9+ygGm0DQ76y2qdguMkkiZg0l5JZDdBTSMxOldF5Gm4Ne8mzzIq
         D4o0U9b1B6ThJcgicOUdPvSXM2Lozwi288PSyQvV3HkE1qkBTdAUXig3tEmOk5YsQMZ7
         drBk+xPQnU+k3klWI9bpjB1AgC0oQ6KfWwmW7xfQMeZSeYYYXMHFth+/Z5vzBoqK5pA9
         Jo24rMMXNDwfebJTMT+uWIR8+aP5O/1ZYnRr/wRj5H74vWHKdiAQS7AmT18G6RLPZPe8
         Pk5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TPZ+/auH;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id k76si921065pfb.5.2017.09.11.08.59.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 08:59:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TPZ+/auH;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e69so3275792pfg.4
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 08:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Z6+vcf592jjHwHAB404V+bEZhe+DqVWmbxR7/bGApjI=;
        b=TPZ+/auHEM5+Wwr8mp0koaG5Al3GRA3h/kJSC51KCI5o1iYKGnQ9MfhuhB4XNZo77g
         yecLLEHHjy6ssdL4XiSq8Ri7z3mOKjovXhXGuh/CyuhtLxcWRd9w4dgVUoyIHed4KaXr
         7Ogav2bySK2akEEO64I0n0p32XdLQUYei/qKMFMLUan4hT9RAGRKckeRSBkABvOGprMA
         aA5NTvcZdSkaw3pe9QgehlnBFhQknS3EEXyCcR5C+LXkdc4NdmYRiv2Joq+Gt6P+ZU/P
         rQPdi2CnK5824ZG7ntwRMm57luJDV+s305F1rfqOTryjqGzPTljBZs5/uZDj9i0Mxr50
         Ad5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Z6+vcf592jjHwHAB404V+bEZhe+DqVWmbxR7/bGApjI=;
        b=qHdoUs/hCiqUwc7eGAVHCa2TXhQ8QMgGbcn+Z3SstOJkSbKas0tg8dp9ZnPIcUWDSE
         +DFLrsmbAzJ7I2tL6W2OgOnH0giPuZz3fDD1OFkEFEx6A0Gvyd9V7+PJHipf/9RK0aiH
         wMULuYxdEMdzhj8Ek5RWFjanIzir8fZyeEnmyPOuXhR2rH2mkc2/bfqcqMC5Oj+Gn3qw
         d1BYOx6RWfk5EBohHeBpUtgK30fFy8QogHW34yanId0X5XqzAPSUYRdhScvNjjU9Kz+B
         +fqj2Q2RMH3zU2k5fM+Vb0l5WduPfcQpLLldAyrnuf15XzRzfAaXNthyhyCwTTt5g0Gj
         NyBw==
X-Gm-Message-State: AHPjjUgOOtf1SFBfnEJqbSz0fy8rmFHzU46AdWwL4klkl0WckWN50q0M
	eeOyrLCh9l3D6w==
X-Google-Smtp-Source: ADKCNb6I4TAdDaPS2UCz9mwn7c90ex6FSqwk+sxfLHSAnX2O3xleODRz3dvw9ng9rv5Py81BaQeeNQ==
X-Received: by 10.98.210.67 with SMTP id c64mr12130049pfg.60.1505145582121;
        Mon, 11 Sep 2017 08:59:42 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.5.9])
        by smtp.gmail.com with ESMTPSA id 19sm15429563pfo.140.2017.09.11.08.59.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 11 Sep 2017 08:59:37 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gilad@benyossef.com
Cc: gregkh@linuxfoundation.org,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: ccree: Don't use volatile for monitor_lock
Date: Mon, 11 Sep 2017 21:29:31 +0530
Message-Id: <1505145571-11248-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

The use of volatile for the variable monitor_lock is unnecessary.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/ccree/ssi_request_mgr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
index e5c2f92..7d77941 100644
--- a/drivers/staging/ccree/ssi_request_mgr.c
+++ b/drivers/staging/ccree/ssi_request_mgr.c
@@ -49,7 +49,7 @@ struct ssi_request_mgr_handle {
 	dma_addr_t dummy_comp_buff_dma;
 	struct cc_hw_desc monitor_desc;

-	volatile unsigned long monitor_lock;
+	unsigned long monitor_lock;
 #ifdef COMP_IN_WQ
 	struct workqueue_struct *workq;
 	struct delayed_work compwork;
--
2.7.4



X-GM-THRID: 7025609319157596160
X-Received: by 2002:a2e:544b:: with SMTP id y11mr31687215ljd.10.1635777151584;
        Mon, 01 Nov 2021 07:32:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:178b:: with SMTP id bn11ls2345000ljb.7.gmail; Mon,
 01 Nov 2021 07:32:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzqZ92WgOPKc78+H2FnxuguG8mmkKeVdROyE+XH1c5t0/FM9SQFZ5yXZMB/2Q9Qgn9OXp+2
X-Received: by 2002:a2e:908f:: with SMTP id l15mr9504995ljg.129.1635777150211;
        Mon, 01 Nov 2021 07:32:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635777150; cv=none;
        d=google.com; s=arc-20160816;
        b=bJW9gobtyeKixrc4niaiafOG7PUXKXnfAmFWYIH6BIav8q2NyKbIAiXaFJdmRrbJ0r
         H7MzCWHx0QCttAEf/gSY4jdfMzMIXLzaJWbu88IQXR6xZydMUqYnG3e2fyfyjJwDfWxh
         qsLR+oBpkmV4b6N3/QzNBsNotvFbMaurUCMy+9YLtGchBq27CIlVpOr1+A1JNNSxk8qX
         +0Xupnfn24LeRAI7kPX/rwnEr0MWGX/QG6RvkCWz3XmA7nmL7hay9uv//th9VJXft2wC
         GW5oHJf+ZBCYcEpJqGcjYc/0pN1N1W+qGfK6SouIHtySVsGtxoA2TMNDtvpNCAI4Vi8L
         5xEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EC9+PWZIJ2fWzzebh2fDh481689iLmSpT4arYpu1u+Q=;
        b=BIqLx6SngAt6ya/bce+gtra+D9AlCyfUQZ0TaL/3RMVs0euRQeIHzxKl3Rrzwm+h4V
         IAR5j+H4zIgVfCAXh+s2mSOQe+hFNye7eCUSoyPaPPrPf1+pkSnkyuiwavc46G25drEN
         fHQlj7IVBVqHhG8aQTJ9LHdbixdBNq6+5juU5B3irRPHb1ANvyNWaddBTYx4qprFsH9G
         SC9tDyHEezdXHLBqSER0fTlUUg3TU1UjWEPEesjyaJb1CFqezvmuSNDSVAcJ/ePW1xm6
         JFZUwMobQuBR9A6E1wBX6+ZuPaqE8f7ag4/vDhFcSdoNDUMF4qBe774DP45AZRhIz2c+
         ixNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=b9P+aKyL;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id o22si514274lfr.11.2021.11.01.07.32.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 07:32:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=b9P+aKyL;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32f.google.com with SMTP id b2-20020a1c8002000000b0032fb900951eso9173614wmd.4
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Nov 2021 07:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EC9+PWZIJ2fWzzebh2fDh481689iLmSpT4arYpu1u+Q=;
        b=b9P+aKyLf5aXI/gOZo2VxbJ5rloRHLZ0VlbnIKuoBKylSEsYQOL1yix0mYaPwJR9hs
         j3GPj2yr2Hun0KOYOoDdP8NJDr/IWDpTXFuMngqNKX/vVFdq44Tc1vTsYcFBoAAdOetP
         uNzTpiolPdch8LHf0eM+sXZ1eej4/sFPSkVDKdnwMXMQIkMcLo4v5ZyUVN5HOfJdQ0Fh
         MsO0NhrgsUt+PRxRLzDIIuwcMioR7IJkj2vugQXYgn6rA+29LT6YcLGkQ7gxzqIsz2A4
         p5+UVmbHaKpqKST/LbTHRaprELeiUZjaaLkWIaFkgYF+B1yOwqkISKHSjyM7PHObfqeu
         UbFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EC9+PWZIJ2fWzzebh2fDh481689iLmSpT4arYpu1u+Q=;
        b=jmZLbW9w8as7WQ5+hiauziG3QmkmxlPT0YPfJFdJs5MgPfa9IHyKTRf7Lff93i4E/Y
         Cvvp9wtOwdKT9CqvBQmLJVq0kOX/eH/PcovCBQzeuuIr7dzBsNaX08ICSPWaMTJMArj9
         wKbH2phzACNHzpb97JlDmF/kfLaiZqQycDlxyQFFtas489oOl6YAQTgGeSM6kRkSNYCU
         J2b+fzVKmDdIeGaO+Ssw6N+Wi1MBVk83ZeybNciajYyNA4DE6RLPAliZJq2PP0wAbk2h
         2hXEoyCLhFr7Os3+brj5HNJNpzrgv2ri4pP3YTcWIZ811KRvamtjxNZZ2edNvwi5Obvv
         4K4A==
X-Gm-Message-State: AOAM531Vn8WQo0zXWg6H2pXLuijRIgT14Pmo2Gw7glzQTW8u/510dqnn
	+tFHXOQQDR+SHNlDkP7j9Lz/2tpQCvARrw==
X-Received: by 2002:a05:600c:3b27:: with SMTP id m39mr10513897wms.132.1635777149951;
        Mon, 01 Nov 2021 07:32:29 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id l8sm17157721wry.43.2021.11.01.07.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 07:32:29 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>,
	Mike Rapoport <mike.rapoport@gmail.com>
Subject: [PATCH v2 7/8] staging: vt6655: Delete bogus check for `init_count` in AL2230
Date: Mon,  1 Nov 2021 14:32:05 +0000
Message-Id: <ab98889e7330e64656253f4e2a1d9462355045ed.1635773681.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635773679.git.karolinadrobnik@gmail.com>
References: <cover.1635773679.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove an unnecessary check in `rf_write_wake_prog_syn` in `RF_AL2230S`
switch case. This `if` conditional will never be true as `init_count` is
equal to 17 and can't be bigger than `MISCFIFO_SYNDATASIZE - 0`, which
is equal to 21.

Suggested-by: Mike Rapoport <mike.rapoport@gmail.com>
Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 1fe073c5fb6f..a150f1df3824 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -697,8 +697,6 @@ bool rf_write_wake_prog_syn(struct vnt_private *priv, unsigned char rf_type,
 		 /* Init Reg + Channel Reg (2) */
 		init_count = CB_AL2230_INIT_SEQ + 2;
 		sleep_count = 0;
-		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
-			return false;
 
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
 			MACvSetMISCFifo(priv, idx++, al2230_init_table[i]);
-- 
2.30.2



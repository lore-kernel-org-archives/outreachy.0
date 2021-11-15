X-GM-THRID: 7030748849446584320
X-Received: by 2002:a05:6512:a84:: with SMTP id m4mr33597826lfu.284.1636973795258;
        Mon, 15 Nov 2021 02:56:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a4c2:: with SMTP id p2ls2125418ljm.4.gmail; Mon, 15 Nov
 2021 02:56:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw2S/aJmjW0qfAof5l2XG4WCscjsIvU5+2o67Y75wHPUULMEO2YaAdS4LAyTUcjADhbLNOB
X-Received: by 2002:a05:651c:2c1:: with SMTP id f1mr39457664ljo.345.1636973793643;
        Mon, 15 Nov 2021 02:56:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636973793; cv=none;
        d=google.com; s=arc-20160816;
        b=ZcxcuGVfFBSgybfzLmRJRI4d9GFKH+eXu7wrZyFKBlCNyt/cbPmzu8SpPajnC2blgK
         wfRmF7wllVb8LWG+FexxVW7dbQwPhQGZdtBayM965Bp7mf4X1N1K0SAwKj4sCtcqu//i
         +K7EPmzTrDNTKONJMdCdPISk85KVGhaphJgCkGAHxlSGwrjSGqRpoFvO9Ty7+cSpLWrO
         YLD2VMYhAbGebUv0QSomsAiMaJ5jBd4ZgJuVAzPEMzf8LqTK8jqm8WmtaGFdkc2MAA0v
         1a+ucm+9Om88CE8nqorW7sfSksmTZQe5XKxZo0L1xlvkg/AAaXzYzpo1Sud2znsFVKzY
         TSGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+kXGWZLNJVRqPQUIGKsTuVje1twJc/fST86hWxvRfcU=;
        b=WXY6PRtinKkagfW2Ux6KwM2ZmBCDYE9wFSCcktzrK3RaC9lKSb9SV3YMzBxDTp3a/m
         uthXBjz2leFYWFEbbuX6xuiklIxpEHCYPMaN8XEdxJd7V6gXTuovxpk4phRa20ZGusqE
         WWr7OwYGj5rL9/CR7DOeJgWlEKpve/qchdbZd9Md8pZhqNmj9iKCAOj5MbkeTFyzydm+
         4ZqdpqHvF1sLvYhibiqnkHXMeYBHCyLderJi61x2dXEuTDhsZ0QK+cuhYq/mR15OdYY/
         /SpOYbVyKbl1fHlRz+y8Qov9ITJpaolpWjxQIq74FmvlFowDwLfGhOBrIeE/Q6Qvh7OH
         1iGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="Xf/T5GTf";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com. [2a00:1450:4864:20::333])
        by gmr-mx.google.com with ESMTPS id t12si1270427ljh.0.2021.11.15.02.56.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 02:56:33 -0800 (PST)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) client-ip=2a00:1450:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="Xf/T5GTf";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x333.google.com with SMTP id n33-20020a05600c502100b0032fb900951eso10148138wmr.4
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Nov 2021 02:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+kXGWZLNJVRqPQUIGKsTuVje1twJc/fST86hWxvRfcU=;
        b=Xf/T5GTfjhyxkMIJEKkoJ4OjYdh2ehM7gx2ogBT1PEBBPbfuxnZWjXEFgGmLNzA692
         x6UplMXpWBkZWswZzZ6pZ9XHVcCPxpy1EEsEUk3dZuPLR1VXBGhYCO8d17VokDFnLMFG
         jjkeecujHjMUIq/SwDC78SsVYdD5y1pW6ftvPf9pvJLTPeJhhQ01eE/csyWLqzOkXZxk
         QnzVGz1vtB41GF1vMVUSEWkpUiifxCTnP26KcLi3klZUzOE4uYQbFAQJUZ/+OTUOUw8A
         a9mOsGF/TF4/iPp+KRrVrunDjITzCmqCPDFj8kAVq5CSQ+eYQpOEUIW+LTVEt8tozd+Z
         vSNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+kXGWZLNJVRqPQUIGKsTuVje1twJc/fST86hWxvRfcU=;
        b=zYJygO+VQstQVHwgRwyX3juP9znTO1uAIYjyrdYoLv53k1UtLBg8KFWht9ijJTNwW2
         8OrGy9oQc2oo8DIPb6qGtWErb+HG6HMisX4Xb3lDU2u5/7mphvjrMm1J+4CWj5jWJYIv
         ETdv5aYPtkfkwJZwEVx2vveuYpMJSXxvjbboSyA1zHbXRFSDuVsYNCocEd42zAtSOEu4
         zQ4Xh/CqTOGXcrWzsXC1+UUo8Lvj8dhItVn0fK63dW61Q8luqQ5fwIqLzzfeZ7LtIK8T
         XqkPvyAb6eenR0xqO/fzOe6MlRnpM8RfM3nacgPGTJLrQBbmx6ycV7mhvEclgk0iGaGX
         ckbw==
X-Gm-Message-State: AOAM532mEQUDldtKoQxU3RazMsr6onQ+92dlorvB85A7MLNvTi11ufB3
	1S7Fpyn/KGZnOmAaz3Cgi9H6YVG6e9s=
X-Received: by 2002:a05:600c:1c07:: with SMTP id j7mr61154096wms.12.1636973793154;
        Mon, 15 Nov 2021 02:56:33 -0800 (PST)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id d1sm13516532wrz.92.2021.11.15.02.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 02:56:32 -0800 (PST)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>,
	Mike Rapoport <mike.rapoport@gmail.com>
Subject: [PATCH v3 7/8] staging: vt6655: Delete bogus check for `init_count` in AL2230
Date: Mon, 15 Nov 2021 10:55:48 +0000
Message-Id: <29c758ba58b10bc1da7e864b3a4f377147fc4428.1636729147.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1636729147.git.karolinadrobnik@gmail.com>
References: <cover.1636729147.git.karolinadrobnik@gmail.com>
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
index d4c18d9bfc67..4bfadd85c82c 100644
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



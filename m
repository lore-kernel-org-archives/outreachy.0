X-GM-THRID: 6670105232964321280
X-Received: by 2002:a9d:2c61:: with SMTP id f88mr1037210otb.68.1553009223775;
        Tue, 19 Mar 2019 08:27:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5988:: with SMTP id n130ls473899oib.0.gmail; Tue, 19 Mar
 2019 08:27:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzNOM0nuk55t8rAp8ne2i1QNj+OTnA3HBXFy9Q8RWblzbe2xZtfd6ZTVWutG7CuC1+4g4yH
X-Received: by 2002:aca:dc0b:: with SMTP id t11mr1028966oig.19.1553009222542;
        Tue, 19 Mar 2019 08:27:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553009222; cv=none;
        d=google.com; s=arc-20160816;
        b=PYz+vbpyVsdxHhrAkY4p+Kkj0d+fwMnv0JkLlqY54/aj1R1Yc6A6iARhk0c4sTG/tC
         H6yeU1ArrAORWt5A8J/m+xOYDXf3Ax/+c7xSNehtRNTX1OcLiF5QsiSCQLDQP8PQ2SEU
         C8xm/aB5tR4CHBzxyrncN7lwnmPMGftLBnYkK0ZgpPY8TCBm9fLy34/ak7iBm6Vknmau
         ulpcfHvNd3jbGNlmYD7Vp/vVu/UG3zi7Mfhbg8fEbWh8SAIUd1u27kAnhCWsOv0u95Uz
         tAQZhX7F6HCVXD9a3Z484F6D0+msnHmtb0F10ceUHl01CR8CSdP/lDqXdVi6ZeyGJOxF
         9QDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=/Dzmy+nUjb0SBvf/eRugPLt+uB0tycrxvn5xLx27eCA=;
        b=Jz5k7UwLG0+EwpNikmP+gxcFrTpZlNlP3ckInWHGQ3NEaa0Ulb5DdN/A4zI7VJUbws
         +AYoCF+eayOzs7Wrg/Bo/71nmPzITBp1mOMihgqCYqF0r5upVD1h+x8XplMQ3m+e4ofA
         XGs27NAkD0iYkVzrHH8UA71WEh9mq7N+N0zhtIEc19uaXz0OU2qlJhEKAW6BecGP7LEl
         lTTpNWTrIBEp4KHP+7QrIWKPPRjsWjihV1vB0bLKh0a8d6TMjvsxQuSo8jbc662KWORm
         lsUIHXwB56YkSUpkhAF7AjMfJVI5Wdj85kQQyPU49aj/CUlXsI8C2QHodud4WIJoZ2hl
         GCrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RiMs2RNd;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id l92si402216otc.4.2019.03.19.08.27.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 08:27:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RiMs2RNd;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id r15so11183826pfn.9
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 08:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/Dzmy+nUjb0SBvf/eRugPLt+uB0tycrxvn5xLx27eCA=;
        b=RiMs2RNd10vEhHrwaIgrh9ApkxugoRXJ9sdgWgNPJT7JnzOsQQ/gs+AZNF6xG4Kj6l
         awjcxobIHZz1PhA6OdF+6z1nkRMY/7xs07rlR0xXRJLNpnCZQ1QvfsTR0+ComSQycPTb
         4R4erPUeQUrCbgnG7KF9ALldwX6FAfAPfUI9IeKHMreOD9FItpiu2SQMb0QBCy0KUua9
         ppTYfsOfaYVGDT6j9w6P7JVzfcupfabqqyds6HtNVD1lTCdw7q3Dvj+vPpSEwUKeuZAe
         l03/TR3t0y2BQl1OvU5HMvPxbiJ7vinn2mEZogIDBLNIcKEXnYdMvUx2SetlNvGAjigY
         fqwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/Dzmy+nUjb0SBvf/eRugPLt+uB0tycrxvn5xLx27eCA=;
        b=YOvnyplR6qhuLKRHB4whSJouFXyihhTOjYpEBPZ8akWVCWqKLmXlL7K8cbxYOwHUmX
         mRQvcVeDJls8Cb4psp+0+k1Cqucp81i9+mnLy27l3fvlvIbcWnu+Mw9fEV/9cZqwfHCI
         H3Fy0gne1lcMmxDKaDZKt/wHM8eqiSiWqd08glzncVoMQjVlAI+/yrhT/t6itRu/G6+O
         iSQD0/lvyRCrYKfM0KoA5WF5krbMXyu0RTR2Lms3mHQQzPnRhnvJ42IiklwQHjfBHhjB
         tkSxR9OGU4F25RHZiCwvTFMT+qtQvqZcjQ3GlszuHBbP/Vl0Zjv2jr3G/sOl2NfuKMZZ
         G0qQ==
X-Gm-Message-State: APjAAAUnNHEO6PpUirvzzUiXt+MmH9qb6LaSPUyBTs+RQJdcm9QVELqh
	NPtlzNOd0YGE1FBL+T34GCvGjZJC
X-Received: by 2002:a17:902:8a96:: with SMTP id p22mr2606628plo.113.1553009221883;
        Tue, 19 Mar 2019 08:27:01 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:75f4:f821:faec:9887])
        by smtp.googlemail.com with ESMTPSA id s79sm28374254pfa.61.2019.03.19.08.26.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 08:27:01 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/3] staging: rtl8192u: r8192U_dm: Remove unnecessary blank lines.
Date: Tue, 19 Mar 2019 20:56:48 +0530
Message-Id: <20190319152648.10497-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>

Remove unnecessary blank lines.
Issue found by checkpatch.pl

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v3:
Remove multiple blank lines from correct file.

Changes in v2:
No changes
 drivers/staging/rtl8192u/r8192U_dm.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 50a9fe667062..546bf5428848 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -45,17 +45,14 @@ static struct dynamic_rx_path_sel DM_RxPathSelTable;
 
 /*------------------------Define global variable-----------------------------*/
 
-
 /*------------------------Define local variable------------------------------*/
 /*------------------------Define local variable------------------------------*/
 
-
 /*--------------------Define export function prototype-----------------------*/
 extern	void dm_check_fsync(struct net_device *dev);
 
 /*--------------------Define export function prototype-----------------------*/
 
-
 /*---------------------Define local function prototype-----------------------*/
 /* DM --> Rate Adaptive */
 static	void	dm_check_rate_adaptive(struct net_device *dev);
-- 
2.17.1



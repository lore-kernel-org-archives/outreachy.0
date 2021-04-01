X-GM-THRID: 6946113650427953152
X-Received: by 2002:a1c:4b0a:: with SMTP id y10mr6876255wma.141.1617268112932;
        Thu, 01 Apr 2021 02:08:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9ac6:: with SMTP id c189ls2594888wme.3.canary-gmail;
 Thu, 01 Apr 2021 02:08:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyA5beOWzT+so7nfjPPaUjX/JjIanA9SxboZQjYF2cnns+yrw3OOR37byfQ9NSe9L+Oebro
X-Received: by 2002:a1c:7515:: with SMTP id o21mr7080675wmc.90.1617268111538;
        Thu, 01 Apr 2021 02:08:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617268111; cv=none;
        d=google.com; s=arc-20160816;
        b=vpFdKX6wNvRvBuiVJ8+RpEnfcHXsoiZ+zhVFxxgP4MuxBSd+q41S5pSG0dl67MTB6w
         6P9x/t94QzqtK9tzggxOdztxHSa/n1DKt0X64w0dYVUKkaznYNR6FaoxQ2J5r8VvoUD8
         QU5vCvSH34R8U/Slzdy1Jd4ne3MRfKmjNXh6F3/30W0oyvlSXAjxt1z6SJJScIrP9fjw
         1wDn05J1sh0EyG7g5yEIrI/IdyweAg0RuNF3n+GHC94LWgeiWlj251TVilEDHxJl576E
         mSRVi5JOaHTqP8BInbTxG0FjjK8kZqGwIulNkZO36G+KckD9lFwTe0QLvoETwOfl/xMd
         vw2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=wUJdzQc6vGqaF/tH9fjrVo5h9ptifyriz2mlBFMVazk=;
        b=XaOnBB6LJk98PxqgwKdsiQV+xMuwU6ZwgYvZKFO+OSs5oBDZKu5SoFhDneMxsed+OY
         z7hPk9ZVvQELuS+d5T6U+TAyJhkK9LWtTBFI5XbT6A29X9hgoaCMALKckhd9XPFjdCFl
         uGv0BBkb49fqeIe0AlK076RjF3TGgcEtMQw5PX0f3uuZrUNVWQ+wYnJbDVu+qjZkXKBE
         Dw/jla6eil0bZyJnbED1zcrwHtJQRBF80Kg0zsgmigAN0hbl0GazoERsXobYUzLzb3EC
         ZxLuxBJ7NPihTtpDnHPZ494Pk5cg2bcQIbHlScDUcrCXh9P/LZHYop2y47xfs5RhbD6K
         H1HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MRR4QO5A;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id z202si479873wmc.0.2021.04.01.02.08.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 02:08:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MRR4QO5A;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42d.google.com with SMTP id c8so1026344wrq.11
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Apr 2021 02:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wUJdzQc6vGqaF/tH9fjrVo5h9ptifyriz2mlBFMVazk=;
        b=MRR4QO5AiRIwwXG4y8t9iiQv4w64a7HkwnanCJD7qbLzg9B388whJgj8We6h0L6J0J
         yV7oEcEd23/V6iu9M5EA3bMUuydsVIYord96BohBOFT/u90NgQhFVLBiO81I5QbYLBtb
         WYftikXIomG3z5w16KyreWl5XZGTzt4lt7sgCbHlsrlpPouiFzGUgAp0gEQiK8mmtHB7
         TZdg/FHHHfGlOqnQ/yVGnilWnXwb47xhilA5FUehQS4v0c237hGgJQlwhIzAEZN18tOX
         sEyxPPm7b0TJ6p29EIWC28y55Lt0wyTr4tBXPaS989eRa8ycmJMykgPefijW1SQkApSR
         cH4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wUJdzQc6vGqaF/tH9fjrVo5h9ptifyriz2mlBFMVazk=;
        b=JfF1ypW8WYpoluJY7yHq5MVmT5/qJ46aip0IfdS4xXlpvjfsBZlZr6YmHUmvOdtjzh
         Fm594/Yv+2GYqd3lqIBOoK98obgSQ1lRCvAZEr56m/Fc/97d0I76vEwTkpjjxFdWJRtr
         Q3igB9B9xVYqgQpz8fwc+4drfCdEBNdPjKWMFRE6LZqyrSF2wf1V2NJ+vSNVY0F2cPgj
         80pg5uz5r3BK7ZnpHUtaHBviPg7n0lKhiuWw23EhRgYC/5kQjXML7b2C9JNkhfzLw23n
         hGKKv6XvM4CxenVVap9Ez7rhx4OROKcMIBHCq0DN8iUsBrC5aZsfjKrC4Ozwo+cZCpfx
         0X9A==
X-Gm-Message-State: AOAM530ebTz3N8Cjt0JrgZ6rrJ0okK2rzXf1aJt5DraTaQKfMVU+5puy
	GnolXiMTLCgIFaBZTo1xAspoW16Yd1D5MTvt
X-Received: by 2002:adf:d1cd:: with SMTP id b13mr8370069wrd.47.1617268111249;
        Thu, 01 Apr 2021 02:08:31 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:87e9:fdd6:2b7a:c720])
        by smtp.gmail.com with ESMTPSA id 135sm8193856wma.44.2021.04.01.02.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 02:08:30 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: hvaibhav.linux@gmail.com,
	johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: greybus: arche-platform: Ending line with argument
Date: Thu,  1 Apr 2021 10:07:54 +0100
Message-Id: <20210401090754.116522-1-martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove checkpatch check "CHECK: Lines should not end with a '('"
with argument present in next line.

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
Changes in v2:
	- correction commit title
	- correction commit message
---
 drivers/staging/greybus/arche-platform.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index eebf0deb39f5..e374dfc0c92f 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -77,9 +77,8 @@ static void arche_platform_set_state(struct arche_platform_drvdata *arche_pdata,
 }
 
 /* Requires arche_pdata->wake_lock is held by calling context */
-static void arche_platform_set_wake_detect_state(
-				struct arche_platform_drvdata *arche_pdata,
-				enum svc_wakedetect_state state)
+static void arche_platform_set_wake_detect_state(struct arche_platform_drvdata *arche_pdata,
+						 enum svc_wakedetect_state state)
 {
 	arche_pdata->wake_detect_state = state;
 }
@@ -181,9 +180,8 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
 						WD_STATE_COLDBOOT_START) {
 					arche_platform_set_wake_detect_state(arche_pdata,
 									     WD_STATE_COLDBOOT_TRIG);
-					spin_unlock_irqrestore(
-						&arche_pdata->wake_lock,
-						flags);
+					spin_unlock_irqrestore(&arche_pdata->wake_lock,
+							       flags);
 					return IRQ_WAKE_THREAD;
 				}
 			}
-- 
2.25.1



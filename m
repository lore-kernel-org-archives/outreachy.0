X-GM-THRID: 6663618170330284032
X-Received: by 2002:a67:ed05:: with SMTP id l5mr3019093vsp.23.1551825259449;
        Tue, 05 Mar 2019 14:34:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6805:: with SMTP id d5ls70729vsc.4.gmail; Tue, 05 Mar
 2019 14:34:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqwWHKTBsh50y4rGCL+ZGqpG9i6Iaw/2+T7+KNkDWIw+XCfzHif5BU1AnMrqdK3dHVq7Ddhq
X-Received: by 2002:a67:df08:: with SMTP id s8mr3147918vsk.4.1551825258784;
        Tue, 05 Mar 2019 14:34:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551825258; cv=none;
        d=google.com; s=arc-20160816;
        b=NjrfhQymF/hFAxXTd5YVHZQ466Nm+HnDduB6GfW3y1qShCuHEut9CE/dBtLmnMVzrK
         fhyqe/QmxShaYUlwgw+JNpqIQB3PcJSQsiuDPuCFPESHtjLAvzGxndw121BzXAA7lWqK
         aVXS0O5L2ZyNvPN/rIVZ5rCsl3rhjcjLJaqZZQpS6umf5YZsfdxqMREVd2PwgPbO5WaY
         C8BoPYTJDS2Bud/YsdVdEkgn7K51T2AcXJo0qmC1Mm51H6XAYLZopfCLx0xYyK8+/gog
         f+5YD/MHW9hSA+zeO60eIKXIez42brCSXZzNFXPMCO7+vGM0+DUVIk7RMAUs3k+D18wI
         z8TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=FfJum0OL7BKB7L22n4T99G9OEhxGwOvREf/Sh1PvLHU=;
        b=DwLRuqZ2zz/ImovsDSAdiKV1mPRN59WqBwozoIk2KKBIPnbMqk0c2LIXLUlINNG4yH
         OrfLWv1mZqKd6Lj+foNWOzfWEQlRD+Vg0LWc38hjeQg8IGegENOAWIymwvBlRX0RchsV
         azZSvhEBegVZx93jxIJsIpWfof02IWUmL21bugk8hnEI/+gRPy1+d7HihGldI2MT8tl4
         vwgrgUPmJ5aAb+xpYqeoaYUfoEXRugL1vYrWyy6VKpChfyPah5EZPpGmLQAx7w6is3K4
         goH4DVFp/3jZRWzkijAfr/NgK3knHsHWD8xRG+Un4BbuoTovUf6J8FsKj/Q8BiO1/8e6
         jIWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nPUn2TAh;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id e17si563843vke.0.2019.03.05.14.34.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:34:18 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nPUn2TAh;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id b3so8924583otp.4
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=FfJum0OL7BKB7L22n4T99G9OEhxGwOvREf/Sh1PvLHU=;
        b=nPUn2TAhfj8dS4xbEyGoiIHlbZG/JJaIwrFlcO8zCqhreIV1mvjKN+W0WZ1M195b5g
         DcT88TGFaHvnovPD+3EX78P9nPikJNF2ioL+Z7xph11qJ3de/VYpGn7ctWZk0lBfh0JU
         S6nB19Nw4lINZs5DN/3RQCJGyt9O1eyfN2zafFgzHq2XZrvCTI4FSTvlGrkHwdxsdW8Y
         hnVNUL4qHCfj4xvcSYaaJFYtHsMd4Cu5G3xQWNXMag7lYhE0TPPU0zDnw3VuTfx8ZcSM
         GdKtqwmwXHhUqGb2sls+P9f5qzrHau1uLyyEHvuCrDgZJLEvTeq06AtSZIbL8pJmU78a
         /5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=FfJum0OL7BKB7L22n4T99G9OEhxGwOvREf/Sh1PvLHU=;
        b=VWqTZw+ms9JMIiFe+7y0cpXBLExozRlpe2ENIBudXzrxzhmHm62Zpq64ENk7fKqa4e
         +Yn85YsKR5aBa3tnKv2Tfs9qdb3KFZb9Xaj7FHHpz32+pIAHRpE0JguBVlwj8vlXmhJv
         cg8tBiNDaoEM6jvizqti/y879/2yV7G/2Rc28FSubScWwEbtPbvgAoEa1B/Fq1/kGMcA
         TfLQqePHraxd8cungOD5M7zJh7r4HxAu/VJt6jVcdOMonC3Ca9KJIcbASODqHNW8ApPw
         vngkTM/1BTECRJKl70EiIwGsZQTbF5AcbMETq0EygL0sA4UlQS5p/tlUnRxZSW5Aiv0r
         CO+w==
X-Gm-Message-State: APjAAAXEORwATmD9++p5tCWrCiLu/WcDaAJ2YkYjW6p95z4FodU/jIq9
	B32qpttbugO020TJDBFg32k=
X-Received: by 2002:a9d:6453:: with SMTP id m19mr2439576otl.271.1551825258375;
        Tue, 05 Mar 2019 14:34:18 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id s12sm3958139otk.0.2019.03.05.14.34.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:34:17 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 3/6] Staging: vt6655: Remove unnecessary blank line
Date: Tue,  5 Mar 2019 16:34:02 -0600
Message-Id: <6e2853444e02e96f601b46cf74471bc00f809ad7.1551824831.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>

Fix the check issue provided by checkpatch.pl
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 4750863c1bb7..40a8f1ce837c 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -593,7 +593,6 @@ void MACvSetCurrRx1DescAddr(struct vnt_private *priv, u32 curr_desc_addr)
 	iowrite32(curr_desc_addr, io_base + MAC_REG_RXDMAPTR1);
 	if (org_dma_ctl & DMACTL_RUN)
 		iowrite8(DMACTL_RUN, io_base + MAC_REG_RXDMACTL1);
-
 }
 
 /*
-- 
2.17.1



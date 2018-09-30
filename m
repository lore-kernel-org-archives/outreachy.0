X-GM-THRID: 6607095314902941696
X-Received: by 2002:ac2:42ca:: with SMTP id n10-v6mr188229lfl.16.1538334263194;
        Sun, 30 Sep 2018 12:04:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:6354:: with SMTP id x81-v6ls1615756ljb.15.gmail; Sun, 30
 Sep 2018 12:04:22 -0700 (PDT)
X-Google-Smtp-Source: ACcGV634r0r84ydhKE7himqnPFH+PbdYPV+HyTG/AfUygzHzZoLa51VuKBkqVlGsW0CjMLqlEX1m
X-Received: by 2002:a2e:9bce:: with SMTP id w14-v6mr188153ljj.30.1538334262552;
        Sun, 30 Sep 2018 12:04:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538334262; cv=none;
        d=google.com; s=arc-20160816;
        b=WDs80wJHyYZ5HUMafHf2Anc/V/3OlgoJM7a5ZAajOhgM3ksb7OxwNtP9zj4BDOTzxz
         pKhB2PmMNAiDeEUtRsaeLRN7PKk78wJEeVYWsSMZr86WqN+0zBhkF83EWhbdm5nT6OwE
         xe95baCK3/ZV6nfVo64eztlJhbYD3XSn1sWnNL7IBdq9xUpwd5QGzcCWen+4jsJdhQSF
         7T8eRI3bCCzKmBKzlSqS9nSNuKwFsY0TTE+5D1Leq1Kv8w/49MGu2AS4OR+VMVQZUkUq
         C/XFcwqIhdjhiHRGYc9PYNNB/EePXhZuwqdjbqxQU7fZCkUSl3xmdLgIWhwoftuiqKvj
         9V1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=GJnCkKGPNCa/KV+Xi4pFKLChS0p5Q5Ul7bnoeoHLr5Y=;
        b=EsMIhIsNKNaaABaHu6DWdP5GYl/cZLbxN3AuS1YmfyvFkiGbLDnv+O4J7aukS1sBq5
         0fDZ+m6VKod6zmcs5W1/ZJ4vJt2n3q8KQ6dXO8YfGdj8ZM2qLedLCfkCuSdJl6/Zd6Hj
         sHjpkwW4lRSsGBsYkroGgHJFDNyGZyNuRwOUNVI/bIkC0gXWEwbNdqPVO85ucLytoqWV
         q8KFjoAqQaPp/7cPjTGc2/2DpZ+wMRCEeq4Lq1qm5hsEJy5wO8Gp/VsHx9ZLXXqrQsJw
         YCf6u2d8Rpu3sFPkq6HmdYqyR01iX5fkv77s9zgpZPFKxABK1FbY1DZOcVSq8+ymLbmA
         4qsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IqOao/k2";
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z8-v6si370019lji.3.2018.09.30.12.04.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 Sep 2018 12:04:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IqOao/k2";
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id z4-v6so10054625wrb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 30 Sep 2018 12:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=GJnCkKGPNCa/KV+Xi4pFKLChS0p5Q5Ul7bnoeoHLr5Y=;
        b=IqOao/k2juQIt3g9EkDfMXCeYHdm/zra2NGr9gwsWUecUoBe3996yJ1pM+aKtyp0lK
         4duyeHHuSA6/hXjoxDBGFvLFquyyckMzTXZ/Oyp8CF4ofQTElCaB3xmcA2l7wdHgg9Iq
         cVaF6E/QU9ZTA0qjShjIt9m5hCp3QP0yXEg8O4NtS/UPeFo684EbtM/aJQO0K4X7/nJG
         g1AN9Y/honkD+0QcTWfJFKQMAxbgzBZtwEGComi0Q5XCC7B00maiFIHF7gGxltGnd8GH
         lSsqgGUeJtlPot0o1DYRzSqwS8I7Cwgm6mDI/m6i6ko5+wgSYWwVYpzO4XnikMUr9d7o
         Z2+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=GJnCkKGPNCa/KV+Xi4pFKLChS0p5Q5Ul7bnoeoHLr5Y=;
        b=kI/S0sJXN0QjhC97rUvQjgV4E5/7hjoRIsengfF0pfaKsNjZvsfuf1pO4PgnvUZPZR
         eYRb4ACYWQIXoaqjETGUD460/rix4NVxvAanWJrBozCJoQ0bpsjueHgptD27Sjl5g5pQ
         Hh/+enY7oT7bqhe2bS4GXjEZy/aN7SVvMw2pWXdm1iL75sMlY3luFU8QPXcoO9u5svkh
         DW1Q4ZNrKbaV4zQ8G1a8donTKssWgsEG3VOtfZ4ZU+yPw84EA2nNzg+YBkd/yhOVOSmH
         kSpSlmHSJoMpw13ckTokE/h1Qbu1Jmqaxjp82D82EiLw7TLCNEOiScWkcMpIuBy0W7q2
         HjPA==
X-Gm-Message-State: ABuFfoj1c0k+o/TuBRxCwmjms75Pl0ZeLXnUL/XVJ3mc8S6nZtv0U3cU
	pch0DP+WPgllaCT+6An6p0/PJQGVvwQ=
X-Received: by 2002:adf:8385:: with SMTP id 5-v6mr4771837wre.13.1538334261902;
        Sun, 30 Sep 2018 12:04:21 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.home ([77.127.1.188])
        by smtp.gmail.com with ESMTPSA id n4-v6sm10657610wrr.21.2018.09.30.12.04.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 Sep 2018 12:04:21 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	dafna3@gmail.com
Subject: [PATCH 3/3] staging: mt7621-mmc: replace `printk` with preferred API
Date: Sun, 30 Sep 2018 22:04:04 +0300
Message-Id: <5afd2a76fb8c8ec834daff06b51df00e45c5aba5.1538333858.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1538333858.git.dafna3@gmail.com>
References: <cover.1538333858.git.dafna3@gmail.com>
In-Reply-To: <cover.1538333858.git.dafna3@gmail.com>
References: <cover.1538333858.git.dafna3@gmail.com>

Replace calls to `printk` with `dev_info` and `pr_err`
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/mt7621-mmc/sd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
index f2955fae7b28..c21103aed2dc 100644
--- a/drivers/staging/mt7621-mmc/sd.c
+++ b/drivers/staging/mt7621-mmc/sd.c
@@ -1695,8 +1695,8 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
 
 	/* mmc irq interrupts */
 	if (intsts & MSDC_INT_MMCIRQ)
-		printk(KERN_INFO "msdc[%d] MMCIRQ: SDC_CSTS=0x%.8x\r\n",
-		       host->id, readl(host->base + SDC_CSTS));
+		dev_info(mmc_dev(host->mmc), "msdc[%d] MMCIRQ: SDC_CSTS=0x%.8x\r\n",
+			host->id, readl(host->base + SDC_CSTS));
 
 	return IRQ_HANDLED;
 }
@@ -2131,7 +2131,7 @@ static int __init mt_msdc_init(void)
 
 	ret = platform_driver_register(&mt_msdc_driver);
 	if (ret) {
-		printk(KERN_ERR DRV_NAME ": Can't register driver");
+		pr_err("%s: Can't register driver", DRV_NAME);
 		return ret;
 	}
 
-- 
2.17.1



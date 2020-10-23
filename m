X-GM-THRID: 6886754504094515200
X-Received: by 2002:a05:651c:553:: with SMTP id q19mr578588ljp.453.1603447483470;
        Fri, 23 Oct 2020 03:04:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c111:: with SMTP id r17ls234079lff.0.gmail; Fri, 23 Oct
 2020 03:04:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzfWHr35PMJUklXTZ4INiFMHye/fS2jKCXOtRhm8l51oITzlXRfEgEBpGNZz64/cXKVaC34
X-Received: by 2002:a19:22d8:: with SMTP id i207mr516470lfi.85.1603447481321;
        Fri, 23 Oct 2020 03:04:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603447481; cv=none;
        d=google.com; s=arc-20160816;
        b=rpTPS1LQw4obJmf6JqFg1sRk/KwUrHXwEDpAQGgbPXxrlLZHY33sAJ9x8wPW3qMXGs
         4SVqUElmecwElXcvlrUAOUfEucB5yE5bq4p6sMI9ssmgKlmt/VVq0qPSVvpx+Ni8gxxi
         Uf+J4o7lZmdr7ehdSrM3D0BIjl2QbCIsPHls/C2yTWpGJAqv06XZdh7qOvFuuxkK30rG
         NVjZEkIPgrzdocxqKRA60Q7BrGwFVBK25ENUonY5bGNG1C7kaJCM3AKTnIj0v1X78RPg
         JqSb3eHF6tVJ0QlNsQj7w/Bbt7uLBubRdLuXhLX9GGmI6IV+Q6hofRhNEgiXJ5q/d9BL
         DZVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZqzZOkkQhGsCMz2cHtUHXACq+yiPZPMxH0amNRjDG5E=;
        b=lR7pPrLcb1XM7GJMPZJgy/o2x7q9yTzB0tCeo574pVsyDa59op2/i2l4kpO2nhAh7p
         sDT3UtKlrJVQuajEN2FV0a8ekskcY8xwxlSUU8KFJHtO9N0uNYIpsHHLOMQWR//mOzRy
         9dBUcwh+ZXDsAF3XD6QxazC0x7iAq59PWGgimxYDWU9SWIjC0GrKozBV21eyweKDQWIh
         FJAQxJ/d5YR8LIJslkSLWVcGi0WetC/8zRTdurnEHjZPcx0UMv9M8iiqQGX8QG4FZAQp
         GVGLg0vBLF4II9xQzAwsoYFEbXffjrkXhr/HmUd+HpwSUV1m+Wgo//pG3SHkjaVRm6n9
         o5GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mLXJwCGs;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id r7si25715ljc.7.2020.10.23.03.04.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 03:04:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mLXJwCGs;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id d24so1375103lfa.8
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2020 03:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZqzZOkkQhGsCMz2cHtUHXACq+yiPZPMxH0amNRjDG5E=;
        b=mLXJwCGssO++PBuZLocN9OZw23erg0HlFo2Ry9zymGOp5//uhahs0/xil9qkmLk4bB
         jTPEnlyNkvQexT2+TCFfDnVFoYYgTLkg6SEns+LIUKSLrspovX7qYasjZllX/IQwCO1E
         9mRNgBXszKrJ1BYkIijDBvyZMm0lrx642Fm7KMWMdMnaPavxg9RmC7t2jAv68W/d12bd
         iEKm00BCbmhU6rA5FrZIIdBs3Dw5s0ctwxuRzbDTE7zx47M1nPmk6aufvKtWCSz9EHSH
         2dOnhAEEvZN3GKW3VvtZ+CvS55Pr61IGT9tsQvZ6bjUOVdg2jvoegXcM99soG/a9BsBx
         48pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZqzZOkkQhGsCMz2cHtUHXACq+yiPZPMxH0amNRjDG5E=;
        b=rGWorAUjkgh6DHSuoBP5fJOr+rtStOP1BWvJwTsAsnvU+1VwV/VEf8ogJji0gSZrwz
         MBxH8fAEfiR53MpMBaOoBg01dJC1Eg3y4PNZtajgP+mFvATQ7jyUUXRtjucj1yrBHzyj
         Pir9WX4TAR9GWA+zwGzwMg3ARRIatlvZOHOOGzU02c4N1bnAYeOiuc6YGm9L1neLBrjh
         x4SmQyoCdO/lXbOp4BQmY1qHIHotYwUjx+3GnwLccOH3tzKEZHCEjTaMnLe8JnnUGv1E
         hKfkdA5sz5bCNj9CY2XkDED6W0nl1sYRY5OhbFjgAGRSxL+iA69e5pFQyx8DYX3QI2kI
         JVmQ==
X-Gm-Message-State: AOAM532OJoBsd+cioJVTLedocUenyUMtOnsptUZkYKOTd9u+mA5J00bm
	l22D0iBI+3W6lt9nCNgWHPk=
X-Received: by 2002:a19:8087:: with SMTP id b129mr529747lfd.471.1603447481015;
        Fri, 23 Oct 2020 03:04:41 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id b137sm92631lfd.105.2020.10.23.03.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 03:04:40 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Elena Afanasova <eafanasova@gmail.com>
Subject: [PATCH] staging/rtl8192e: replace kmalloc with kzalloc
Date: Fri, 23 Oct 2020 03:03:17 -0700
Message-Id: <20201023100317.4473-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

kmalloc() and memset() calls can be replaced with kzalloc().
Found with Coccinelle.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_tx.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
index e0d79daca24a..c9959bb4ab63 100644
--- a/drivers/staging/rtl8192e/rtllib_tx.c
+++ b/drivers/staging/rtl8192e/rtllib_tx.c
@@ -205,12 +205,10 @@ static struct rtllib_txb *rtllib_alloc_txb(int nr_frags, int txb_size,
 	struct rtllib_txb *txb;
 	int i;
 
-	txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
-		      gfp_mask);
+	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);
 	if (!txb)
 		return NULL;
 
-	memset(txb, 0, sizeof(struct rtllib_txb));
 	txb->nr_frags = nr_frags;
 	txb->frag_size = cpu_to_le16(txb_size);
 
-- 
2.25.1



X-GM-THRID: 6809468497850007552
X-Received: by 2002:a02:90d0:: with SMTP id c16mr74823jag.22.1585586757999;
        Mon, 30 Mar 2020 09:45:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:284:: with SMTP id 126ls1449076jau.1.gmail; Mon, 30 Mar
 2020 09:45:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt5436La6MhXaguCAK8fMhIgN2ZPcSoaFvPH0cx673+KrrhlzLX+JpbqHr4q80oJqig5jQh
X-Received: by 2002:a02:641:: with SMTP id 62mr12027817jav.79.1585586756776;
        Mon, 30 Mar 2020 09:45:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585586756; cv=none;
        d=google.com; s=arc-20160816;
        b=k1HNSrz84lCCdd4Wz0XlIyY5s8WW2sG9numYfUZFCtPFz9JfB4BiniiGrmxkRudyni
         ZRwoUtg+ikolD7rsahkdKrWqbcNvIhvzw5DVYh5+N5wm7DB8THSK+voYrTqfEMGQAtAD
         3J09ldxGunXk3cOEcAROT0r7IwIuZaWyexuTj+CKg0eC6/xZoeGBSVmwFG1RTd5ugDTq
         8Sp4DOM/lBD+xSooT/rYeJADaHlaicJF71zxHy3/zdrhgC11whe0Gork8/PNlZaDjiOB
         oFxsDUulW08XNLxdwanGO7tyup1z2wOk5YypuwXPJW5etYcH9eXjHpEq9iaw7JDSfzPe
         O/nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1jHmmqwn2svjDpJo/PqcecI2nv0o43iwqhoUvWD12Vs=;
        b=MuSWz3jyW6m2gksWalFHrZPUos5B9X1seLYkw7KIiQzUmGlbR0HhM4okn7iz6fQFSC
         xte+vdtosceWLRZQjYflbUCCOn+B0Y9a92SM4uIyG/C8dMO99/d8ccUISCvh7uBH5mIZ
         iniXDAdyrfiR64gwVgZnrt6KO36ElRkUwAHbzwe6w/gImm0har5M0+8ggahYdrK2NIag
         U1xx9V+KkCfJCzkP5+l5PPtOypKB0jiewzrZxY+2v+O7bF1P1QBMCUl1xdC6WVEuXG/M
         MlfP+UlBOu8/Qcd4OtcOo18/8FvZ8jbVfeZ85TJ5HbRWOghhuEd9l1u5WasY4b1H/Rce
         KV1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UtaEHMs0;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id 131si795312iou.1.2020.03.30.09.45.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 09:45:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UtaEHMs0;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id l14so1791939pgb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 09:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1jHmmqwn2svjDpJo/PqcecI2nv0o43iwqhoUvWD12Vs=;
        b=UtaEHMs0yz7OzsCgZpF68S16mE3rpzMGRscsJpWv+NrjN1/ike3O51+Q+Wejvo0baN
         m0UHlGFc13NiDBP55M5QExJcxOwwqQSiwT4ODoytwiX5YW75t9VaupearIW/bs/UXUak
         iGToo5V8SQQIEquNd4I5b4wNnAQJQrgBXhpPFFzplNKWpTZoQvUpGjd918V4WKC0/6n9
         16Edgr0PuVfUlvAJDA53+FiCxJvO6m1S5L8UnUMrnk+sHrcZyJUyRwcYpmXeMHlIDOUn
         WAuQ8OfjPo03bghgj+9d7Vy1bvTI04+PUxWBsPxxvsjk8P9nOWk3NV71Kwwzinr9uE3A
         kOBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1jHmmqwn2svjDpJo/PqcecI2nv0o43iwqhoUvWD12Vs=;
        b=sVwzLK5iMqSDTCsl24/p7qRgdqdrq5MOcaOV0jK2UW2yB5zX9ZDhq2HkW1qMi98OTM
         lsnzpNDn9lVHmLl6m1mam+veOPmrobAvbqDMtWUkiGICKrWBlN59Cg33f0QHK/B8lhPC
         YFb4/pod1hezBabFD0Rve7WJBqnrHHoNB0oilR1H/g0Jfmu1nO1K76iiMVY/ldpAEbJc
         jFbR66kxC9O/3jc3+3j2F53Fbl4M4f44UY0LHEf3S3xQL7zKqiVWThhoqpsgkG6b1Ygo
         ftRFex+Yllwt8lZtrT4H9FX96FAsrMYqkaDEsShgdqy58aL/cZh8cNT700vBJ9hFiOlP
         /cSQ==
X-Gm-Message-State: ANhLgQ37NBOT+i6zCPgDDzJ0LFhYdDoyj2wVqkVgYyGH/2kvrchhbcas
	7CRKY+bL2jKfBYhGTiAKeZ1kGGeZbRFXfw==
X-Received: by 2002:a05:6a00:42:: with SMTP id i2mr13604943pfk.108.1585586756115;
        Mon, 30 Mar 2020 09:45:56 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id d3sm56194pjz.2.2020.03.30.09.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 09:45:55 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v4] staging: vt6656: add error code handling to unused variable
Date: Mon, 30 Mar 2020 09:45:30 -0700
Message-Id: <20200330164530.2919-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add error code handling to unused 'ret' variable that was never used.
Return an error code from functions called within vnt_radio_power_on.

Issue reported by coccinelle (coccicheck).

Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Suggested-by: Julia Lawall <julia.lawall@inria.fr>
Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v4: Move Suggested-by: Julia Lawall above seperator line.
    Add Reviewed-by tag as requested by Quentin Deslandes.
    Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

v3: Forgot to add v2 code changes to commit.

v2: Replace goto statements with return.
    Remove last if check because it was unneeded.
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/vt6656/card.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..239012539e73 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
 {
 	int ret = 0;
 
-	vnt_exit_deep_sleep(priv);
+	ret = vnt_exit_deep_sleep(priv);
+	if (ret)
+		return ret;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		return ret;
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	case RF_VT3226:
 	case RF_VT3226D0:
 	case RF_VT3342A0:
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
-				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
+					 (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
 		break;
 	}
+	if (ret)
+		return ret;
 
-	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
-
-	return ret;
+	return vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.25.1



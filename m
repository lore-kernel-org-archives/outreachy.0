X-GM-THRID: 6463854288984604672
X-Received: by 10.99.129.194 with SMTP id t185mr4167149pgd.23.1504983354255;
        Sat, 09 Sep 2017 11:55:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.139 with SMTP id k133ls199007ioe.34.gmail; Sat, 09 Sep
 2017 11:55:53 -0700 (PDT)
X-Received: by 10.99.122.92 with SMTP id j28mr4119291pgn.120.1504983353410;
        Sat, 09 Sep 2017 11:55:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504983353; cv=none;
        d=google.com; s=arc-20160816;
        b=M0ASaU0CP8KP3ISKuzhAVmFcyRm2mcuysYNmXomwmxcwunXvbvWNiHgJLeTa3erMRT
         bzYHdWX6vssLnefEYQfNi+VxDi0VFDge4ffzE0lCZsrHOMtNmlt1fXIhv5KH2x+2lItD
         iPCKqcBWCBiMyxWjA+cjI+g/WwHOdBoMH4RcGne6kCWxe4om5de86sSBajEFX+lgSQ1B
         vIGw2qF2MLhxCGS2sB4IqyDKjDEsX9IkyGNtuczoK4jFZJGWomV6RVOwX3O8fCCBp4P4
         rEKKalGJ81cOoRMpE7sYFuomwsxcLMkteiBGYFpbaiGg4k0jnrZxsjasqVndtJRYjYo5
         lpeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=CrtcStjlEfPO9pVbL3PwJ+GZl6/GvhLbSwXsLmUhCR4=;
        b=wxTilXWKVmRDk+zWDTpdx6MjnT94QYH667aYrV1WUVzL6IId76+lktlr2P0hdCVw/7
         lgfHxllkKHFXWPSd9SoGv06U6l7QXjpNod0zSAw/FftVBh5brbpyPhoUUY4f4pnp/Jw6
         jex6cUGlzPHcEMrFQ3/E+7l2j1YeheiJwTzWa8VUsGN06ELsGy3/5XR9AWorjgYySEod
         ChQU3krsg77ehuT5k9PUAc/6iyN+tKqQFCHDSyf1zlQLupbWTFYvtMofnz+9MhP6Tx+0
         oiVb5LPoE1PBtBcFJafYeYNXTCQ0hpGID7RTx1pViZqcDBRCAZd2TPZwUoqiYsCeeXcM
         hMFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e24M7SnW;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id f189si531501pfa.1.2017.09.09.11.55.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 11:55:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e24M7SnW;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e69so1249395pfg.4
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 11:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=CrtcStjlEfPO9pVbL3PwJ+GZl6/GvhLbSwXsLmUhCR4=;
        b=e24M7SnWIiLuMFW8zSJaqWz9dvQlDQRoQDjrPyJgbw7jSGZL/0B5mhnh9HkrsUQrA4
         J5ER1tWxP1kQn6/KJxXPk/gGPka86WYs6JQhqEbch1l3dLTFXBgDMcOPrdKjHdk+AlAv
         dnJHNGmchHGe07tSLj80JUO/Rn8/9F8mHldMJHCJEwObV/FLa/FDRpNMKeMmzuaJLOP0
         ayQ9mV7/koxMS3LgIUmOb0Ut59QHX6wGg4WeZPgFX2IXKUcg2sNF+WsCDXz+hxln4uhv
         GkzmJ8LDvNWUfXgsQ3dYnmJaFv2uYk192728jaNYVgXVOhFA34GDVZcutyITPfx/ORPi
         fu8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CrtcStjlEfPO9pVbL3PwJ+GZl6/GvhLbSwXsLmUhCR4=;
        b=U4Z6YE34KGZ1dxDT62Omci2pLaetoBVYGEA9xCCHWjkS7zcG2JmTzTBSgwOZKMenJX
         xnL09LnU/AgteU/JAYdJM54rg52VV+DY+X9N+HJNPrXCTVwgYowghrFZV0HcEPP/juD3
         68EKPvvwIs17hdUfRw5zC0JD0IdjDU5njjp/TnuwK+ELngFMm7J2RolMJGZfv7Bt27WD
         vis74me65APs6Qv8lM336MmcYXV+JqOLw5VP9G+6EHPtCuFoJ4H0FWbwpWQYCT5YKK0R
         l8jXomZOv9t1OqS5ge7BznuuyYEHM771hm1exkzCuvSPOSB5lD1LAdVKagHKCiwnBnj+
         wA3w==
X-Gm-Message-State: AHPjjUhWg4EkrFXT4RGhYb0gVNDdt3qEd03GmblNHbnHDuou+2jWiinU
	2zG8/yD8VhwoEQ==
X-Google-Smtp-Source: ADKCNb50K0SVijy8qFqmB7u5La4R+O2B097up5lTjjbbRJmTTyKmgDayvN0IKH/e8pgI2V8+K53ZQQ==
X-Received: by 10.84.238.143 with SMTP id v15mr8090689plk.303.1504983353159;
        Sat, 09 Sep 2017 11:55:53 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([45.113.152.92])
        by smtp.gmail.com with ESMTPSA id p71sm9930722pfl.56.2017.09.09.11.55.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 11:55:52 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH v2] Staging: rtlwifi: Remove unnecessary 'out of memory' message.
Date: Sun, 10 Sep 2017 00:25:47 +0530
Message-Id: <1504983347-2957-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes unnecessary 'out of memory' message to make
the code more efficient.

Problem found by checkpatch.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

Changes in v2:
  -Add a tab before the return statement.

 drivers/staging/rtlwifi/rc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
index 65de0c7..779a5c6 100644
--- a/drivers/staging/rtlwifi/rc.c
+++ b/drivers/staging/rtlwifi/rc.c
@@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
 	struct rtl_rate_priv *rate_priv;
 
 	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
-	if (!rate_priv) {
-		pr_err("Unable to allocate private rc structure\n");
+	if (!rate_priv)
 		return NULL;
-	}
 
 	rtlpriv->rate_priv = rate_priv;
 
-- 
2.7.4



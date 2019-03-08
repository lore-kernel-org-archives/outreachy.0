X-GM-THRID: 6665097919314526208
X-Received: by 2002:a24:330e:: with SMTP id k14mr11015653itk.39.1552010477878;
        Thu, 07 Mar 2019 18:01:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:66c5:: with SMTP id k188ls2382899itc.3.gmail; Thu, 07
 Mar 2019 18:01:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqwrUUwfECZ5+HofO9qT+3uRP79fy7ErjSxlX/wP8QbkTSB6VS1WourlzIQ36pp9HTG4fpNO
X-Received: by 2002:a24:37c6:: with SMTP id r189mr11510272itr.13.1552010476910;
        Thu, 07 Mar 2019 18:01:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552010476; cv=none;
        d=google.com; s=arc-20160816;
        b=a7NFxz0yKtA1lFngHaueIKhELUjGecSZfNQZk8lZdJAGIltNnQfBGhqihClPjuAS+n
         vt3y78NknEIOUirLmPFRdM5enCh3LJMVtS1tlBR6bew3Vb79Shkhg9zMc9t7ABDdRij5
         RWruc0I0UtpimTVHzgXyEqF3xYBi3DYHWXijIavA49xLMUVcAgn12+tJY5zHX4ZER/J0
         /9SPMjTaVOb3ngifdH9pkjouaPVGJaSHBnKoxWDxmOt73tXJ8X5f0bwgowZVTdqvdlrP
         BWb831D6lVZnR1pgGpmRvyb04xTR9fdo/UogEFy0IwXuHybbv5Fg+9bvvnQI7QcnGtO/
         Y2ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=R36szINi1+pvYvOC8uGtojiaeYsUCrCyoCG9e/4A81c=;
        b=iLPXHvECbkZcoqqKc6V9LLNLYNjZB+LG4gthll4dw7KuEg5hKAmeZUk+gnxwAOgMWF
         nyrmHwpb4ql+g1UbRH0yw1GYRHFQKVHppDi0R02pCeoRT5oVPAj9CuazUF4EsR/inTUR
         76Q6+JQ/foRU/CQ6DKIB25y+FLtGXb8v06qMpmuUfptLIMtL8yZeheUyKXfyjw/+j7gC
         H922DwLtZgQ05y8uODv2THgf783a63aUBflBDqfKQXLKUmq83wHZjS8Kqyy/ArOxy5cZ
         rIRzFOKeg7AfmJwZeyElKroIb1nj0jWJOAbmNvbJ5pZ/BYJgUqJ714d9jWcUfCBXaIlX
         asSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TPWEXsAy;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id b80si367765itc.2.2019.03.07.18.01.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 18:01:16 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TPWEXsAy;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id j5so12916254pfa.2
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 18:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=R36szINi1+pvYvOC8uGtojiaeYsUCrCyoCG9e/4A81c=;
        b=TPWEXsAy+XLPgTiYm9w9mpCbykLtOOCQAwAugI2touJDJDfNOA+T7i0BLIVXcH/qJ8
         Rx0JPft8vExacjxS4CIvtiz81BV1roFO7JB/rNJbCBPG2f42G7PuWd3H35fFLYsfAhdS
         qVYohQjCj2TobSahfWUquAdgbUk7HvhEPIZMhtZeL+CJy0QoA3IMvVxGK9w3DBxfPn8i
         BkR6Q/tDeGSJXQmp3UqjsJDEG+H7tIghwrcfP9day88G7EmX6t6+rkqdkwEkRTmiqMQS
         U4xutfu5CHSG5dnrCjPG3vGETLPdSPLD3yEJ/oYfdWSxtP3UgcJALz2VYCRb/y2DVGYL
         jBqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=R36szINi1+pvYvOC8uGtojiaeYsUCrCyoCG9e/4A81c=;
        b=EE1pflTI7otCWr4RlVhYtyUx2pwW+1KkFa3yR/ZPbPEv9OGMY8ftyz6wcxn121xeXs
         94n5ZT2VJIQpdWCwVoXFntzqI5/fQ3G3F+8BnKn+FHJ6urL2AhogsQ9zOn+Eq5gGvxf5
         TtTFVL6ERSsntGm3sOaEeXMAoLU8S2VLOCX+w6yVDQmlarSaX+rxGjZNpbBBts8zLcCG
         zNqJqnKpFriO99EfPnA+6elcrXWvFt5gOfdaAeXj/LNetFdqbNpP69o6JE7KyBu9TyKH
         g+h2ye0Dn89hDgth84ZmV6mVJxbbvLPGBfKg8b5AOzcRvbNv3sUfRlq948GqexxH/2pB
         VoXQ==
X-Gm-Message-State: APjAAAVZb+LCjFqgxhKnoY7qDyHRZH/2vJ5Jt3JdtYUX5+674V74vIme
	MkkaYMTGCzd5GcVpuZD/zJPQcsokGwDwQQ==
X-Received: by 2002:a17:902:1347:: with SMTP id r7mr16230593ple.82.1552010476598;
        Thu, 07 Mar 2019 18:01:16 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([2001:da8:d800:199:7e1:7347:f861:5837])
        by smtp.gmail.com with ESMTPSA id k27sm7978396pgb.70.2019.03.07.18.01.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 18:01:16 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v2] Staging: most: usb: Change '--help--' to 'help' in Kconfig
Date: Thu,  7 Mar 2019 18:01:13 -0800
Message-Id: <20190308020113.3134-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Change '--help--' in Kconfig file to silence checkpatch.pl warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/usb/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/usb/Kconfig b/drivers/staging/most/usb/Kconfig
index ebbdb573a9a6..539b38fb3d88 100644
--- a/drivers/staging/most/usb/Kconfig
+++ b/drivers/staging/most/usb/Kconfig
@@ -5,7 +5,7 @@
 config MOST_USB
 	tristate "USB"
 	depends on USB && NET
-	---help---
+	help
 	  Say Y here if you want to connect via USB to network tranceiver.
 	  This device driver depends on the networking AIM.
 
-- 
2.11.0



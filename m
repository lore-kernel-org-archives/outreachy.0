X-GM-THRID: 6670912336289595392
X-Received: by 2002:a0c:958d:: with SMTP id s13mr4274883qvs.205.1553192813478;
        Thu, 21 Mar 2019 11:26:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:6984:: with SMTP id o4ls2982461qtq.9.gmail; Thu, 21 Mar
 2019 11:26:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxLeA1dVPFLaykJc6pRvzN1Ns5gqQx9el0gWoaFAO0STeW8xcEKews7/fC0SVK76ohZTAkv
X-Received: by 2002:ac8:35ea:: with SMTP id l39mr4281329qtb.151.1553192812910;
        Thu, 21 Mar 2019 11:26:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553192812; cv=none;
        d=google.com; s=arc-20160816;
        b=bFLhe/DohD1zl/VJV1f33haGO/gDSl5GP4lGieT6hUFBP7NFTt2ygYoz+9DzR7hrrX
         xtGlEL2a+LqqfP5+K85bhcM36bYTnp5cdOvCys98pc1lOJS++lvsLdlUqVWEUNRi4KDj
         MXzBZtZZWXNiBeopCZeXcu/zKZwKk7nQFE1rZO2D/+F1TNBLwMSrcnsRcTKQE+R1dWgX
         O216uJO60ZYedR5WCBpr22NcjzI6q2tgWkzPl2hsui+6Oa+xcrRMIcvzvsyL9mVgwtPa
         1Pe4y80VQQhTmBzg/XizKBbNO/AxeMywHRAdHtNqwvsb7/BMbgte5Mj6BIYKylrXM78j
         SF1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=HsmC5OmjuIY2XjshN3JK6FiH6tw0NWeWf13q0k1HG5s=;
        b=eu/VcV8weWpIOwNitww+taRIRva8oXDHQI8jgOuwg0QvwMdpOV5R09s8t8X242bG44
         SJt3MYZrNUy7XIEnRQfMP4oiN/Rn1jEiOw+8KcigY0gRKQ0Xs5KX/whohntBToFeoNen
         lX+6xeqS7RCMQCSHhUEKlkyd1cKUMfZ5r4lACXR88imNgHp49bAHXND8TJWOA96QPRj+
         lgJpBbqUfl0R0htztNBfbxrPuRMwhcD/5pXdQIAR8w2c6PhteLr7eRIwKeCFF2CZE7a1
         hVONusIxaHE7NKF/pgaySYTV07WsYLXCv0DghOmOfzfrrYf61QViiVF2zWIC8jYFN+Ps
         MLeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vhcph7x7;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <anushkacharu9@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id h186si502638qkc.1.2019.03.21.11.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vhcph7x7;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id d25so4822749pfn.8
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 11:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HsmC5OmjuIY2XjshN3JK6FiH6tw0NWeWf13q0k1HG5s=;
        b=Vhcph7x7WHclHUuBlMsMisuyb0MGMIo4l/2AfEqDJV4bNjXD7kxHb0lF7vxJat0t7a
         Jh6lY9soV2Lhmbp5vZdsj0N9wx7sXPryEQ3R89K3izXtRL7gW7GvKjJCV32hjmBOyw7p
         oOiYjzsMbUGkiFVJQm4B0gdQWZ/+ZI2+o8UlBohz8Fba2SspBoNsjp5tduz3HlILDyFw
         QhGGukcacM2eRMjxG+3vzdbxJv2AAfyNEP/eDN3L/z2jfO9VMZlKb2CSWIT4p9Vo27nB
         wSCllG3NUBmxuPlSxe+XP825IAPrNQPLyQ3KJvnaE5uvPwYJ8rmeuM+En5f19bJkwi1i
         o8VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=HsmC5OmjuIY2XjshN3JK6FiH6tw0NWeWf13q0k1HG5s=;
        b=Yl1WUtAoK/g7LPD/WeIjQGhY0DrmLZn1D3zvZwoSDtxIfYWiGU8A7eKzZ9jpm9Wmyh
         R0N4u6aEht5VbLFBB1Znt+BbrOcKsTGaXOyXQd2zhVG9FW6DMJkYvQ/7yqkZMI8G4nBj
         D3GcmqqQsIjCxjWer5MURBdhngPuuvhDsu2wxWAExKcZXtMtw14bx6aAh20sb10z6jAo
         mGp9Kqub0x2nyuu4jCVa7sCmY947r7dds4vPXy9ccPTR0AiRX1NL1q6pzxdqjsBHDx16
         BGhxHVJzO+oJSvVKZCfeJzRiCsAAXVD/3u0ViPcO0jQpu+2bgxFselg5ksRjrniKUdp+
         qpSQ==
X-Gm-Message-State: APjAAAV1rWBT6l2i7XMDVJvIpJg0CorY3pEATnw/GDs0NmgMpg/acgaN
	kMuUN47jAyiUMN27Rc8AO/A=
X-Received: by 2002:a63:3d01:: with SMTP id k1mr4586489pga.237.1553192812423;
        Thu, 21 Mar 2019 11:26:52 -0700 (PDT)
Return-Path: <anushkacharu9@gmail.com>
Received: from localhost.localdomain ([42.110.212.129])
        by smtp.gmail.com with ESMTPSA id e123sm6386770pgc.14.2019.03.21.11.26.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:26:51 -0700 (PDT)
From: anushkacharu9@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Anushka Shukla <anushkacharu9@gmail.com>
Subject: [PATCH] staging: rtl8192e: kconfig: use help over --help--
Date: Thu, 21 Mar 2019 23:56:17 +0530
Message-Id: <20190321182617.2534-1-anushkacharu9@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <anushkacharu9@gmail.com>
References: <anushkacharu9@gmail.com>

From: Anushka Shukla <anushkacharu9@gmail.com>

use help over --help-- for new help text

Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
---
 drivers/staging/rtl8192e/Kconfig | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192e/Kconfig b/drivers/staging/rtl8192e/Kconfig
index 4602a47cdb4a..aa571c12678f 100644
--- a/drivers/staging/rtl8192e/Kconfig
+++ b/drivers/staging/rtl8192e/Kconfig
@@ -3,7 +3,7 @@ config RTLLIB
 	depends on WLAN && m
 	default n
 	select LIB80211
-	---help---
+	help
 	  If you have a wireless card that uses rtllib, say
 	  Y. Currently the only card is the rtl8192e.
 
@@ -16,7 +16,7 @@ config RTLLIB_CRYPTO_CCMP
 	depends on RTLLIB
 	select CRYPTO_AES
 	default y
-	---help---
+	help
 	  CCMP crypto driver for rtllib.
 
 	  If you enabled RTLLIB, you want this.
@@ -27,7 +27,7 @@ config RTLLIB_CRYPTO_TKIP
 	select CRYPTO_ARC4
 	select CRYPTO_MICHAEL_MIC
 	default y
-	---help---
+	help
 	  TKIP crypto driver for rtllib.
 
 	  If you enabled RTLLIB, you want this.
@@ -37,7 +37,7 @@ config RTLLIB_CRYPTO_WEP
 	select CRYPTO_ARC4
 	depends on RTLLIB
 	default y
-	---help---
+	help
 	  TKIP crypto driver for rtllib.
 
 	  If you enabled RTLLIB, you want this.
-- 
2.17.1



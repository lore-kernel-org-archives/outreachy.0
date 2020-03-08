X-GM-THRID: 6801815686837436416
X-Received: by 2002:a81:b143:: with SMTP id p64mr13163127ywh.78.1583671124791;
        Sun, 08 Mar 2020 05:38:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ae04:: with SMTP id a4ls1833023ybj.10.gmail; Sun, 08 Mar
 2020 05:38:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vviC5UIobdjuK/PIHjNr50QkjJG6pIApibBgr8mFpkl8FsaCENN2RtZpfOq6WtAXH4qeWlN
X-Received: by 2002:a25:b841:: with SMTP id b1mr13865255ybm.34.1583671123129;
        Sun, 08 Mar 2020 05:38:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583671123; cv=none;
        d=google.com; s=arc-20160816;
        b=N1FrwpZ+rwj8bEK8HlGrGthsVeQVtwrc2/ulh/OFy+UiUEsxLDYuQkdsKtfAkcnDdo
         Tlw2MfEytXsR7iV2/9TljzjjMahmP8x3zmNwbxsZhcbqGfv8aEsIP2atG3JfpjWdAtXS
         1ptfJ5TpTZspXINYgm8Gqb6/F8SGdrPtjVCp0vPV3OP2DrGG8mH4HK7dLZltSqvyOBBJ
         Qo4hEOgV7LwC/pJgPxYMLzZY5TGQLb/e825zmRCbiROzUxax+B+y/5r94Db6M4tneBGo
         nHazJmjHaP1O/18f2fWQZVbRQKbbocjGe7+Al7k9hCkjETMBF2CB7DTfbf6cGLZG2f1K
         luNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ghjux4d3Z4sr6mf6PNWEhHJuBVKigui4OIzJM/ARJcw=;
        b=ruTLsLNHIytvcStGm8H+196bYErLr2VweWfx0ueU/3Th0G9dm06tylY89Mmf3gkQvw
         623gy0dByzVPpyoL68TwKZfmX4xmf31QMkcMuBgKd5OTzQsAgkatelpeDPLsBj3BrryV
         WkBBNK0D5twN/dIhszI7LCLnkrRv0gy5OxQSdcM6dAjwMnj3bBYA+MGPakxD5Xw2s2dn
         3BYCrzlzijDNpe9+nyeaUxV4pSN8pv8RnI1Xss+5cr3gs4RZLsNVqI7PmQqJqLYXDXwv
         APXTDhP/Z+rhBDDm2qhY2rNM+wBWU/cJkeF+jxKt/efhwlTiW7oTMZhK9WPminKFMnle
         XGKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mtzR1teR;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x13si609677ybs.4.2020.03.08.05.38.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 05:38:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mtzR1teR;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id c144so3545253pfb.10
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 05:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Ghjux4d3Z4sr6mf6PNWEhHJuBVKigui4OIzJM/ARJcw=;
        b=mtzR1teREQZxDuCDcFlgNitAa4beiCxAtLqvW8qi41wl40qp0HLhaTgQZCZw5OqBJu
         yLYCebcaEaYt14Cd91EY+qFyiQ3MIIfbdix8TwdZy289JA3OEoU8CbqRTIA9zyYqRafm
         5d0XqDALsybVnhPKQxFb4gIZpAJ6JSVyxGry/ZOsI4o+gasp2BmjWWgeFC6OOmiJTFWw
         zi8RDXEHCgkqWsK2NZMv2fP1sLmo1o/qjGh54rgBmOJsBkP16XCGpoQlhOTg3xrJusYB
         9AcCWtFRgRNvQ6rtvsXRLfsVh+TSKsysQ19mTkHIQxcHPbsUTkbqj/A6mZu0MrQOnTLH
         e9Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ghjux4d3Z4sr6mf6PNWEhHJuBVKigui4OIzJM/ARJcw=;
        b=ixFH18HfamGIqUXg6pp7f+BClEYkxEFYpBFoeeDO3ceuFGK2xKBeJou9LjBLfZDx7L
         2KNyPgSWyjrayPOu9j818Ky8SnXDDpq91UGcLaDKy9LekTzWAReTQo1JtVDSXQixk/lv
         +q5C0g606qOTUX+tBpDhP5IvaBv25gQLXbP0Mlq845gPzgykDlo4XFWCXXOs17QvDs0w
         yZH1cpzOk0FlhGxZVOBvT6B1y8doTfn/lTmepZ/lRtOiguCnZFy19T4UZAsJjFv1FehU
         4ZMnD6uQ96HM56+WCCX7hEKNUW8CUMOlPFtHK86F5l276uHU1MegABASmaBt5HfHtZRY
         GdyQ==
X-Gm-Message-State: ANhLgQ21duohz80wb2JrS7qHaqw1XbFhxLYKQTHAkCuEPe6+QUE8hh1q
	Z1+R7C7QQ88D8gQwu0YQ8AQ=
X-Received: by 2002:a65:63ca:: with SMTP id n10mr11347046pgv.19.1583671122173;
        Sun, 08 Mar 2020 05:38:42 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.184.119])
        by smtp.gmail.com with ESMTPSA id c17sm20790735pfo.71.2020.03.08.05.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 05:38:41 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: ks7010: remove line over 80 characters
Date: Sun,  8 Mar 2020 18:08:34 +0530
Message-Id: <20200308123834.3377-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove line over 80 characters.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 4b379542ecd5..6b2660c94f4e 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -446,7 +446,8 @@ static void ks_wlan_hw_rx(struct ks_wlan_private *priv, size_t size)
 				     DUMP_PREFIX_OFFSET,
 				     rx_buffer->data, 32);
 #endif
-		ret = ks7010_sdio_writeb(priv, READ_STATUS_REG, REG_STATUS_IDLE);
+		ret = ks7010_sdio_writeb(priv, READ_STATUS_REG,
+					 REG_STATUS_IDLE);
 		if (ret)
 			netdev_err(priv->net_dev, "write READ_STATUS_REG\n");
 
-- 
2.17.1



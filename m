X-GM-THRID: 6674542859228545024
X-Received: by 2002:a17:902:c23:: with SMTP id 32mr1119002pls.52.1554043335009;
        Sun, 31 Mar 2019 07:42:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:282b:: with SMTP id e40ls2935444plb.6.gmail; Sun, 31
 Mar 2019 07:42:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwDQrDYGuBdlpA6SJUd46nkaHc3L6lyrbgRe+0rPN+F4fOTAfBLJ3Zl8A9KYggzi+xD6i6x
X-Received: by 2002:a17:902:6a87:: with SMTP id n7mr1579296plk.87.1554043334398;
        Sun, 31 Mar 2019 07:42:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554043334; cv=none;
        d=google.com; s=arc-20160816;
        b=VabKp7AdzTg62hi9Jpd65pX+IZK35UqdBjaTQXGmMc7p5h8KorSopj7BNdnXA0ZNH1
         zb8yDx8I2QqqU1/X8yBmMhQUATFYFVspbI/SXVwMohIXh3R4mb9f4SMTFk+V7JyLKTWb
         COPT3VjPBK4g86IJlrRyfaYcdfYgz5m1I3g9vsuz/gA4h1Dfv4ACEEfMcq7T6uLeU38l
         +gDogU6NsuzeEeDpQFXcBN/AoSCzFBvjMYaRP2UNdKQ/dcKGtiIglvsNLE2rhf6l5Rpc
         Pu2KUjEVl1h6RGgDK0IGpINk2OicpmMP8fmjYiFIHRxi82ztFVOjwzK+cCEULXXw5RDU
         i6+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=vISd2Ql2YbBBZAxPhyBckMey7ehpTpwNGYzQzGU5jbg=;
        b=uhmDMqNm4UYjVurjpH9oujyP43W65I7vAXQrjF3Gcnv6AaUICyQQKnqGeOXlLoLyAN
         9BSJOXhNGKHHL48knGft+xk4LBIASawiXSE9DulguXIoj85duP5gyF/Ll6Oi1AV4yIsN
         0EMoq6I2ULzu2nutlntNPKryvAm5hSV8QoK+LNdE8lTSRBf2Cxc9t0H3TDA5AbtEdnpT
         aZVH7+LtE4QufyEk6VjPZPG7NRlVXkyQ9RbmAtxcszcdR96qFOZnVwui+w9ZIL0aZZwT
         tLfCaB5FC4maLjO+HqkJftyoFagY9xXZY4cfBSEbXBZnfsx79fAaerMTsibizcCw/lo0
         av2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dsc7CyUz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id j8si502684plk.3.2019.03.31.07.42.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 07:42:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dsc7CyUz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id ck15so1999943plb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 07:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=vISd2Ql2YbBBZAxPhyBckMey7ehpTpwNGYzQzGU5jbg=;
        b=dsc7CyUzwn8Be1voYbaZ6dr2OI/msa2rkNFJrdwfIH2JDu0b+foj5l2Qun0paFdsm/
         SwWJKzVAuSwkeMvJ3fUaBu6tama/drpQ6cMZH1asR9ltXr7j7mDJiDEOeGNzjMn0yiR6
         RdzucuWBVE44+3mbDB98outB3K6oSp+BkJPQZniiYZenUJSqhAUFlO79N8uu66AsXGRn
         7AAs4/vdvJbnODWDDI5/HO3C1RPJwdNzgQem89ipPlvTerry+linekvZ/IbY3ivDnrnq
         63sv2mN8yk2w8bSFoG+xLO5bNQ335DV8K2ntkma22zC/vqH73Nj8YZaBI8QV5b6jFa8v
         e3sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=vISd2Ql2YbBBZAxPhyBckMey7ehpTpwNGYzQzGU5jbg=;
        b=kyznAACPFb7ZYKcGCFRfKRXvCaA4chHPwtZ/I4v3ZFI7U/8C5Tq/sMQtaSR3tbiiNP
         VAIwNwh2lVb7WlAyfRPMs3ufnHrkx3GafwMMneuh11i0CJRjbJIC4v8+gdCUCqg9gq9X
         1jv4C05ROHGBkwwkVVZlKTRofyoQjzoO84jIpc+ATW3but7P26spfYsnZeSzktQ5Es20
         N/3wQsQHsKjQdmGlt0y7vr6Vd2avLIf1v+wtwAQlHbrOOkddtyL1M9GBW1979K0z1D0/
         MLj5Glhziul9HiJfqZobbrd81yXUzdJKhHhFV3XsuUjzxk0dPTprWnY5QmclsyL1PtBK
         wtMA==
X-Gm-Message-State: APjAAAXdFXADSXBj0W1fRA/10rOqgRN6jgUiQI57VyGfFsGkZDveNwH9
	5ABRzDleF8M49Oo1MPjeVhu23Pp4
X-Received: by 2002:a17:902:ba8b:: with SMTP id k11mr50665906pls.40.1554043333903;
        Sun, 31 Mar 2019 07:42:13 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g67sm12397858pfg.94.2019.03.31.07.42.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 07:42:13 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 6/7] staging: rtlwifi: halmac: Compress two lines into one line
Date: Sun, 31 Mar 2019 20:11:33 +0530
Message-Id: <f45b1e6056a32f5403b0d1ce53b08bffd53561d2.1554042597.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Compresses two lines into one line and remove unnecessary variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
index 0bd6abd..0ae0d02 100644
--- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
+++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
@@ -192,7 +192,6 @@ halmac_cfg_rx_aggregation_88xx_usb(struct halmac_adapter *halmac_adapter,
 u8 halmac_reg_read_8_usb_88xx(struct halmac_adapter *halmac_adapter,
 			      u32 halmac_offset)
 {
-	u8 value8;
 	void *driver_adapter = NULL;
 	struct halmac_api *halmac_api;
 
@@ -205,9 +204,7 @@ u8 halmac_reg_read_8_usb_88xx(struct halmac_adapter *halmac_adapter,
 	driver_adapter = halmac_adapter->driver_adapter;
 	halmac_api = (struct halmac_api *)halmac_adapter->halmac_api;
 
-	value8 = PLATFORM_REG_READ_8(driver_adapter, halmac_offset);
-
-	return value8;
+	return PLATFORM_REG_READ_8(driver_adapter, halmac_offset);
 }
 
 /**
-- 
2.7.4



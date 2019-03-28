X-GM-THRID: 6673447635063406592
X-Received: by 2002:a25:6dd7:: with SMTP id i206mr2410659ybc.97.1553783108268;
        Thu, 28 Mar 2019 07:25:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5bc4:: with SMTP id p187ls8241439ybb.14.gmail; Thu, 28
 Mar 2019 07:25:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzlGXiwrYV2amFk9id/p+zXxaBBucZjDT5hd/PUfGtSmG+VsknQpNKWYun9gAMpmumB1iss
X-Received: by 2002:a25:aa2b:: with SMTP id s40mr2406925ybi.82.1553783107245;
        Thu, 28 Mar 2019 07:25:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553783107; cv=none;
        d=google.com; s=arc-20160816;
        b=0EfJ3xqeC2bHXUdbhJmiMKX7x/PAgQDIxdDRVXGcL1ZBAvXnOEIPaA8NduBYNFASAo
         Ylerdso5xJmoXfZdj/Y+F7lmVDePTu3YjWS39ncRWgS/m1U9v22ag6YLi9AVTK9msvNW
         Pu7FYsrrN+m8ILo/ZLfofJ/513tMju9eZSp/QVLJ4VGxkay1uSuZAsK3oK/Rarlqqyss
         6LZb1CS9RGLDRaNe6l6rhluFPJIV6T1PeooahHVFW8dVfRD/zZwtLQ+32NUcX+4P/SGI
         MIU47I/2nLRNU+1WkCSEQO4jD827mpKA8OtmxbAgLDD6WxHjO0JV8dEdpjCg2vpCI3RS
         kpew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wceScqSg6W7kR8gIWKdi8oB3cePNS7nlGCxdn8xWDBQ=;
        b=lA3ko7K53SmpTc0UJw8c9MEvuOii/DFt/1w+uWLaAraeuhrkBu03288MSHGqu1IRd3
         7MBCEGyWlzjSas79+K+Cp/QKaRzYeZimYio9e1ZEjvIeUfRVniWxjrTzNqSQ6qsgEGef
         gozVCpepRqpOrg8o+UFSvsU+WBXyWY3fyiQcGvEJpwMo0y6liroAdqikfoyIn8WIO4dM
         OjIZmWsA6FlD979qHbEjFq3JnF8g/lwhox5iCdA/6e06g2uKfFacBDc3ZbMY5MhWBAe+
         jrOeih2B/lOeBS8ERbj8kIr1YeA1rHyTQ+16XSfnZtXXRk2S03Oalf+6ABwnANO+BPiT
         ZgPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nmsSOdGw;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id i204si1446329yba.5.2019.03.28.07.25.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 07:25:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nmsSOdGw;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id g8so11709981pgf.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 07:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wceScqSg6W7kR8gIWKdi8oB3cePNS7nlGCxdn8xWDBQ=;
        b=nmsSOdGwsaNfb0lVqvRGfhD/OdK8ix49hIVWv90JeA8uiimvARm3J+r/pdgRQD6Mfi
         AZWDrUOGUZ5LSsS4XSuj36aRFUKy87eRLzMYkirkucG2Q+rR4Nco9vQXMijgiYfdvS5o
         MkaAp8/Xz3S3rfLUBW5J8QO54gkdTNYJ/IEVDS9w1gZY+ban5pBtgEERCB6HXzCy9fls
         f7E2bK+LS9YK4RiZI96PRvxTfMvqDJF9Ct9erAvL09VaPXDZuixilmHQYXF2JPbh0k3O
         Fu3GtM6v3Pn2YvCx1HsJ0OM8Q1N77rUomdACh/F/5iu1BbRZYfKaPHgc0XagG5LeLJwi
         +IHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wceScqSg6W7kR8gIWKdi8oB3cePNS7nlGCxdn8xWDBQ=;
        b=MwDQDSnR+SYMp1iUaQPWPyrd5paKu1bYAN430bKfpYN3/U7bC4hP9x8HEvCRttO1hr
         2xr34mFQVAJKcoub9K4TKCaKSQinf4rWUsfI31jyUc2IDW8KrdKMSBdBFWOIeRavWzDS
         BpasAMTenEhHbBABz74AprDRw9kj+xeF+CDno/TbqRA4Ri38j1mmDmiphBONCOBznL8k
         DuVtRLqod/Ejv/FrWxsQdDiarbFK0rA2xwxuh1axQC20ojEjiMv9S8/vFdax2hrI3Zpp
         l42f2rUiU6vnTgwJCjnK7OiLkSd6/h01GLzMcRQHaQAqx46TyZXPjpZJekK6e/CqwLNj
         2oTA==
X-Gm-Message-State: APjAAAXXCk7PZVlf5NVClFt/JnAfAs5DLns4pijwkmGnJ+QfF1JwUHzm
	sD5SbSPEUEaiKP+yrvDhGSspRU45
X-Received: by 2002:a65:538b:: with SMTP id x11mr39441428pgq.35.1553783106122;
        Thu, 28 Mar 2019 07:25:06 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.228.148])
        by smtp.gmail.com with ESMTPSA id z14sm7757787pfn.161.2019.03.28.07.25.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Mar 2019 07:25:05 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c>
Subject: [Outreachy kernel] [PATCH] staging: greybus: Remove unnecessary parentheses
Date: Thu, 28 Mar 2019 19:54:50 +0530
Message-Id: <1553783090-10879-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle

This patch removes unnecessary parentheses while returning a value using an expression.
Using following semantic patch:

@@ 
expression e;
@@

return
- (
e
- )
;

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c>
---
diff -u -p a/sdio.c b/sdio.c
--- a/sdio.c
+++ b/sdio.c
@@ -94,7 +94,7 @@ static void _gb_sdio_set_host_caps(struc
 
 static u32 _gb_sdio_get_host_ocr(u32 ocr)
 {
-	return (((ocr & GB_SDIO_VDD_165_195) ? MMC_VDD_165_195 : 0) |
+	return ((ocr & GB_SDIO_VDD_165_195) ? MMC_VDD_165_195 : 0) |
 		((ocr & GB_SDIO_VDD_20_21) ? MMC_VDD_20_21 : 0) |
 		((ocr & GB_SDIO_VDD_21_22) ? MMC_VDD_21_22 : 0) |
 		((ocr & GB_SDIO_VDD_22_23) ? MMC_VDD_22_23 : 0) |
@@ -111,7 +111,7 @@ static u32 _gb_sdio_get_host_ocr(u32 ocr
 		((ocr & GB_SDIO_VDD_33_34) ? MMC_VDD_33_34 : 0) |
 		((ocr & GB_SDIO_VDD_34_35) ? MMC_VDD_34_35 : 0) |
 		((ocr & GB_SDIO_VDD_35_36) ? MMC_VDD_35_36 : 0)
-		);
+		;
 }
 
 static int gb_sdio_get_caps(struct gb_sdio_host *host)
diff -u -p a/power_supply.c b/power_supply.c
--- a/power_supply.c
+++ b/power_supply.c
@@ -337,7 +337,7 @@ static int is_psy_prop_writeable(struct
 
 static int is_prop_valint(enum power_supply_property psp)
 {
-	return ((psp < POWER_SUPPLY_PROP_MODEL_NAME) ? 1 : 0);
+	return (psp < POWER_SUPPLY_PROP_MODEL_NAME) ? 1 : 0;
 }
 
 static void next_interval(struct gb_power_supply *gbpsy)
@@ -424,7 +424,7 @@ static void check_changed(struct gb_powe
 static int total_props(struct gb_power_supply *gbpsy)
 {
 	/* this return the intval plus the strval properties */
-	return (gbpsy->properties_count + gbpsy->properties_count_str);
+	return gbpsy->properties_count + gbpsy->properties_count_str;
 }
 
 static void prop_append(struct gb_power_supply *gbpsy,


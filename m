X-GM-THRID: 6751503082420436992
X-Received: by 2002:a25:388f:: with SMTP id f137mr560376yba.223.1571956808995;
        Thu, 24 Oct 2019 15:40:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d3cd:: with SMTP id e196ls1178647ybf.12.gmail; Thu, 24
 Oct 2019 15:40:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyi78KWtS+PNDp3M3GnwEDXlfDZwTvnC74SkVot1Wjpv6HRefpVmWhPNkGT+yaWBeZWMSXa
X-Received: by 2002:a25:9d83:: with SMTP id v3mr596333ybp.425.1571956807401;
        Thu, 24 Oct 2019 15:40:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571956807; cv=none;
        d=google.com; s=arc-20160816;
        b=pmG/lGrUKw3UBt0Ib/uh6QKuO3UOM3iSrLTSXn/JI8KKOiOLgQdXWHz80c8UNP4Txs
         LSpiswDy+eKVHN0tn5CSwrDdh4RMBWvstnmQHATYgjoMxocXk8vY0PE/wn/wdDd401FU
         MTaEuOgEdHlMnL8KVc1h0kL7RXkru2K3VSD/98PcA5uYQrQIaGmKa2raeNYWcXjfpuHp
         PkIil3FYriHczV3WYrMDm2i3pXQm8wjnvjyBqMRCttnAFYKLj7mVZw1d/aXPVO69Bjfx
         0CpGhu/rGkt6t/FXQWTL1kaJLCKbRypmGIAeGrJF/fQh6nyIqbtQe+pUBVh9yc97hNY4
         K9Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=d0CvKy4xLdh4BQooTWlo37ffHnUxmb7ZDmr2p07UNSo=;
        b=d1fWuATzGVdGvPIp16tIpBc+aUHOhoSpsZh4l0jVQWCSEOtdl2y17T1mAVroUvwUXl
         1rw2UCfFDAEInm2sfVouWKtk2sOfTFug1q90o1ucuylLD3FIwx5xoDdFEcPl8Bbsv8ni
         z3GbkoNGJVonLvVJL/QQcgaYSvMXo7OeW5m5vHT+n1WVI8gkIWF4cbtqw9UmwBViQAnj
         x3lRCgaNfWJ0nNyCb9T6PpWK4d5yX68rP9/7wCJJ/1DZkChZabgtLV+oICzjxLsIyfA8
         Z6O0gPikvNekopL6Xxpx+m9W5b/Mc8hH3/c6yuOUfd3XtN2nLvDvzCEPgoU+bzFPngO1
         gj7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SNMN1Oo2;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id l3si20453ybj.5.2019.10.24.15.40.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:40:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SNMN1Oo2;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id v5so144461ply.10
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 15:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=d0CvKy4xLdh4BQooTWlo37ffHnUxmb7ZDmr2p07UNSo=;
        b=SNMN1Oo2H59EgOIDnvDvQLBo20iPFHl208MuL3PTs16X2Y0ba8g4+R4cbF+WmJ+lDv
         i9toaE99/zrjpKx14sL+eVLlJwYxiOPDQxFBaF+BGiSk3eCJr6AnB2NWNdwXiEz9/kRq
         hIM2HZZHQZ4q5KZgr4ptkl+v0TdicIs8qlrrspjp98J4vWobFMXt4mBUo1otWKqrYQNg
         RYMlgSbUNoFbZebWVrs7qC3E1Nbz6y/t8xpE33vQ2HqTvKIWi06Y3ApZz1U0c0muijlA
         ld8CIL+Cdaoo/hU/IKNAtRk3KIK5rFZ0D38nF6u1lPOhKspKzdZHUMEr22M7Mj0yFKFS
         gVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=d0CvKy4xLdh4BQooTWlo37ffHnUxmb7ZDmr2p07UNSo=;
        b=BHRhaOoMhgPHGTUl3C9Cnm9rWukJoamnviu6pP35uETIPY800j4G+tBAyo6n+X4XoF
         iLwZUiR5GRnLJwH7xP8OTEC9iBBPZ7jInnftbP8X4N3MZoctCWhnahPd3Veo0Hb5PSs4
         EOkm5NG92TKYqlPcpJ9EaPQS9D/WC4MEdV/fjxMScnYIWj9frd9lR9tQ1DmeWv3MyKd8
         8ENCoNJg11G9b0GlsCHth8rbutsir01WACD0gTLsPYbE5dh6HWN19A8hEsRpLqdMQnP0
         mC4kd/1pRcNBznTuf8jgXQmeWk4z4zbGQxyEmEDPpOrVaDXmYTq8YMZ3r0WSTppr0qEr
         y3UA==
X-Gm-Message-State: APjAAAVwkauvDdae+eZnc1PZDdDQCf8gRtii1UUx5IX0MWryM62rPxLf
	VUsrxAdj9yRdE9FzfGt+Mlg=
X-Received: by 2002:a17:902:8e86:: with SMTP id bg6mr190779plb.240.1571956806381;
        Thu, 24 Oct 2019 15:40:06 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id j12sm149883pjz.12.2019.10.24.15.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 15:40:05 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: most: Change bool init to true/false
Date: Thu, 24 Oct 2019 15:39:37 -0700
Message-Id: <20191024223937.2800-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

 Bool initializations should use true and false.  Bool tests don't need
 comparisons.  Based on contributions from Joe Perches, Rusty Russell
 and Bruce W Allan.

 The semantic patch that makes this report is available
 in scripts/coccinelle/misc/boolinit.cocci.

 More information about semantic patching is available at
 http://coccinelle.lip6.fr/

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/most/configfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index 025495657b68..64c65c217d07 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -487,7 +487,7 @@ static struct config_item *most_snd_grp_make_item(struct config_group *group,
 		return ERR_PTR(-ENOMEM);
 
 	config_item_init_type_name(&mdev_link->item, name, &mdev_link_type);
-	mdev_link->create_link = 0;
+	mdev_link->create_link = false;
 	strcpy(mdev_link->name, name);
 	strcpy(mdev_link->comp, "sound");
 	return &mdev_link->item;
-- 
2.17.1



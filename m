X-GM-THRID: 6674542859228545024
X-Received: by 2002:a63:4d06:: with SMTP id a6mr78312pgb.78.1554038125898;
        Sun, 31 Mar 2019 06:15:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b60e:: with SMTP id b14ls1473676pls.2.gmail; Sun, 31
 Mar 2019 06:15:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqymQEuxKvY/UCjy587/ye4bIPOVD2++pDeJN1mK9Llk/ti5FlhWSqZu2tH6cnv71CsHdDkf
X-Received: by 2002:a17:902:144:: with SMTP id 62mr1501869plb.28.1554038125091;
        Sun, 31 Mar 2019 06:15:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554038125; cv=none;
        d=google.com; s=arc-20160816;
        b=oknBn1Xh7aYPUl3VCkfnciLuLH6zoVHybrj3Fd/I/iw4TaIwAXBwPt/OFcDJpi1+lC
         D+CSsdVYV0zb34FEkuJe85jH4NmD4TOr45rb/dcJzMRr/r042ZPKnWH4necXuBpPSfFC
         KyUFpaRXhOC0eW3Tnstzgjwc9AAl4dHDngIx6jWDNMUP9+BT0C8NVVDTOgavZveML2oa
         0RdUtmxxLg4rZBiud0Y6FKdedLxpCo1B0+O4cYqhNx+q1P+vpEzs2spQjBrAzbF19A2X
         VLlN8bN2AY0ibM2wyb4VN1goi9yPzM78GWR1T3ZaM/xA6pjNA4gV0p87qggEEjckveoI
         VUCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=bkIfMTBkVNUF1DSV072TSqZnj266nN4kOOpiJ6mx908=;
        b=RhyyPFHzmdwLruZURfOVkG0VGZQgdlWQ02GQGDYVuVNXxJjicDoxjraZIjchKFr8Rt
         0XyddpZG2xesYTp1kjhSWzlJnDmFsC2raFTitl1EaWTIbbfEVqV0y5jJ+T2/dQ8DppNN
         qArB0h7VZKZy8sbjYTi2Uu5Voshqci0F2nG3WH5WiQWrjPwEd5OK9a6NKNDc78FBkY57
         Jknssn71Sbaw2xcFd4ftiJaj6nsULNYTAkdMwRfINLVrkYz2R7Ie858zmi+gr4SbqoMb
         6OqiQ1ikfPL68oiKFMUrY72cLNxUZpsBnETbtP1t1NgKhBvM60AodsW9BU7LDXz/ouiB
         2cyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GpQaqk1M;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c6si401092pgm.2.2019.03.31.06.15.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:15:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GpQaqk1M;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id t21so3211868pfe.2
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 06:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=bkIfMTBkVNUF1DSV072TSqZnj266nN4kOOpiJ6mx908=;
        b=GpQaqk1Mdb54aY3Z10joIp4mMtbaUCBpPZLHzXESI7TZr1QKdGlP6lI06QskSJzbYk
         Xbq/2tg2KLqWMyCaHUccnfJecsNPDV+SkWUfjZZT3/w/Y5yNdTAk/1/eIo+MGIpTRBga
         eI84C6gzuJr4lZX2eZgcoPf0IfRpfE2Q08DT05YT917tEtTydPd4NAmUTf7yLbQqK7mx
         z1ikywmae3yu5bAa3QC+ZQdhkBkRASMFxV8Ww0sYBQGn8Upz8dLhG8dRXf2F0IZzoSaR
         mbfGNz70iR/zIVRl1yfW8I2vi7qeq1y/iFIWr0vORb/al9pof1A0c9p106y2ZXNldSY4
         Bo+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=bkIfMTBkVNUF1DSV072TSqZnj266nN4kOOpiJ6mx908=;
        b=Vuip2OCqCKAWFiDrjNdqc6jdu911vK4ebJe1mLpnPO8S0VjUIEXMaVpQEMYKK2ueDK
         hU/G5HnrrT2gKEcKT5ZQSAYLWvJDyfz0frl3lJV60u5w/sdeHP07AiCf/Zq55H8vinTp
         4D6LwIly41Go8KzBhm2RfkCLsHpremOZ6RD347/f63hLOZwpl8ASCHJ1sx+LjK52J1pQ
         jzQbLf+CbcRIVIGhXOaC48WIYnWlZLviN0FaKYjfcY0piaRbzQi9WgQDzA686WpFlZhv
         TJk8rLIoWxLf/hAn2S+Qz9hhKr1rE7j84Flla1hrfHBQdUwjECBwqgpcy4l/uYDtf/81
         GwMw==
X-Gm-Message-State: APjAAAVM1MmewApmLqM51qfgChUcRrYMbSvsexPLSRsXDzc5kwSLdZUK
	jafcScQrhcvvZn3r+N/m9D3+rT/5
X-Received: by 2002:a63:145f:: with SMTP id 31mr6496268pgu.16.1554038124600;
        Sun, 31 Mar 2019 06:15:24 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id v6sm10085946pgv.92.2019.03.31.06.15.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 06:15:23 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 3/7] staging: rtlwifi: phydm: phydm_rainfo.c: Compress two lines into one line
Date: Sun, 31 Mar 2019 18:44:49 +0530
Message-Id: <6485958c9e72ad1fbbef56d15b1c0fc79dcc92d9.1554037161.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Compresses two lines into one line and remove unnecessary variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_rainfo.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_rainfo.c b/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
index ed740a9..0f24bb2 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
@@ -926,8 +926,6 @@ void odm_refresh_basic_rate_mask(void *dm_void) {}
 
 u8 phydm_rate_order_compute(void *dm_void, u8 rate_idx)
 {
-	u8 rate_order = 0;
-
 	if (rate_idx >= ODM_RATEVHTSS4MCS0) {
 		rate_idx -= ODM_RATEVHTSS4MCS0;
 		/**/
@@ -950,9 +948,8 @@ u8 phydm_rate_order_compute(void *dm_void, u8 rate_idx)
 		rate_idx -= ODM_RATEMCS8;
 		/**/
 	}
-	rate_order = rate_idx;
 
-	return rate_order;
+	return rate_idx;
 }
 
 static void phydm_ra_common_info_update(void *dm_void)
-- 
2.7.4



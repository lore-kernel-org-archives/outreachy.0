X-GM-THRID: 6674542859228545024
X-Received: by 2002:aca:61c6:: with SMTP id v189mr5301732oib.35.1554043324686;
        Sun, 31 Mar 2019 07:42:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4255:: with SMTP id p82ls1383706oia.4.gmail; Sun, 31 Mar
 2019 07:42:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxFeir7LCt1FgSbgMP403gJSXq3sqJZS5iL5M/mIT48b+ioYIixrv3ms2zHoG7YmA/S7cTL
X-Received: by 2002:aca:53d5:: with SMTP id h204mr6063988oib.55.1554043323996;
        Sun, 31 Mar 2019 07:42:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554043323; cv=none;
        d=google.com; s=arc-20160816;
        b=mBp+sCPrbdoRz0ufUy+EdLnmVbIi98Hkm1hDDVpjhPvbV2oGoYcVJamZeGt+g6AXuh
         NLgFMrppOn+XGbFdreqNP/ljBQQLxcI5lUPqUoMo+0E0YAowStulXvJ6W2Ft9LqGgJBi
         sxV9MFQLeQzY9ACk3eLSBZ6LprcPQoUHCSp7zoJTI2ghGynzdrPGQs8Mj3UVkYcns8U8
         AGeg+DmlI8399bk6SuOMdhHruJnFBVJ1v+DhP3GQKHxgAF+Npgm9ZQRyrGwcJ19YL+QU
         annYjnjfSw6KDExyBLf7s2ERj9TP7YA1ZE++90owwn8nxSNnnqCP4DewHyfzhD1FUAFj
         g4Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=bkIfMTBkVNUF1DSV072TSqZnj266nN4kOOpiJ6mx908=;
        b=UUVtR9Vf8l/AuScBRmvp2BRIrz3am/T62/2+O6lHBkdgQMsPrnvjBms4bpgKJjxzmb
         GpvNABnjW555O63Ur1axRMKpadv3hlwNsb9NtoqgZ8GLA6cWc4qNsSz3MDXly0aM/xE8
         bRPw1wgcqkg7pp31yo4SqdsGw+sube5ZZ1ZroxTsikSr5L9G/IWIDZGONtjv4+jHzjqQ
         21vL0I6nl+nApIBiKHy3H8zAeRffK2TTR9UqcvBcVF4xruofeHgaoJbjpNH0jKjo56wJ
         g6iB38lDKKu0LTIH5CDcVSXhiuj+f3l6rZTCK6YN0vLMJuk6+sXZlNzfWNaVeUef9xeq
         v99g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H+44vXuv;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a134si363200oih.4.2019.03.31.07.42.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 07:42:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H+44vXuv;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id c8so3244944pfd.10
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 07:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=bkIfMTBkVNUF1DSV072TSqZnj266nN4kOOpiJ6mx908=;
        b=H+44vXuvOugBHs0oUIfM/VAMNVX5nVuPJWx1Zncistc79gppqaK9sBwIvd5uefvLWq
         u4qTS9PLbqpQWvLkPhNXhsAbtv9PMA13qPgcyDmo7rN5MtLtT+39PWSnH2oxBnnnAfnM
         eBSWKmY90QksYXLQT8yycDGB2JKCOpZ1CAvGJka9/daBG//YUlnpfQexIfg6ErnjRNg/
         GHLGuS+np7wnJY7+AYIVX1knwSBbb9sfDo7SvrcuMcJR0C/8pMsfa6LCtz7PNA4PrQdf
         4FVCJOVZQAH2x2kSStHJ2vrFu3bCn3YzDAdAhMiNbW64N7cG4HCaESjsMKxnfJlGrFe5
         yh3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=bkIfMTBkVNUF1DSV072TSqZnj266nN4kOOpiJ6mx908=;
        b=dzxSqaTf1YE/pCirPWsgFUS7N5uChF9oOUE6ad0tfNp42lEVSf0dRr/MhkDnNtQSej
         /p+duePZdHs+vroWOOX1u1Wdhb18te7GK8Gs2P+d7OMwWt6xzyfJkjv38kukEKrO6nPw
         5eIhao3s5pwSrVHmG5e6WUq57+rbHDlIdoeHjyB362FbSVU3zDtg8yfYDrETXGjMfO5e
         UhO6J/CRJxsYA/xD49nNNl4nOOOmFj10u2CJa7NnMYt0Wmy9tPr/uW/XFfAYPrBqUeKq
         WDlww1sNBKbNoEKXj4ayK0rPKitYG/p6Oi1bSKDvCq4bZLvZc66oCz2QH4wDBv9RihHI
         Vbsw==
X-Gm-Message-State: APjAAAXkBY/gqBDz0YmqvxxzSNonDYXMeyUtpcuFx61krzJz+nVfgTEp
	QtGJLhLm4GLkFbEvIyLyPLIJSlaA
X-Received: by 2002:a62:19c3:: with SMTP id 186mr56674338pfz.172.1554043323044;
        Sun, 31 Mar 2019 07:42:03 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g67sm12397858pfg.94.2019.03.31.07.42.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 07:42:02 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 3/7] staging: rtlwifi: phydm: phydm_rainfo.c: Compress two lines into one line
Date: Sun, 31 Mar 2019 20:11:30 +0530
Message-Id: <6485958c9e72ad1fbbef56d15b1c0fc79dcc92d9.1554042597.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>

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



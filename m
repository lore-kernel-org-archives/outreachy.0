X-GM-THRID: 6674542859228545024
X-Received: by 2002:a9d:3b06:: with SMTP id z6mr5226600otb.47.1554043331750;
        Sun, 31 Mar 2019 07:42:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:764b:: with SMTP id o11ls1923935otl.4.gmail; Sun, 31 Mar
 2019 07:42:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyXsxDfod3abw3SC9u0go0+7bX7LxG6mlM3oU7TjX+MeUFSmfhvRB21Z218RWZFnMfNbjBH
X-Received: by 2002:a05:6830:1543:: with SMTP id l3mr4971831otp.35.1554043331167;
        Sun, 31 Mar 2019 07:42:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554043331; cv=none;
        d=google.com; s=arc-20160816;
        b=NRqWrOOfWL1lxd3Tj++DsOSFKrKVQbfsWFgLOv8D5dOhjJxpGsEXtTIHoN4CR3ZkNo
         E9KUfI96pfshiykvPTP8Bl7c5v1/KxDXD+mS+4/Ig2nYqYJCq5YouO1RNq0A0SkBII/F
         p1s60wIcBgpw/F79QaANq2JLf2Rjp+JbFA7lv8Q2gu674Sv2hsNlIN9TR1uc9vbOBx0E
         xCZSlHfIdtfKNe9XU/dfCYMNl2NaM3K7GcQ9WJzQ0QiWqxtLoeAlHBftY21F8CoWmuTJ
         dsjfYwGDZ+uyovppJsvnfMPUNCMHL2K+mbZkIQHJZaPC027IQn2U6KYcTbwVc9dwl8Y0
         g8VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=JeZyg5G6GWbXf8L8Zlwd2xNY0q68a+L01QZmClg6Qck=;
        b=zqcsGWJUqVudESVwQaBOaJzgES3eWlkhWJfZUQev+Cw/RTEFOGJkqr08SLMwCAX4vq
         ubr/nmFixDA+XIDJspz2m+G1sfAP7hHpup8pv4kk5Jc6yYJkrfxcqGbE3TkMhH15kjnb
         l0j0vBpp/N6R/nOGRo6i2Kt4Nf1dWMRJ6rba2Z4egvDBcBFULkPvRhFsqLA7jgtFUdLm
         TaM08N6vbIDC5JUKfG6Ux80vEjvv+saJrg9/Pc1j82WpY04sWNu8xwvdAz3yBuTNAxyD
         IdCVqqu6qSri+fhVEMroNYgSLXCe9coTl0s8ScJH3WSTbwxWKtIvT0doYxGV/PR/3cvZ
         kJLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=umSu2NWl;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id d12si365198oib.0.2019.03.31.07.42.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 07:42:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=umSu2NWl;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id w23so255715ply.4
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 07:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=JeZyg5G6GWbXf8L8Zlwd2xNY0q68a+L01QZmClg6Qck=;
        b=umSu2NWlcy5ClVAAE8orSXfFgbbtxuFZvF0aoM8lQW3seGVZe3gFzejtQsVFdrpZtY
         BrNUeFRkr/HQ1QymD3brVHj9yA5wNupobN8tsvotvYeyoK6up0ArzEUo/SPZCbKsvGOO
         1vi+J3N9Qi75FEje23pfjDVzwCL6BKcHkH3Vb36SqpEVaBoiRk+A76qBDdOIjC1BysKY
         Wat9G2OQl1AuLCrvWXXSuOXvBg8ShhlAH6pUmDOaio4QPakToqYAMIIvnlvqdR/az7VH
         hnZzLaDknotsN77A+9SKD5zPjN1wiPhlFsaQsr1RfpL1gWVe6rsn2KFx8HN6ryF5y15m
         vNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=JeZyg5G6GWbXf8L8Zlwd2xNY0q68a+L01QZmClg6Qck=;
        b=k2mwx4dmnNPY7DOK0Q8bXVWBDzzbZi1wqiwa30yhUweYr9tVQGPjlUnfVgWZVX1P6o
         esNNGf8J0N2YcCZ6Kpo1iZzHLeKXhWer92CN3/SJVJ7SaUnbMKhGyYYYCByRRJG1ygL3
         +wTGwzGLOw++83S385N4NjvgAOvX55LHaGEku9O4g87uN02rNMYZ5TYbBSaONh345hsh
         Ewr0WKQc5zFc30jULfpkrt5YcoMH9Vywu3KYWHKsc85+IwSUgI9208yNJeTOA5Zb6lL8
         wrihlTdtXj2KDEzXcdXNNhujw9xoxpqZ74Ndx9SYlBDzupDBJjtMYRh3H/l1gab9BXnk
         oeyw==
X-Gm-Message-State: APjAAAU/bEHJa+5Yjuydz8Lfhqd9/O8Pi88HEEHlZeDqi49t+NOD4VfM
	HZ7oODG8MDQ55NgWnn6JfZBHjO4i
X-Received: by 2002:a17:902:765:: with SMTP id 92mr57426787pli.95.1554043330092;
        Sun, 31 Mar 2019 07:42:10 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g67sm12397858pfg.94.2019.03.31.07.42.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 07:42:09 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 5/7] staging: rtlwifi: halmac: halmac_88xx: Compress two lines into one line
Date: Sun, 31 Mar 2019 20:11:32 +0530
Message-Id: <596f3e9d7c20f102123285bea89a290147bccb6a.1554042597.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Compresses two lines into one line and remove unnecessary variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c
index 979821e..5811787 100644
--- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c
+++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c
@@ -165,7 +165,6 @@ halmac_cfg_rx_aggregation_88xx_sdio(struct halmac_adapter *halmac_adapter,
 u8 halmac_reg_read_8_sdio_88xx(struct halmac_adapter *halmac_adapter,
 			       u32 halmac_offset)
 {
-	u8 value8;
 	void *driver_adapter = NULL;
 	struct halmac_api *halmac_api;
 	enum halmac_ret_status status = HALMAC_RET_SUCCESS;
@@ -190,9 +189,7 @@ u8 halmac_reg_read_8_sdio_88xx(struct halmac_adapter *halmac_adapter,
 		return status;
 	}
 
-	value8 = PLATFORM_SDIO_CMD52_READ(driver_adapter, halmac_offset);
-
-	return value8;
+	return PLATFORM_SDIO_CMD52_READ(driver_adapter, halmac_offset);
 }
 
 /**
-- 
2.7.4



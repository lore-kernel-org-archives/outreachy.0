X-GM-THRID: 6666453061980913664
X-Received: by 2002:a5d:8141:: with SMTP id f1mr14757518ioo.9.1552155385224;
        Sat, 09 Mar 2019 10:16:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:186:: with SMTP id 128ls3907085itk.4.canary-gmail; Sat,
 09 Mar 2019 10:16:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqwkAaAI5IBYrXFLd7krrgImzXPMj67mS4XoUJYOPvlWh2tgqFzt5h1UCOPpHmoc6tl5vhcA
X-Received: by 2002:a24:6cd3:: with SMTP id w202mr16251521itb.10.1552155384377;
        Sat, 09 Mar 2019 10:16:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552155384; cv=none;
        d=google.com; s=arc-20160816;
        b=tp4T5xo7vRjY+QScTfuGSXkQewD8SsKwumjR3vD1zaT5UrlVyA6QsaPwNaaBWYnnO8
         Zxg/5yNAqyLdX0+2qtRXeCRjX+nfLXG2tYYTN5Wlqf+1YCH/Wybw9Ql4kLCz/YFtexsA
         Bc3qFtm3R4bnTGAMTi499Ozxj1BSA9D+V1LMU5R/UUemsQo3cDJ4Ed7UsxZH46itgyLr
         Q1kVRidRbt+W9MnJC/LwzHrqadwSA5jTKPJVVSTJAeBX87yqkHp60IVE4UgA2J/IZ3We
         Ik+CII73RLOhpGXPB3FNgceWpKm40n2bJMUqoXxqGaaHBk1z55V3zpgTOmbS5SLRrS4H
         PmCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=6KWqGrz0S6x8JMpN5kqhlEWk2kVT+QQqQd2AdSkHyLQ=;
        b=owaws319kxnvCF7LfIVYoiS9hs2C/ij61i7d0ex9iDwtBS4u/2Gd7Zz7kZudWcHK8z
         wYM/60WAu1I1L4xGFV/GBQMkv/PrPjlRmjiWa62/Ya9AwCTnTUcXHzWyjdJRgW3Oxe4f
         rz6fIFor9u/J58cwmMcn/Xi8lpYZu7afNVqP7RODtPE0ajlA9da/CdwPkESLh5XzCaX8
         EK4Wic5HWKTITlW9CQarHuBvSrLDWJ/2Z9FKVZ7J8RdYWixnv6Eg3DhocxuI/LHEcLcL
         WiYOAKGqD3T+u+Ni7SRTEJf0uwVi5fvwIIGJVXqUQhJQjj15Ov/sjL999Z/tvMof+iPw
         WCgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qbLQ/dQ/";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id e74si689868ite.1.2019.03.09.10.16.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 10:16:24 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qbLQ/dQ/";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id g6so529335pfh.13
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 10:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6KWqGrz0S6x8JMpN5kqhlEWk2kVT+QQqQd2AdSkHyLQ=;
        b=qbLQ/dQ/AGr7w43d7XEe5vxzZIiISySRl+GVA25FmYQRi7Def0ZsU/G+vqbVIcsqFa
         UnPyLg9wNa+Rk2T8azAVt/yorOtwT3o5syplgtidUR1/sOnNK8mww5wkQe+XMDJ+p5W3
         0HIkED7mdp56LoaUPuc/54h0Wo9mf7eEkvVAyioNHEW4sMbMkAtd/8VwZ7Hr3Em9bmGD
         uVXP+IhgzoKWp9w4EaREi1DWqPzdpXQD8tiEFYI08eiSj9IdPLQXqma00JiKbwt35aXP
         c/L8/YtIDYSWq9APDwu2cwgfjYc4mpw2ZD3ZhFu6R+1OjPl4zEimUeIWSyWFrf2jnK/5
         UMKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6KWqGrz0S6x8JMpN5kqhlEWk2kVT+QQqQd2AdSkHyLQ=;
        b=qx5yjAvOkeiKV9czq/8wBcDbeiadQstLJLhhc9PsaPVH8qicUdSE8GRH3WS4lqps1G
         /JLcmJ1EXptID2pkK7JKK3LVrrom32AxPlyEBuJGF65Nun8OIcOJYWzk44AkCjUUFLqP
         VqwmjT97nkWbAQe61G75+Vap3uHBTCoj0os+P/d+PH90oMrSMfsHe1gYz4F7yqC4bQ+X
         uFcEvK5/Alw+Y87n7n5XdB58p4zWaBUqFzatJaIAX3dKrOy+id5JoelL0Qqjzq8LL450
         p8rMRhWRz/QAWDQbnb1iHrQsLwef30cA07m4YenIbuokrMRWNW0YQlNWkAsGg+pij//J
         QtRA==
X-Gm-Message-State: APjAAAWp5EezGHLynBLk7IXfjNPM02j1fNzICrS33l91oGBCgU2vY35Z
	FERJWQzQYBSRPH32t5z0cUtOkX11iyQ=
X-Received: by 2002:a62:ed0c:: with SMTP id u12mr25617645pfh.88.1552155383652;
        Sat, 09 Mar 2019 10:16:23 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.116])
        by smtp.gmail.com with ESMTPSA id t10sm1984085pfa.151.2019.03.09.10.16.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 10:16:23 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2] staging: rtlwifi: phydm: remove unnecessary parentheses
Date: Sat,  9 Mar 2019 23:46:08 +0530
Message-Id: <20190309181608.55058-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190309180212.54071-1-himadri18.07@gmail.com>
References: <20190309180212.54071-1-himadri18.07@gmail.com>

Remove unnecessary parentheses around the right hand side of assignment
operator. Issue found using Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Rephrase log message
---
 drivers/staging/rtlwifi/phydm/phydm.c          | 2 +-
 drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm.c b/drivers/staging/rtlwifi/phydm/phydm.c
index 52b85b3ddb34..a69be1c19f25 100644
--- a/drivers/staging/rtlwifi/phydm/phydm.c
+++ b/drivers/staging/rtlwifi/phydm/phydm.c
@@ -1767,7 +1767,7 @@ static u8 phydm_calculate_intf_distance(void *dm_void, u32 bw, u32 fc,
 		int_distance = (fc >= f_interference) ? (fc - f_interference) :
 							(f_interference - fc);
 		tone_idx_tmp =
-			(int_distance << 5); /* =10*(int_distance /0.3125) */
+			int_distance << 5; /* =10*(int_distance /0.3125) */
 		ODM_RT_TRACE(
 			dm, ODM_COMP_API,
 			"int_distance = ((%d MHz)) Mhz, tone_idx_tmp = ((%d.%d))\n",
diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index a4ad39ab3ddf..4d2630e63789 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -1790,7 +1790,7 @@ phydm_process_rssi_for_dm_new_type(struct phy_dm_struct *dm,
 
 		if (undecorated_smoothed_pwdb <= 0) {
 			accumulate_pwdb =
-				(phy_info->rx_pwdb_all << scaling_factor);
+				phy_info->rx_pwdb_all << scaling_factor;
 			undecorated_smoothed_pwdb = phy_info->rx_pwdb_all;
 		} else {
 			accumulate_pwdb = accumulate_pwdb -
-- 
2.17.1



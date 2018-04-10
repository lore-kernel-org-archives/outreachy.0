X-GM-THRID: 6542915874247933952
X-Received: by 10.98.79.206 with SMTP id f75mr463079pfj.58.1523392503588;
        Tue, 10 Apr 2018 13:35:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.88.3 with SMTP id g3ls2053225pgr.2.gmail; Tue, 10 Apr 2018
 13:35:02 -0700 (PDT)
X-Google-Smtp-Source: AIpwx49uz3DlJvwOJMG/jUdOkrmuYnCcvRNlixqyl+DS8FHfHelzpPzbBbHvYgNvP61I+gIpWE9o
X-Received: by 10.99.171.4 with SMTP id p4mr441878pgf.7.1523392502167;
        Tue, 10 Apr 2018 13:35:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523392502; cv=none;
        d=google.com; s=arc-20160816;
        b=oAQ76iZGoxySvp7sisS1wkbuNBBR5ykHSfRoJ7dNJc36sB3KlGg7EP4OMXdwgk0XNU
         XvQndF7h8QVsKxbEa8nJ8wQ42noaFkp+i3XmKoHtdgBeD8uDcfddBT5+PrgtIVK0hugE
         TSFKS7OVSnhC+bETmlctZwdPq+At8+1BM+LlkvuRzd9Mrby0IrKDxMpqftcLztJHv4eL
         vACM8hUhRT5Hu6NSovJ9oN+wZmyzPtEU9d89m6DpoMVcl946ld3exaKzGQwMU4NUt6Hf
         PDCkigLOatdlFGw7b++8Nr31mXwBpywNHmMTEIVRyymU6qvjNis7HMcBNp047TBs0YSZ
         y+6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=lN+flr2crZaR01WXAnFwa1q6DDYKTDdvE7CpERpdxpA=;
        b=Zm8D/yO9l8CxJLg01cxyxvdPPqmuMGxUVwsL+srT/V1CHAL+NujmmF9o2zF7RVvI3k
         PpMWATbTikpIdILQmGrK9fxCWY+wUuUooJj77VFZO8qf2ZOgDf7cudbk4PHTitgl4xTe
         b7Eu2pZnoTKL6uIjPTbwmkzn5Prbd4EGB4ywGEu1puA+/AFb57d0TSIPc8sgt5BClzRQ
         GDtWfzVpt3b+n6ANq78XYWYxRU8k1Om6NLXhj/dpCjnmsVGFpum8O115IM3i8EuiNfNu
         n5KIITKY0DvpvM0G9b0x1lNRyAU90Yn0UTqwyCiFZ+SQ+bWqaF2bOm3/dh47/QpSZsaO
         XuaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=XHSTOVO0;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id s13si261816pfs.2.2018.04.10.13.35.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Apr 2018 13:35:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=XHSTOVO0;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-qt0-x244.google.com with SMTP id h4so14855159qtn.13
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Apr 2018 13:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=lN+flr2crZaR01WXAnFwa1q6DDYKTDdvE7CpERpdxpA=;
        b=XHSTOVO00smRQ2U5msSMG8q3XU8f+OYoC+z1HahaPUPLF0kU2t2naSRMd5LrV+Qpt7
         jcKjgbEiYc6c2Oa6ABu9NnKmi+lH8BXnnH+smOsRN1eTVdbH1jRyRerTxkb3culQ8p9d
         /HVjdSS//iYpNJb+9O+pGmH0T3ZAGKQUpE8k4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lN+flr2crZaR01WXAnFwa1q6DDYKTDdvE7CpERpdxpA=;
        b=Kmzk8s75Se6/UwCZSIggOy9RK6EbAflsXPdopTmum1sCDPLtC89UDHcxw0keUh83ao
         7s3ZuJkoS6TLtD6D3jX8fQ5LNOd9aKXNvw11qJrNrDqzRrB8X9kqw8jU+xtLhlabg2Mu
         SXl7o6OlCz+EPhhCsl+u7LHlyMI2QkZZYPv9/w9WuCA4C3i7IuybgUvkAcTGn/NjfkBv
         ODRPk1ILLfKBoMrDwPEJ/bguZbmWQt4U9KnP5St9/rRVHTaxBgelnOeERPCcSWX5kXnw
         Mb212JL7JeZXryJyq4pplPGYgWDRdiMDgz3ef/HKWuZt6TkFMx9EDZ0pqVfvVsKQsqCJ
         cI0Q==
X-Gm-Message-State: ALQs6tDIERcD07NnBieHXFA0H/6vUD7RSXsc8dPb6DiHXpkVtaIBMXAe
	g6noyqEY8gy/ntpaG21eLmNm/yGA
X-Received: by 10.200.53.217 with SMTP id l25mr3067873qtb.317.1523392500769;
        Tue, 10 Apr 2018 13:35:00 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id a12sm2885458qtm.74.2018.04.10.13.34.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Apr 2018 13:35:00 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2] Replace explicit use of function name with "%s...", __func__
Date: Tue, 10 Apr 2018 20:34:44 +0000
Message-Id: <1523392484-5746-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Replace use of function name with "%s...", __func__ to make future
modifications to the respective functions easier to handle. Issue found
with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Moved modified section to previous line.

 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 6a3434c..90c4ddd 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -695,22 +695,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 	table_size = gamma->tbl_size;
 
 	if (!gamma->bypass_r && !gamma_param->table_r) {
-		dev_err(dev,
-			"ipipe_get_gamma_params: table ptr empty for R\n");
+		dev_err(dev, "%s: table ptr empty for R\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_r, gamma->table_r,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_g && !gamma_param->table_g) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
+		dev_err(dev, "%s: table ptr empty for G\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_g, gamma->table_g,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_b && !gamma_param->table_b) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
+		dev_err(dev, "%s: table ptr empty for B\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_b, gamma->table_b,
@@ -743,7 +742,7 @@ static int ipipe_get_3d_lut_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	lut_param->en = lut->en;
 	if (!lut_param->table) {
-		dev_err(dev, "ipipe_get_3d_lut_params: Invalid table ptr\n");
+		dev_err(dev, "%s: Invalid table ptr\n", __func__);
 		return -EINVAL;
 	}
 
@@ -924,7 +923,7 @@ static int ipipe_get_gbce_params(struct vpfe_ipipe_device *ipipe, void *param)
 	gbce_param->en = gbce->en;
 	gbce_param->type = gbce->type;
 	if (!gbce_param->table) {
-		dev_err(dev, "ipipe_get_gbce_params: Invalid table ptr\n");
+		dev_err(dev, "%s: Invalid table ptr\n", __func__);
 		return -EINVAL;
 	}
 
-- 
2.7.4



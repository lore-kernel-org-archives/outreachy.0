X-GM-THRID: 6207482452562149376
X-Received: by 10.180.210.71 with SMTP id ms7mr49570wic.4.1445292136783;
        Mon, 19 Oct 2015 15:02:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.84.147 with SMTP id i141ls441916lfb.15.gmail; Mon, 19 Oct
 2015 15:02:16 -0700 (PDT)
X-Received: by 10.112.145.227 with SMTP id sx3mr2254723lbb.12.1445292136259;
        Mon, 19 Oct 2015 15:02:16 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id m4si6321wib.0.2015.10.19.15.02.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 15:02:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id fx6so19133924wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 15:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=mgJlO/y+1MB6jzCdRCmrslZ2Nw479Q8BNi+HrUvEoXo=;
        b=mWDA8YlQ/I1aPNezn2ZFGbBXdd/M15UqFD5iwfwLVOatX5+0RCSXpgs+UravpXN6b7
         D80scTPtEbvL4V3FqmOI621gcMOCEa1T0ECwl+OVqZOfyLeLHaxxwl9rUq7TGkN65BNx
         OQNANAXmpTe5sUNfUsFGH7VKQmiExZz8huJ27LHOBDS0JP7poxz1twWeMRqZi4aODZ86
         rgKcDqoNtEHlHqE/huR3tbVp7lVWAzsejlm2SlVYB76wCLVq94oqc+ox6kiUOlJWf8eb
         QSay2bimNcvDdZuYjxJOEQdMjg4QD5tctGNSKc8Wx/g8SMTyHlfdWSE0OjgC9rlmZL2F
         nItw==
X-Received: by 10.194.133.129 with SMTP id pc1mr36016077wjb.148.1445292136161;
        Mon, 19 Oct 2015 15:02:16 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.61])
        by smtp.gmail.com with ESMTPSA id bf8sm42577788wjc.22.2015.10.19.15.02.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 15:02:15 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 02/10] staging: iio: addac: Remove explicit comparisons
Date: Tue, 20 Oct 2015 01:01:37 +0300
Message-Id: <933f0eb8aa4bb81e75671c9531bf4d59d78e3ceb.1445291799.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL in order to provide efficiency

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/addac/adt7316.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 3adc451..cb23fec 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -1419,7 +1419,7 @@ static ssize_t adt7316_show_DAC(struct adt7316_chip_info *chip,
 	int ret;
 
 	if (channel >= ADT7316_DA_MSB_DATA_REGS ||
-		(channel == 0 &&
+		(!channel &&
 		(chip->config3 & ADT7316_EN_IN_TEMP_PROP_DACA)) ||
 		(channel == 1 &&
 		(chip->config3 & ADT7316_EN_EX_TEMP_PROP_DACB)))
@@ -1452,7 +1452,7 @@ static ssize_t adt7316_store_DAC(struct adt7316_chip_info *chip,
 	int ret;
 
 	if (channel >= ADT7316_DA_MSB_DATA_REGS ||
-		(channel == 0 &&
+		(!channel &&
 		(chip->config3 & ADT7316_EN_IN_TEMP_PROP_DACA)) ||
 		(channel == 1 &&
 		(chip->config3 & ADT7316_EN_EX_TEMP_PROP_DACB)))
-- 
1.9.1



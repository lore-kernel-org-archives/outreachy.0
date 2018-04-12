X-GM-THRID: 6543663108012900352
X-Received: by 2002:a25:4142:: with SMTP id o63-v6mr768182yba.39.1523565293056;
        Thu, 12 Apr 2018 13:34:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d0cd:: with SMTP id h196-v6ls651859ybg.13.gmail; Thu, 12
 Apr 2018 13:34:51 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4+ze7qJ6BUfMiM6onONF0s0yPUYAYK8v6rLMJjDB472f84wzYE/odENOJm63mEBCZHB8+ug
X-Received: by 2002:a25:3601:: with SMTP id d1-v6mr779935yba.5.1523565291762;
        Thu, 12 Apr 2018 13:34:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523565291; cv=none;
        d=google.com; s=arc-20160816;
        b=zBPqSnUSFpWJ9Hsaf5+oRxCEITXMPOE7r+NPUOA05C7VcUDZQgRw6wfEjYGFbjSNn+
         +3OD1BlLp8etJN7E8fjKajx108mK51jmy4aLALZwbgbdX2Zfy+aoCO5Sj4E/UVquIzt7
         cPiSLJ7MsIokLQMXpTVJcvbrD0weptWMbnngnUtzftmNPGej/ZXFrq+hH4gTM2ZJvE4K
         N/C+r0A5EuuN5DG8JYb0UoE6Q5KMdzSLzK+B0aw8z2aF9Lyxj7nmcSsgN90V+zxwP3xp
         xEO0NPQpisouGNEu5p0FUSMQjUgdDw31RZmuseKbG1vachLuM8nx87WnpNIFUZUwQ3c3
         s2uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=eCAowt/8wHlop4FnHWNPutMmKlyc/tOS7bHY24kKiJg=;
        b=OSlzpDmZsMUZV34SDElCowK9b5fM7MG1nTG3oUmDj46phdGmh/RkNXTwgdC1YM0FWG
         IB40axq93t7tYs2P2moXxjfKGsRk/g/PCpPgxL0UjvGsGiTO951AQ6ea15UyUGFSh4Hj
         BC+BL4mAWOq3Ea3uHeQKh8jMsp2+FiyG5nfKu+zgonxM7HSMfrnY7ZOPTOnINMYbUQlk
         ++wYpoG1pu3RpIr8LPYzzOWDS1ynW0dzw42VThHDgf/eQWK5yCpPetVMxnRf5WtwKlAI
         XfBrpyJbhCUDHF1LsdwAwE+z6sioA+GcT6qUPzoLYdo4HIotm56EyQ3u0EVC+j+JDS+A
         7ByQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=U1fsTN1C;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id v68si49430ywc.4.2018.04.12.13.34.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Apr 2018 13:34:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=U1fsTN1C;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x233.google.com with SMTP id p6so4728700pfn.4
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Apr 2018 13:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=eCAowt/8wHlop4FnHWNPutMmKlyc/tOS7bHY24kKiJg=;
        b=U1fsTN1CYjre0unpj3o/rjecMhFZ2x9CgB7rP3ntTfKxXi4zvPHYLUdv/bXs5oIzPj
         dkx+uYEfecvhExMYKCDtscgOOclOGP0JEZlpG1j7yo6AElkZO75MYdvXnX240un62kmo
         1SHRJ4c202+n32OA3GqZUDZ7FxlDbxuMZZa4w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eCAowt/8wHlop4FnHWNPutMmKlyc/tOS7bHY24kKiJg=;
        b=ebrkDBPMe18dXpoKKI0nd5t1eFOHlI36IZB0ofWOq9nSAk8HDvkaRjmRXOBxy+lVJ/
         iIkyfMBxjTQ1x7XvL9+ztkcQqLRKWV1pk8Rkz4j20A42Mosjj0SLJY20IZZSibo0x6mA
         pjwDuwNNslBJaDrdC85QfnlU8KgWWFqJuxgTGRa24jCKyYR0xy+i1PnK0TqPXAxFhSm1
         c5m1BRU9kBVD+NjggouSKHohSbjVCKFUKKy4U2zICiB7vDujMSW157/9L+DMDXpAQAXs
         +ZZq1pH79VNWHeprfP6ARRhvBAJNpY7ExzC8qt6oJT1UC/buzsCmSs0cRAMORycx+BWD
         SnEw==
X-Gm-Message-State: ALQs6tDGyl7j+8WJBnANxz1LY2FbIdQHMFA56+8HgQ2G1vM24N7TK8MQ
	ltJ7xYn0ncr6RC3MM8B+82ND6qtB
X-Received: by 10.99.113.26 with SMTP id m26mr1837169pgc.364.1523565290310;
        Thu, 12 Apr 2018 13:34:50 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id m21sm8402413pgn.0.2018.04.12.13.34.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Apr 2018 13:34:49 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 1/3] Match alignments with open parentheses
Date: Thu, 12 Apr 2018 20:34:33 +0000
Message-Id: <1523565275-21820-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Match alignments with open parentheses. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 56dd4f9..0a6555d 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -61,7 +61,7 @@ static int ipipe_validate_lutdpc_params(struct vpfe_ipipe_lutdpc *lutdpc)
 
 	for (i = 0; i < lutdpc->dpc_size; i++)
 		if (lutdpc->table[i].horz_pos > LUT_DPC_H_POS_MASK ||
-		   lutdpc->table[i].vert_pos > LUT_DPC_V_POS_MASK)
+		    lutdpc->table[i].vert_pos > LUT_DPC_V_POS_MASK)
 			return -EINVAL;
 
 	return 0;
@@ -103,7 +103,7 @@ static int ipipe_get_lutdpc_params(struct vpfe_ipipe_device *ipipe, void *param)
 	lut_param->repl_white = lutdpc->repl_white;
 	lut_param->dpc_size = lutdpc->dpc_size;
 	memcpy(&lut_param->table, &lutdpc->table,
-	   (lutdpc->dpc_size * sizeof(struct vpfe_ipipe_lutdpc_entry)));
+	       (lutdpc->dpc_size * sizeof(struct vpfe_ipipe_lutdpc_entry)));
 
 	return 0;
 }
@@ -492,7 +492,7 @@ ipipe_validate_rgb2rgb_params(struct vpfe_ipipe_rgb2rgb *rgb2rgb,
 }
 
 static int ipipe_set_rgb2rgb_params(struct vpfe_ipipe_device *ipipe,
-			      unsigned int id, void *param)
+				    unsigned int id, void *param)
 {
 	struct vpfe_ipipe_rgb2rgb *rgb2rgb = &ipipe->config.rgb2rgb1;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
@@ -546,7 +546,7 @@ ipipe_set_rgb2rgb_2_params(struct vpfe_ipipe_device *ipipe, void *param)
 }
 
 static int ipipe_get_rgb2rgb_params(struct vpfe_ipipe_device *ipipe,
-			      unsigned int id, void *param)
+				    unsigned int id, void *param)
 {
 	struct vpfe_ipipe_rgb2rgb *rgb2rgb = &ipipe->config.rgb2rgb1;
 	struct vpfe_ipipe_rgb2rgb *rgb2rgb_param;
@@ -928,7 +928,7 @@ static int ipipe_get_gbce_params(struct vpfe_ipipe_device *ipipe, void *param)
 	}
 
 	memcpy(gbce_param->table, gbce->table,
-		(VPFE_IPIPE_MAX_SIZE_GBCE_LUT * sizeof(unsigned short)));
+	       (VPFE_IPIPE_MAX_SIZE_GBCE_LUT * sizeof(unsigned short)));
 
 	return 0;
 }
@@ -955,7 +955,7 @@ ipipe_set_yuv422_conv_params(struct vpfe_ipipe_device *ipipe, void *param)
 		yuv422_conv->chrom_pos = VPFE_IPIPE_YUV422_CHR_POS_COSITE;
 	} else {
 		memcpy(yuv422_conv, yuv422_conv_param,
-			sizeof(struct vpfe_ipipe_yuv422_conv));
+		       sizeof(struct vpfe_ipipe_yuv422_conv));
 		if (ipipe_validate_yuv422_conv_params(yuv422_conv) < 0) {
 			dev_err(dev, "Invalid yuv422 params\n");
 			return -EINVAL;
-- 
2.7.4



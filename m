X-GM-THRID: 6209878523959574528
X-Received: by 10.194.248.131 with SMTP id ym3mr8007606wjc.7.1445850016783;
        Mon, 26 Oct 2015 02:00:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.37.197 with SMTP id a5ls490747wik.3.canary; Mon, 26 Oct
 2015 02:00:15 -0700 (PDT)
X-Received: by 10.180.86.227 with SMTP id s3mr3950638wiz.0.1445850015696;
        Mon, 26 Oct 2015 02:00:15 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id q6si254843wiz.0.2015.10.26.02.00.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 02:00:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id p11so153048596wij.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 02:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9LXC5tC+VjsHuGilDDJwYEgtliPXVbY4C+7Todqq0ec=;
        b=pJPXaeI43KrefeoBlomkQEKP6oozP+8a6QkoMvtEOBnr8IUXgEDsXSwdjiM+s94a2b
         Lzg1G4QoNxXmxyI5hH50XBI9KAvLS7CjM1ENuS8AhYZoOQRMVjUF9U5OU4nyvMflW4YH
         eCL5w5CLTbxRiZ7YsttuHnt5ukJyHIFMqa63dASyW/sB6BqTcw+1XMnH6KsPC/Bh/1MW
         2LCesZZC6sVThjFoc2FvPuKyU5EvEaqj/JG9KRfkxUfYQ5f3wy944GF2el/T3NFmMgqg
         a62EurCxUzExb4qmDj9e7ng1R4/NsDlQsShqkfuG0C0KfhtTwCTSpzNT8jOz+8qOpAXr
         o8ow==
X-Received: by 10.180.9.172 with SMTP id a12mr17415597wib.37.1445850015587;
        Mon, 26 Oct 2015 02:00:15 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.44])
        by smtp.gmail.com with ESMTPSA id p4sm13056944wia.15.2015.10.26.02.00.14
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 02:00:15 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH 2/2] staging: vt6656: Do not use multiple blank lines.
Date: Mon, 26 Oct 2015 12:00:04 +0300
Message-Id: <1445850004-6885-2-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445850004-6885-1-git-send-email-brcnakalin@gmail.com>
References: <1445850004-6885-1-git-send-email-brcnakalin@gmail.com>

Remove multiple blank lines. Problem found using checkpatch.pl
"CHECK: Please don't use multiple blank lines"

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/vt6656/card.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 1301fbf..ad36081 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -285,7 +285,6 @@ void vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
 	vnt_get_phy_field(priv, 14,
 		vnt_get_cck_rate(priv, RATE_11M), PK_TYPE_11B, &phy[3]);
 
-
 	/*RSPINF_a_6*/
 	vnt_calculate_ofdm_rate(RATE_6M, bb_type, &tx_rate[0], &rsv_time[0]);
 
-- 
1.9.1



X-GM-THRID: 10002918014976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3882c5572bb5485a
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.199.66 with SMTP id ji2mr17819906obc.14.1427389807160;
        Thu, 26 Mar 2015 10:10:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.178 with SMTP id g18ls739302igt.41.gmail; Thu, 26 Mar
 2015 10:10:06 -0700 (PDT)
X-Received: by 10.67.8.40 with SMTP id dh8mr16784993pad.1.1427389806590;
        Thu, 26 Mar 2015 10:10:06 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id e5si762664qcg.1.2015.03.26.10.10.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 10:10:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id p97so106868561qge.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 10:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=pWryDfRxIysD3POsiK/p4BLrdfrnNmlq0yt07sbCms8=;
        b=jEqzhg83Fg5wr94n26xjnDidd89K9qa3UoqQUdKW2xNawM1p08wTB5GDluxUVvkhnL
         jxS58IQuXB9Ol/RnxfdnKgao38pmxGKG9tB16PfT3hg8IOcy5KIGVMmZVsivXD7eA7zd
         gt6c4ygpF/GkwYbLzrqUSP23oXoRSfs594Kq51IEis/B0CP1OcW/GSBWilhwFHhNxIlJ
         9XiCpAmuEKtgavbrGChziJcrX5Jw2CPonUVABjbGQNNmYFGhetyRhTa83HA/9p1eSWMK
         beVVjaIFpGElAyQctR3xf8o32nkv5StuVX+am69sQRR+4JHn8Zt0ctDdK5PA+TB1/bVd
         bj5w==
X-Received: by 10.55.24.159 with SMTP id 31mr31788858qky.74.1427389782155;
        Thu, 26 Mar 2015 10:09:42 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.wifi.univ-paris5.fr ([177.194.75.171])
        by mx.google.com with ESMTPSA id o19sm3797905qkh.25.2015.03.26.10.09.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2015 10:09:41 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH 1/8] staging: sm750fb: Add space after struct definition
Date: Thu, 26 Mar 2015 14:09:13 -0300
Message-Id: <d157965bdca25fde2fbecce067cc9bad3ee80406.1427389602.git.helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: missing space after struct definition
+typedef struct _pllcalparam{

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 02f9326..c931e83 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -2,7 +2,7 @@
 #include "ddk750_reg.h"
 #include "ddk750_chip.h"
 #include "ddk750_power.h"
-typedef struct _pllcalparam{
+typedef struct _pllcalparam {
 	unsigned char power;/* d : 0~ 6*/
 	unsigned char pod;
 	unsigned char od;
-- 
1.9.1



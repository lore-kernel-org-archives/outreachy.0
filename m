X-GM-THRID: 6209880020994752512
X-Received: by 10.180.102.162 with SMTP id fp2mr3979997wib.4.1445851028369;
        Mon, 26 Oct 2015 02:17:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.92.199 with SMTP id co7ls308167wib.37.gmail; Mon, 26 Oct
 2015 02:17:08 -0700 (PDT)
X-Received: by 10.194.21.230 with SMTP id y6mr3982969wje.4.1445851028010;
        Mon, 26 Oct 2015 02:17:08 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id o3si476309wiz.1.2015.10.26.02.17.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 02:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id fv8so104861465wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 02:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=FDJ59YfFqFnorkMDfzQYFNYkDJhOly0DVDP3ebu0OaE=;
        b=WUMbJI+3F1z0efWN9W6rMpaCcquVtFw0OkkhAMzfRb3bsaKRvSpRIApncd4GBl+cqH
         B3UwfHjF4X+7VoOC9Eo/cyCRa/ADklKt83UAfiJ9dpn+VOUsyIx1s9KWzpaZOPVORspY
         hzwnuTnYBx/zMLiA526ZMEwupFYWRDk1fTfjUKOL1lwNV7PrUvxPZKdYPF6aq1LwtO0a
         LLzaNXzBh05JggxdSSrCFCd81eEVKm9t0ErsI6BC145enXOgTeN7dZ55fBly404625aI
         xc+4o/fAEXsGqWxfRgnsr1GNBcUFtHlYyxT7f6q1BW5t7ZKe3jZN/sM2VGwUP/3oDbly
         IIpg==
X-Received: by 10.194.2.5 with SMTP id 5mr44984425wjq.153.1445851027901;
        Mon, 26 Oct 2015 02:17:07 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.44])
        by smtp.gmail.com with ESMTPSA id a13sm9701873wiv.10.2015.10.26.02.17.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 02:17:07 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: vt6656: Add space around '+'
Date: Mon, 26 Oct 2015 12:16:49 +0300
Message-Id: <1445851009-7327-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '+'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '+' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/vt6656/firmware.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/firmware.c b/drivers/staging/vt6656/firmware.c
index d440f28..115edfc 100644
--- a/drivers/staging/vt6656/firmware.c
+++ b/drivers/staging/vt6656/firmware.c
@@ -69,7 +69,7 @@ int vnt_download_firmware(struct vnt_private *priv)
 
 		status = vnt_control_out(priv,
 						0,
-						0x1200+ii,
+						0x1200 + ii,
 						0x0000,
 						length,
 						buffer);
-- 
1.9.1



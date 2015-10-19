X-GM-THRID: 6207218463763595264
X-Received: by 10.129.92.198 with SMTP id q189mr21022245ywb.40.1445237683051;
        Sun, 18 Oct 2015 23:54:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.5 with SMTP id c5ls1157549qgc.65.gmail; Sun, 18 Oct
 2015 23:54:42 -0700 (PDT)
X-Received: by 10.129.92.198 with SMTP id q189mr21022213ywb.40.1445237682311;
        Sun, 18 Oct 2015 23:54:42 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id zg1si3278436pbb.2.2015.10.18.23.54.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 23:54:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id rc13so182024957pab.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 23:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=kdVVVyknJypNVqh0BKduUF3QMoGPWJONomq41eGoVGE=;
        b=Lx8ZnP/bs37X+1NfUcwx45oln0xNdNN9z0QxKYNRqCnMb/pJI8MLbJtVLokMPM1G/4
         ShmDwCnFjn8BlQpOCvIPUOv5qMlukZ05QqxHp+g+7n3BChYrXU91hiOijSvX+8FkM+ET
         arOFTWGvW83Svv0jpK3BIbqNGGd59TarKAnln7qTraItgoFFztMnj6UzpPWPp2avXp4b
         Bj9/wRaJAEK61Ij/f8VFuhpBCA9hLLRPw+HHIu31YTvus/ZyD14Lalb3FDEtTENT37v2
         yUn1opXx+q8h4yb5HeBw/46K5+f4SxAAou9MVYnzv0GvRBMPSMEE9BJMW0GYzaMGaREP
         6eBA==
X-Received: by 10.66.131.76 with SMTP id ok12mr20385792pab.30.1445237682113;
        Sun, 18 Oct 2015 23:54:42 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([111.93.5.194])
        by smtp.gmail.com with ESMTPSA id xa4sm34652860pac.28.2015.10.18.23.54.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 18 Oct 2015 23:54:41 -0700 (PDT)
Date: Mon, 19 Oct 2015 12:24:39 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: emxx_udc: Add space around operator.
Message-ID: <20151019065438.GA5680@navya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add a space around '>>' operator.
Problem found using checkpatch.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
    -Make commit message better.

 drivers/staging/emxx_udc/emxx_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 0492747..60604c8 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -211,7 +211,7 @@ static u32 _nbu2ss_get_begin_ram_address(struct nbu2ss_udc *udc)
 		}
 
 		if ((data >> 16) > last_ram_adr)
-			last_ram_adr = data>>16;
+			last_ram_adr = data >> 16;
 	}
 
 	return last_ram_adr + use_ram_size;
-- 
1.9.1



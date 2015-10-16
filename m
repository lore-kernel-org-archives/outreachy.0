X-GM-THRID: 6206285490616795136
X-Received: by 10.13.215.214 with SMTP id z205mr467365ywd.23.1445013815919;
        Fri, 16 Oct 2015 09:43:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.7 with SMTP id d7ls855287iod.13.gmail; Fri, 16 Oct 2015
 09:43:35 -0700 (PDT)
X-Received: by 10.66.132.69 with SMTP id os5mr13406339pab.12.1445013815624;
        Fri, 16 Oct 2015 09:43:35 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ce6si1566015pad.0.2015.10.16.09.43.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:43:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv9so27337820pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=VjsijVns7fx5xKVN0oalR8EaOhuO8I2EtJvN68XS0w0=;
        b=lvEDq/GlEbBQVjiUKBhNpdsWmkdqSOcQx4uXo4SmS54a2QaNSsDABwNm21lqWw7En/
         OcYYAbxkfm4Crsd0jrY7yxme90Sf0PTTICv4BSIw3DSL27jGSNX4pKmBawMZEU8K0vmR
         tYQI8riar+F5gq4jD7pDx7TD3XFZhq1cYBzeej1c95DTYteQ8J0OGr1jVmERad+w0F/M
         Zky0M5xETBZ/0KodvtXZ5j4fKhNkmqCtHoaUWJFNmEQNTjm9s7IsxFPTbeuRiuibXfQS
         ywi2osgBEoc2wTs7pLx03kKwT5aAG9BLpx7SQAP3ZYwOzbLLMpN66VfwDPmjzkDGArX8
         tJZA==
X-Received: by 10.67.23.165 with SMTP id ib5mr17281389pad.26.1445013815491;
        Fri, 16 Oct 2015 09:43:35 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.222.108])
        by smtp.gmail.com with ESMTPSA id qk7sm16510079pbb.80.2015.10.16.09.43.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 16 Oct 2015 09:43:35 -0700 (PDT)
Date: Fri, 16 Oct 2015 22:13:29 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] staging: vt6655: Prefer using BIT Macro
Message-ID: <df7211c6fea87e858dc933ccf5066c2ce2fc3261.1445013271.git.amitoj1606@gmail.com>
References: <cover.1445013271.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445013271.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace bit shifting on 1 with the BIT(x) Macro

The semantic patch used to find this is:
@@ int g; @@

-(1 << g)
+BIT(g)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/vt6655/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 4640b56..f07d933 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -808,7 +808,7 @@ bool CARDbIsOFDMinBasicRate(struct vnt_private *pDevice)
 	int ii;
 
 	for (ii = RATE_54M; ii >= RATE_6M; ii--) {
-		if ((pDevice->basic_rates) & ((u32)(1 << ii)))
+		if ((pDevice->basic_rates) & ((u32)BIT(ii)))
 			return true;
 	}
 	return false;
-- 
1.9.1



X-GM-THRID: 6206285490616795136
X-Received: by 10.107.165.5 with SMTP id o5mr14142212ioe.5.1445013760264;
        Fri, 16 Oct 2015 09:42:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.45 with SMTP id p42ls1469361qge.5.gmail; Fri, 16 Oct
 2015 09:42:39 -0700 (PDT)
X-Received: by 10.140.234.135 with SMTP id f129mr13512867qhc.9.1445013759823;
        Fri, 16 Oct 2015 09:42:39 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id ce6si1566314pad.0.2015.10.16.09.42.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:42:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id cn9so10310855pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=apP7GQhInaVf0yxuLOO9igI6byciEl/HOFQ2peP6XcU=;
        b=WRoE+FtNuvVeTD2I+CxV8r8PtvsCkD1VDyt/XKJ56+Ir+LPna5LEnhs/+eHAGupSfx
         8FYTXYf9krfeOKePULHSvr0FV5FqD+duwUEXEAKc6CC9J5dPCMgboBjSxO/tAjogTdPv
         sK3jdf0bklbve3TRvNmHsmSvUtaeiKmaS3BJcte0uxmZhUBeWM3S7EMCaBTVNexEAmvR
         zScU1CCSrwi7FXJl3IxJ9KtcHJX1whnd3soAgZ/jeA8FRSjOTDqF77XdzQuIP/Nbn4ir
         vncrQ1zw5kNP29VViCQcdRM8Bb0OjOtW8PIZqIx/5clIF0aCca35u13+wtB0c5rL2d3b
         obQA==
X-Received: by 10.66.186.141 with SMTP id fk13mr17379281pac.7.1445013759643;
        Fri, 16 Oct 2015 09:42:39 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.222.108])
        by smtp.gmail.com with ESMTPSA id qn5sm22294064pac.41.2015.10.16.09.42.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 16 Oct 2015 09:42:39 -0700 (PDT)
Date: Fri, 16 Oct 2015 22:12:35 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] staging: vt6656: Prefer using BIT Macro
Message-ID: <6820714aeeda2b9f2956038418ce3807f4461496.1445013271.git.amitoj1606@gmail.com>
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
 drivers/staging/vt6656/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 167dca9..70685e5 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -473,7 +473,7 @@ int vnt_ofdm_min_rate(struct vnt_private *priv)
 	int ii;
 
 	for (ii = RATE_54M; ii >= RATE_6M; ii--) {
-		if ((priv->basic_rates) & ((u16)(1 << ii)))
+		if ((priv->basic_rates) & ((u16)BIT(ii)))
 			return true;
 	}
 
-- 
1.9.1



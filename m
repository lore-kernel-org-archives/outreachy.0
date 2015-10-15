X-GM-THRID: 6205781635135176704
X-Received: by 10.68.217.74 with SMTP id ow10mr6404278pbc.10.1444897029317;
        Thu, 15 Oct 2015 01:17:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.222.99 with SMTP id ql3ls427274igc.40.gmail; Thu, 15 Oct
 2015 01:17:09 -0700 (PDT)
X-Received: by 10.50.27.35 with SMTP id q3mr4447979igg.0.1444897028988;
        Thu, 15 Oct 2015 01:17:08 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id zg1si1371378pbb.2.2015.10.15.01.17.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id p3so32938341pay.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=jeLKnoAIlda+6ROHwtHF5nxy7+WY/h04zm/xRb1aQUE=;
        b=BP/xviOlPcIM2Df4lecqk+0/CT5b5iZqwwOxy4o3Fpoi8hiAyD9DNhWiAUK7xWxi8C
         TBFRFXWkOjTz1suLjCQBjJ0gAO2/z1pELe73xdO2dmPBrmVpI03sbLMEptRHsGAzI+rm
         M/pccrDqcs2Owqv+TM0u44wGyndVVlBTspOsRbVLdKGpPEsXYAAdUup9XQmpmcFtqzfJ
         OGYIgWGqULVP/XGYEmQT8TISe1DxwZv2apHZamvWVVxwvGq6J4Pf3pwBJGUFD6A9/rPa
         BtgjefF61hEsl3wkDsLne30PZvEY6Xk/sHg3ZjNwie1sWRmeONojb3b9cU6F8esPlSN9
         EFmg==
X-Received: by 10.68.196.202 with SMTP id io10mr8808932pbc.108.1444897028849;
        Thu, 15 Oct 2015 01:17:08 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id z4sm13884890par.6.2015.10.15.01.17.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:17:08 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:47:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 10/18] staging: vt6656: Remove useless initialisation
Message-ID: <65524613386be0bb1db31abdadca8ef4cd71f117.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/vt6656/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index a215563..167dca9 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -508,7 +508,7 @@ u8 vnt_get_pkt_type(struct vnt_private *priv)
 u64 vnt_get_tsf_offset(u8 rx_rate, u64 tsf1, u64 tsf2)
 {
 	u64 tsf_offset = 0;
-	u16 rx_bcn_offset = 0;
+	u16 rx_bcn_offset;
 
 	rx_bcn_offset = cwRXBCNTSFOff[rx_rate % MAX_RATE];
 
-- 
1.9.1



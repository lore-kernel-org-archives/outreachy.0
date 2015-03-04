X-GM-THRID: 6406607470592
X-Received: by 10.194.53.225 with SMTP id e1mr348216wjp.4.1425447353994;
        Tue, 03 Mar 2015 21:35:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.4 with SMTP id f4ls114382lah.18.gmail; Tue, 03 Mar 2015
 21:35:53 -0800 (PST)
X-Received: by 10.112.40.81 with SMTP id v17mr337017lbk.5.1425447353558;
        Tue, 03 Mar 2015 21:35:53 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id l8si1016558wia.0.2015.03.03.21.35.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:35:53 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wivz2 with SMTP id z2so8528082wiv.0
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=7agjeRZsRv03A6SGD67AXNP3xt+nBm7TygrwGWK9tWA=;
        b=mANY7KZwzed2HN7W8gdqJZhantFSA6khS98EAqgDKN5vkvsAFOYAAGSt2fGGDtoLja
         YkTP6vFDBWiTjZSgV7NxICOe0fZDjtVma3HKc4RrpTXEAxNrt6sQZBCQwov4rOgfve8o
         xN2ZihS1/B94Of3/M6pf41xYqaWKjaKTBdqdQGLCC8ffMrB0MNbXueAuN/WdwhZsRXiz
         s0wg/WCrpolvBne63Rc/vJA8lWdXhGsNJZLyNmb3SnyfpLyT4nA8jqEg3tuXRjjdaaNZ
         6/kEEtpFbStcj6RTteTlixbjBh8mL3W8vl74LuVdEIsS4ldRWMaXEw8/uvU4/jmu/9ET
         YttA==
X-Received: by 10.180.8.165 with SMTP id s5mr9221061wia.16.1425447353450;
        Tue, 03 Mar 2015 21:35:53 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id w8sm4295566wja.4.2015.03.03.21.35.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:35:52 -0800 (PST)
Date: Wed, 4 Mar 2015 07:35:48 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 13/13] staging: xgifb: remove extra parentheses around right
 bit shift operations
Message-ID: <35612df98b6a89b349018f0331578d881f719ea6.1425446659.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operations.
The cases handled here are when resultant values are assigned to
variables. The issue was detected and resolved using the following
coccinelle script:

@@
expression e, e1;
constant c;
@@

e =
-(e1
+e1
>>
-c);
+c;

@@
identifier i;
constant c;
type t;
expression e;
@@

t i =
-(e
+e
>>
-c);
+c;

@@
expression e, e1;
identifier f;
constant c;
@@

e1 = f(...,
-(e
+e
>>
-c)
+c
,...);

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/xgifb/XGI_main_26.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index 935c714..74e8820 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -106,7 +106,7 @@ static int XGIfb_mode_rate_to_ddata(struct vb_device_info *XGI_Pr,
 
 	sr_data = XGI_CRT1Table[index].CR[5];
 
-	HDE = (XGI330_RefIndex[RefreshRateTableIndex].XRes >> 3);
+	HDE = XGI330_RefIndex[RefreshRateTableIndex].XRes >> 3;
 
 	cr_data = XGI_CRT1Table[index].CR[3];
 
@@ -1011,8 +1011,8 @@ static int XGIfb_do_set_var(struct fb_var_screeninfo *var, int isactive,
 			       XGIbios_mode[xgifb_info->mode_idx].mode_no);
 			return -EINVAL;
 		}
-		info->fix.line_length = ((info->var.xres_virtual
-				* info->var.bits_per_pixel) >> 6);
+		info->fix.line_length = (info->var.xres_virtual
+				* info->var.bits_per_pixel) >> 6;
 
 		xgifb_reg_set(XGISR, IND_SIS_PASSWORD, SIS_PASSWORD);
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz


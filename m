X-GM-THRID: 9088756875264
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,436ffdcf88b191cd
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.64.67 with SMTP id f3mr73944727ici.5.1426751828390;
        Thu, 19 Mar 2015 00:57:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.8 with SMTP id xs8ls478567obc.8.gmail; Thu, 19 Mar
 2015 00:57:08 -0700 (PDT)
X-Received: by 10.182.5.104 with SMTP id r8mr80380590obr.19.1426751828206;
        Thu, 19 Mar 2015 00:57:08 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ni4si94554pdb.2.2015.03.19.00.57.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 00:57:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id we9so68255485pac.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 00:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=zc2hFvgQgpbXMmvsaoScz145P5UEov6pGOlg71TDILk=;
        b=aG2XMW+ffNn+HExYiIOiwkf8YiIl9v2EMHOZIOKh+lPHSzQFG+r2D/Vd8UHZ2Nu6vO
         6zvbR3GFAnpIaeBB1y+u9D59FiaUxaLHYtMiHqepL/4SWcFup6iN2f2cWxPLCw/dJ0rx
         MkpO6w66soN9yktPej8UFL4ocoYkAuAJGM+otMFxS4H/PsMkZB+lifyzcGD5AQExPq/A
         amtMjIG5E9Y3i5YoxHjETu9rJGmyncRIC/hGWtNqg4+zl4ETU2spvbjIWCcSGxRwGXkk
         n4l57s3N6GBpMlqsYRkv6Brtg4gLaXiSqmQGzs71rvCpT6enrjqBlxBqzDwrQA5CXIfJ
         LIoA==
X-Received: by 10.66.66.166 with SMTP id g6mr173878624pat.88.1426751828113;
        Thu, 19 Mar 2015 00:57:08 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id nv15sm1405507pdb.56.2015.03.19.00.57.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 00:57:07 -0700 (PDT)
Date: Thu, 19 Mar 2015 13:25:12 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: rtl8188eu: Remove unused macros
Message-ID: <09acb98fb468a8515011c7ea50123c81fe5fea16.1426751449.git.vatikaharlalka@gmail.com>
References: <cover.1426751449.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426751449.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

These macros are defined but never used in the code.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/include/rtw_security.h | 22 ----------------------
 1 file changed, 22 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_security.h b/drivers/staging/rtl8188eu/include/rtw_security.h
index a00d1e6..e9723a7 100644
--- a/drivers/staging/rtl8188eu/include/rtw_security.h
+++ b/drivers/staging/rtl8188eu/include/rtw_security.h
@@ -265,28 +265,6 @@ static inline u32 rotr(u32 val, int bits)
 #define TE1(i) rotr(Te0[((i) >> 16) & 0xff], 8)
 #define TE2(i) rotr(Te0[((i) >> 8) & 0xff], 16)
 #define TE3(i) rotr(Te0[(i) & 0xff], 24)
-#define TE41(i) ((Te0[((i) >> 24) & 0xff] << 8) & 0xff000000)
-#define TE42(i) (Te0[((i) >> 16) & 0xff] & 0x00ff0000)
-#define TE43(i) (Te0[((i) >> 8) & 0xff] & 0x0000ff00)
-#define TE44(i) ((Te0[(i) & 0xff] >> 8) & 0x000000ff)
-#define TE421(i) ((Te0[((i) >> 16) & 0xff] << 8) & 0xff000000)
-#define TE432(i) (Te0[((i) >> 8) & 0xff] & 0x00ff0000)
-#define TE443(i) (Te0[(i) & 0xff] & 0x0000ff00)
-#define TE414(i) ((Te0[((i) >> 24) & 0xff] >> 8) & 0x000000ff)
-#define TE4(i) ((Te0[(i)] >> 8) & 0x000000ff)
-
-#define TD0(i) Td0[((i) >> 24) & 0xff]
-#define TD1(i) rotr(Td0[((i) >> 16) & 0xff], 8)
-#define TD2(i) rotr(Td0[((i) >> 8) & 0xff], 16)
-#define TD3(i) rotr(Td0[(i) & 0xff], 24)
-#define TD41(i) (Td4s[((i) >> 24) & 0xff] << 24)
-#define TD42(i) (Td4s[((i) >> 16) & 0xff] << 16)
-#define TD43(i) (Td4s[((i) >> 8) & 0xff] << 8)
-#define TD44(i) (Td4s[(i) & 0xff])
-#define TD0_(i) Td0[(i) & 0xff]
-#define TD1_(i) rotr(Td0[(i) & 0xff], 8)
-#define TD2_(i) rotr(Td0[(i) & 0xff], 16)
-#define TD3_(i) rotr(Td0[(i) & 0xff], 24)
 
 #define GETU32(pt) (((u32)(pt)[0] << 24) ^ ((u32)(pt)[1] << 16) ^ \
 			((u32)(pt)[2] <<  8) ^ ((u32)(pt)[3]))
-- 
1.9.1



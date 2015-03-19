X-GM-THRID: 9071203713024
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,65e027b63c37ed8,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.63.230 with SMTP id a66mr83191682yhd.51.1426743113061;
        Wed, 18 Mar 2015 22:31:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.130.200 with SMTP id og8ls484956obb.15.gmail; Wed, 18 Mar
 2015 22:31:52 -0700 (PDT)
X-Received: by 10.182.246.37 with SMTP id xt5mr79686739obc.25.1426743112832;
        Wed, 18 Mar 2015 22:31:52 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id gb13si39699pac.2.2015.03.18.22.31.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 22:31:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id we9so64818863pac.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 22:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=zc2hFvgQgpbXMmvsaoScz145P5UEov6pGOlg71TDILk=;
        b=s9CBA3e8+fG0ui/x1h/qmX0vdWRjcpkYgpX4QKcx3gWUqHVPex0H2WJFNOeb5B/c+3
         /IlIqf2IKpT0vgP1MkHHY5aJCXL2KCjgYD5LCYrcVWZDOludM+L3VOzpa9TGcwqp4zKY
         elPw1XrVxi5T/aE7fVAhm5fvNY8Wdc/1IIQI/SDPzieQtlIdjd0zGayGSTdH1fNONMyy
         ba4wJ2fcFaJh0djlilgPELrWueLTIXjmSUcdaY5Cz3yI10SbEIbx6NXBldrVFRjQnM5N
         2TT8ciz8OaYnQv5Z3D+aqkQbhPIg83MGZG6ztzKtOjIxDGolVU+vb+tore/032DTUhmd
         95Wg==
X-Received: by 10.66.235.169 with SMTP id un9mr166836333pac.45.1426743112715;
        Wed, 18 Mar 2015 22:31:52 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id yf6sm637189pab.26.2015.03.18.22.31.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 22:31:51 -0700 (PDT)
Date: Thu, 19 Mar 2015 10:59:54 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove unused macros
Message-ID: <20150319052954.GA6674@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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



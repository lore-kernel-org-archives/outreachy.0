X-GM-THRID: 7184305881088
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ca8c52ff4cb76c8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.33.97 with SMTP id q1mr26476759obi.42.1425882927188;
        Sun, 08 Mar 2015 23:35:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.183 with SMTP id 52ls1291204qgz.49.gmail; Sun, 08 Mar
 2015 23:35:27 -0700 (PDT)
X-Received: by 10.236.8.69 with SMTP id 45mr10161268yhq.39.1425882927056;
        Sun, 08 Mar 2015 23:35:27 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id m1si2435756pdc.0.2015.03.08.23.35.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 23:35:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id lj1so64086913pab.8
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 23:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oJBVW+N+k7QYIWKYohWt9FwxqfZNe9S8TrChSqlvWDM=;
        b=V8ed2qih8FheRFm/i5/RlVpgFC/t823rrDNO8mtckQdEex/CbAbTVI4HlvQ/hkjNdJ
         PD9RJt1amPCebK5wHUTEP5UgxEBYEoo0hlxGeJsFZZQ1aC9rdfuktb32JlJK2O8gDhO7
         kAPJhjm26krxq89dNYzbzWrsVsRXCyOOoMJ5AtC9Z4qOKQvWwYI7BYu+NHMHKHczr4Hi
         CBpXSxhB4gWdhlzTgNzNM73SKLVVuxroxLvtQ2FBcsGmJ3R7Bbz+kV2V+HmSRHG9QZOF
         a1mrrC/p/GqyzJmYFBIbiH+wcgIiy5A3lDK209wsHvMHJC272txr2soTSdHFMc+HZavV
         mJAQ==
X-Received: by 10.70.37.202 with SMTP id a10mr50874037pdk.108.1425882926913;
        Sun, 08 Mar 2015 23:35:26 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.16.175])
        by mx.google.com with ESMTPSA id db10sm17186938pdb.86.2015.03.08.23.35.24
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 23:35:25 -0700 (PDT)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 3/4] drivers: staging: rtl8723au: core: Removed unnecessary parentheses
Date: Mon,  9 Mar 2015 12:02:49 +0530
Message-Id: <1425882770-6239-4-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425882770-6239-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425882770-6239-1-git-send-email-tinajohnson.1234@gmail.com>

Parentheses around the right side of an assignment statement are
unnecessary and hence removed. Coccinelle was used to produce the
patch:

@rule1@
identifier x,y;
constant c;
@@

(

 x =
-(
 y << c
-)
 ;
|
 x =
-(
 y >> c
-)
 ;
|
 x =
-(
 y + c
-)
 ;
|
 x =
-(
 y - c
-)
 ;

)

Signed-off-by: Tina Johnson <tinajohnson.1234@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_security.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_security.c b/drivers/staging/rtl8723au/core/rtw_security.c
index 715a474..0610d5f 100644
--- a/drivers/staging/rtl8723au/core/rtw_security.c
+++ b/drivers/staging/rtl8723au/core/rtw_security.c
@@ -1193,7 +1193,7 @@ static int aes_cipher(u8 *key, uint hdrlen, u8 *pframe, uint plen)
 	num_blocks = plen / 16;
 
 	/* Find start of payload */
-	payload_index = (hdrlen + 8);
+	payload_index = hdrlen + 8;
 
 	/* Calculate MIC */
 	aes128k128d(key, mic_iv, aes_out);
@@ -1466,7 +1466,7 @@ static int aes_decipher(u8 *key, uint	hdrlen,
 	num_blocks = (plen-8) / 16;
 
 	/* Find start of payload */
-	payload_index = (hdrlen + 8);
+	payload_index = hdrlen + 8;
 
 	/* Calculate MIC */
 	aes128k128d(key, mic_iv, aes_out);
-- 
1.7.10.4



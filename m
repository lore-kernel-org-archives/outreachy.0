X-GM-THRID: 7184305881088
X-Received: by 10.182.28.104 with SMTP id a8mr24610526obh.15.1425882907782;
        Sun, 08 Mar 2015 23:35:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.254.129 with SMTP id ai1ls824115igd.33.canary; Sun, 08 Mar
 2015 23:35:07 -0700 (PDT)
X-Received: by 10.66.160.34 with SMTP id xh2mr24455749pab.6.1425882907517;
        Sun, 08 Mar 2015 23:35:07 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id ri9si2428889pdb.1.2015.03.08.23.35.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 23:35:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbnh10 with SMTP id nh10so69051130pdb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 23:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=M61p5zZ8zyak/EPlwpqyfCutVBDoJ9Z4FXHR961aIwM=;
        b=n1CgHumvIj/f6sWMeEmHgTZCuGSWl5di41Ge5RyElR17AghP1l+3QdHfO5UUKhAWhG
         R33NrRl+pKElcv5OF2jFa1ZI4ecUTCrVE1YP8ai44W2bmCBem8y2shbVdXgUyqsdX2N5
         8WFZF41YpDz6+LyNgNkh2xweQlsQ9gxsiusOdiTOonksRQbGYp0ZztjMSMzedSt0cUw3
         Tanze2BdTMd+rE3AwKDVd25+W4f/8sHrJs//lfOCKAVEqvHGbOn6/YyRXadHaGOAXByM
         nDbiUVrYKiDp5YX3zwuR8l0tiAdzsZtxhIs0Kpd+ob/JAxDRSURvAzcG6U7x0VgBmHMf
         f8WA==
X-Received: by 10.70.130.37 with SMTP id ob5mr4417126pdb.54.1425882907398;
        Sun, 08 Mar 2015 23:35:07 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.16.175])
        by mx.google.com with ESMTPSA id qa1sm17188512pdb.84.2015.03.08.23.35.04
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 23:35:06 -0700 (PDT)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 1/4] drivers: staging: rtl8188eu: core: Removed unnecessary parentheses
Date: Mon,  9 Mar 2015 12:02:47 +0530
Message-Id: <1425882770-6239-2-git-send-email-tinajohnson.1234@gmail.com>
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
 drivers/staging/rtl8188eu/core/rtw_security.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index f8981f5..cc66997 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -1122,7 +1122,7 @@ static int aes_cipher(u8 *key, uint hdrlen, u8 *pframe, uint plen)
 	num_blocks = plen / 16;
 
 	/* Find start of payload */
-	payload_index = (hdrlen + 8);
+	payload_index = hdrlen + 8;
 
 	/* Calculate MIC */
 	aes128k128d(key, mic_iv, aes_out);
@@ -1366,7 +1366,7 @@ static int aes_decipher(u8 *key, uint	hdrlen,
 	num_blocks = (plen-8) / 16;
 
 	/* Find start of payload */
-	payload_index = (hdrlen + 8);
+	payload_index = hdrlen + 8;
 
 	/* Calculate MIC */
 	aes128k128d(key, mic_iv, aes_out);
-- 
1.7.10.4



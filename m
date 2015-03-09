X-GM-THRID: 7184305881088
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ca8c52ff4cb76c8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.47.5 with SMTP id m5mr18362187icf.26.1425882918447;
        Sun, 08 Mar 2015 23:35:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.203 with SMTP id u69ls1268531qge.13.gmail; Sun, 08 Mar
 2015 23:35:18 -0700 (PDT)
X-Received: by 10.236.36.39 with SMTP id v27mr25949174yha.24.1425882918234;
        Sun, 08 Mar 2015 23:35:18 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id m1si2435756pdc.0.2015.03.08.23.35.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 23:35:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablj1 with SMTP id lj1so64086913pab.8
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 23:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SBX6hZ6gFEtcsSWlOZPo7WiHI+0ZDBztvym1cKtweso=;
        b=k1JJZlLQ2D8/Dv1B9Xbchxb0i1fpX5XiEi2NN8O26rK5awg5UymPAA4VY5+KJNFSD0
         v5TQGn86fhgtgYS6DK5aluwR6dN4Yc8KIeFqh8dJMQYh9YNBYBnNiAcEKPYO1V120O6k
         Z24vu7eU2V64OZIYSXcr+gcenNhBvFksFFYkXIHLIl30g/KAsmqZsYZqC213EEn8kWHu
         FLFMJFxXVO0n+I2hQJQLdYLEJklSUtIYOFGu3XdFYsHub2RPT9wK/uiOuhqSJOdjUUcU
         RhGgFInYMmnsEBV815jh5oTTX5HfcOPZPSdZc0Kfo3coMft5pBqcM7gRBjrCD/dJ2VQ4
         qcFw==
X-Received: by 10.70.63.1 with SMTP id c1mr50188732pds.28.1425882918076;
        Sun, 08 Mar 2015 23:35:18 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.16.175])
        by mx.google.com with ESMTPSA id oq7sm9152155pac.32.2015.03.08.23.35.14
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 23:35:16 -0700 (PDT)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 2/4] drivers: staging: rtl8712: Removed unnecessary parentheses
Date: Mon,  9 Mar 2015 12:02:48 +0530
Message-Id: <1425882770-6239-3-git-send-email-tinajohnson.1234@gmail.com>
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
 drivers/staging/rtl8712/rtl871x_security.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index 4d5a288..a178c23 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -1086,7 +1086,7 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 	payload_remainder = plen % 16;
 	num_blocks = plen / 16;
 	/* Find start of payload */
-	payload_index = (hdrlen + 8);
+	payload_index = hdrlen + 8;
 	/* Calculate MIC */
 	aes128k128d(key, mic_iv, aes_out);
 	bitwise_xor(aes_out, mic_header1, chain_buffer);
@@ -1292,7 +1292,7 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	payload_remainder = (plen - 8) % 16;
 	num_blocks = (plen - 8) / 16;
 	/* Find start of payload */
-	payload_index = (hdrlen + 8);
+	payload_index = hdrlen + 8;
 	/* Calculate MIC */
 	aes128k128d(key, mic_iv, aes_out);
 	bitwise_xor(aes_out, mic_header1, chain_buffer);
-- 
1.7.10.4



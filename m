X-GM-THRID: 10518770221056
X-Received: by 10.182.18.67 with SMTP id u3mr47952077obd.38.1427828692355;
        Tue, 31 Mar 2015 12:04:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.148.6 with SMTP id w6ls2254178iod.92.gmail; Tue, 31 Mar
 2015 12:04:52 -0700 (PDT)
X-Received: by 10.66.142.196 with SMTP id ry4mr45679981pab.12.1427828692039;
        Tue, 31 Mar 2015 12:04:52 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id br7si542530pdb.2.2015.03.31.12.04.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 12:04:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x230.google.com with SMTP id w1so21140203pdr.0
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 12:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=WV0/OHh1lIooK8mwoU5dDa/KR8gXUSRlbGQEZyqSLrw=;
        b=bVSxC3ZRlGFL1fTFeLidYqJ9OBZa8IizE5fY0LoyTMzPpfsfdGOxR0mrLlRCfnj4cN
         ydRVliWckfgBWZRYz0ExApHIvxvpm4e8qem+us45PQajmyXl3BviIc2BKApQMpt/DuvY
         9IQObImS0wrAkSIjrw88i2p0/sQJD5sT45++W37LU41N9ejRVit5bLWIKjRuwLbmSTzn
         0yPi1suwwSMioU/XxjDEAQ5WzrDOPiTX3HrL8Gbv8ZLh1fiAeIUWGToPxAfr1cyN7Slc
         1+OQ0Rx+fK8kKLkvezHBR1Ua6w9eDhoiEj2LsWa0mTMT4+fNmKD8YgRbCfhHxjILkckC
         M6Mg==
X-Received: by 10.66.147.138 with SMTP id tk10mr35157205pab.119.1427828691952;
        Tue, 31 Mar 2015 12:04:51 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.193.27])
        by mx.google.com with ESMTPSA id fl4sm14077818pab.8.2015.03.31.12.04.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 12:04:51 -0700 (PDT)
Date: Wed, 1 Apr 2015 00:34:47 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: Remove zero-testing pointer typed value
Message-ID: <20150331190408.GA30198@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removes variable comparison with 0 by using !. Done using following coccinelle script.

@ disable is_zero,isnt_zero @
expression *E;
expression E1,f;
@@

E = f(...)
<...
(
- E == 0
+ !E    
|
- E != 0
+ E
|
- 0 == E
+ !E
|
- 0 != E
+ E
)
...>
?E = E1

@ disable is_zero,isnt_zero @
expression *E;
@@

(
  E == 
- 0
+ NULL  
|
  E !=
- 0
+ NULL  
|
- 0
+ NULL
  == E
|
- 0
+ NULL
  != E
)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_security.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index a178c23..654435f 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -153,7 +153,7 @@ static u32 getcrc32(u8 *buf, u32 len)
 	u8 *p;
 	u32  crc;
 
-	if (bcrc32initialized == 0)
+	if (!bcrc32initialized)
 		crc32_init();
 	crc = 0xffffffff; /* preload shift register, per CRC-32 spec */
 	for (p = buf; len > 0; ++p, --len)
@@ -882,7 +882,7 @@ static void aes128k128d(u8 *key, u8 *data, u8 *ciphertext)
 	for (i = 0; i < 16; i++)
 		round_key[i] = key[i];
 	for (round = 0; round < 11; round++) {
-		if (round == 0) {
+		if (!round) {
 			xor_128(round_key, data, ciphertext);
 			next_key(round_key, round);
 		} else if (round == 10) {
-- 
1.9.1



X-GM-THRID: 6203360253861429248
X-Received: by 10.107.149.4 with SMTP id x4mr8265762iod.20.1444340420317;
        Thu, 08 Oct 2015 14:40:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.99.197 with SMTP id es5ls513224obb.80.gmail; Thu, 08 Oct
 2015 14:40:19 -0700 (PDT)
X-Received: by 10.182.28.100 with SMTP id a4mr8125359obh.20.1444340419866;
        Thu, 08 Oct 2015 14:40:19 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id uv4si6203451pac.0.2015.10.08.14.40.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 14:40:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhy16 with SMTP id hy16so65393713pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 14:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=5dO8KLxu3jRutmrFCYPsX58QlxFb/iqpg2bbOS4LRfg=;
        b=W5tr5t5O8F8lznJODigG9fUqEfPZI4Ux1gTTBOSEJJdlIqxFlPGHggtxxxJ7/7wMpv
         qvx30LCyjFE//gvUdKr0hmm55In1JqgOlziQqh2DKP8yu6ngzgruc6/LK5JZ/ss906N7
         EFi8WTTB8zF5IZk7Zx1u4+3PcM/nRHU5DOTnnuSkbBgh/2ISbTX8uVimg8SL0KHPd9Qq
         KVp1Jkpy87uVcoBaczdp3T3ioFAJ2ki3wNzfRc47XYjz9suU8BQV7/EYf5e4LX2IRvwX
         VwxnpA7LtGvdFT1qySn4E7yz5vE+eJ93tcov17TdjDv02tR4jP6RBuyKCfouDKJTmyJ5
         Dpgw==
X-Received: by 10.68.179.133 with SMTP id dg5mr10736098pbc.0.1444340419685;
        Thu, 08 Oct 2015 14:40:19 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.203.20])
        by smtp.gmail.com with ESMTPSA id rs8sm47347244pbb.14.2015.10.08.14.40.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 14:40:19 -0700 (PDT)
Date: Fri, 9 Oct 2015 03:10:15 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: sm750fb: Remove space after cast
Message-ID: <d6fa13d451fc979bcd0adc687a4b153c39e5f87b.1444340091.git.amitoj1606@gmail.com>
References: <cover.1444340091.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444340091.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary space after cast. Problem found using checkpatch.pl
CHECK: No space is necessary after a cast

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2
        -None
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 0734044..fe0e25a 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -133,7 +133,7 @@ static void setMemoryClock(unsigned int frequency)
 			frequency = MHz(336);
 
 		/* Calculate the divisor */
-		divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
+		divisor = (unsigned int)roundedDiv(getChipClock(), frequency);
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
@@ -180,7 +180,7 @@ static void setMasterClock(unsigned int frequency)
 			frequency = MHz(190);
 
 		/* Calculate the divisor */
-		divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
+		divisor = (unsigned int)roundedDiv(getChipClock(), frequency);
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
-- 
1.9.1



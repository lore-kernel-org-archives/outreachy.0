X-GM-THRID: 6203360253861429248
X-Received: by 10.31.11.149 with SMTP id 143mr4586950vkl.10.1444423471903;
        Fri, 09 Oct 2015 13:44:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.108 with SMTP id h99ls1902297qge.77.gmail; Fri, 09 Oct
 2015 13:44:31 -0700 (PDT)
X-Received: by 10.129.153.2 with SMTP id q2mr13051815ywg.40.1444423471492;
        Fri, 09 Oct 2015 13:44:31 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id zg1si328758pbb.2.2015.10.09.13.44.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 13:44:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ex6so96202105pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 13:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xduoFW1GLehSelhymHlnnXxAOKDIGs/JtX+MChnGwD8=;
        b=hxbaJdhDiktqSHC+4gtkfvjczxtaW2O8vq9cLe5as49CcjOQFitV98oOJLlexkJNBE
         7143QEwyFk64nqyq79qa4thyy/EM1+TraG6mgd4lwJ2djqa0FrNI53JSFDgp2E65T1jC
         Rb1HeirpQlv8E2CuTlGV5MErNB8qdx3DGevvdfkH+0dnqEeG01JUGNHn4YjmavStqvwB
         S9iK2OJi5u+muHjSSyo+4aqR3npI2AeLdlPUbYGns1YvFS+b5dHJ/H0XoNGF/Pz/B/eo
         Jbx70U2vOzPzmeIT2FUZSlBKpf4F6JHc7U9sjKjpdaMK3/zdrYkVrNueQQmX2HVEKuzR
         KNbQ==
X-Received: by 10.68.92.194 with SMTP id co2mr17694420pbb.147.1444423471316;
        Fri, 09 Oct 2015 13:44:31 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.135.155])
        by smtp.gmail.com with ESMTPSA id b6sm699259pbu.90.2015.10.09.13.44.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 09 Oct 2015 13:44:30 -0700 (PDT)
Date: Sat, 10 Oct 2015 02:14:27 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: sm750fb: Rename miniDiff
Message-ID: <43761b5fc9b5cb2a063a33c3224832515c94bdc9.1444423168.git.amitoj1606@gmail.com>
References: <cover.1444423168.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444423168.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Rename miniDiff to mini_diff to avoid CamelCase. Problem found using
checkpatch.pl
CHECK: Avoid CamelCase: <miniDiff>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index f9960f5..5cf28d9 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -358,7 +358,7 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 	/* as sm750 register definition, N located in 2,15 and M located in 1,255	*/
 	int N, M, X, d;
 	int xcnt;
-	int miniDiff;
+	int mini_diff;
 	unsigned int RN, quo, rem, fl_quo;
 	unsigned int input, request;
 	unsigned int tmpClock, ret;
@@ -373,7 +373,7 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 #endif
 
 	ret = 0;
-	miniDiff = ~0;
+	mini_diff = ~0;
 	request = request_orig / 1000;
 	input = pll->inputFreq / 1000;
 
@@ -405,12 +405,12 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 
 				tmpClock = pll->inputFreq * M / N / X;
 				diff = absDiff(tmpClock, request_orig);
-				if (diff < miniDiff) {
+				if (diff < mini_diff) {
 					pll->M = M;
 					pll->N = N;
 					pll->OD = xparm[d].od;
 					pll->POD = xparm[d].pod;
-					miniDiff = diff;
+					mini_diff = diff;
 					ret = tmpClock;
 				}
 			}
-- 
1.9.1



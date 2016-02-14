X-GM-THRID: 6250905009785929728
X-Received: by 10.107.128.102 with SMTP id b99mr9714025iod.1.1455402236876;
        Sat, 13 Feb 2016 14:23:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.106.225 with SMTP id gx1ls1175196obb.18.gmail; Sat, 13 Feb
 2016 14:23:56 -0800 (PST)
X-Received: by 10.182.105.133 with SMTP id gm5mr2322703obb.41.1455402236475;
        Sat, 13 Feb 2016 14:23:56 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id w126si1398162ywe.6.2016.02.13.14.23.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 14:23:56 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id b67so87514373qgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 14:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=StyPx0Uo2tXRbX0xmFDelEjx1fScbcIr0CQvnXPTFSQ=;
        b=hLVIuQv/ogEe7q8LCecemvdW4m2KjTRo4wP1VycJSd56zypFsiMDjj8FZO0FZhXGQC
         7JwyCFS0mLZKNY8dXbxOGEQjCDcM4HB7ivQZrwHt9qWIEFMaIrWodpQm8NK9h44UknV/
         A16Pq+39ft41rs8z0NDbP7GB2bgk+RS7bifIouRCmtYdyGC2hJ32CQ+0BBfaIn7Iqwvy
         e8ZWcEUFU3OU033WE2J62cZcFneu8JojoLGX7Ba03ngO5rDFiMev8RvO85OlJpu7Sji7
         h60/BB1XZ8hvjTd65oTFsl+cG8RFDoaB7RT5YY8gnyyD/pG1ters27ZMepGMa3caord+
         I4vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=StyPx0Uo2tXRbX0xmFDelEjx1fScbcIr0CQvnXPTFSQ=;
        b=gOiSloOkYCZMf6MJn4pgBABIOUPfgOGwFCqaV58SMvoWYOlyM2EG9SfM/Eb1BLtgIW
         TYUndqkbXKxbxkPzzE5olRR5eX5s0lHGNtuLLreIqIaGYZPBbdQnEFyun5TFgzM7SfRP
         95lUspOn/nPOpilGmAhch9z8+2248R3MtvnCFv9mXZY5gtNRxGFDI3602fr7LTay4du8
         ruXctBngH/cF71/4mrfTBlVcx5+F701y8FCxbGDKnroEvMZIXjL7DTFkMmj40o1Z3nZ+
         VqBGJul/d3zlzMUI2VCvu03EqeOHuL4pu02R/n4/lVeyJhduIHcqlWBQ1NUYcxwgQ/DZ
         RVTg==
X-Gm-Message-State: AG10YOSwiakfct+lVrlFyCunM51rfke1iPVxjr5z2VgadFpBUsTgP55efscau1HwnxOo6g==
X-Received: by 10.140.101.201 with SMTP id u67mr11002143qge.33.1455402236315;
        Sat, 13 Feb 2016 14:23:56 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id z82sm8184150qhd.26.2016.02.13.14.23.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 14:23:55 -0800 (PST)
Date: Sat, 13 Feb 2016 22:23:17 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Remove unneeded braces in if...else
 statements
Message-ID: <20160214032316.GA24736@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unnecessary braces in if...else statements where both branches have a single statement each. 

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/sm750fb/ddk750_power.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index ec1cac2..33e092e 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -106,11 +106,10 @@ void enable2DEngine(unsigned int enable)
 	u32 gate;
 
 	gate = PEEK32(CURRENT_GATE);
-	if (enable) {
+	if (enable) 
 		gate |= (CURRENT_GATE_DE | CURRENT_GATE_CSC);
-	} else {
+	 else 
 		gate &= ~(CURRENT_GATE_DE | CURRENT_GATE_CSC);
-	}
 
 	setCurrentGate(gate);
 }
-- 
2.5.0



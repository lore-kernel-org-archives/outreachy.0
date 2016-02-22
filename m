X-GM-THRID: 6254186235119534080
X-Received: by 10.129.158.2 with SMTP id v2mr28521343ywg.42.1456166206753;
        Mon, 22 Feb 2016 10:36:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.196 with SMTP id a187ls1030550ioa.79.gmail; Mon, 22 Feb
 2016 10:36:46 -0800 (PST)
X-Received: by 10.98.68.194 with SMTP id m63mr28326859pfi.7.1456166206285;
        Mon, 22 Feb 2016 10:36:46 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id u66si3659673pfa.2.2016.02.22.10.36.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 10:36:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id ho8so97700664pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 10:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=MXXP25n2hN1R2LBxwtwz+XLmL+kgiUZk1Rpn1DvpyYk=;
        b=SnqLwrkEj03u64VBYXw0VIqss6EpOoVK3DEhYF5sDR+rhg6juaK5MvLK0+24r/LMlx
         ZA/fKL3xlqCaRc2etlzO156piDVcauIkMePk4WO2QrWn047oZSAwNpB0g3dxBUaJn7nx
         yNxzXQFijIoV5UGczvwyWBtSwM3uBDfgJi5skrd/NpwVUgIyF2om7UKjEvGlTIK6J1mP
         TlHQgKc6kcc9F+E96FzbNRpg7jLhBKLz+rn61E5U4/JE1QqFHFNwEysAerwxAjSlmVMI
         3KYHD0ki4jOerS1dOA6laUnZ4J5EzV0kwzOqgsfslthnHyv4iF8QxZzJObG6Bofsi5wO
         SSxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=MXXP25n2hN1R2LBxwtwz+XLmL+kgiUZk1Rpn1DvpyYk=;
        b=h1l+Lyh4v7BqB/9NyUprv9ZobWC6osBHeSmS6I8/RSD+ikX7d3vc4IegQloaGCXtaf
         Es1/EYJNNbbJJcX3l9zgUefKfEpPceUAcQgr5QlzDeQHcpHlUvaTb/dkzMDQycjEX29s
         QbxuA0KM5NSIzncCZE1mbN4UT5cnx5vgBjBB39F2y66yCaNn+m6LVE0/2HRYjdRDL9o3
         de2s3vXzkPv5ODCu1+D5FYuyDxu5IM85E6jgMjgZ1UNgBzdQCWExwMvnoN1ybVB9fiPr
         bugxiSnte/fbVXK3j4agh9RBvQBlqyx5AQybFQ+1B49mI563KRRAMqRT6Jy8O7PvQ06a
         m8og==
X-Gm-Message-State: AG10YOTqdqAN/mSm6MOgL5UjztG9KCZvr/Kwxlk6//+AdX28lGAQKu9PzUM154Ixc1Xqrw==
X-Received: by 10.66.167.237 with SMTP id zr13mr40629822pab.85.1456166206191;
        Mon, 22 Feb 2016 10:36:46 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.75])
        by smtp.gmail.com with ESMTPSA id kw10sm38823284pab.0.2016.02.22.10.36.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 10:36:45 -0800 (PST)
Date: Mon, 22 Feb 2016 16:06:51 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: slicoss: Use sizeof structure *pointer over sizeof
 structure in kmalloc()/kzalloc().
Message-ID: <20160222103651.GA5176@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use sizeof structure *pointer over sizeof structure in kmalloc()/kzalloc().

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index a91c60a..ea6b7b5 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -880,7 +880,7 @@ static int slic_upr_queue_request(struct adapter *adapter,
 	struct slic_upr *upr;
 	struct slic_upr *uprqueue;
 
-	upr = kmalloc(sizeof(struct slic_upr), GFP_ATOMIC);
+	upr = kmalloc(sizeof(*upr), GFP_ATOMIC);
 	if (!upr)
 		return -ENOMEM;
 
@@ -1806,7 +1806,7 @@ static int slic_mcast_add_list(struct adapter *adapter, char *address)
 	}
 
 	/* Doesn't already exist.  Allocate a structure to hold it */
-	mcaddr = kmalloc(sizeof(struct mcast_address), GFP_ATOMIC);
+	mcaddr = kmalloc(sizeof(*mcaddr), GFP_ATOMIC);
 	if (mcaddr == NULL)
 		return 1;
 
@@ -3049,7 +3049,7 @@ static u32 slic_card_locate(struct adapter *adapter)
 	}
 	if (!physcard) {
 		/* no structure allocated for this physical card yet */
-		physcard = kzalloc(sizeof(struct physcard), GFP_ATOMIC);
+		physcard = kzalloc(sizeof(*physcard), GFP_ATOMIC);
 		if (!physcard) {
 			if (card_hostid == SLIC_HOSTID_DEFAULT)
 				kfree(card);
-- 
1.8.3.4



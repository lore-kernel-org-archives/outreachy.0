X-GM-THRID: 6670781063292256256
X-Received: by 2002:a6b:6a11:: with SMTP id x17mr1174666iog.35.1553162248195;
        Thu, 21 Mar 2019 02:57:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:28cf:: with SMTP id h198ls1574880ith.3.gmail; Thu, 21
 Mar 2019 02:57:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqylTYL3Sd6MSrsy2ZCA8M5ppKsFryhFvJ2hHkX6BPK5+EChsEVog60leF972sDCopDjIG34
X-Received: by 2002:a24:1fc8:: with SMTP id d191mr563537itd.29.1553162247233;
        Thu, 21 Mar 2019 02:57:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553162247; cv=none;
        d=google.com; s=arc-20160816;
        b=dkSvgjYi2f5vIeZRE9XvHMcGITV9AnFETGFG1r5H+/bgYxvRybou3cFC22iSaGrtPw
         ky2DAj1adTuiiv+JD1TLta33sUhlsa3i5wdzlCQYXIyMi4Qdrf+TvyqMzmVETD+SXK+w
         MuhB6BErDXunsP6qQvADSKrLs5IbBcg3SpOt/cfjC5yAlvdQzw8/2/3zChKxYzGZXFuu
         xwQuKAX+KSIHssfblxgqC4hfpuQM/oqLd5UAM9xg4OlDX63fN3JGDrl2jIfmZghhbFfh
         pdtMwD0L6WNijKCh+wP29gquhhiYrh3t91dVUKw1YOXPBoPPdmSmjhEimFK2WQOF9Tdg
         q/sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=7DpcCKZ3BK0kLHSKSyU9sSKEL4p01tr/xWVmYmQz1VY=;
        b=SzpHwpdzaELg7E+a2PQ9LNh0GpP8Ms4yMFNPAYqNyjguk8RKIjDL+st1iQotytais2
         dEUsMJpIpMpeu4tJNnsD4SeyuQvvR4iiToM62/Rld0Vv8CqagDSUZkyCh7Vezulz0CnX
         tx/PlXYeUKzCV3ravw2OeAdlaBlv78MBW1QAtZQLHJZvuVyAdiJ65FPoJWJ2wK8DvOSf
         Hn2JkeBEfBN8TMEusl0Z8LF7m4aYJzOIMG86fu0sswaoAQQfSXc5/UJYxyhDDjLlvtD+
         rxfmDKHN8T3nMFKMrpteq/fW3cmSSB1a1bA75ry97GOi+8jPSbRLs95zxa3PmJRzh0a6
         Akag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bw0ZeKZP;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u1si442486itb.2.2019.03.21.02.57.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 02:57:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bw0ZeKZP;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id v21so3944887pfm.12
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 02:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7DpcCKZ3BK0kLHSKSyU9sSKEL4p01tr/xWVmYmQz1VY=;
        b=Bw0ZeKZP6Z6QAn7bTa94EmE8/Fm8cSRtADbO7TORKo9r+tkz8ZLFPORie/ryLB51Z/
         JV+E+emmCOAB1WPCZ4/acYz+OobLbIPuSysZTB2+14YbLv1eeTl2NAPc23qBAmuTtvwL
         geP6dlIK9JwM/tTQusVk7tRuaAMjngTQsD6+LkeB70yM1LwoP3IQiLX8lZY+0RNq0dpu
         AIlWg1M7Pkfmr8XvDsdt/29jZugR8SqXnlcblGmZwyPpZCN7JaA7pcSSnePIif6/awnt
         7aPCnb7swzsj3ca5Xvmb73gyAF2rZRoRocwtxYW5mh6K2vqmOC+n4TRygvtdVNKSu7nA
         Tejw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7DpcCKZ3BK0kLHSKSyU9sSKEL4p01tr/xWVmYmQz1VY=;
        b=mVXZQZBqeB/6ujhRgy5OuGNZZ0VxLnOYFSofqKgE87k7Wlg/zdRG7qtoxqEkNeyEcC
         x293DblXW4wR2ZpbHwawa05+HnrALqI0W+sMoqYCTIjQDKf7eJA0fjakuj7zjffABZAf
         QCJVfeoCnDZyTxCd934uQjDl/9Vq7mH0NRMAQL53SCO+t8R29/sdcQ3jO/jHT+p1Pmgc
         YRJxzHa4La2Pplt8kUg6ZlYHXgYbFBBms3daW1C2h0Eg3MTtr4WDG3cyPfiyBJnzzxuZ
         0zEMi7mbMuw8ZULMDjAta4wUSs0vBn/AtARhAGI+yi2z8gagdjCIB7SiBNmkPcS6EM2+
         7NtA==
X-Gm-Message-State: APjAAAX1Xk6PF85PzoQt8uyL75pMLytD2LyIp+0ygcQulRBOVIDpSMtU
	cNGvSok2AKRUB9iAXjGqBOM=
X-Received: by 2002:a62:293:: with SMTP id 141mr2394785pfc.245.1553162246126;
        Thu, 21 Mar 2019 02:57:26 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.80.198])
        by smtp.gmail.com with ESMTPSA id m7sm3399881pgg.62.2019.03.21.02.57.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 02:57:24 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH] staging: netlogic: Remove unnecessary error print
Date: Thu, 21 Mar 2019 15:27:17 +0530
Message-Id: <20190321095717.24155-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

Kmalloc normally produces a backtrace when there is not enough memory.
So it is unnecessary to print an error message that provides only this
information. Hence, remove pr_error() from memory allocation check.
Issue found using Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 8554fcf4321b..afba1248e100 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -389,10 +389,8 @@ static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
 	base = priv->base_addr;
 	spill_size = size;
 	spill = kmalloc(spill_size + SMP_CACHE_BYTES, GFP_ATOMIC);
-	if (!spill) {
-		pr_err("Unable to allocate memory for spill area!\n");
+	if (!spill)
 		return ZERO_SIZE_PTR;
-	}
 
 	spill = PTR_ALIGN(spill, SMP_CACHE_BYTES);
 	phys_addr = virt_to_phys(spill);
-- 
2.17.1



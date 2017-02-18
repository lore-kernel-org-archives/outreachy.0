X-GM-THRID: 6388438478115307520
X-Received: by 10.129.174.5 with SMTP id m5mr4400782ywh.58.1487424242610;
        Sat, 18 Feb 2017 05:24:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.87.199 with SMTP id u190ls1178834ita.8.canary-gmail; Sat,
 18 Feb 2017 05:24:01 -0800 (PST)
X-Received: by 10.36.142.133 with SMTP id h127mr3553983ite.11.1487424241933;
        Sat, 18 Feb 2017 05:24:01 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h130si1270371pfe.1.2017.02.18.05.24.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 05:24:01 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 5so7360165pgj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 05:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HaaBzME3z4kycxsmqhhdCwYaS86SG9BQOqZK84f15CM=;
        b=pDG2aPYkJuuAVPsDW5J8/dS95FdNfdDq/BudB3/6mW6EQEryUivAq5ixs4Q9O/YWT1
         0YSFnSyZ1XifCkD62EbOItXB9CZuwCMVuUY31ZD2r219RftNjsxcVWEkmCOFKIpfm+uo
         AIo0Eh2cGxe5HecA2Dukg0RROeLpBfbxWLnjKAdCGuEF4Ji1rjZEQMUM4uqV7jLcJKG1
         5M8RJroojCQZyb/rj7VSECDepl8BNQrYilUSYz8AEGRHhUKDfQNbzSQodBr7Nz8cU+Eh
         KT23ui0z6hLrOEsryfoSEr099iqPXI3k152ljDW+GX0Z+lwEiYjJ9c94D2ln0ZPTM4Kl
         SCgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HaaBzME3z4kycxsmqhhdCwYaS86SG9BQOqZK84f15CM=;
        b=J2DE2t6m1FMuF3R4FUGT7isfbJA/l7dZwy4YGmQQ8Bvs4IUAmG6t/G94221Dpnd9ZQ
         W/xZYSop1qFS9NlAIkmzTWrvHTWbDV9AuLnYC65POj7bOOcynL4mXH+MnB3p5vvqnn/t
         wS65uIwCscXJ2ziRDGsmyEdSK1Z9tZ0jd8OJ5aQE2+89IKHhMklFbExzndSh0+TP4BFS
         X/lRqlZjoEMs0vo6n+c4NBFNqcGdq92TClRDjZqEs/9sQDKyUQNSsAhqgbGLbdUm/JPS
         u0buht5wHvT1TQs6TkEIoNgrGtjpa0Gbq0F3tNn/SExJiGsfA20SMH0aCv/GItGr96za
         T0OA==
X-Gm-Message-State: AMke39laX5dspAQJCz1A+0Ho3hcihW07GhwdQVQp23EVdOS6F1+NfMv5IGS3XqJXdzM1yw==
X-Received: by 10.99.155.18 with SMTP id r18mr15819670pgd.193.1487424241714;
        Sat, 18 Feb 2017 05:24:01 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s65sm25521628pgb.64.2017.02.18.05.23.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 05:24:00 -0800 (PST)
Date: Sat, 18 Feb 2017 18:53:56 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: xgifb: function definition argument should also
 have an identifier name'
Message-ID: <20170218132356.GA4907@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

function definition argument 'struct vb_device_info *' and 'unsigned
long' should also have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/xgifb/vb_init.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/xgifb/vb_init.h b/drivers/staging/xgifb/vb_init.h
index 500cabe41a3c..e4929314d33e 100644
--- a/drivers/staging/xgifb/vb_init.h
+++ b/drivers/staging/xgifb/vb_init.h
@@ -1,6 +1,6 @@
 #ifndef _VBINIT_
 #define _VBINIT_
 unsigned char XGIInitNew(struct pci_dev *pdev);
-void XGIRegInit(struct vb_device_info *, unsigned long);
+void XGIRegInit(struct vb_device_info *pVBInfo, unsigned long BaseAddr);
 #endif
 
-- 
2.11.0



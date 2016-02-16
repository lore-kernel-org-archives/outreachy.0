X-GM-THRID: 6251886520521719808
X-Received: by 10.129.131.206 with SMTP id t197mr20591560ywf.50.1455630762577;
        Tue, 16 Feb 2016 05:52:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.102 with SMTP id o93ls3146879qgd.16.gmail; Tue, 16 Feb
 2016 05:52:42 -0800 (PST)
X-Received: by 10.31.154.65 with SMTP id c62mr21493868vke.8.1455630762022;
        Tue, 16 Feb 2016 05:52:42 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x236.google.com (mail-qk0-x236.google.com. [2607:f8b0:400d:c09::236])
        by gmr-mx.google.com with ESMTPS id g136si2335343ywb.5.2016.02.16.05.52.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:52:41 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::236 as permitted sender) client-ip=2607:f8b0:400d:c09::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::236 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x236.google.com with SMTP id x1so66351452qkc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=VE4mLnJpOBsPdHQKUvMPznhR2BSzkKiaJXvQa/c5z48=;
        b=pkO2OxDwTQls+SGJMaIrOZHTQf8C/ofwo4P7Ty77Wqx66JA7b3pPr5LgBaNQ31GOKv
         Gzhz+y9AdyzAWj+jrP390+nIiiPDhLMrbwdMjodnLElAr8pOT4bJkNH1jTzQBUMi+Zhq
         HSICIvqDSUYWiTB55ZVLQP2bb7ukpV48cIEBbSqdv7cfEzocyxR1qhx3yujK30m2R3dn
         ey1CqLoUUvnmgjW1KPTosPYQHk9qN5IDqw32/LIGdqEisI5FaSUmTg21g4VmHEIBG2im
         SaMgHxJaxHXLD6kZy14F0EHo+OMb9x69gv4Xal0hFSN69+3z/kjfoxHKq8mT8nuZ2XE7
         gXmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=VE4mLnJpOBsPdHQKUvMPznhR2BSzkKiaJXvQa/c5z48=;
        b=dF6PUYc1Vos0+LZXLha+2I6wSU0jmZnxEBOVCD1PEvmWDMrsiBufebAh2GK1cOhvnZ
         VZpzuVwExX49eO3Y1bWHYI1jD6IJY3PoHCx7Qji/D398RaY8PMyq2nf9feBZkDxUPcYD
         YdmrsbhX/aofnzfmyOkt3j2VnKFTk/eZJCR5MvdOZUskSTGwKXSnxaJEz4eN1oCwtV49
         W9Nw4vSE09CjoeTwxPjM0kQcu/70Zn3mANBAM3AIdlj0Slb/ol1jgXalNF5eexDmN7TS
         Wcfly1XiaMYTjrsJb3HwkupVDpJhUgPYqxWUARTM7w1iBoBzDaWLqK4QF0m4nexxCwQ/
         GSpw==
X-Gm-Message-State: AG10YOTVD6XCm07ejaAxuuwKI923vM+xjzyW/qxoxHW3boWRoAse4PIuQx7u5EAURi6pIA==
X-Received: by 10.55.82.70 with SMTP id g67mr27364145qkb.57.1455630761891;
        Tue, 16 Feb 2016 05:52:41 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id l36sm298432qgd.29.2016.02.16.05.52.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:52:41 -0800 (PST)
Date: Tue, 16 Feb 2016 13:52:00 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Modify tcp_process to return void rather
 than int
Message-ID: <20160216185200.GA14853@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

tcp_process() returns int, which is not used anywhere. So, change
function header to return void instead of int and remove all uses of
the local variable ret, which is used as a return variable in the function.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index a396ac9..b980b03 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -207,9 +207,8 @@ static inline int add_tcp_pending_ack(u32 ack, u32 session_index,
 	return 0;
 }
 
-static inline int tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
+static inline void tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
 {
-	int ret;
 	u8 *eth_hdr_ptr;
 	u8 *buffer = tqe->buffer;
 	unsigned short h_proto;
@@ -267,14 +266,10 @@ static inline int tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
 				add_tcp_pending_ack(ack_no, i, tqe);
 			}
 
-		} else {
-			ret = 0;
 		}
-	} else {
-		ret = 0;
+
 	}
 	spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
-	return ret;
 }
 
 static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
-- 
2.5.0



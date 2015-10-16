X-GM-THRID: 6206286205260136448
X-Received: by 10.50.134.199 with SMTP id pm7mr4992258igb.0.1445013611267;
        Fri, 16 Oct 2015 09:40:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.19 with SMTP id 19ls1534924qga.41.gmail; Fri, 16 Oct
 2015 09:40:10 -0700 (PDT)
X-Received: by 10.13.240.132 with SMTP id z126mr13664399ywe.34.1445013610843;
        Fri, 16 Oct 2015 09:40:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id wl2si2085388pab.1.2015.10.16.09.40.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:40:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id cn9so10263413pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=MIbKzKa1RP+C6bQ+gBHAoITeUSRuvxD4921/QZijWWU=;
        b=XWRP4DNetY5EWYulq/U0r5jqJw6UBijyufAKQeUOJvXpT0M9RS92xFeGc+CwC4TO4a
         a4Ei8JWdd2Q+DZJuIQ6V5mg+d1iXDgLh94DlmY0/d+a316a3WONxDuJKLoqwnofNO+X6
         VICqrlTUdBJkrQacqe6ioHSsXLqdy6ZUvMjr/UlBbw2xTUmsPd+ZwnEy4kqIBTxyqApw
         pROUb/wsSivYDZNeErA73KyxhRGmFvDM3afOq7QMf5VkQ+bLvd04BNzTieoQs79O8vEa
         ss4pdoeEw48dXIg0qC0hseHT+Jhl7YmHfC6dVkj6rPk3jYV1hIJ96QS0ttQ+5R24hcaw
         1fag==
X-Received: by 10.66.221.170 with SMTP id qf10mr17115899pac.134.1445013610692;
        Fri, 16 Oct 2015 09:40:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ve8sm4241991pbc.48.2015.10.16.09.40.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:40:10 -0700 (PDT)
Date: Fri, 16 Oct 2015 22:09:57 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: dgap: Remove unnecessary test expression
Message-ID: <20151016163957.GA27325@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

struct bd is already NULL tested so, any further NULL checks should be
removed.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/dgap/dgap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
index aa3aa72..ca64126 100644
--- a/drivers/staging/dgap/dgap.c
+++ b/drivers/staging/dgap/dgap.c
@@ -2059,7 +2059,7 @@ out:
 		/*
 		 * If board is doing interrupts, ACK the interrupt.
 		 */
-		if (bd && bd->intr_running)
+		if (bd->intr_running)
 			readb(bd->re_map_port + 2);
 
 		spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
-- 
2.1.0



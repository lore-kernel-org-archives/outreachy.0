X-GM-THRID: 6260130064638148608
X-Received: by 10.13.213.208 with SMTP id x199mr4686675ywd.48.1457550112218;
        Wed, 09 Mar 2016 11:01:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.232 with SMTP id l95ls1236246qgd.43.gmail; Wed, 09 Mar
 2016 11:01:51 -0800 (PST)
X-Received: by 10.129.159.131 with SMTP id w125mr4638556ywg.26.1457550111696;
        Wed, 09 Mar 2016 11:01:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id ui7si2126pab.0.2016.03.09.11.01.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 11:01:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id td3so20068314pab.2
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 11:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jVioDXmmCEO8GW5dscKn50RBhdwJzR6F4CkhPR9RmfY=;
        b=VslkBI/rXNXP73DEZrXhbT6j+E2d2dOG7p8IJkEOjjIuYlaZqDipw9TwQHcvXnNKyq
         kPEN6rs4Tbz++TxWbH853OZPI3DEjeppRpUB19XdwQ9BwQc9RHV7DGtqyDqBwP7+70It
         yTcIXChU1ampZlhpELsWhu6w4g9i2t3LXiM75txZL9FJjHXpEyK4n/bwKk2FD945ZNY/
         mwXPmaKD3MXxuhD8GKabUF53PdyAUXs9/Zn9RlFU1OREdRIxNF2M+5jPmRr7dkWIKAE5
         74yM81bCMbnA5CXnrMeJqSPzvtyvyXUP6RpYwSfD3dwmK1242nieByhbcZJ7AYWouDm8
         bH1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jVioDXmmCEO8GW5dscKn50RBhdwJzR6F4CkhPR9RmfY=;
        b=l4RPgglik4B5PHi1Bqab/AyGNPPif6XPCWBgf0VJD4KpKFJOWhBjspfUACqYqH8Hol
         RXsKeeNQlg2hJzuCFp04VHGC67LoMpTCIIATO6yQV9PfPQGI6fOgbUYGCL1zXthj3twX
         Ta+40vf7B3uj1USWkMfuMPxOb9wnRDKLJPjM3DuyGPYMeY8eLDLTnbV8MfRj1WInDHmE
         tufk0VW/qWV9WvDoW0LnoREI4BaMWu69R4E1jts+hzynLefgreDVuSPFz1kq7NN8heh/
         Popl+Cd4aYrXLZO2LVzXmHdMWPHY1r/A/BdHm+0kQht7HFp3rm6oR1+joKcCno1fUrw4
         n8Xg==
X-Gm-Message-State: AD7BkJLtJjk5NFJkEqCUnsd2O8GajAwzTW7oFLD+lKQ9CXWG1xrDfJizAXH29C6OG9vcqQ==
X-Received: by 10.66.102.106 with SMTP id fn10mr53119063pab.60.1457550111370;
        Wed, 09 Mar 2016 11:01:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p26sm14055538pfi.84.2016.03.09.11.01.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 09 Mar 2016 11:01:50 -0800 (PST)
Date: Thu, 10 Mar 2016 00:19:38 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: rtd520: Prefer using macro DIV_ROUND_UP
Message-ID: <20160309184938.GA16300@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/comedi/drivers/rtd520.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/rtd520.c b/drivers/staging/comedi/drivers/rtd520.c
index 68ac02b..9b6c567 100644
--- a/drivers/staging/comedi/drivers/rtd520.c
+++ b/drivers/staging/comedi/drivers/rtd520.c
@@ -892,9 +892,8 @@ static int rtd_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 				devpriv->xfer_count = cmd->chanlist_len;
 			} else {	/* make a multiple of scan length */
 				devpriv->xfer_count =
-				    (devpriv->xfer_count +
-				     cmd->chanlist_len - 1)
-				    / cmd->chanlist_len;
+				    DIV_ROUND_UP(devpriv->xfer_count,
+						 cmd->chanlist_len);
 				devpriv->xfer_count *= cmd->chanlist_len;
 			}
 			devpriv->flags |= SEND_EOS;
--
2.1.4



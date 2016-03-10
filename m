X-GM-THRID: 6260483003717255168
X-Received: by 10.98.12.66 with SMTP id u63mr3536608pfi.12.1457632287784;
        Thu, 10 Mar 2016 09:51:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.80 with SMTP id y74ls1134386qgy.44.gmail; Thu, 10 Mar
 2016 09:51:27 -0800 (PST)
X-Received: by 10.140.101.242 with SMTP id u105mr3600115qge.12.1457632287183;
        Thu, 10 Mar 2016 09:51:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id 12si719413pfb.1.2016.03.10.09.51.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 09:51:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id tt10so72433222pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 09:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FP8SQkyLYPwhS7BB2/eiWwirkcQ/1IEFEg0nvvjLEKM=;
        b=KUv8Xebnql6GgKss8cOFW4/qH1dcUTwLDS+yuPvIrPSD5ca1uuPRmaA670ewtUXy0h
         ji0PS7SVI/j4Vh+JjnfwijhSk4ux01yLsMPbgzOeAPz6uVY0L9YG4GLXuTrxZKSFiLRe
         S3Iaed+oe7Ew4YVzNsP+LZOu5eFi12zEd0Vb9mJpSFghYer8JZ1YLEfYPv9TNLuGxVQt
         tZq85+Gqbeaq7wqVtDSQH9Xar4/WmUUwATPEU+fldj/FcvBgKIC+f8aan7aP0fXkrpNq
         Ab/5MMM1KcZF0uCkyBVwz6heH2X0geWudqydg/yIjx2W3kNCIqxcg/DNMDJmCsY9FCZK
         FtMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FP8SQkyLYPwhS7BB2/eiWwirkcQ/1IEFEg0nvvjLEKM=;
        b=TGmLSIe4orTxiuBOLHXo1D8GOepZKYpCdKh4/00Qc0+3UvowpTJ6ck2gIZDN9CLuF3
         jQR/XXqEShiK40Cyu0xwLHaC32yBiq1mHlXpSdNvjxGBYOZ1gSFGz9IWRRmp/woOpYHe
         Dc6kbVKSPGzQ2nO0y7GikUxnX1Bh4ojkcfcV4pLEeSQZFL69sw1v3RbsMYOuvYDY1CfP
         O/Y3HusiJJZwU0Y3rLfpsm2arL2Athx9qR8d9YIhl48iqC3FNvW5ezepinEAgAfVK00Z
         3TFct5wybKs7DGpp5Uz+xieYdZwqJj2M20yZrKi8Dtxch6m0O+ZrcBtnplJKgpGvntu2
         DWUQ==
X-Gm-Message-State: AD7BkJJQmvvMjmSqn7Jt9UFg3WyBmvtxGl/lCAgvxmbpQHCSzFyAzPFa/7bJ/ARlPT9jFA==
X-Received: by 10.66.253.169 with SMTP id ab9mr6916587pad.62.1457632287016;
        Thu, 10 Mar 2016 09:51:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y68sm7060507pfi.6.2016.03.10.09.51.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 09:51:26 -0800 (PST)
Date: Thu, 10 Mar 2016 23:09:14 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: unisys: visornic: Remove unnecessary else after
 return
Message-ID: <20160310173914.GA20364@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/unisys/visornic/visornic_main.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/unisys/visornic/visornic_main.c b/drivers/staging/unisys/visornic/visornic_main.c
index 6749c4e..be0d057 100644
--- a/drivers/staging/unisys/visornic/visornic_main.c
+++ b/drivers/staging/unisys/visornic/visornic_main.c
@@ -760,9 +760,8 @@ static unsigned long devdata_xmits_outstanding(struct visornic_devdata *devdata)
 	if (devdata->chstat.sent_xmit >= devdata->chstat.got_xmit_done)
 		return devdata->chstat.sent_xmit -
 			devdata->chstat.got_xmit_done;
-	else
-		return (ULONG_MAX - devdata->chstat.got_xmit_done
-			+ devdata->chstat.sent_xmit + 1);
+	return (ULONG_MAX - devdata->chstat.got_xmit_done
+		+ devdata->chstat.sent_xmit + 1);
 }

 /**
--
2.1.4



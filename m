X-GM-THRID: 6262247928978472960
X-Received: by 10.182.111.170 with SMTP id ij10mr21867268obb.42.1458043477686;
        Tue, 15 Mar 2016 05:04:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.134 with SMTP id 6ls145957qgz.70.gmail; Tue, 15 Mar
 2016 05:04:37 -0700 (PDT)
X-Received: by 10.13.217.204 with SMTP id b195mr21886215ywe.26.1458043477070;
        Tue, 15 Mar 2016 05:04:37 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id y20si3852571pfa.2.2016.03.15.05.04.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 05:04:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id 124so26424075pfg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 05:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9GsWHmvGX1QEPz3M+PjhhwjerM3BOGKTBW5XzctrBsI=;
        b=W72ooZ2Sa1QPGEHg2uC4IbPfIuVFJbcjAnIehirCKQB3LTms33+jyl4xW1cC6YhY2B
         gwwX2iXKN4nrUrE/9nAn9pIn+axsf4/9XC1VhOXmp17utizhjetxVvjyGT2JQLrbGedE
         3dBdvGO3YgUZyEXFguUyTxJUgi64eYzAs253Yfp7NEs22maaTnsoxUKxu6qdr8xON5+Y
         hqNFyOqZof7yJMyb4DcCYvqIlll9sPACJxyWgqVRgNYBcOnLiWuP0rRPYgn443EoS0Xi
         xt6bgjRKpzwU1IDj1ShyZhFSKU6qr4V4pCIPYJ/F7S3NZsNPnIsLd+TCHTqCh7yFfqzJ
         IbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9GsWHmvGX1QEPz3M+PjhhwjerM3BOGKTBW5XzctrBsI=;
        b=ZOEROaMpq7UYTwwg/f5plzV6misKFCxXy99d+NQZQMI8ienFVILZSqwpdaLo3m6Yn+
         UGANIjRxcfGO1mHb5fnTX6AEW1ClsYCq22EhHLXsYhhtDNuxS86AxfY2PJHhyjlN6HMJ
         Ep74getSM+vyheJGSTa/6ev6Aq5g30kkv3QsFrt5pfJ//L7i7F4GTSgUMbrb2E7REYcb
         pSZFicK3NsIbZhylaNhBegLgBC3YI4222q5iFiaZEnur6RUCjqOhgpn709wGTTuSax9C
         oRsyEALVqMGTcFOPkoI2wAqFl/NGgLopm9w6UJ6r4zwH9RS92atEMJSe1shLehdu8kNn
         bHlg==
X-Gm-Message-State: AD7BkJJgMANWUJNdQMhcgy+XIBvT7z6w+Zhkgi20pMeyXa67wrq3+bZKTizD/PAMNJ9/ww==
X-Received: by 10.98.9.92 with SMTP id e89mr38001285pfd.34.1458043476891;
        Tue, 15 Mar 2016 05:04:36 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id u64sm39261541pfa.86.2016.03.15.05.04.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 05:04:36 -0700 (PDT)
Date: Tue, 15 Mar 2016 17:34:25 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: nvec: Fixed NULL comparison style
Message-ID: <3305b7af88ac600ec38cb463aa6f01d8cc75849e.1458043064.git.anchalj109@gmail.com>
References: <cover.1458043063.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458043063.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove a CHECK produced by checkpatch.pl

CHECK: Comparison to NULL could be written "!msg"
CHECK: Comparison to NULL could be written "!nvec->rx"

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/nvec/nvec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 7b7de5a..76cbc57 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -264,7 +264,7 @@ int nvec_write_async(struct nvec_chip *nvec, const unsigned char *data,
 
 	msg = nvec_msg_alloc(nvec, NVEC_MSG_TX);
 
-	if (msg == NULL)
+	if (!msg)
 		return -ENOMEM;
 
 	msg->data[0] = size;
@@ -620,7 +620,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 		} else {
 			nvec->rx = nvec_msg_alloc(nvec, NVEC_MSG_RX);
 			/* Should not happen in a normal world */
-			if (unlikely(nvec->rx == NULL)) {
+			if (unlikely(!nvec->rx)) {
 				nvec->state = 0;
 				break;
 			}
-- 
1.9.1



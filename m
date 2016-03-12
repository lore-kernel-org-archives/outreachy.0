X-GM-THRID: 6261186317265141760
X-Received: by 10.112.72.136 with SMTP id d8mr1943618lbv.5.1457796040355;
        Sat, 12 Mar 2016 07:20:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.106 with SMTP id m103ls515118lfi.94.gmail; Sat, 12 Mar
 2016 07:20:39 -0800 (PST)
X-Received: by 10.112.45.139 with SMTP id n11mr1920057lbm.17.1457795954175;
        Sat, 12 Mar 2016 07:19:14 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id c140si325778wmh.1.2016.03.12.07.19.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 07:19:14 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id p65so51443969wmp.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 07:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Tz+de4ZmM2uQyQnC7iXlc07lwcAsfu8kJ37SUAwuEKw=;
        b=jrWrSXkNZrM2uzHJma0jaXiGCJovlnZ7zcQbI0BzGy5cp/rQ2Ph2oYhhAhHMHroa5F
         6w5/kvk85BNc4OW6XeZZhpfDf2WmBwIC0t4QTs/YE2T3H10/mk/1W0jbXh+L+TpA0ZiP
         M35T/DvmdXWjaMNK4k/gGYVhajRikUMbhJMwH8BjvsLxYgY5VkZc/0nHLbPmRo0PoYMi
         6yGZgqQ3jc4huYx0Aic4JBqn5t1VNNSl3iDr1tHjuA5DZjvXuCqWNFsYEBMALRYKiiwD
         rv3KtckqJRfQD3hqxAuWP4sQedp11eGQqn6wVuTtAJA0OnsNl6/aX94kmeX+lMKJ1qhV
         pzvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Tz+de4ZmM2uQyQnC7iXlc07lwcAsfu8kJ37SUAwuEKw=;
        b=mTI6GFBawpQ/lxTT/VmhoSGmo/TCOydTAOLQY7CO4BXBPx0F0CtLH7VU3uRH39FBNu
         Qvm0ezQwSPHtyludinaSALojgjqO5LpCfo/h+FPHIBU2apUcVZ8Zay4hzSH5yBKKSEhJ
         0+GtI6iZVnOrfoPuHE71FFoNSeCyOuunAoQClt8UkVF6KfIjuU4BWneBxw1ql+tUgy5R
         ycOcBubES9XJ3+yPSzvFOgOHnLawc5iqbDe78rIk/DyDkWQ4/7N7pl5qtnF9bjnT8H5W
         zvJHfMowuUg3SxO5lDCbnxZqtT4IB3Cj6VWwxuz01x4M/RQd3Abx/a+VKiM6WR2u8YR4
         zP7A==
X-Gm-Message-State: AD7BkJIlbhuoLFqTHPhiLgzYfX3Kw9M8FiDrlsvLv/Ws0GwfE9cnknTfnv8M2jhRkKUtNw==
X-Received: by 10.194.205.138 with SMTP id lg10mr15302941wjc.153.1457795954015;
        Sat, 12 Mar 2016 07:19:14 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id v82sm7401785wmv.6.2016.03.12.07.19.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 07:19:13 -0800 (PST)
Date: Sat, 12 Mar 2016 16:19:11 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: nvec: Fix comparison to NULL
Message-ID: <20160312151908.GA2801@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace the use of comparison to NULL, use !<expression> instead. Checkpatch detected these issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/nvec/nvec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 9fda136..8d589a4 100644
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
2.7.0



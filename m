X-GM-THRID: 6331265860288643072
X-Received: by 10.66.123.74 with SMTP id ly10mr1464143pab.104.1474112705603;
        Sat, 17 Sep 2016 04:45:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls7232198otj.7.gmail; Sat, 17 Sep
 2016 04:45:05 -0700 (PDT)
X-Received: by 10.157.7.7 with SMTP id 7mr11316935ote.50.1474112705314;
        Sat, 17 Sep 2016 04:45:05 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si3496625pab.2.2016.09.17.04.45.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:45:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so4588435pab.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 04:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ze1VTQXTEw6QFz3ffEfLxEfiNw8EF5kMh1OhJMEu02c=;
        b=SLAX5IVD0kGA0+iw7P/eTIMrFrXJwqaUJvZBbcTXtX4E5xfWTuKeSLPBEgxNWQITyq
         D3xPkvAYsgKzWFXYsqTZ8vZNeB9fmkSd74/8/zkpk4AKxAGCSBs/3LgmzVUe48w5qwQD
         GY9qwrGRwMIcU2Hde/AxLKci9leAiu4gjdNhmu1rqofoMeW7BEZ5NRDcCPVlDv6TuU0G
         ZPfURbrcPXq4ZKnDGo6eUkOWtkEzGonF6TB2LWeecvhRxqkay8ONEhcAfJXy37/Nhalm
         y9KqNlIh6qjwLRunqgpdWvp+zihfeHMsh7hMfvlCPX+zmClUR0pqEDWIY3rFqFFivfL3
         qsbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ze1VTQXTEw6QFz3ffEfLxEfiNw8EF5kMh1OhJMEu02c=;
        b=Agx1rVeZ9fO5Bu/F7j5p7TveFkK50oE1ORkYS+jiW8slAr+oLnltTDj+oPAf2cYAIj
         z0Eq/7JZej63hAtGAPJE30t9gXsUR+R/0UGB/nrDDzrJ2S0G2rexFcJxShwz6CdKmkLp
         dQJnRyOQ7v6Ysf7mvuVtCbLXO6ElhnSTCIXa2Y6ktbberTGQCDJOsfWoyGClI/XUbzru
         dOUB3/dLGZzCFLAC0QbY+WEF6BlFWIhwguUo56jXR10yv2iQxSfNNLamHZn/dc+i5A5U
         zzlCXZSPdKShz/YCKDjmCgE/W4jSovq8dWnZZA7OUpYkuAyT+u37TV+dF+ZnUGoHqbRg
         WLWw==
X-Gm-Message-State: AE9vXwPZlGp3Ji9zzkM3JZKehma1+5/8XTqij7XTlys9HMLXqOu9hCW7fLZypK+7xSZ8WQ==
X-Received: by 10.66.249.74 with SMTP id ys10mr30817168pac.29.1474112705116;
        Sat, 17 Sep 2016 04:45:05 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id xw10sm18690400pab.0.2016.09.17.04.45.03
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 04:45:04 -0700 (PDT)
Date: Sat, 17 Sep 2016 06:14:47 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: i4l: Use !x instead of x == NULL.
Message-ID: <20160917004447.GA14614@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.
This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/i4l/act2000/capi.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/i4l/act2000/capi.c b/drivers/staging/i4l/act2000/capi.c
index bf04e6f..62f5629 100755
--- a/drivers/staging/i4l/act2000/capi.c
+++ b/drivers/staging/i4l/act2000/capi.c
@@ -618,7 +618,7 @@ handle_ack(act2000_card *card, act2000_chan *chan, __u8 blocknr) {
 		spin_lock_irqsave(&card->lock, flags);
 		tmp = skb_peek((struct sk_buff_head *)tmp);
 		spin_unlock_irqrestore(&card->lock, flags);
-		if ((tmp == skb) || (tmp == NULL)) {
+		if ((tmp == skb) || !tmp) {
 			/* reached end of queue */
 			printk(KERN_WARNING "act2000: handle_ack nothing found!\n");
 			return 0;
-- 
1.7.1



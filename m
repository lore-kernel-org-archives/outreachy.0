X-GM-THRID: 6331265860288643072
X-Received: by 10.31.16.75 with SMTP id g72mr2573233vki.41.1474196975198;
        Sun, 18 Sep 2016 04:09:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.77 with SMTP id p74ls2978572iod.9.gmail; Sun, 18 Sep
 2016 04:09:34 -0700 (PDT)
X-Received: by 10.107.31.129 with SMTP id f123mr13593847iof.30.1474196974762;
        Sun, 18 Sep 2016 04:09:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si5577358pfe.0.2016.09.18.04.09.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 04:09:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id oz2so5571058pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 04:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=26Tq+pIjTcbTNkC2WJiGiS9nno90vvT9/46AHEM6pxg=;
        b=ILp/NqVzzZZV0bsv5aXoc3vKMMhz2eO5Lse97MxdkwuoDyPM7P/IJchXcPZ2yK7T1J
         I7tq3NhlLwYZIoQiV5tZWbkQ9qWt0I/XctiQ2ZNgvt5dRJbOMEVemWMfd2wN2mW6kRc2
         cchhDuZvK2aJy2PmTVqSrUy9S/vpolBFi3V3yU7pWP98Iud69Ov34L8BIZnCbj9cvPv8
         IvX5v5fPvCBzL4DDRf7d3BgY59NopDBt/Z+o+lpTc18mUbMesMX4G4yvy285Z3TiPwl2
         1h5LBOQs08FYYRnyKsHN7MilKRPwi/0Q5FjcOPLNCPpOIxE5unyWExEaTxOuYIfDcjux
         u4hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=26Tq+pIjTcbTNkC2WJiGiS9nno90vvT9/46AHEM6pxg=;
        b=PIk+nUCwlL4KbX3YLa++Nj06h9BIBnFIqaB7CGwkqkkxyjyZv/1jRe9/iJWVQm6ccy
         QDl2XqR4tA8Srbigh52nxzg0ClGBciYMugkPOtkmJDKz5PHDXiDvE/+Z7d7cZOdQaXpx
         D2loL4GpRmW0JRG1lwArEChHTXJsiLyivlqKn1CFxCkWYF4K9GzE+ro1Llw8xNlHTJjj
         W7W/LP1aSHBsjjbTXHVyGKgP/uNCWLAR7S39d1sS9EYhEilLsg29q7gD/8wNQZ7j3jkH
         NpFnmUTeFL00UWVs+3A9UT2ruIQ4zHvLIMkosx36ZJyp2B5ixivMWhBnNlc7f9cEtsqN
         9u/Q==
X-Gm-Message-State: AE9vXwPOBk2LNtldmzrCviYfHOcjT0SQ0LvxbkFjj7xArVhgMvfmqnPO8QyYjh4N5Sip2g==
X-Received: by 10.66.246.227 with SMTP id xz3mr3336791pac.24.1474196974436;
        Sun, 18 Sep 2016 04:09:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.173.54])
        by smtp.gmail.com with ESMTPSA id q25sm30014997pfj.48.2016.09.18.04.09.32
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 04:09:33 -0700 (PDT)
Date: Sun, 18 Sep 2016 05:38:34 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: i4l: Use !x instead of x == NULL.
Message-ID: <20160918000834.GA24787@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL. This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Correcting the file permission issue.
 drivers/staging/i4l/act2000/capi.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/i4l/act2000/capi.c b/drivers/staging/i4l/act2000/capi.c
index bf04e6f..62f5629 100644
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



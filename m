X-GM-THRID: 7363344990208
X-Received: by 10.152.36.132 with SMTP id q4mr4279949laj.6.1425942308071;
        Mon, 09 Mar 2015 16:05:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.132 with SMTP id q4ls331128laj.26.gmail; Mon, 09 Mar
 2015 16:05:07 -0700 (PDT)
X-Received: by 10.112.120.136 with SMTP id lc8mr1336214lbb.24.1425942307534;
        Mon, 09 Mar 2015 16:05:07 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id ew13si32686wid.0.2015.03.09.16.05.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 16:05:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl18 with SMTP id l18so28433071wgh.5
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 16:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=t3Q44IK8XvYQHgjKOrv5cCoFtRNKH0tk5dcsRdYr6MA=;
        b=O1TAaDOtLVxPYfVU6paWMFBNcpjtKMhS0i0KWQWGADCRGSPxQ7j0zCZButYdyEBE6J
         xpg825El9D5R8D19Z7A5/logWwvckIotCQlElAfzG7//bheYnqs5aFcF/Gw9XNMuKg8+
         4WhJPUTLn2cGN78t29Sh48sO7sgq2o7jDWoEDZJgVNc87KYtFp6DP5+yeSLmtdw0hdAU
         gwcahQdoahWOA5JGNemdAmZDsGJKAqGf3uWKbCbF+HvEF9TFKEbeZqGZomORr7rpPqiC
         ytBGMVCXYdjN287Fja7EvaB7sxmb7Ek+n2C8Ne8O32ZKZRglQaexttr4ObGcMBoMl7G9
         Yr7Q==
X-Received: by 10.194.86.135 with SMTP id p7mr63244449wjz.89.1425942307442;
        Mon, 09 Mar 2015 16:05:07 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id fu1sm1225617wic.2.2015.03.09.16.05.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 16:05:06 -0700 (PDT)
Date: Tue, 10 Mar 2015 01:04:31 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192u: Fix spelling error
Message-ID: <20150309230431.GA2219@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix spelling error in order to keep code clean and easy to read.
Warning found by checkpatch.pl

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index d1cbddd..4dcda38 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -2132,10 +2132,10 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
  * to have enought room to TX an entire packet.
  * This might be useful if each fragment need it's own
  * descriptor, thus just keep a total free memory > than
- * the max fragmentation treshold is not enought.. If the
+ * the max fragmentation threshold is not enought.. If the
  * ieee802.11 stack passed a TXB struct then you needed
  * to keep N free descriptors where
- * N = MAX_PACKET_SIZE / MIN_FRAG_TRESHOLD
+ * N = MAX_PACKET_SIZE / MIN_FRAG_THRESHOLD
  * In this way you need just one and the 802.11 stack
  * will take care of buffering fragments and pass them to
  * to the driver later, when it wakes the queue.
-- 
1.9.1



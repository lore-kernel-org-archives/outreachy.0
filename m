X-GM-THRID: 7566836891648
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b6b3faf53755f62b,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.182.201 with SMTP id eg9mr1208111wic.3.1426031994367;
        Tue, 10 Mar 2015 16:59:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.116.9 with SMTP id js9ls92793lab.69.gmail; Tue, 10 Mar
 2015 16:59:53 -0700 (PDT)
X-Received: by 10.152.164.171 with SMTP id yr11mr2149984lab.4.1426031993937;
        Tue, 10 Mar 2015 16:59:53 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id c8si653684wiw.1.2015.03.10.16.59.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 16:59:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id l15so34530596wiw.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 16:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=JFmGZWMRGRO7M5BsSrhB55bTlXUtZcylKwtwnFK7lco=;
        b=jxuWFLn2vh5T5rFb9RQVwSxV4e22w2hmMMOpJNMQhXzt0gBqCef3YspSQKi46Rljr7
         MqLo2KZINuJFv1fif69Wk+OsF1LqUI/aH8VGYQ3KT2tXU/dBVIx6JMbL/Aj0hMItUSw4
         TAUtQ5PsdXiobCp6L1L2OOZUy061Xn12RJR/ddp4pFEB9X35Xn3+cE+IK/zbxOIKClzD
         0Emf7KhggdZd90lxinELUK+HVd43GVxQLe0UzYqcD3kZtDAUa49lKRBz8ogKJkG6W5vP
         mhRoA29Yf4ui1kvA6U4tqsdDOeR7W1Dsj3tHnGw4UHBajSL0eBmQ6IEu2Ya4/g0T50Mw
         QtTQ==
X-Received: by 10.180.187.19 with SMTP id fo19mr39556281wic.2.1426031993855;
        Tue, 10 Mar 2015 16:59:53 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id w4sm3678324wib.19.2015.03.10.16.59.52
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 16:59:52 -0700 (PDT)
Date: Wed, 11 Mar 2015 01:59:14 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: cristina.opriceana@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8192u: Review phrase and fix spelling errors
Message-ID: <49964f76185334882a4e5e2e9d1e500279b95d3e.1426031886.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes some serious spelling errors and adds small
improvements to the phrases in order to make them easier to understand.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 26 +++++++++++-----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index d1cbddd..2f0029c 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -2122,20 +2122,20 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 	return 0;
 }
 
-/* following are for a simpler TX queue management.
- * Instead of using netif_[stop/wake]_queue the driver
- * will uses these two function (plus a reset one), that
- * will internally uses the kernel netif_* and takes
- * care of the ieee802.11 fragmentation.
- * So the driver receives a fragment per time and might
- * call the stop function when it want without take care
- * to have enought room to TX an entire packet.
- * This might be useful if each fragment need it's own
- * descriptor, thus just keep a total free memory > than
- * the max fragmentation treshold is not enought.. If the
- * ieee802.11 stack passed a TXB struct then you needed
+/* The following are for a simpler TX queue management.
+ * Instead of using netif_[stop/wake]_queue, the driver
+ * will use these two functions (plus a reset one) that
+ * will internally call the kernel netif_* and take care
+ * of the ieee802.11 fragmentation.
+ * So, the driver receives a fragment at a time and might
+ * call the stop function when it wants, without taking
+ * care to have enough room to TX an entire packet.
+ * This might be useful if each fragment needs its own
+ * descriptor. Thus, just keeping a total free memory > than
+ * the max fragmentation threshold is not enough. If the
+ * ieee802.11 stack passed a TXB struct, then you would need
  * to keep N free descriptors where
- * N = MAX_PACKET_SIZE / MIN_FRAG_TRESHOLD
+ * N = MAX_PACKET_SIZE / MIN_FRAG_THRESHOLD.
  * In this way you need just one and the 802.11 stack
  * will take care of buffering fragments and pass them to
  * to the driver later, when it wakes the queue.
-- 
1.9.1



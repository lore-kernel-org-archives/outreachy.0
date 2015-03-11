X-GM-THRID: 7566836891648
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b6b3faf53755f62b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.161.194 with SMTP id xu2mr5087739wjb.1.1426035134357;
        Tue, 10 Mar 2015 17:52:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.36 with SMTP id dd4ls95718lac.43.gmail; Tue, 10 Mar
 2015 17:52:13 -0700 (PDT)
X-Received: by 10.112.159.227 with SMTP id xf3mr5167874lbb.11.1426035133658;
        Tue, 10 Mar 2015 17:52:13 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id gj20si1190731wic.1.2015.03.10.17.52.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 17:52:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghk14 with SMTP id k14so5669707wgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 17:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/ZraRLHM+9iBZ1cCI6okaNU1aV9pqQCso9yDXJkcmJE=;
        b=lm87yNQ0UZcfLSVLc1AqACgZXTpt98rKbMjbUOFAnIIsz99NzZAnmjL4NzXFLBya9m
         +omzt6E7CFcUpSFYMfAoV3uFd1vdIjq4Szd6JglOf3v1kleslMfLJJ4/mWGtftCopdOp
         HULyXrGmEElCF7JHkVAK8xqkYGhuSxQGkX+7kupyqZ04nGRJrTV7e/xLlrExcXwW5had
         KQRvfxbnWl2hIdbjfWbARCv4QTYqOZCaK23ko3NSteDbobJDZ7FdO29DAbCEUK9d5UVx
         ap64z/T4h5Zfk4QAJJrCTdZRq0dTcUjB1n1kHx+4Q9oir4ba5wgZrVe3Eo+1LtARXNiZ
         Vagg==
X-Received: by 10.180.207.84 with SMTP id lu20mr115387508wic.17.1426035133501;
        Tue, 10 Mar 2015 17:52:13 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id gz3sm3854384wib.1.2015.03.10.17.52.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 17:52:12 -0700 (PDT)
Date: Wed, 11 Mar 2015 02:51:35 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: rtl8192u: Review phrase and fix spelling errors
Message-ID: <6c93bde2194f90e26882b54caad83535584930d0.1426034297.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes some serious spelling errors and adds small
improvements to the phrases in order to make them easier to understand.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
Changes in v3:
	- replace the subject with a more specific one
	- replace it's with its, enought with enough
	- review phrase

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



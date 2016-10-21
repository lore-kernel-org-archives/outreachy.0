X-GM-THRID: 6343724775795326976
X-Received: by 10.31.69.215 with SMTP id s206mr4857667vka.32.1477013522447;
        Thu, 20 Oct 2016 18:32:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.4 with SMTP id q4ls376818otc.29.gmail; Thu, 20 Oct 2016
 18:32:02 -0700 (PDT)
X-Received: by 10.157.4.77 with SMTP id 71mr4668881otc.145.1477013522126;
        Thu, 20 Oct 2016 18:32:02 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id p70si12272vkd.0.2016.10.20.18.32.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Oct 2016 18:32:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 130so4049528vkg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 20 Oct 2016 18:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Ml1bKufHJNNsQfD6Al362zmCR2RG2ZcV+w6xYphZUc0=;
        b=OCBZTRdHU576Jet5vredpdbZqUNN2Qq9niSR7WycElS8//96pmWSSknApdlXo1K4Q0
         H/atnPP+phM4QYub3PWstJBtSyLF1tclS8LrOOqjmVpjrYDoc4Z9bRS5AcElQ31TNM9j
         WAFxdx2UaRAThKuAof4XLTdbk/55V47oeAsQV8EKA4iApEXySOCFUTxME1+b0RDmfnk5
         3R/thqbsj1dtkd7j3j/iMwRCpEBteTzcMdddu4hgATI5qJuGdqnoX9h/+dF+dnVxls9B
         Vq67bAsTZLwtnRPLBgsLdiQZ64ogYEdntFmzjVYFWq1fPAAodVJJH7i9ar3aK+PsUUYc
         Lzaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Ml1bKufHJNNsQfD6Al362zmCR2RG2ZcV+w6xYphZUc0=;
        b=gtwLAOAuB3e90W14xDoao6FzRbzfqW2MNaPDVQ15ivllSL68c0Vy/qbbUmEwcn97SW
         zSu/gtvGfH8l6aZ44H/RI7NnWhPnPJiOOIrKmj9r6bEADBCDyPnwBAj6BdbpX3szMdMf
         L2Si4jhl2o/gTPOryxJB5W16QnSV8ZLee2pyGUFbhw8Rf1TcaYqiOB172LXzQHFX8z18
         ocLbMptcY7AjEo7CtzjYSHyNJjPcIWPdvCPW9Zf6qi3Kj4hQ/bwXNmh6DiiBTu1hoN6v
         SxekAtlbBdO/EvPlq2ZJBLsxZ0F0LR/8ANF+bsAHjqr+q/L89SeTqHbPFwNCEnF4n6o1
         viyg==
X-Gm-Message-State: AA6/9RnNORo67Oc5+LPkTi/tvu4Q48BO9zZQEu2VhsV5Rh5yW5SqwRgCz4+JSUkOOrzIpw==
X-Received: by 10.31.200.71 with SMTP id y68mr5004074vkf.126.1477013521942;
        Thu, 20 Oct 2016 18:32:01 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id p30sm35758uaa.22.2016.10.20.18.32.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Oct 2016 18:32:01 -0700 (PDT)
Date: Thu, 20 Oct 2016 23:31:55 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8192u: Standardize test for NULL.
Message-ID: <20161021013155.GA27681@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The test for NULL of the return variable of functions was changed from
(ret == NULL) to !ret to match the standard.

Coccinelle was used with semantic patch:
@@
expression e;
identifier id, f;
statement S;
@@

f(...) { <+...

id =
\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap
\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\) (...)

... when any
    when != id = e

+ if (!id)
- if (\(NULL == id\|id == NULL\))
S

...+> }

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 89cbc07..a44eb81 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -129,7 +129,7 @@ ieee80211_frag_cache_get(struct ieee80211_device *ieee,
 				    8 /* WEP */ +
 				    ETH_ALEN /* WDS */ +
 				    (IEEE80211_QOS_HAS_SEQ(fc)?2:0) /* QOS Control */);
-		if (skb == NULL)
+		if (!skb)
 			return NULL;
 
 		entry = &ieee->frag_cache[tid][ieee->frag_next_idx[tid]];
-- 
2.7.4



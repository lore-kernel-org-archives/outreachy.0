X-GM-THRID: 6205554058197991424
X-Received: by 10.129.83.10 with SMTP id h10mr3639428ywb.6.1444843145360;
        Wed, 14 Oct 2015 10:19:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.195 with SMTP id w3ls127922obf.75.gmail; Wed, 14 Oct
 2015 10:19:04 -0700 (PDT)
X-Received: by 10.182.50.170 with SMTP id d10mr3565756obo.48.1444843144684;
        Wed, 14 Oct 2015 10:19:04 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id wl2si980903pab.1.2015.10.14.10.19.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 10:19:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id ur7so10768874pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 10:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=q7GjbDeDxitu5fE8T+TRneCoOPBZXl0qdGmhTj/QKNQ=;
        b=wbjfJHhorUrFe0TrU6ean40KAYoMIaPPZDQCXbDAXyr265xDqIJLwJ/XHduwF7Qgik
         l2WKo8iEkdJd1UbGfovqyIfxsqe2K1h9PgPLBz8Ebs1gEgSH+pv4s0MkJJdwxkmIGRB5
         RAFTKk3cGuI2XUM+VFpRTh1f7XLYXpaXSBndL6MUTV+rPnU4lwuTfwGH8DLC3B+iC547
         fZpXTkI+Sb+VoWXDrMo8IoTLA/6KRYH/fP6om5Gvs9MoUYhfpu0q02M7clNwfKUzvc4q
         W0zzBefr3JPX+i0yb1f+gTeZAMuqV9SY+WZoH7RtrReViZ18dDjfeVuPAsUGLfAn6tfP
         fkOQ==
X-Received: by 10.69.26.5 with SMTP id iu5mr4881879pbd.12.1444843144554;
        Wed, 14 Oct 2015 10:19:04 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id x6sm10740610pbt.3.2015.10.14.10.19.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 10:19:03 -0700 (PDT)
Date: Wed, 14 Oct 2015 22:48:50 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192u: ieee80211_rx: Remove unnecessary code
Message-ID: <20151014171850.GA19220@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable frame_authorized is declared and mentioned in the code but
is not used anywhere so, it should be removed. Also, two case statements
are merged by removing an extra break.
Semantic patch used:
@@
type T;
identifier i;
constant C;
position p != e.p;
@@

- T i@p;
  <+... when != i
- i = C;
  ...+>

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 4b5f32d..130c852 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -899,7 +899,6 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	struct net_device *wds = NULL;
 	struct sk_buff *skb2 = NULL;
 	struct net_device *wds = NULL;
-	int frame_authorized = 0;
 	int from_assoc_ap = 0;
 	void *sta = NULL;
 #endif
@@ -1106,10 +1105,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
 					     wds != NULL)) {
 		case AP_RX_CONTINUE_NOT_AUTHORIZED:
-			frame_authorized = 0;
-			break;
 		case AP_RX_CONTINUE:
-			frame_authorized = 1;
 			break;
 		case AP_RX_DROP:
 			goto rx_dropped;
-- 
2.1.0



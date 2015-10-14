X-GM-THRID: 6205509094362578944
X-Received: by 10.66.227.166 with SMTP id sb6mr2838499pac.0.1444832676601;
        Wed, 14 Oct 2015 07:24:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.41 with SMTP id j41ls42924ioo.52.gmail; Wed, 14 Oct
 2015 07:24:36 -0700 (PDT)
X-Received: by 10.68.222.104 with SMTP id ql8mr2793116pbc.9.1444832676039;
        Wed, 14 Oct 2015 07:24:36 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id zg1si918774pbb.2.2015.10.14.07.24.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 07:24:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id p3so7883000pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 07:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ZB8hBrZ31JExX0tItP5LBWEv09N2/8xbBtkvNq/gK+k=;
        b=AFWxI5mDdgTvG2QOBQU9ldWCPOcV6tnEIe82cayNNBK4e+vW48eWV0feJnaoyJu/Yj
         yEVJgA9uicPIQ/03hQ75LQ/x/cqHuAQD/ITgWNgXFtMhOp0jAKdw/vf7HDQWtHoh5rqi
         gWyb7FPWB8ldaDTuhWIFVvYRDLl7MMMOeCEjiWdi52M9TntannyevG+jJmE9rEnIOjZt
         atK66+DXJvkK+cO8izp4e5eeGDJGLeu0bYjkfSl3CADgdPH9Ae2QW1YtI4Q/hhTkHLQf
         kkqMmbZYwqngdtEpiAmz1N+t0bt/4A2on7UMwEcSnBt6O+LDVuA6BnRo73Lh6gGuY10D
         uWwA==
X-Received: by 10.68.192.9 with SMTP id hc9mr4011696pbc.57.1444832675595;
        Wed, 14 Oct 2015 07:24:35 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id or6sm10094681pac.32.2015.10.14.07.24.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 07:24:33 -0700 (PDT)
Date: Wed, 14 Oct 2015 19:54:14 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192u: ieee80211_rx: Remove unused code
Message-ID: <20151014142414.GA17736@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable frame_authorized is declared and mentioned in the code but
is not used anywhere so, it should be removed.
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
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 4b5f32d..ab60c3f 100644
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
@@ -1106,10 +1105,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
 					     wds != NULL)) {
 		case AP_RX_CONTINUE_NOT_AUTHORIZED:
-			frame_authorized = 0;
 			break;
 		case AP_RX_CONTINUE:
-			frame_authorized = 1;
 			break;
 		case AP_RX_DROP:
 			goto rx_dropped;
-- 
2.1.0



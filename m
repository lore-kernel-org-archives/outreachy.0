X-GM-THRID: 6259335772207316992
X-Received: by 10.129.73.74 with SMTP id w71mr11426777ywa.6.1457365176365;
        Mon, 07 Mar 2016 07:39:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.52 with SMTP id m49ls1654590qgm.97.gmail; Mon, 07 Mar
 2016 07:39:35 -0800 (PST)
X-Received: by 10.31.168.130 with SMTP id r124mr17047526vke.10.1457365175705;
        Mon, 07 Mar 2016 07:39:35 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ui7si3073126pab.0.2016.03.07.07.39.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 07:39:35 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id bj10so80852459pad.2
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 07:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=o91zQijMkScU+hGpzpOdFmPOOKCBzJADHMM/6dG4NXA=;
        b=P+wxp0ePwyiYEjhCXPCqoHSsT1aZXCZQImzps7RKGRmIV1iVAP9+jB5KX2OVdSVFcz
         IwWFS+/sblWbRVPLMQiEr/dDHR9Ql3OxiP9jUS517i2N8V2DGX71+CPNh6QjSOv74KVf
         5X8SUfAbkr5Qw070XimPNlfjhlqm9TXOrbD4s0yTSZlcxIssAfIXDWAVLw0qOLibuPkL
         htx95ELa967XWy8LOKfFJxYvnw84PjB0ag8hq+twYi81MMLhhmihhZhig2NoinE8ntri
         zCQ4jPDbdjIBqMFZlTeh4NLfJdwhTtO3f50yNWy+QoIZEcBd9KJ48vVMsXDaXFBuuquT
         uowg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=o91zQijMkScU+hGpzpOdFmPOOKCBzJADHMM/6dG4NXA=;
        b=J1EV484kg8HQ80G08JYbgIoqpf0WENJmLSV+/t/vV0oxfu/Yj3R92vr4FjcbYdbtS+
         LTngp/6rkGqrWcEmq4j913w8EUM6fQegN8oLzEB8+L3vMsZL873He0+Bg9vARWGUxz17
         f0cdRL74NW/TS4yGFQzYIxLaV7F+oNmZFfvNhM0uSxdvtJTSi4O4mPD5x/2xrt2rTNSj
         bmhThMn+Q9C2bVQaitYnCASCcD6Ri1OgGePS1BusEbnTn6ORjpAgYfMXLhAMFlCOLezr
         EhgFwbYfJH6XYMs5zyxWOSwydnIYC62LPuMsiQg92MHXRDPWTr/KJZvB8K0SatMw8qPW
         XWBg==
X-Gm-Message-State: AD7BkJKsupT8vwDFMxCqoE9PquVtMcIHCTiF4W4nyzTJ5URee26iltT62PMosG96hMeELg==
X-Received: by 10.66.220.162 with SMTP id px2mr34418249pac.15.1457365175461;
        Mon, 07 Mar 2016 07:39:35 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.241.214])
        by smtp.gmail.com with ESMTPSA id v9sm24939532pfi.50.2016.03.07.07.39.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 07:39:34 -0800 (PST)
Date: Mon, 7 Mar 2016 21:09:30 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: netlogic: Replace pr_* with netdev_*
Message-ID: <20160307153930.GA28121@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace generic pr_info and pr_err with netdev_info and netdev_err 
respectively for net devices.

Found using Coccinelle. The semantic patch used to find this is as
follows:
//<smpl>
@@
expression e;
identifier f,i;
position p;
@@
f(...,struct net_device *i,...) {
...
(
-  pr_debug@p (e)
+  netdev_dbg(i, e)
|
- pr_err@p (e)
+ netdev_err(i, e)
|
- pr_info@p (e)
+ netdev_info(i, e)
)
...
}
@@
expression e;
identifier f,i;
position p;
@@

f(...) {
...
struct net_device *n;
...
(
-  pr_debug@p (e)
+  netdev_dbg(n, e)
|
- pr_err@p (e)
+ netdev_err(n, e)
|
- pr_info@p (e)
+ netdev_info(n, e)
)
...
}
@a@
identifier s,x;
@@
struct s {
 ...
struct net_device *x;
 ...
};

@b depends on a@
expression e;
identifier f,i,a.s,a.x;
position p;
@@

f ( ..., struct s *i, ...) {
  ...
(
-  pr_debug@p (e)
+  netdev_dbg(i->x, e)
|
- pr_err@p (e)
+ netdev_err(i->x, e)
|
- pr_info@p (e)
+ netdev_info(i->x, e)
)
  ...
}

@c depends on a@
expression e;
identifier f,i,a.s,a.x;
position p;
@@

f (...) {
  ...
struct s *i = ...;
  ...
(
-  pr_debug@p (e)
+  netdev_dbg(i->x, e)
|
- pr_err@p (e)
+ netdev_err(i->x, e)
|
- pr_info@p (e)
+ netdev_info(i->x, e)
)
  ...
}
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 3a6de47..44d1b21 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -99,7 +99,7 @@ static int send_to_rfr_fifo(struct xlr_net_priv *priv, void *addr)
 			return 0;
 	} while (++num_try < 10000);
 
-	pr_err("Send to RFR failed in RX path\n");
+	netdev_err(priv->ndev, "Send to RFR failed in RX path\n");
 	return ret;
 }
 
@@ -209,12 +209,12 @@ static int xlr_net_fill_rx_ring(struct net_device *ndev)
 	for (i = 0; i < MAX_FRIN_SPILL / 4; i++) {
 		skb_data = xlr_alloc_skb();
 		if (!skb_data) {
-			pr_err("SKB allocation failed\n");
+			netdev_err(ndev, "SKB allocation failed\n");
 			return -ENOMEM;
 		}
 		send_to_rfr_fifo(priv, skb_data);
 	}
-	pr_info("Rx ring setup done\n");
+	netdev_info(ndev, "Rx ring setup done\n");
 	return 0;
 }
 
-- 
1.9.1



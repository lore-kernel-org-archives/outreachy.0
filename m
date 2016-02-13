X-GM-THRID: 6250664265920806912
X-Received: by 10.129.80.3 with SMTP id e3mr5268719ywb.23.1455346395391;
        Fri, 12 Feb 2016 22:53:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.112.42 with SMTP id in10ls332435igb.13.canary; Fri, 12 Feb
 2016 22:53:15 -0800 (PST)
X-Received: by 10.66.249.41 with SMTP id yr9mr832313pac.37.1455346395014;
        Fri, 12 Feb 2016 22:53:15 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id tn7si1909811pac.1.2016.02.12.22.53.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:53:14 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so4706444pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 22:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6epulhD4lbdI87Opq+i4Eqe9CpFTrR847Hdi+O7MaTE=;
        b=cTesfypc5okbSqG0K0nwVGtazeGJ9JnYi+RttWGv3yNvd/gKb0pNE73OWYZFhwjgFS
         tfnVsGGE7iFAtMvj9POpOSGI4LVrsP3QxCTtaYij5LGJV3gkqfgIo6yPi+pj6N8+nCBq
         kj/81bHCUX0dV/nL70bVfEa0mnfwvMKbaf9Xu/fATbxsyH3KjOHv1ZSA3AH3ZbPoKOtt
         GB/yRbp0UQOornP52LxXP2ONRrSkPgvBFMbM/r9Z0PH7mkYQ8/l2FMKS68pBEdYcqpBW
         e6ls3yltgE8ZBSy/FY8f30keL2aee5VKiIxTqHIQtekS8zzTM4q2WCkA9VyI8VzC/hgR
         AZxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=6epulhD4lbdI87Opq+i4Eqe9CpFTrR847Hdi+O7MaTE=;
        b=nFh6Wq47xKtV1fSv/ifx5aZyHxe+3Yu4Z5uOSr1i7G8fI/W2NJPM2aN08YpGw0knrt
         u3fzF4SVuaGtaEPiFpyYU15sYeXNJ8W/hKMJwAzsKLuB4bS301YWhzgSGV/WKqb7g3ZW
         pEtaroidpb6AXPCIwxxoiePQnDj0W2VXmVDEmdpl9vodMWKvUqZKjYTaS+xAoUXNVUSs
         N/HPJu0QAXPuTu/pFF0ZMF/mBl8+Yp/QupnFZD50nIo3KiCGr7NGfxsmFwxO0lnxlQti
         z7SG96YcxK3h7qewHMJqyD0OnPyLUu+JHfAEHIDQps9Fn5GJyOckvTdvU+QhG42PVWv8
         fKSg==
X-Gm-Message-State: AG10YORkSxPOA6vzAXJ9h8rP5G4Cu7k/50csNZZVAkxxoxNKmSwRsbZ+KUmwMkEKnCuEBw==
X-Received: by 10.66.189.201 with SMTP id gk9mr7898271pac.19.1455346394903;
        Fri, 12 Feb 2016 22:53:14 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id t12sm23725190pfa.54.2016.02.12.22.53.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 22:53:14 -0800 (PST)
Date: Fri, 12 Feb 2016 22:53:13 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: wilc1000: linux_wlan: remove cast on void
 pointers
Message-ID: <e3c7de8ace658855982f2b143f5888482002c0b2.1455344328.git.amsfield22@gmail.com>
References: <cover.1455344328.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455344328.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove casts on void pointers. C programming language guarantees
the conversion from void pointer to any other pointer type.

Coccinelle patch:
@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index c11830f..a731b46 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -61,7 +61,7 @@ static const struct net_device_ops wilc_netdev_ops = {
 static int dev_state_ev_handler(struct notifier_block *this,
 				unsigned long event, void *ptr)
 {
-	struct in_ifaddr *dev_iface = (struct in_ifaddr *)ptr;
+	struct in_ifaddr *dev_iface = ptr;
 	struct wilc_priv *priv;
 	struct host_if_drv *hif_drv;
 	struct net_device *dev;
@@ -144,7 +144,7 @@ static irqreturn_t isr_uh_routine(int irq, void *user_data)
 {
 	struct wilc_vif *vif;
 	struct wilc *wilc;
-	struct net_device *dev = (struct net_device *)user_data;
+	struct net_device *dev = user_data;
 
 	vif = netdev_priv(dev);
 	wilc = vif->wilc;
@@ -160,7 +160,7 @@ static irqreturn_t isr_bh_routine(int irq, void *userdata)
 {
 	struct wilc_vif *vif;
 	struct wilc *wilc;
-	struct net_device *dev = (struct net_device *)userdata;
+	struct net_device *dev = userdata;
 
 	vif = netdev_priv(userdata);
 	wilc = vif->wilc;
@@ -235,7 +235,7 @@ int wilc_lock_timeout(struct wilc *nic, void *vp, u32 timeout)
 	int error = -1;
 
 	if (vp)
-		error = down_timeout((struct semaphore *)vp,
+		error = down_timeout(vp,
 				     msecs_to_jiffies(timeout));
 	return error;
 }
@@ -1038,7 +1038,7 @@ static void wilc_set_multicast_list(struct net_device *dev)
 
 static void linux_wlan_tx_complete(void *priv, int status)
 {
-	struct tx_complete_data *pv_data = (struct tx_complete_data *)priv;
+	struct tx_complete_data *pv_data = priv;
 
 	dev_kfree_skb(pv_data->skb);
 	kfree(pv_data);
-- 
2.1.4



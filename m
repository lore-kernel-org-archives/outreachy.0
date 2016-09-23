X-GM-THRID: 6333608176063086592
X-Received: by 10.28.26.72 with SMTP id a69mr262647wma.11.1474659928225;
        Fri, 23 Sep 2016 12:45:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.94.147 with SMTP id s141ls493194wmb.0.gmail; Fri, 23 Sep
 2016 12:45:27 -0700 (PDT)
X-Received: by 10.194.88.134 with SMTP id bg6mr463445wjb.12.1474659927808;
        Fri, 23 Sep 2016 12:45:27 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id s6si350783wmb.1.2016.09.23.12.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 12:45:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id 133so4291461wmq.2
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Sep 2016 12:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9ansiu4VD95/fA3Qj7VO4zHm+CNcKyiF4oScR7/qzyg=;
        b=SZ5EyXyuSWZvyhr9k3ntSWPDDWF976+gV7RzkYxJLeDImsMACGXh2tVU4IHv/EPvff
         vCtanVJ4XFzdwhlVANrzZFue1pQbKgYYux0i9EOa/dRRfphDLOCyozTgmbpVlfAZ8R+v
         XUudKJ+2okMXsD7eg97sNbTPCA9+8MHeh54eulveoQyKdw6uGAtvkIRfKU2w6ZzxYTV1
         Hn0Fwr1yBl1RiHSUN9rkSuvZUTHQS/VsBZ05+Iw8MAE9fgzLTNIF3o7DbFL1gUIq6ECD
         bhkwebJKPHk3TdtIXmF242AxsjfAw31YEs4Il9NC4MD4L48hLEnnkVa78CLxu+PlgJ79
         bt2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9ansiu4VD95/fA3Qj7VO4zHm+CNcKyiF4oScR7/qzyg=;
        b=eSr7f/kWzVSZuF3en5bz9ZU3t6Wn9iUH59lNaV7uSC1jsLQ4GFZndA412ZJ3lNqqH+
         YknIC7qaTx3nfopHu4A7hllvxtK9opWqWLrSruCrpyp0GIFsca9hfFuxWpz4IKyuj13Q
         wLwjd3HII0UEOpYCaXoe++MaeAQzD0058KztgLrmDm5PYPi8dc6DXZb8yZiQTIG6nVyZ
         YviLxchxbN36+y80XoYeooBsyJhlR04hWieoEwNp/B6RdlespCrbnuw0JAaSv+T52/AI
         aSfbpStxYwNVe0GST6igXgcmrUNprXbgDFnFts3OY8Y3lESgHnMUX2yq5/KsekHwuUMg
         59UA==
X-Gm-Message-State: AA6/9Rm55s7dI1ItoaISji83mJmmWhG7yUDqyMiFAIZuk8ZpY1mrMe8PgVWqLRPrkRAyng==
X-Received: by 10.194.172.42 with SMTP id az10mr8259522wjc.178.1474659927605;
        Fri, 23 Sep 2016 12:45:27 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id l206sm4574663wmf.15.2016.09.23.12.45.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Sep 2016 12:45:26 -0700 (PDT)
Date: Fri, 23 Sep 2016 22:45:25 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: ks7010: ks_wlan_net: Remove unnecessary variable
 used to store return value
Message-ID: <20160923194525.GA7252@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unneeded code in order to make clear
that the function returns 0(success) in all cases.

Done using returnvar.cocci script.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
Changes in v2:
        - Give a better reason for the modification

 drivers/staging/ks7010/ks_wlan_net.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index f1cd90e..d13a06b 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -3507,12 +3507,11 @@ int ks_wlan_net_stop(struct net_device *dev)
 {
 	struct ks_wlan_private *priv = netdev_priv(dev);
 
-	int ret = 0;
 	priv->device_open_status = 0;
 	del_timer_sync(&update_phyinfo_timer);
 
 	if (netif_running(dev))
 		netif_stop_queue(dev);
 
-	return ret;
+	return 0;
 }
-- 
2.7.4



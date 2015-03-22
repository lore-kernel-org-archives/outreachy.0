X-GM-THRID: 9631255494656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,864458b6258c58d3
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.40.81 with SMTP id v17mr10831653lbk.5.1427050216504;
        Sun, 22 Mar 2015 11:50:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.84.195 with SMTP id b3ls667603wiz.9.gmail; Sun, 22 Mar
 2015 11:50:16 -0700 (PDT)
X-Received: by 10.180.23.229 with SMTP id p5mr188399wif.2.1427050216165;
        Sun, 22 Mar 2015 11:50:16 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id cl5si308778wib.3.2015.03.22.11.50.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 11:50:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgbcc7 with SMTP id cc7so129580196wgb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 11:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=No2WqwiGxjGQio87e+Xf1whikXWehlvvlVWGaqFFB+8=;
        b=LIfW5KC52RXo5BsCXyl04RmFSFabFJlSDGqyiIEElhQW7X5NWeUt5SQB261iUUllnj
         xotb7stXx349+bGCEenWuRcpVx4RvmI+hPVaj2JpyDQJnbuGKMsmsU8dR/qnWKJYdyLV
         IXpROCJhYf4+ERoxjO/hUDwQ6KSpmlOJBl7eJ2lAnjOo/wkz4Lt+nJdJHTyattqOd+2f
         fqbGqk83FXF6HAgjY5xMvWTNZcMM2+rFhJdzYGiQwCx/7iX4D++LDrIvVEIJNg3hQe4O
         Az6RZaVyoocCH408H3W1tOyasxk1BwXMs/bkppKwQslE274AmpG8pAnbxJSphLWVQJMh
         iDcA==
X-Received: by 10.180.77.166 with SMTP id t6mr13539658wiw.52.1427050216108;
        Sun, 22 Mar 2015 11:50:16 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id jy7sm7706550wid.22.2015.03.22.11.50.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 11:50:15 -0700 (PDT)
Date: Sun, 22 Mar 2015 20:49:28 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: rtl8192u: Make function prototypes static
Message-ID: <16f4c3e34f8137dbc3ca13ea84eea15cc41c6d34.1427048210.git.cristina.opriceana@gmail.com>
References: <cover.1427048210.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427048210.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Make functions static since they are used locally and no other files
refer them.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index f609656..9b31cd0 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -409,8 +409,8 @@ inline void force_pci_posting(struct net_device *dev)
 
 static struct net_device_stats *rtl8192_stats(struct net_device *dev);
 void rtl8192_commit(struct net_device *dev);
-void rtl8192_restart(struct work_struct *work);
-void watch_dog_timer_callback(unsigned long data);
+static void rtl8192_restart(struct work_struct *work);
+static void watch_dog_timer_callback(unsigned long data);
 
 /****************************************************************************
  *   -----------------------------PROCFS STUFF-------------------------
@@ -1763,7 +1763,7 @@ void rtl8192_usb_deleteendpoints(struct net_device *dev)
 }
 #endif
 
-extern void rtl8192_update_ratr_table(struct net_device *dev);
+static void rtl8192_update_ratr_table(struct net_device *dev);
 static void rtl8192_link_change(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
@@ -2243,9 +2243,9 @@ static void rtl8192_init_priv_lock(struct r8192_priv *priv)
 	mutex_init(&priv->mutex);
 }
 
-extern  void    rtl819x_watchdog_wqcallback(struct work_struct *work);
+static void rtl819x_watchdog_wqcallback(struct work_struct *work);
 
-void rtl8192_irq_rx_tasklet(struct r8192_priv *priv);
+static void rtl8192_irq_rx_tasklet(struct r8192_priv *priv);
 //init tasklet and wait_queue here. only 2.6 above kernel is considered
 #define DRV_NAME "wlan0"
 static void rtl8192_init_priv_task(struct net_device *dev)
@@ -3017,9 +3017,9 @@ static RESET_TYPE rtl819x_ifcheck_resetornot(struct net_device *dev)
 
 }
 
-void rtl8192_cancel_deferred_work(struct r8192_priv *priv);
-int _rtl8192_up(struct net_device *dev);
-int rtl8192_close(struct net_device *dev);
+static void rtl8192_cancel_deferred_work(struct r8192_priv *priv);
+static int _rtl8192_up(struct net_device *dev);
+static int rtl8192_close(struct net_device *dev);
 
 
 
-- 
1.9.1



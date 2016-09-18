X-GM-THRID: 6331768808573763584
X-Received: by 10.157.37.234 with SMTP id q97mr13002070ota.1.1474229807902;
        Sun, 18 Sep 2016 13:16:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.143 with SMTP id c15ls2011007ioj.19.gmail; Sun, 18 Sep
 2016 13:16:47 -0700 (PDT)
X-Received: by 10.66.79.199 with SMTP id l7mr1631770pax.42.1474229807287;
        Sun, 18 Sep 2016 13:16:47 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si4122461pab.2.2016.09.18.13.16.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 13:16:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id vz6so5956029pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 13:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8DhrPztXoZ7w2uhUq4rTjmq6W9HrK+Nlp6fyJNrfJFw=;
        b=WpyyUOM2lTLRoDkRk1FiGFePcpk3nOwHS9NaUkzwU+/0PwhyTXLY+PgV4/RtPy/XpK
         aAYEnCaCsQRm/cSDrmsi351kjAgYAwrnfRG5VMkr3Mi2v/AP9+Qvdckm36xo0Efw9DcX
         3dW+MT6+dIUAwHN+UKABWfhoqDr3xKcNiJQ4imG8P2zTzx6fN9mFv60G3ueMvgL2nBph
         RdcvV1dL7i+sAGyhdHKcxsAdcvpMvsXTCkTZk51Wfgl3aOKdnNIH7ILNCZqYkzuUanU7
         lqApcmG9GxaL7HRQgFMI+vRfDhzU5TwEDiduF6SrWYrQghHiUe3f+o1HhGaFjGjHXpNE
         +srA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8DhrPztXoZ7w2uhUq4rTjmq6W9HrK+Nlp6fyJNrfJFw=;
        b=SpZEDMushlv1uAYRcYOPZm5gXF8vB3hOG+wHdmPrNTns2CY8TGcuF8WR2rz53lwn6l
         kIGOFsQOq0V4GetHzuGc53Y1Q+CwKO0/gduGYYng8qnKNKzw0JS/TTGMpkER9pzTDC4b
         bLueTmQPbMOyMFk2Ms3oEkws6AR2DEizdhyHgXd1NMR2Ofqtr0q1zeCbrK8yD58g8TWK
         vkeoNW4gMj+9U8lIn43FSiyASxXsyoEMaOljlc6XkTdvCPcfgHoeJwpV5xNydftijDdJ
         gbl6SkeyFcd6wYm7P/0qdZbCS8jv5ixXuwFnJ/Sy/xk/2wkWD9jXxMD4q4vXjuzmeK3C
         PsOQ==
X-Gm-Message-State: AE9vXwNTOmOlD0cbdvuIaL71MCoSwwucsprLoCnU1WAtUBCfgp1XfVhnShFrB6cIE3fjBA==
X-Received: by 10.66.233.169 with SMTP id tx9mr522008pac.7.1474229807120;
        Sun, 18 Sep 2016 13:16:47 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.203.123])
        by smtp.gmail.com with ESMTPSA id mk9sm26069403pab.1.2016.09.18.13.16.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 13:16:46 -0700 (PDT)
Date: Mon, 19 Sep 2016 01:46:34 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: ks7010: Remove unnecessary variable used to store
 return value
Message-ID: <20160918201634.GA28903@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes an unnecessary variable used to store return values in order
to reduce memory usage.
Done using coccinelle:
@@
type T;
constant C;
identifier ret;
@@
- T ret = C;
... when != ret
return
- ret
+ C
;

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 8e33a43..2969feb 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -100,8 +100,6 @@ static void ks_wlan_hw_wakeup_task(struct work_struct *work)
 static
 int ks_wlan_do_power_save(struct ks_wlan_private *priv)
 {
-	int rc = 0;
-
 	DPRINTK(4, "psstatus.status=%d\n", atomic_read(&priv->psstatus.status));
 
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
@@ -109,7 +107,7 @@ int ks_wlan_do_power_save(struct ks_wlan_private *priv)
 	} else {
 		priv->dev_state = DEVICE_STATE_READY;
 	}
-	return rc;
+	return 0;
 }
 
 static
@@ -221,7 +219,6 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 {
 	unsigned char *bp;
 	int bsize, offset;
-	int rc = 0;
 
 	DPRINTK(3, "\n");
 	memset(ap, 0, sizeof(struct local_ap_t));
@@ -319,7 +316,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 		bp += (*(bp + 1) + 2);	/* pointer update */
 	}
 
-	return rc;
+	return 0;
 }
 
 static
@@ -2704,7 +2701,6 @@ void hostif_sme_enqueue(struct ks_wlan_private *priv, unsigned short event)
 
 int hostif_init(struct ks_wlan_private *priv)
 {
-	int rc = 0;
 	int i;
 
 	DPRINTK(3, "\n");
@@ -2754,7 +2750,7 @@ int hostif_init(struct ks_wlan_private *priv)
 
 	tasklet_init(&priv->sme_task, hostif_sme_task, (unsigned long)priv);
 
-	return rc;
+	return 0;
 }
 
 void hostif_exit(struct ks_wlan_private *priv)
-- 
2.7.4



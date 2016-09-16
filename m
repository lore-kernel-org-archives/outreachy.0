X-GM-THRID: 6330925606572654592
X-Received: by 10.36.133.2 with SMTP id r2mr6300916itd.13.1474033851847;
        Fri, 16 Sep 2016 06:50:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls6003251otc.12.gmail; Fri, 16 Sep
 2016 06:50:51 -0700 (PDT)
X-Received: by 10.129.21.214 with SMTP id 205mr111617ywv.164.1474033851361;
        Fri, 16 Sep 2016 06:50:51 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id z4si2605193pam.0.2016.09.16.06.50.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:50:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id oz2so3505980pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 06:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=T0RjtjUrK68foa5H0zlIfUhyvRwXW429TN/C6woQi+w=;
        b=YnOjbC4Nh5/HWeOGmoVua1E87npVeTs/FIaJbJZuognsEPXZ0n9Y6TtGJ2eSHd7Wqr
         fQxKdGJUT9A5p73FxsNpxwQt5sHhFQpNnFci4CiPANIXfIPvduuTZeId5rybP3c10fj5
         wp/VJe6SdHgBzrEpSxluVxoa5QPW0mQaOTZXHCpeMCUc1Q13aP0TXmJsDKs3/NIX6yoV
         n3boA9gTOBb3gBOx46jp815u79Nz4q+5XBH+hts/e+uyZ2CbigWhfIpfmholk0t535ZV
         KzbMrB+NqpB//KudkEn+uXOGiNbbdn69l2PXKhFjaXAPnYqyTWX66vcayTqlBUNE8XSd
         n/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=T0RjtjUrK68foa5H0zlIfUhyvRwXW429TN/C6woQi+w=;
        b=YCJ1WtWXApqA6W3+zXIF4atIVoJzKyiKqQjEBKgrrFs6zGwLjTYBgcKaLUb3mYgeMg
         SJRCby+HW/Aj/6w32Qi+CtCz9GkkJ4saHce+4F5eDaXbJQIINizHrsqcLaxRi6X4dGFS
         JXEtxCvDSdS/aEBHk9dKf7tMZJ3q/X3IgpTRCyLUByAMa1Z8bgM9GK1HRJ/xi2xHZ/1t
         tVLQQctzC6neuqXyohboNNPiVUtgTNflZ7coKW3F4Xy29RrHBRRbMxR0iFRGhLIXexqY
         dp7GQ8G9zYWJI6t9Oxl9WhMKdKr9tQE9puRPTy7Tt0wnSq8SXXw3ynPsBs2bLZvEYMBc
         abnw==
X-Gm-Message-State: AE9vXwMovygkXjdSnkZWabq9FQpGjjcJcJi6o1d58OzdfOJWNgA0ioKe9vCj428oSpdl0g==
X-Received: by 10.66.144.5 with SMTP id si5mr16885570pab.158.1474033851003;
        Fri, 16 Sep 2016 06:50:51 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id nc13sm12556639pab.43.2016.09.16.06.50.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:50:50 -0700 (PDT)
Date: Fri, 16 Sep 2016 19:20:37 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 4/6] staging: ks7010: Remove unnecessary blank lines
Message-ID: <78d72b736673b2c871b591b694e8cbee35056f93.1474032241.git.karniksayli1995@gmail.com>
References: <cover.1474032241.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474032241.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes unnecessary blank lines as detected by checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v2: Code under comments removed as suggested by Julia.

 drivers/staging/ks7010/ks7010_sdio.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index b0c6f93..bee7504 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -180,8 +180,6 @@ int _ks_wlan_hw_power_save(struct ks_wlan_private *priv)
 
 	if (priv->reg.operation_mode == MODE_INFRASTRUCTURE &&
 	    (priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
-
-		//DPRINTK(1,"psstatus.status=%d\n",atomic_read(&priv->psstatus.status));
 		if (priv->dev_state == DEVICE_STATE_SLEEP) {
 			switch (atomic_read(&priv->psstatus.status)) {
 			case PS_SNOOZE:	/* 4 */
@@ -244,7 +242,6 @@ int _ks_wlan_hw_power_save(struct ks_wlan_private *priv)
 				break;
 			}
 		}
-
 	}
 
 	return rc;
@@ -343,7 +340,6 @@ static void tx_device_task(void *dev)
 						   &priv->ks_wlan_hw.rw_wq, 1);
 				return;
 			}
-
 		}
 		kfree(sp->sendp);	/* allocated memory free */
 		if (sp->complete_handler)	/* TX Complete */
@@ -597,7 +593,6 @@ static void ks_sdio_interrupt(struct sdio_func *func)
 				}
 				complete(&priv->psstatus.wakeup_wait);
 			}
-
 		}
 
 		do {
-- 
2.7.4



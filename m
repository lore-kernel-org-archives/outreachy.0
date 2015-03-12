X-GM-THRID: 7760961863680
X-Received: by 10.180.80.35 with SMTP id o3mr894926wix.0.1426127062621;
        Wed, 11 Mar 2015 19:24:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.72 with SMTP id lm8ls236108lac.3.gmail; Wed, 11 Mar
 2015 19:24:22 -0700 (PDT)
X-Received: by 10.152.4.229 with SMTP id n5mr5916434lan.1.1426127062004;
        Wed, 11 Mar 2015 19:24:22 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id sf8si426871wic.2.2015.03.11.19.24.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 19:24:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wibbs8 with SMTP id bs8so43958985wib.0
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 19:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=okSjVqt6xKufm2adX6BH80/Qk1mYPhTI08bubGh/RPI=;
        b=AM4mNROI7pUxtFdQxV1CsTZdouRzdSfLOFqfTbChBI9wBIj1p+Qv/vP3rUqhhV+chd
         TJh2CsuUWtvSdc7g26NXwTpJwKkw8rFCgVPOqGyRSWfUUBWdAo+RoeaeDHcU3ids4sDL
         2KbONLNGYiN3kHhX5WI/3+5AOAYLfiJ0u2GGN0e2cvSJrc24HnanfEP9hvoXL1JrYwbz
         EixTyzZzlgeDFnXZIkZuWsSizPn2JM3K9jMIXbfp1Qk9oPmJyeW7rh+KWyq8Dd50KvXy
         33w1giB2pwbkOuj0z0nzUEFPTY1OonHg5HRUxIP9QP1L/JbvNWvLpaNEcRmYud5lZO4M
         tKjg==
X-Received: by 10.180.207.200 with SMTP id ly8mr582575wic.58.1426127061913;
        Wed, 11 Mar 2015 19:24:21 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id vv9sm7870497wjc.35.2015.03.11.19.24.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 19:24:21 -0700 (PDT)
Date: Thu, 12 Mar 2015 04:23:42 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: rtl8712: Remove unnecessary variables
Message-ID: <61eb27f3cd4bb009cbbd1c6d4bfd9b89a109fd36.1426126379.git.cristina.opriceana@gmail.com>
References: <cover.1426126379.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426126379.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes unnecessary intermediary variables used in return
lines and replaces them with the actual values.

Found by coccinelle using the following semantic patch:

@@ type T; expression expr; identifier r; @@

-T r = expr;
... when != r
    when strict
-return r;
+return expr;

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c     | 6 ++----
 drivers/staging/rtl8712/rtl871x_recv.c | 3 +--
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index ebfb29e..3cac773 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -128,7 +128,6 @@ static int netdev_close(struct net_device *pnetdev);
 
 static uint loadparam(struct _adapter *padapter, struct  net_device *pnetdev)
 {
-	uint status = _SUCCESS;
 	struct registry_priv  *registry_par = &padapter->registrypriv;
 
 	registry_par->chip_version = (u8)chip_version;
@@ -172,7 +171,7 @@ static uint loadparam(struct _adapter *padapter, struct  net_device *pnetdev)
 	registry_par->low_power = (u8)low_power;
 	registry_par->wifi_test = (u8) wifi_test;
 	r8712_initmac = initmac;
-	return status;
+	return _SUCCESS;
 }
 
 static int r871x_net_set_mac_address(struct net_device *pnetdev, void *p)
@@ -274,7 +273,6 @@ void r8712_stop_drv_timers(struct _adapter *padapter)
 
 static u8 init_default_value(struct _adapter *padapter)
 {
-	u8 ret  = _SUCCESS;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -307,7 +305,7 @@ static u8 init_default_value(struct _adapter *padapter)
 	r8712_init_registrypriv_dev_network(padapter);
 	r8712_update_registrypriv_dev_network(padapter);
 	/*misc.*/
-	return ret;
+	return _SUCCESS;
 }
 
 u8 r8712_init_drv_sw(struct _adapter *padapter)
diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 046a46c..d7f327a 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -221,7 +221,6 @@ union recv_frame *r8712_decryptor(struct _adapter *padapter,
 {
 	struct rx_pkt_attrib *prxattrib = &precv_frame->u.hdr.attrib;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	union recv_frame *return_packet = precv_frame;
 
 	if ((prxattrib->encrypt > 0) && ((prxattrib->bdecrypted == 0) ||
 	   (psecuritypriv->sw_decrypt == true))) {
@@ -242,7 +241,7 @@ union recv_frame *r8712_decryptor(struct _adapter *padapter,
 		}
 	} else if (prxattrib->bdecrypted == 1)
 		psecuritypriv->hw_decrypted = true;
-	return return_packet;
+	return precv_frame;
 }
 /*###set the security information in the recv_frame */
 union recv_frame *r8712_portctrl(struct _adapter *adapter,
-- 
1.9.1



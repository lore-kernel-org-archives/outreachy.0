X-GM-THRID: 7760961863680
X-Received: by 10.180.80.132 with SMTP id r4mr2580895wix.4.1426126998073;
        Wed, 11 Mar 2015 19:23:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.168 with SMTP id j8ls417505wiy.1.gmail; Wed, 11 Mar
 2015 19:23:17 -0700 (PDT)
X-Received: by 10.194.11.70 with SMTP id o6mr5935017wjb.6.1426126997799;
        Wed, 11 Mar 2015 19:23:17 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id el6si976806wib.0.2015.03.11.19.23.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 19:23:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id k14so13234269wgh.7
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 19:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=NTDq6x9u9T8hIc3PRulKViR8u75gNi2KiCBcqmkVtuk=;
        b=CD18JNkkLjJT1aT6iZh2fqrj+e5lYqI4SKt4tulJpQ9N8KYR/SGR18q/ozwugrgLAq
         wtIIxCuHhWVz0uCtBUX5QT7zHm6Nd3BKnNcSOpE9cvpOVS3F6tlTClo6VTL0NVyom4EN
         EjdFdFmBN6T85wED3aPmyXAQ6ihSLDkhBipF1D98LaRdoCqLTDIhxI8PG7yAe1GDPyQg
         aLNUAOqn6mxpnd7082HkWd9GEVVBzNexYXq1tJtOHximx1Z6+qxBDieijmdugdrAvG+3
         53G9BW0c61VQJiB28dpWBMmu3JoE/QVakdi9UIHvSosYlWtYRndbXk8tZIypCLw7QydY
         KHrw==
X-Received: by 10.194.187.236 with SMTP id fv12mr83830652wjc.131.1426126997737;
        Wed, 11 Mar 2015 19:23:17 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id e18sm7881681wjz.27.2015.03.11.19.23.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 19:23:17 -0700 (PDT)
Date: Thu, 12 Mar 2015 04:22:38 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: rtl8192e: Remove unnecessary variables
Message-ID: <3a3deac32978f66c956456ab63fcc5b57c0235b5.1426126379.git.cristina.opriceana@gmail.com>
References: <cover.1426126379.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426126379.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes unnecessary intermediary variables in return lines
and uses actual values.
Found by coccinelle using this semantic patch:

@@ type T; expression expr; identifier r; @@

-T r = expr;
... when != r
    when strict
-return r;
+return expr;

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c | 3 +--
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c        | 3 +--
 drivers/staging/rtl8192e/rtl819x_HTProc.c           | 4 +---
 3 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c
index 2e28744..aada501 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c
@@ -36,7 +36,6 @@ static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
 			     u32 buffer_len)
 {
 	struct r8192_priv *priv = rtllib_priv(dev);
-	bool		    rt_status = true;
 	u16		    frag_threshold;
 	u16		    frag_length, frag_offset = 0;
 	int		    i;
@@ -99,7 +98,7 @@ static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
 
 	write_nic_byte(dev, TPPoll, TPPoll_CQ);
 
-	return rt_status;
+	return true;
 }
 
 static bool CPUcheck_maincodeok_turnonCPU(struct net_device *dev)
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index a603acc..b43571d 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -3059,7 +3059,6 @@ bool NicIFEnableNIC(struct net_device *dev)
 }
 bool NicIFDisableNIC(struct net_device *dev)
 {
-	bool	status = true;
 	struct r8192_priv *priv = rtllib_priv(dev);
 	u8 tmp_state = 0;
 
@@ -3074,7 +3073,7 @@ bool NicIFDisableNIC(struct net_device *dev)
 	priv->ops->stop_adapter(dev, false);
 	RT_TRACE(COMP_PS, "<=========%s()\n", __func__);
 
-	return status;
+	return true;
 }
 
 static int __init rtl8192_pci_module_init(void)
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 165975a..e175825 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -386,9 +386,7 @@ static u8 HTIOTActIsDisableMCS14(struct rtllib_device *ieee, u8 *PeerMacAddr)
 
 static bool HTIOTActIsDisableMCS15(struct rtllib_device *ieee)
 {
-	bool retValue = false;
-
-	return retValue;
+	return false;
 }
 
 static bool HTIOTActIsDisableMCSTwoSpatialStream(struct rtllib_device *ieee)
-- 
1.9.1



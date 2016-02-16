X-GM-THRID: 6251802034906857472
X-Received: by 10.66.246.230 with SMTP id xz6mr20079012pac.29.1455611094286;
        Tue, 16 Feb 2016 00:24:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.162 with SMTP id 34ls1758003iot.4.gmail; Tue, 16 Feb
 2016 00:24:53 -0800 (PST)
X-Received: by 10.50.109.136 with SMTP id hs8mr16457033igb.12.1455611093935;
        Tue, 16 Feb 2016 00:24:53 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id yd9si558718pab.1.2016.02.16.00.24.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 00:24:53 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ho8so100735808pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 00:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=N/1DGvrZIs5z25af5rrYMLo4S1Mm2XkPms/2lKVWSVY=;
        b=kdm2Je8AS2GxRy/S00U1At5JwJQUaVGE5UM5ICDlMPIhuTQNPQRrfQfsgJYBFBI9Dn
         auTFXcAd7WNpypUuAjvzRdRfqt+uMtEvZhUs5CqrTMdItdQHTDpeX0Cw5ZLhHoQkl8sV
         7zQ9hvA/d1emKN1UhqVp4gfduInUQWLt++y1o2SF98UBMPEo1imPLrdEoIUjFKyUt4En
         Kb/MWMSkDpEBiLYjv112+0uA1F0/kGY+srkILMblBJi/M2Ku8mXC9UFyhQ5aV7ZWJd2R
         fAONrf29CPdw3w2IyFSNFawSPeZoov1uaASBoVIopVV6CKQRHHusnbp3lyhsO6tKEtfj
         IDQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=N/1DGvrZIs5z25af5rrYMLo4S1Mm2XkPms/2lKVWSVY=;
        b=j4uG2zW1pvmt/Kw55I2eQWf/mCGutWt6Pf5b0w9WwvusQv+zTbuVgAHGYzIVl5tiO0
         wlaQ1hdgTRTCnbYXwLxTP5fhIMfGADO3XZwCi6En5NrPH3h3CL/Rh+VXD8WDglbZrI3g
         /VVIb1lOMUltHl3HuUce0KUfbeQQnz/cnmGgp/Z50IVEIxS1AzMP0u0184ESAw8KvH1s
         cRR7TK6Zl89HJEi/38f1gdVu40gi0pX38i9QHp2nawoAxm5MXbsNz3XmD3gTuz6qEdGG
         SPBSalOMIAMkeC0ePE2nlORk7dqmNiuuULnVsUgu0cbESb5e8AJiqPDNHiosNA6FgGHW
         S6dQ==
X-Gm-Message-State: AG10YORIVtdKtPqG76lpYGxTkD6MF9GObuJcbT0Vu5NU+ec9ZMhL4RskGm3BGTX9ife6uQ==
X-Received: by 10.66.190.168 with SMTP id gr8mr29406718pac.23.1455611093827;
        Tue, 16 Feb 2016 00:24:53 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.200])
        by smtp.gmail.com with ESMTPSA id ey2sm43771917pab.2.2016.02.16.00.24.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 00:24:53 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v3 1/2] staging: wilc1000: remove trailing whitespace
Date: Tue, 16 Feb 2016 16:24:44 +0800
Message-Id: <ac5a286cac1c5e73348c457e61a20f21dae086c6.1455610768.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455610768.git.eraretuya@gmail.com>
References: <cover.1455610768.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455610768.git.eraretuya@gmail.com>
References: <cover.1455610768.git.eraretuya@gmail.com>

Remove unnecessary whitespaces as pointed out by checkpatch:

ERROR: trailing whitespace

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 2 +-
 drivers/staging/wilc1000/linux_mon.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index d1eedfb..04337c7 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3352,7 +3352,7 @@ static s32 host_int_get_assoc_res_info(struct wilc_vif *vif,
 		PRINT_ER("Failed to send association response config packet\n");
 		return -EINVAL;
 	}
-	
+
 	*pu32RcvdAssocRespInfoLen = wid.size;
 	return result;
 }
diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index 21f35d7..9fcb497 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -302,7 +302,7 @@ struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_devi
 	struct WILC_WFI_mon_priv *priv;
 
 	/*If monitor interface is already initialized, return it*/
-	if (wilc_wfi_mon) 
+	if (wilc_wfi_mon)
 		return wilc_wfi_mon;
 
 	wilc_wfi_mon = alloc_etherdev(sizeof(struct WILC_WFI_mon_priv));
-- 
1.9.1



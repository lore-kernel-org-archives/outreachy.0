X-GM-THRID: 6339051787828330496
X-Received: by 10.107.143.150 with SMTP id r144mr7626785iod.34.1476087197790;
        Mon, 10 Oct 2016 01:13:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.162 with SMTP id 34ls3250599iol.13.gmail; Mon, 10 Oct
 2016 01:13:16 -0700 (PDT)
X-Received: by 10.66.159.65 with SMTP id xa1mr7310719pab.80.1476087196759;
        Mon, 10 Oct 2016 01:13:16 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id p193si947886ywe.6.2016.10.10.01.13.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 01:13:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id z190so6163365qkc.3
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 01:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=P5aWIqAhVNVxYAKkkD/afZCPEGLruYicvvjBt3ovnFM=;
        b=G+e2ttMgJgi4AfMxQAgCAZcBSKhH40hCSgvI8bTnsWrpzUpsB1ax85WsM6zKzxRTCj
         Xo32Wa+15b21f4zO1MyGd6NjH2y2pE5S8zedAmqjWlKkCmh0fCoatGjThNgZH46vll06
         teHv73ViVv1tTR/0981HzZS1TnNf74cVto0hOVdE1aWLOfh6Ix2k9STMK9Lp8ZKI/FPw
         mGGItboESCCjk4bKN3rdSG8GZK+KzKY87dq/iz+opox0zbjZbPk2fQeTE1SsvZvghsgC
         OyRStI2SkhiBoxfQP9QJszGjCECp73gaRb83QAEljN5pDa8kO3s2cgL8P5w5H8RuJKER
         OH5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=P5aWIqAhVNVxYAKkkD/afZCPEGLruYicvvjBt3ovnFM=;
        b=cvKVuexeKM2p89z4Q9089b6gdaUcAm/cAyd88u/3aPXqPMThiEggmj2cZWnI1bNWRG
         Bk3evuhSd71rHTOXN6vqp2GXGlB+5S0w92yk3GvEdbIK84v7N2qs/wqUL/ILc34wuly3
         yhVZ04BhyAuFaB0xwY7pA2CU/9487bV6hroJdWhlW1A+UwdEd65dodsJ4Gd2xqnCD0lx
         PMqxDd2k347U98z9rWrX11flPKaOnHBQoGk4dYJUDN+jZGOhTAJQCxm6/HjuKaq2j7aj
         KmncUgwwCAWlPOf8rHit6dOJrvXEctIXw2cANg8K5CvY82oBOsgYiXYCZlaufJ/fZokY
         1UrA==
X-Gm-Message-State: AA6/9RnEUJQ4PDynAkS9kGxZYHn35RxP0+L4KUhZt7d/M5xc9f1fAHChSEH3/XNRnXCT/Q==
X-Received: by 10.194.28.5 with SMTP id x5mr32146934wjg.63.1476087196176;
        Mon, 10 Oct 2016 01:13:16 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id q8sm38087216wjj.7.2016.10.10.01.13.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 10 Oct 2016 01:13:15 -0700 (PDT)
Date: Mon, 10 Oct 2016 11:13:14 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: wilc1000: Unnecessary 'out of memory' message
Message-ID: <20161010081314.GA8795@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes checkpatch.pl warning in file host_interface.c
WARNING : possible unecessary 'out of memory' message.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Changes in v3:
	- change the description.
	- correct spelling mistakes.
---
 drivers/staging/wilc1000/host_interface.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 78f5613..ff3d267 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1722,10 +1722,8 @@ _WPAPtk_end_case_:
 
 	case PMKSA:
 		pu8keybuf = kmalloc((pstrHostIFkeyAttr->attr.pmkid.numpmkid * PMKSA_KEY_LEN) + 1, GFP_KERNEL);
-		if (!pu8keybuf) {
-			netdev_err(vif->ndev, "No buffer to send PMKSA Key\n");
+		if (!pu8keybuf)
 			return -ENOMEM;
-		}
 
 		pu8keybuf[0] = pstrHostIFkeyAttr->attr.pmkid.numpmkid;
 
@@ -2322,10 +2320,8 @@ static u32 Handle_ListenStateExpired(struct wilc_vif *vif,
 		wid.size = 2;
 		wid.val = kmalloc(wid.size, GFP_KERNEL);
 
-		if (!wid.val) {
-			netdev_err(vif->ndev, "Failed to allocate memory\n");
+		if (!wid.val)
 			return -ENOMEM;
-		}
 
 		wid.val[0] = u8remain_on_chan_flag;
 		wid.val[1] = FALSE_FRMWR_CHANNEL;
-- 
2.7.4



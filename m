X-GM-THRID: 9490543935488
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8bbd6d04c601b280
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.216.225 with SMTP id ot1mr5671075pbc.1.1426985696545;
        Sat, 21 Mar 2015 17:54:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.47 with SMTP id a44ls2160443qge.83.gmail; Sat, 21 Mar
 2015 17:54:56 -0700 (PDT)
X-Received: by 10.236.36.39 with SMTP id v27mr95849521yha.24.1426985696352;
        Sat, 21 Mar 2015 17:54:56 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pc4si1341322pac.0.2015.03.21.17.54.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:54:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id cy3so149632994pad.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=QjmgRNbY5L7aakMw0Ptd6WfxMMNVP3rZ6ORNNHAui+M=;
        b=e9FwsAfFppnpEGQd3elmUZrJFKz44oSJtgXeFVYsOPkpJhM6bA29Q0g5343Pikg1ax
         99nTuueN8jQEYpwuo5+TfhdfC0RwvVHSaNfZjiXl+n1M278/UkY0RslHN4wc2yC3yRMH
         zmBBo2ZW3vrRqAXjx4ES+4FHguEb/WVmPdVJrfbgKRq5od6yJXUo00EKHsIyoD3/PPbq
         r4fQnRKm3HNTXlWwVtV2PR5FGa+QD+nCrebJnfiTn/fqTOa45LqEA7rkqPmYNxieJryF
         xY4vmyujIIiAmtZAhwYPGFM1XsTd7nmodln7ob6L0tGapFINlmWGNZeG+KWJHLr3pNM5
         J3dQ==
X-Received: by 10.70.64.193 with SMTP id q1mr137706279pds.94.1426985696247;
        Sat, 21 Mar 2015 17:54:56 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id mi9sm12733930pab.3.2015.03.21.17.54.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 17:54:55 -0700 (PDT)
Date: Sun, 22 Mar 2015 06:22:54 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 10/10] Staging: rtl8712: Fix incorrect assignment type in
 rtl871x_mlme.c
Message-ID: <261a202e9bb9aea62a09d14a42b1050f47b13e27.1426983594.git.vatikaharlalka@gmail.com>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to fix Sparse warning due to incorrect
assignment in rtl871x_mlme.c

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 2241e94..5d9c295 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1639,30 +1639,30 @@ void r8712_update_registrypriv_dev_network(struct _adapter *adapter)
 	struct security_priv	*psecuritypriv = &adapter->securitypriv;
 	struct wlan_network	*cur_network = &adapter->mlmepriv.cur_network;
 
-	pdev_network->Privacy = cpu_to_le32(psecuritypriv->PrivacyAlgrthm
-					    > 0 ? 1 : 0); /* adhoc no 802.1x */
+	pdev_network->Privacy = psecuritypriv->PrivacyAlgrthm
+					    > 0 ? 1 : 0; /* adhoc no 802.1x */
 	pdev_network->Rssi = 0;
 	switch (pregistrypriv->wireless_mode) {
 	case WIRELESS_11B:
-		pdev_network->NetworkTypeInUse = cpu_to_le32(Ndis802_11DS);
+		pdev_network->NetworkTypeInUse = Ndis802_11DS;
 		break;
 	case WIRELESS_11G:
 	case WIRELESS_11BG:
-		pdev_network->NetworkTypeInUse = cpu_to_le32(Ndis802_11OFDM24);
+		pdev_network->NetworkTypeInUse = Ndis802_11OFDM24;
 		break;
 	case WIRELESS_11A:
-		pdev_network->NetworkTypeInUse = cpu_to_le32(Ndis802_11OFDM5);
+		pdev_network->NetworkTypeInUse = Ndis802_11OFDM5;
 		break;
 	default:
 		/* TODO */
 		break;
 	}
-	pdev_network->Configuration.DSConfig = cpu_to_le32(
-					       pregistrypriv->channel);
+	pdev_network->Configuration.DSConfig = pregistrypriv->channel;
+
 	if (cur_network->network.InfrastructureMode == Ndis802_11IBSS)
-		pdev_network->Configuration.ATIMWindow = cpu_to_le32(3);
-	pdev_network->InfrastructureMode = cpu_to_le32(
-				cur_network->network.InfrastructureMode);
+		pdev_network->Configuration.ATIMWindow = 3;
+	pdev_network->InfrastructureMode = 
+				cur_network->network.InfrastructureMode;
 	/* 1. Supported rates
 	 * 2. IE
 	 */
-- 
1.9.1


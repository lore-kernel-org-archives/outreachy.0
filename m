X-GM-THRID: 6256430491232108544
X-Received: by 10.13.230.148 with SMTP id p142mr9744216ywe.45.1456690972578;
        Sun, 28 Feb 2016 12:22:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.13 with SMTP id z13ls1951712qge.36.gmail; Sun, 28 Feb
 2016 12:22:52 -0800 (PST)
X-Received: by 10.13.213.208 with SMTP id x199mr10395175ywd.48.1456690972209;
        Sun, 28 Feb 2016 12:22:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ui7si3208510pab.0.2016.02.28.12.22.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:22:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so7468138pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pT7HCD/IYzTQySxbiKYKWc8euSUR/l7oFUNDew/zeK8=;
        b=09M3DCnp8h7ykmts5drOA+neubLy9uW+O0ulj1Mo6+lXPNE5nvzpj145Bn/2XKX2TJ
         lZ8RIVSOetnCJVrcjqwQkDKza1HjLwliVLiFW2AxJAYsoMDfyka/D3TzHjn1Xck4M2Z8
         TOWTVitvEg+rkk6ciW3gu4Pj42fP+U2I2bO/bfo9rbEPiTWL+x0+Zf3xsKUsEvwWZ34J
         1oY9xE67LEPRlHRERI7sC4ed4V4TrNQak1tqfWHWjYW1U7Blci3B/Rje7yF7rGsU8t9B
         or1dmRfnEtxFEKGOgdpKnvUi5AoBE534U6OvpOehioYFSfexdQbBt1f2UCbfRh+W1mAM
         u25w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pT7HCD/IYzTQySxbiKYKWc8euSUR/l7oFUNDew/zeK8=;
        b=ZEQGMSuQK6986Nc9HfBW3KJyxxZ63OKq6Wb0PfmQdDctU9zz6mUdNPC2iOWX4NULHB
         IdCvQS2qWBQQvTqWr5FiPzYzuCTD2t8vXE8GpOwfwnB+gDySTSeHiOS8wfKZc5L6DPvu
         rx4aAnKKCjhbrugmlU2ysbzMywjcwWKcARNRmBx6wfENihIC5dHfOc1I7zd71O69ERHg
         IV35N0e2Vj9UARdiuJofkF9FSKvstKJj7J3XVAPO+R8KovHFvgRYT7NDAnOdhLwctQqE
         3+HzmVVCkfqdNM7vNCoP3bnwpThhoirqXHJwINqVroS+ECXeWD24/IIsVx5zWjFFXZzb
         g6bQ==
X-Gm-Message-State: AD7BkJKOo4VvoXV7AZSweJRe1HJYbJ59ACUAE3ozKWGVnCarBrPGFJcEjeZVY6cFuNRegg==
X-Received: by 10.66.222.41 with SMTP id qj9mr9318331pac.136.1456690972043;
        Sun, 28 Feb 2016 12:22:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id sm8sm32920832pac.43.2016.02.28.12.22.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 12:22:51 -0800 (PST)
Date: Mon, 29 Feb 2016 01:50:04 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/4] staging: rtl8192e: Remove NULL test before vfree
Message-ID: <20160228202004.GA2378@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

vfree frees the virtually continuous memory area starting at addr.
If addr is NULL, no operation is performed. So NULL test is not needed
before vfree.

This was done using Coccinelle:

@@
expression x;
@@
-if (x != NULL)
    vfree(x);

@@
expression x;
@@

-if (x != NULL) {
   vfree(x);
   x = NULL;
-}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 0b06482..6811702 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -2697,10 +2697,8 @@ static void _rtl92e_pci_disconnect(struct pci_dev *pdev)
 		priv->polling_timer_on = 0;
 		_rtl92e_down(dev, true);
 		rtl92e_dm_deinit(dev);
-		if (priv->pFirmware) {
-			vfree(priv->pFirmware);
-			priv->pFirmware = NULL;
-		}
+		vfree(priv->pFirmware);
+		priv->pFirmware = NULL;
 		destroy_workqueue(priv->priv_wq);
 		_rtl92e_free_rx_ring(dev);
 		for (i = 0; i < MAX_TX_QUEUE_COUNT; i++)
--
2.1.4



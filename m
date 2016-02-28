X-GM-THRID: 6256430491232108544
X-Received: by 10.182.137.193 with SMTP id qk1mr9644805obb.50.1456688738925;
        Sun, 28 Feb 2016 11:45:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.48.232 with SMTP id p8ls1006896obn.1.gmail; Sun, 28 Feb
 2016 11:45:38 -0800 (PST)
X-Received: by 10.182.22.48 with SMTP id a16mr10320577obf.29.1456688738603;
        Sun, 28 Feb 2016 11:45:38 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ui7si3191465pab.0.2016.02.28.11.45.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:45:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id yy13so7432729pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 11:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pT7HCD/IYzTQySxbiKYKWc8euSUR/l7oFUNDew/zeK8=;
        b=HjZsHh92HZGCrlMf/Co8gFJNVR1vnaoLx2ZCDW20BBJ+i6yToRll0S+ZgCKlqtYX8S
         QCe5dgI+HVmhNcOI7L4REmZwJbfpZ94fKFu7IfHd1QQSavcdvw67SPQqvjf+uQn/GPKg
         4Lg121XPA/e8g5vJT1JZBvMxuNWw2MAFlJAuuLFzTXkU2xHEp9ZggVu+5TpSBl5T700z
         TcMQ4rQDJ3o0wwgv6a6j+i2x6iADLiYrFWyVMp6o+jp9LT/9JKO/6hSt/0thlev3ZWRH
         YQY1KVNgBy3FYpcgAmTC8ko+bx6yuyQtW8nc1CFyrfsuy9h3JYQrLzdi79KETR7YFgHw
         h0sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pT7HCD/IYzTQySxbiKYKWc8euSUR/l7oFUNDew/zeK8=;
        b=kIMEPNHe+BHa2S84rBXuUv/a7911VTQcQNrRjFfdaIBdzaZvwK1FqHyCFjJIWT8mWV
         QBvycml+/IYu8STWB+/Eh66E2vHN0FgbIZXa1EeombEORoSUeLgJ1zG88hVTJgMijTT6
         lwmHNvqDI5LEhxsCeZGiGENvkyZit+TwU8j3Qaj9Uk6+u8xNOocY8ZReAvAfArXvvw3g
         OfRxbKxaZCOaYYBRsXtw+wn4iuGdHFBCcBpsbbJXja/ojd1B8vTigu5JVNSnHisqkFvN
         YTYct9r/iriOkW4RPwxNRCr/xDT3+Q5XiZHWaCLnHKGpzj8qkfkhgbIE9T5kspmqpUw/
         xekA==
X-Gm-Message-State: AD7BkJKy6ZZ+SSQwYh8vs29jVLfj/qAHiJvNvShKNLA9DaEwqmJFy701E9yHnEPWz0rPrA==
X-Received: by 10.66.225.177 with SMTP id rl17mr17181968pac.46.1456688738434;
        Sun, 28 Feb 2016 11:45:38 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 79sm32788780pfq.65.2016.02.28.11.45.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 11:45:37 -0800 (PST)
Date: Mon, 29 Feb 2016 01:12:50 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: rtl8192e: Remove NULL test before vfree
Message-ID: <20160228194250.GA1723@Karyakshetra>
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



X-GM-THRID: 6256430491232108544
X-Received: by 10.129.117.11 with SMTP id q11mr9815457ywc.3.1456691633706;
        Sun, 28 Feb 2016 12:33:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.167 with SMTP id p36ls2006909qgd.93.gmail; Sun, 28 Feb
 2016 12:33:53 -0800 (PST)
X-Received: by 10.140.28.71 with SMTP id 65mr27571803qgy.1.1456691633315;
        Sun, 28 Feb 2016 12:33:53 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 12si3221056pfb.1.2016.02.28.12.33.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:33:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id yy13so7474472pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pT7HCD/IYzTQySxbiKYKWc8euSUR/l7oFUNDew/zeK8=;
        b=hUM5r3MF5JTWLJy0lB7uuYo0KGRIX1Yy1u6rha0DceC4dudwJOz7mpaZNUdKibFpGq
         DOL30vXlgnVYqLYl0WdoWawAL6mltiGuH4m4xK2rxATB8/sd/Xv7hys3C2TiAR+YCfU7
         mXM/BcosH8MIFiBwmnWaQWRTiwD3t/+3JENX6nqAHGn2cRH2KLPrCXZtA1CrV4SXuP1c
         d01cU9vKYCMwdRJ6IVjIYYjyO8Brwr+zMaHHvArHyDC5DnQ4BGsHWGkjwJDO3Kd2faGh
         d/AlUm8C/xBlAjCOF+hCOOh1DicQW+tExAFWD/woEFignhoadZcn7NfsDr3KVEkROJu9
         yJZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pT7HCD/IYzTQySxbiKYKWc8euSUR/l7oFUNDew/zeK8=;
        b=N9c03CJBnmbho/3XhwnfUfTbJgCmsXSUxJ++T+dW1txmvZuYnhaiqvq20jK1ZeZG+o
         H103tlr3NlKZsdnEArmZjz65KJwT5yhT8seycduU3iLuDL78vST2aI15jcov+r0ZfcdW
         k58DzhBBKK+3v2eLaOtONZ95yQuiJSiaoWs/xvVlX1LVnxDAEauiFd42fL5tUqzWrD8s
         nerJgNP/H3JI1uv7egzIAeLicakQgZ82hncaHgmLQr1JrOPMr4IcMO9trgOBfLndYfto
         KuyrQJvaLSvZ0DdzZ07xzNsPUjO7Fr0P7+yf6+arijqi7AtUAymIdv94W8GvgWkLFrDA
         icaw==
X-Gm-Message-State: AD7BkJKde2I0vRQnuw9ZqcVxMzmwuC/t0jR7cBOOgzRKbIsZRfNXu3fVOGxlKsE4G6zErw==
X-Received: by 10.66.147.164 with SMTP id tl4mr16952717pab.40.1456691633164;
        Sun, 28 Feb 2016 12:33:53 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 3sm32878413pfn.59.2016.02.28.12.33.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 12:33:52 -0800 (PST)
Date: Mon, 29 Feb 2016 02:01:02 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/4] staging: rtl8192e: Remove NULL test before vfree
Message-ID: <20160228203102.GA2645@Karyakshetra>
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



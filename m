X-GM-THRID: 6342438450471370752
X-Received: by 10.157.8.170 with SMTP id 39mr1680097otf.63.1476714026475;
        Mon, 17 Oct 2016 07:20:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.4 with SMTP id y4ls4816162iod.48.gmail; Mon, 17 Oct
 2016 07:20:22 -0700 (PDT)
X-Received: by 10.107.51.210 with SMTP id z201mr7128372ioz.54.1476714022146;
        Mon, 17 Oct 2016 07:20:22 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id p131si5131307vkf.1.2016.10.17.07.20.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 07:20:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id l131so24056469lfl.0
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 07:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Mip3qJn1OedoLP0hgJVYiEGulkw5Oe6EVWBduCzgK1Y=;
        b=RnqTqqsRZue7RG4DpSPrj+jA7afgbAeQvnhXJEsO6ajUBMH/fGEnpWHLaGLESfai+w
         K4rQMwOxrlBSUJY5kyWHgwlK0f2sXCsZ2oZv1VKIlo2OiJTMHGcLvRA1kgPSPxJoMhsX
         a5z91E/wI6Vbbj1gWAroqNaFj/8U+5eBteQjthUWLx6tZQItpt4tGw/QTlvywCg+XQBb
         tptsN0FEo+Jmk/znV3Vy1FoXIZ5WtqBq3NQteQNNS6OZTE7ROvPZkl0GrFHmACCu12S5
         JmxYAJT6/xPXPbaS9H0GiYrAyFC7lIljdNgwcgi6sAiBnUMGHv7uEjbi8CmferH2fvK9
         t1CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Mip3qJn1OedoLP0hgJVYiEGulkw5Oe6EVWBduCzgK1Y=;
        b=VmlLwYTtxdBM4KRepZkqaeOSIE9VJVHFAys+wSMWqfiF+HQrO0cEhKdMVozHLpkDjm
         qV3XElPjvOKnJHgVobJM4EHfOsgM816SqiAlWER6yKkVTpU+Lkvp9ODJidlaqO2V9Zsz
         5E0DYsYVnPkH1p0x5MqoY+etME2Y+N32r1olVkXtThQiz6nBx219HNklS1M0NKgKGkGo
         O/2PSn4yqTmng8mbcVMzMjOBwFW6rl7wKjoXTYyI2B7h9tqiX0AyTXbVh5H6ujvfxqu0
         m5ZTUESSBXPFXfSDIZ+D+l32SHrBrHgJH/z63XWW7+Bw3iT2Wh/0cz3tEgZar/mEkrRi
         g4XQ==
X-Gm-Message-State: AA6/9Rk2zRslPhLWn7D1GS3eh1npj+Yz6q79huw74SEqxxlsRM9qWBrwUiACKVnypxE3wA==
X-Received: by 10.28.87.85 with SMTP id l82mr7950785wmb.99.1476714020511;
        Mon, 17 Oct 2016 07:20:20 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id ma5sm53405847wjb.47.2016.10.17.07.20.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 17 Oct 2016 07:20:19 -0700 (PDT)
Date: Mon, 17 Oct 2016 17:20:18 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: android: ion: Make a read-only structure
Message-ID: <20161017142018.GA6427@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch add const qualifier at the declaration of the structure.
The structure become a read-only data, this increase the security.

Found with Coccinelle:
@r disable optional_qualifier@
identifier s,i;
@@
* static struct s i ={...};

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/android/ion/ion_dummy_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ion/ion_dummy_driver.c b/drivers/staging/android/ion/ion_dummy_driver.c
index b23f2c7..cf5c010 100644
--- a/drivers/staging/android/ion/ion_dummy_driver.c
+++ b/drivers/staging/android/ion/ion_dummy_driver.c
@@ -58,7 +58,7 @@ static struct ion_platform_heap dummy_heaps[] = {
 		},
 };
 
-static struct ion_platform_data dummy_ion_pdata = {
+static const struct ion_platform_data dummy_ion_pdata = {
 	.nr = ARRAY_SIZE(dummy_heaps),
 	.heaps = dummy_heaps,
 };
-- 
2.7.4



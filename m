X-GM-THRID: 6806960507457634304
X-Received: by 2002:a63:c44b:: with SMTP id m11mr1400413pgg.313.1584868996204;
        Sun, 22 Mar 2020 02:23:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:de4b:: with SMTP id y11ls5924423pgi.2.gmail; Sun, 22 Mar
 2020 02:23:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuILND2zafcBKRfQDwCLZyuITYKlA8OLioO8Do7HNdBoyTu3B8J7P4D24O3D89Wb/Tx7tfv
X-Received: by 2002:aa7:8659:: with SMTP id a25mr18696179pfo.95.1584868994799;
        Sun, 22 Mar 2020 02:23:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584868994; cv=none;
        d=google.com; s=arc-20160816;
        b=TVTR7qQNwA7Y5SZpWB03zP87LQrFJYopkronZsFvknfyHus3dj8tBUbF7B3AclYiug
         d5Tn2saeBHHzRMvXgRn71KRi3199OFs7/5ofiFZvhgKLEvwJaoCXARY9tB3R66objWVh
         wPF1YcC9yukR3oIZAEcfP7tkMb+GXtkGqxum8kGJMCIpD40JsP6b9OTqs9jGTnLfIUta
         YT7iXi7isaREZnH38eXbIv4B+PegFJPHjv4VraPQgnn3+bXsA91V3O+jptQp34Hv7/Ol
         Vm9CyxLwIZF1f0MllBiQvtEAd+BFxxrEr2FhK9BFh+hU0ilEKPgR0KnPg5pxXDgdy9xg
         qIdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Y2Cpzw4E1MH/apRZiYWRudyXyqXaavHR/FmSYKlPnKY=;
        b=j3y7aYJexwmL3B1AlwXoqhr6VTbsqoLOHTTYRhSmdCnrgahlEjdlsld9TLTv+/nSIY
         2I04p2Nohplnmlh3FF7qNQL/CHrdI9A2e/Lnvg6u0mBN5fUKgLOmqs+mCfIHdXFytFvk
         X+Mxh0s6JZxNy8GKQbBD1la/2AUYKC+RSSenrWedX014vZtyAD77IzL/DxtORb/f/p+M
         uOTTxtzLrzAoalp0j+GUsa5PeTttagc2vIsxIZJdNTvJkT9I127F5HorExc2LaR0V5qC
         o76Ljl+fPbRQwIYjZvJ95ignrrIBlZJmuWMcDaJQ1v/Spl9eQAtCLS14TUafAKWD1qTk
         +Tlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ibuy+ubV;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id bt7si548471pjb.2.2020.03.22.02.23.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 02:23:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ibuy+ubV;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id e9so3177170oii.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 02:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y2Cpzw4E1MH/apRZiYWRudyXyqXaavHR/FmSYKlPnKY=;
        b=Ibuy+ubVA2CVcrbPJvsQrC1fRR62x2DqzOpX0d2eshUp/quaABfC1TH/hgxFFG6Wx7
         QdaEazKdUdGwDSYnZ3rBIHMTyVfagmHXs2oyeq07akmRK+cNsI/1WJA8w8eKXVLCpQqm
         p+gxA5mWusTwmt/3IeG7QRB7Fn8m+RaWdfqqoEyQkCph5ZmnCLsXqaGMwLEmxPhi36Ap
         CkJWjmNGHipOBxYYRaCJRKffXEOoMwg+2ycrub/LbFNP2Ia/1J8KMwyxyT0BSCJzWglg
         O8sYQplfT02vYidaK8oYvZl9geWd18FnNYYgjyj+Uwks/9zEEb5/6iRtu4z6ZihMneyX
         BY/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y2Cpzw4E1MH/apRZiYWRudyXyqXaavHR/FmSYKlPnKY=;
        b=ly5h+JIzhDaVTMy1YiUMhlJ5VEujlqLuEMu/3qG2C/bi1z2R4XXgmvkdiEeTn9r1dr
         mshv2qkxLEgPiYdhxq4EDDbPSU5UyCI2jxiJmzB607o+PEJpvU7CEMmjBIj741A0nwfz
         Mehd+6S+8rqXjyp3PNRze8szYKqw1JbK4vOxGfinR3pfjTczkOuqHDKfFLCi03yx0hwj
         loDcCg796dkPTMecpBIExsx7eFb3z5eQ4qwcyTmnejqKqrF5tDOuxYmQZNoeYcMXZRHY
         qycZPP9H2k3ad3QVIwHdH++YIUUUFgvsQMH98Y1X5wglpGB4y3Cdhy+RfwmyPM4WUU9p
         anSg==
X-Gm-Message-State: ANhLgQ0Lq7xjquDbhkerGkKh5T8CEYBF5gt7aoxsxPMY+Xbp2uc5iacw
	Uk+LGL5H/z0WC/FjddhjQGzcco2gtHoJog==
X-Received: by 2002:aca:4bc5:: with SMTP id y188mr13419644oia.9.1584868994030;
        Sun, 22 Mar 2020 02:23:14 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id a33sm3836804otb.70.2020.03.22.02.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 02:23:13 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Oscar Carter <oscar.carter@gmx.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH] staging: vt6656: remove unneeded variable: ret
Date: Sun, 22 Mar 2020 02:23:03 -0700
Message-Id: <20200322092303.2518033-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unneeded variable ret; replace with 0 for the return value.

Update function documentation (comment) on the return status as
suggested by Julia Lawall <julia.lawall@inria.fr>.

Issue reported by coccinelle (coccicheck).

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/vt6656/card.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..05b57a2489a0 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -716,13 +716,11 @@ int vnt_radio_power_off(struct vnt_private *priv)
  *  Out:
  *      none
  *
- * Return Value: true if success; otherwise false
+ * Return Value: 0
  *
  */
 int vnt_radio_power_on(struct vnt_private *priv)
 {
-	int ret = 0;
-
 	vnt_exit_deep_sleep(priv);
 
 	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
@@ -741,7 +739,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
 
 	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 
-	return ret;
+	return 0;
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.25.1



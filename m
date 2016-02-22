X-GM-THRID: 6253406958213136384
X-Received: by 10.98.33.209 with SMTP id o78mr25276318pfj.6.1456115208652;
        Sun, 21 Feb 2016 20:26:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.248.168 with SMTP id yn8ls626628obc.21.gmail; Sun, 21 Feb
 2016 20:26:48 -0800 (PST)
X-Received: by 10.182.79.134 with SMTP id j6mr25530782obx.4.1456115208165;
        Sun, 21 Feb 2016 20:26:48 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id ui7si2947267pab.0.2016.02.21.20.26.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 20:26:48 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id c10so88470038pfc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 20:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=qWLi6fM7yER6r4Q4sYSQXwhEVpK/dTJpW8el+qt6KFI=;
        b=isIju/FnA9B9xg0CoyV7X+RCgvYBncrwkfnJerfsL+xmd6R+YttjNQ3PtEYlYi2X1L
         h4g7tau9AaJlLf/p3siZdiQ3dEq6kCE1H0AZXhF62kbmZSic2nRukb2mjZ1MSouMcDlc
         hEUcWe03LoogSxirDFkOd7cvav/RiCUHP+Zfv2pp6VQuaBo5ksUznJcMYiCGxePJkp/0
         v/QtoXfmbdUzVcgjVZWnsDNFVCeu2wdHR8egFZzUDw/S4hRswBzxZCIS2IFcdz62ZwRu
         /kSsPvQs7CBKH6mpr3FqQQ+vyOdzsQtdXFnh6zklAcHFz0kWp5M63FiSZX+ZViZzkvXx
         KTXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qWLi6fM7yER6r4Q4sYSQXwhEVpK/dTJpW8el+qt6KFI=;
        b=YxgK3IFl/TI/brWhHQGsZoDV1aObZg1c9QECxfweJV1YiokLEmDrzd6CioFHakm1SR
         YSCdCp0BX5fYptpd8ch/cKui+KRbkxNv8eXNFIl+9PwbQPcd59JsW6IqD0DIiBAxJPGb
         WIbNDgVqkqk5LG5ixo9HCJ6UtJYur8EXLH1hEiNAagfSbf6CO1o53I1hCH9sKZnoGntK
         fbXWyOLkEEH3NdP54YAZQpceQqq/84Ah9wk6bnfXhKJ0/kFiERkFMeNDpkbD0Y/ekSkG
         nlC/d4RQ1DolhoTMQtZ/KBOvM+ZR9rKK91c31W6RFxIJtEL6JXciYX94VdAvBcrH+j3z
         B6Bw==
X-Gm-Message-State: AG10YOT84cjV/pnCbV3Mqc4sqzuxWQaODwnyAmmv+A22WbXbzkxbjRPAg+/zme4WiRLJiQ==
X-Received: by 10.98.93.155 with SMTP id n27mr35362513pfj.88.1456115208047;
        Sun, 21 Feb 2016 20:26:48 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id d22sm32891147pfj.32.2016.02.21.20.26.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 20:26:47 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH] staging: wilc1000: Use __packed instead of __attribute__((packed))
Date: Mon, 22 Feb 2016 09:56:39 +0530
Message-Id: <1456115199-5456-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the warning: "__packed is preferred over
__attribute__((packed))" as reported by checkpatch.pl.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/wilc1000/linux_mon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index e550027..284dfb0 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -15,14 +15,14 @@
 struct wilc_wfi_radiotap_hdr {
 	struct ieee80211_radiotap_header hdr;
 	u8 rate;
-} __attribute__((packed));
+} __packed;
 
 struct wilc_wfi_radiotap_cb_hdr {
 	struct ieee80211_radiotap_header hdr;
 	u8 rate;
 	u8 dump;
 	u16 tx_flags;
-} __attribute__((packed));
+} __packed;
 
 static struct net_device *wilc_wfi_mon; /* global monitor netdev */
 
-- 
1.9.1



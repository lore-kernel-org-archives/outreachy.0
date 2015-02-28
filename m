X-GM-THRID: 5146632257536
X-Received: by 10.180.72.44 with SMTP id a12mr1226413wiv.0.1425149280136;
        Sat, 28 Feb 2015 10:48:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.95.7 with SMTP id dg7ls309892wib.45.gmail; Sat, 28 Feb
 2015 10:47:59 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr2812897wjc.7.1425149279860;
        Sat, 28 Feb 2015 10:47:59 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id by11si373248wib.1.2015.02.28.10.47.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 10:47:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl2 with SMTP id l2so26184071wgh.9
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 10:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kqycSWkoPEhes1jcJJOWZc76CgoFkIH1xB6GugR7Oic=;
        b=iBbcqzy1KXV7CKOOEbmA/zSl6ob0egTQ9LJKptdIfajujs4fqpy+I4RY9smkhCufnS
         CdxPk1lQ4TQFd3sqnmicyL3PGSPHoc76FmRC1/B3fnxPw30i6hS/5sXx/hbPZ33HUk4Z
         9zH83wRpx0PfuYJYy7AliIom4MUVbCGlL7KQy+ngilYRLcLPymIEYN8anj9/l+jcP2tY
         7znVS8+3yqvHQvfebIZRjkHeQIjrdU6ypXV34IrxQ59KzmcDDvObNiHZ+t1i9k2DoECy
         Pm+9qSmrzhtGRYy7nIwqYbRQoPslNfjcm9QJ+RXmoCge48K2MnIzDTU3EA//X5W0ISG1
         RYLQ==
X-Received: by 10.180.83.129 with SMTP id q1mr19010216wiy.46.1425149279785;
        Sat, 28 Feb 2015 10:47:59 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id uc18sm8124728wib.0.2015.02.28.10.47.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 10:47:59 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 3/3] Staging: rtl8192e: Fix line over 80 characters
Date: Sat, 28 Feb 2015 19:47:53 +0100
Message-Id: <4ecd3d6393d82eda6177f29b0dbf1b610396ecbd.1425149231.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425149231.git.ksenija.stanojevic@gmail.com>
References: <cover.1425149231.git.ksenija.stanojevic@gmail.com>

This patch fixes line to fit 80 characters.
Issue found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index d5f4bcb..309cda0 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -344,7 +344,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 				if (key_provided)
 					break;
 				lib80211_crypt_delayed_deinit(&ieee->crypt_info,
-							    &ieee->crypt_info.crypt[i]);
+						    &ieee->crypt_info.crypt[i]);
 			}
 		}
 
-- 
1.9.1



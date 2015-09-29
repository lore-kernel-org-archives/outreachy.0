X-GM-THRID: 6199959961900941312
X-Received: by 10.180.210.212 with SMTP id mw20mr3989317wic.3.1443540668774;
        Tue, 29 Sep 2015 08:31:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.188.204 with SMTP id gc12ls819230wic.20.gmail; Tue, 29 Sep
 2015 08:31:08 -0700 (PDT)
X-Received: by 10.194.6.170 with SMTP id c10mr1870961wja.7.1443540668419;
        Tue, 29 Sep 2015 08:31:08 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id bn1si742352wib.0.2015.09.29.08.31.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 08:31:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id fx3so21593446wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 08:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=GIwVLaaF/2RSKqaqwgGIx+FjENGL56qC02TrWsdLYOg=;
        b=hH0HTak64lriAii189HRb2FZ4ByUZjjhZamhjtNDvDhFuiX4HtcKJsDs3jKI18h93w
         pRwlV0B4HOzYF7GrJEzNNN+OqOS2u0j4OVU+pPlyKHEgZeVBJEZF+eKOEbl+Qobrv4io
         YQm5S14rbSw9CTF6+jZTEef9CNdNWlT0LB937tYWTFc+LUu0hwp31g8MD3zd7h8F6tTa
         qEgVmkN5BGtKTOgMrDJcqzPEnZd7Rk5aeKcBpR51/gK8PN/jYzXGDQbRy8iJ3H3ZETcK
         65h8PuJwl3UJ/fII9y0Tz3uTJNox3z4e1yXLH/giH96DAdY1TWN9Yf0HD7rIZ4mSCyQr
         HW8w==
X-Received: by 10.194.236.200 with SMTP id uw8mr27952688wjc.126.1443540668038;
        Tue, 29 Sep 2015 08:31:08 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id c2sm24460636wiy.11.2015.09.29.08.31.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 08:31:07 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [RFC] x86: include: asm: Fix build warning
Date: Tue, 29 Sep 2015 17:30:59 +0200
Message-Id: <1443540659-6900-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fix build warnings:
error: implicit declaration of function ‘olpc_board_at_least’
[-Werror=implicit-function-declaration]

 error: implicit declaration of function ‘olpc_board’
[-Werror=implicit-function-declaration]

in files:
drivers/power/olpc_battery.c
drivers/input/mouse/hgpk.c
drivers/staging/olpc_dcon/olpc_dcon.c
arch/x86/platform/olpc/olpc.c
sound/pci/cs5535audio/cs5535audio_olpc.c
---
Hi,

I know that Greg doesn't accept patches outside staging.
I got some build warnings when working on driver olpc_dcon/olpc_dcon.c
and I'm sending this patch here for a review, bc I'm not sure if it's good.

Thanks,
Ksenija
 arch/x86/include/asm/olpc.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/x86/include/asm/olpc.h b/arch/x86/include/asm/olpc.h
index 72f9adf6..7245efd 100644
--- a/arch/x86/include/asm/olpc.h
+++ b/arch/x86/include/asm/olpc.h
@@ -72,6 +72,11 @@ extern int olpc_ec_sci_query(u16 *sci_value);
 
 #else
 
+static inline uint32_t olpc_board(uint8_t id)
+{
+	return 0;
+}
+
 static inline int machine_is_olpc(void)
 {
 	return 0;
@@ -82,6 +87,11 @@ static inline int olpc_has_dcon(void)
 	return 0;
 }
 
+static inline int olpc_board_at_least(uint32_t rev)
+{
+	return -ENODEV;
+}
+
 static inline void olpc_ec_wakeup_set(u16 value) { }
 static inline void olpc_ec_wakeup_clear(u16 value) { }
 
-- 
1.9.1



X-GM-THRID: 6471910913633943552
X-Received: by 10.99.179.66 with SMTP id x2mr1088665pgt.129.1506866850750;
        Sun, 01 Oct 2017 07:07:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.3.204 with SMTP id 195ls2414600pgd.14.gmail; Sun, 01 Oct
 2017 07:07:29 -0700 (PDT)
X-Received: by 10.99.109.139 with SMTP id i133mr1178263pgc.89.1506866849551;
        Sun, 01 Oct 2017 07:07:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506866849; cv=none;
        d=google.com; s=arc-20160816;
        b=m4KUu2iwM0k8lvoQN6om8T65RJHAJ7x9pwZnCM1oC0mPIQ0UfxGSSXFZpl2joL2whH
         IucA3owQwcQpykFM3TAxcZd7TCqbYff/vEewb+LVn4dcDTTRa9Tp8zRuBH3iYSYb/UH6
         ts2Q5guKppBbNMpqRy2GjYRSyhgVQvLga80HkjK/ESk8lA9OkNp71wdi9T1/eX34nbAy
         W3ElF7pnqpbilJvJMYs5a+Su4brLyrTwnvxpXOC+nLw4rS9vnJjLHkTYXZ7b9SZ75dKz
         r5KtY0EYeUUR6z0NQd4bSWZKOlv62BsYLmTgCIBxv0NNA2DDHIxrzLF0qQuyYAW5Jdwc
         maYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=U13fjYjsP0AYfitWRQ6ydzj6ss6kpUx4i0SnIzGkfAE=;
        b=f5bIbtjj7/dfskRI95sYi/uKDUr7dIidZKVrTorioE3a6iK+D7TKNNkERiVPVlCJBX
         g7AosJUNL9XrAioN6MZQD1Al9KZoflhK7u5Eq9wGBFS4ojN7JuEWg6K0G1vtz2CRzRS4
         l+E8bJd3RwuEFvSbOYCOefgq8HX20o2tMF0vgjXFiXzSACRsthDLP/nwX7Cj5y46Nr3E
         YTifzUqLi3w47mvgqfItscAkGDGljuXVTTK5+IJHKI8t2+/eEaQpwg8+1ls/3jITitjE
         dXgAGq9fQ+XBMovMWGMH1St5chxdkPbsLl4IZjXp0gTa6XbMV/sYko2Jlq2jiwdmSqYi
         LvTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g+Zyf123;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 82si840799pfz.6.2017.10.01.07.07.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 07:07:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g+Zyf123;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id y192so3317743pgd.5
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 07:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=U13fjYjsP0AYfitWRQ6ydzj6ss6kpUx4i0SnIzGkfAE=;
        b=g+Zyf1231kU6SJ0wVesjt0Kee0LTIAgaH0bbCeMA1mcygBzVSPsXafu/C9pKKZI/jX
         fdGAEgxWjNQQwNgS2hzKANyUmkG6oFeFy8W23LM7jMaYHSGO/B7BXeduPDqzJVvblYBu
         VGG9VjJDBmOY2unaUNphtKIgcpTtkLLfL+yDhcolgj1GQMLnDhcyqkYPDelTmpHEel1x
         WL215Egy+ATW9nJb8lqsIJ7PQXjYg7dq2P8Xp3LHm96524SL93X+8BCAiQPEDqTz2FZg
         pUyjrSKNwmpOGU8224Feb/NA3b27P+zBdQeiUynxL818y4O8eVYdlmMo4QtMBjOZglT+
         ORdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=U13fjYjsP0AYfitWRQ6ydzj6ss6kpUx4i0SnIzGkfAE=;
        b=FjmupODSWcWuMQLyxnp8pHaUHGW1C4A6d1GUPnDrjCeqiyoYMrlR0roOKKXnIlPtCv
         CSR9nTn07XjJTeffhTAzPUAuyhdnPeJ1XGHP8cZhuJIN2utFrNpABBxfSZyEZBrJgCL0
         a4FhI7B4rgfTu31TdLE2TI7xD02m/CLcvnXu6NljSFO3yd0m4WSh61pbZe0Rsgap+sv1
         ljngx2qzhdRbQCoyFMLV8rgNuPjiCpSFULj5yjvTy0k0vkjnSyvbDq4dSIpMWdIIiTWR
         Lxfb1WXXHpL5UrbfBucolyazORfn6eCRjCNf7I1Hky6cF7uFynhK3c2R+A22cE6XOCpn
         pPWA==
X-Gm-Message-State: AHPjjUjMvEPdEbapc7xsABjyQUzn9SGTqGDgwx4pMa7Lb2o9EVas69kC
	GAo5LFI1iWQEtIHV2JsbcslB2cB/
X-Google-Smtp-Source: AOwi7QCLR3ZDd73Q0aQYxP7RRwNoAAw8TSzGgtrK4IJSzkuRYmAQ4xYJxTr1AK+XSKMrxP1WYceP3w==
X-Received: by 10.98.12.134 with SMTP id 6mr12301068pfm.30.1506866849113;
        Sun, 01 Oct 2017 07:07:29 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id q136sm13282601pfq.10.2017.10.01.07.07.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 07:07:28 -0700 (PDT)
Date: Sun, 1 Oct 2017 19:37:23 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: sm750fb: remove typedef for enum
Message-ID: <20171001140723.GA7094@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Using typedef will hide that 'DPMS_t' is enum. Removing this
will make sure that we are actually working with enum. Also is not
a good coding style to use typedef.

changes in v2:
1. Lower case the name and drop the _t which traditionally indicates
typedef
2. make the same change in ddk750_sii164.{c,h}

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/sm750fb/ddk750_power.c  | 2 +-
 drivers/staging/sm750fb/ddk750_power.h  | 7 +++----
 drivers/staging/sm750fb/ddk750_sii164.c | 3 ++-
 drivers/staging/sm750fb/ddk750_sii164.h | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index 222ae1a..6f82ab0 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -2,7 +2,7 @@
 #include "ddk750_reg.h"
 #include "ddk750_power.h"
 
-void ddk750_set_dpms(DPMS_t state)
+void ddk750_set_dpms(enum dpms state)
 {
 	unsigned int value;
 
diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index 44c4fc5..033889f 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -1,20 +1,19 @@
 #ifndef DDK750_POWER_H__
 #define DDK750_POWER_H__
 
-typedef enum _DPMS_t {
+enum dpms {
 	crtDPMS_ON = 0x0,
 	crtDPMS_STANDBY = 0x1,
 	crtDPMS_SUSPEND = 0x2,
 	crtDPMS_OFF = 0x3,
-}
-DPMS_t;
+};
 
 #define setDAC(off) {							\
 	poke32(MISC_CTRL,						\
 	       (peek32(MISC_CTRL) & ~MISC_CTRL_DAC_POWER_OFF) | (off)); \
 }
 
-void ddk750_set_dpms(DPMS_t state);
+void ddk750_set_dpms(enum dpms state);
 void sm750_set_power_mode(unsigned int powerMode);
 void sm750_set_current_gate(unsigned int gate);
 
diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index 0431833..3d68e1d 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -296,7 +296,8 @@ void sii164SetPower(unsigned char powerUp)
  *  sii164SelectHotPlugDetectionMode
  *      This function selects the mode of the hot plug detection.
  */
-static void sii164SelectHotPlugDetectionMode(sii164_hot_plug_mode_t hotPlugMode)
+static
+void sii164SelectHotPlugDetectionMode(enum sii164_hot_plug_mode hotPlugMode)
 {
 	unsigned char detectReg;
 
diff --git a/drivers/staging/sm750fb/ddk750_sii164.h b/drivers/staging/sm750fb/ddk750_sii164.h
index 6968cf5..e06ba72 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.h
+++ b/drivers/staging/sm750fb/ddk750_sii164.h
@@ -4,12 +4,12 @@
 #define USE_DVICHIP
 
 /* Hot Plug detection mode structure */
-typedef enum _sii164_hot_plug_mode_t {
+enum sii164_hot_plug_mode {
 	SII164_HOTPLUG_DISABLE = 0,         /* Disable Hot Plug output bit (always high). */
 	SII164_HOTPLUG_USE_MDI,             /* Use Monitor Detect Interrupt bit. */
 	SII164_HOTPLUG_USE_RSEN,            /* Use Receiver Sense detect bit. */
 	SII164_HOTPLUG_USE_HTPLG            /* Use Hot Plug detect bit. */
-} sii164_hot_plug_mode_t;
+};
 
 
 /* Silicon Image SiI164 chip prototype */
-- 
2.7.4



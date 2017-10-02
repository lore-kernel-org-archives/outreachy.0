X-GM-THRID: 6471910913633943552
X-Received: by 10.101.81.70 with SMTP id g6mr1321113pgq.155.1506912639255;
        Sun, 01 Oct 2017 19:50:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.176.1 with SMTP id h1ls2648025pgf.12.gmail; Sun, 01 Oct
 2017 19:50:38 -0700 (PDT)
X-Received: by 10.98.166.204 with SMTP id r73mr1016828pfl.52.1506912638226;
        Sun, 01 Oct 2017 19:50:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506912638; cv=none;
        d=google.com; s=arc-20160816;
        b=UrHjeV7CEa/w2Uv3gaN03Zz/2I/xj2zykX+1lbO91GNUWof6lnAUfM3vI+vMOW4Lqk
         MUd4jw9FnNK3LtwhANqt2HYp88af1vYRaHcu9PVkGUMTWInWxJhVfV0J0NmhnCCqYsX9
         paaa/+tD75Ft+lqxqqAPhGOiqkbTkrdDvWUAKncgzCffwc04Q10fIXoylpuIAfMBCSrW
         iuuMZ5MfDio+A/lZx+Idu7VajM/FDi5QHRyqQsqDVzIqqOelTUw54MRiOjiIoe4QUc53
         sIJu5+sZC+lvY1zOY7JJKEeGYYpx30vPFXvkSrRf6HJVRFim4QkeDMi/2a5fUbstuyVA
         NFww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=AKEadSS37XI9gCDvsEzHaTwYfu/j0sp1S19fw0bmQ4o=;
        b=evTPOi4/8c994x3Z+K31GBWQ8aWpgkbKwH4Ef4FWvPSowYT16bU0L11Vzy+JiJQSDo
         dM1d7A0Fczy/+ng1QjmR+CDNTKccNaimWrTB3oI3i7ih8I3bwoUn0cD/cKYhX3Tm9iUI
         uLWAXRfBP81sbgRKwhYUVjxmhQ2/JghhVQixrP28WCYUn9yEK2ks1EPezDKPuxbu6c3E
         uGs38LGtR0gQKh83NltHcgm1m5rHXrct/y0FdxV2iqmiKr+BMf60+3+w19WrQ6tNkb4t
         J+AJc9NLvRer15uQiCVuW7BPFxLoeAY6sS3U7Q79Rc6WOzNeKF8LsGG9vH/WAGCuOun9
         T4xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pQ85cTNy;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id o128si896610pfg.22.2017.10.01.19.50.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 19:50:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pQ85cTNy;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id u27so4332413pgn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 19:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AKEadSS37XI9gCDvsEzHaTwYfu/j0sp1S19fw0bmQ4o=;
        b=pQ85cTNyQwmdvZiSyl1YdetRXQuy0ru/JJDTpfTWELo+9pyqlZMRlmE/20RAvdnfpE
         KkEfCpnMLm3GHMjRhxtW3OEif/UD5wTITco87w6Xi51DxGDDDhZ2FXvAQRfhpxRAqC/T
         8oM2xWpDKe0vVdbIgdLZ4oUaGdoiKUnq2+kKdXDHIWDf1/iidmVj+Ld0Qu4On0XNLdeL
         AyhuS1yMtqJRayjKvp+thqxYCuOKDBhIeAfTOZJSFvNzdAXgpq5GyqisPcJRUUPQtdzT
         kR4FENWLKzkcU3QM1398ujpDb3YL/V+D1IVC6SbQMsHlWZqPhfveXYIi9KxjhGuLG+4W
         IKJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AKEadSS37XI9gCDvsEzHaTwYfu/j0sp1S19fw0bmQ4o=;
        b=nAt5B7S8P08ZNjjuj4zZBQ+eZXr5k+u4vwxN/A7ua4cvNIIFIq4CumV4tPfyCu74EW
         w+dwT5il+ROwUo7a+wp4dB9gWVdvVo/uHoClQceLBEo4ir3dCckKzj5/D+SzrhTwA3iY
         t/eMvycXSh9gsTX3l+H3JpyECcjY3wh7XHHNnhPyMO0VMycfGcxBAYjRIHfVQHIz+IPQ
         2+xFYDFLzN3PujShDTCwXlvqkqSJPpWdFTDL27g5H5vnfH0C2nruelam2x/6QgPK8eWE
         BM0eDWET6Vs/XdWEW4WMqzwPEiCAQsr1ED9f/EfoM0VoxNmCxBvGxkR/uaOTRgmRyc/W
         b8zA==
X-Gm-Message-State: AHPjjUjxr2+TEbdWxMT0DWUFc0vTeI+Q3WLBMtqZwpkpfGgYVKCRc/Ll
	JwjFSX3Z7fM9104YEAONkJdif+RY
X-Google-Smtp-Source: AOwi7QAZOANrW7f6YVDk81qSGhNjtocUk8wHhyXbcT2dMT7Fd/M6tIbOvTKxrucrSSyEur7YvXwQYA==
X-Received: by 10.84.133.6 with SMTP id 6mr12693879plf.61.1506912637785;
        Sun, 01 Oct 2017 19:50:37 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id i10sm14141946pgo.71.2017.10.01.19.50.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 19:50:37 -0700 (PDT)
Date: Mon, 2 Oct 2017 08:20:33 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: sm750fb: remove typedef for enum
Message-ID: <20171002025033.GA2772@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Using typedef will hide that 'DPMS_t' is enum. Removing this
will make sure that we are actually working with enum. Also is not
a good coding style to use typedef.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
changes in v3:
edit commit message

changes in v2:
1. Lower case the name and drop the _t which traditionally indicates
typedef
2. make the same change in ddk750_sii164.{c,h}

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



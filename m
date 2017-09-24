X-GM-THRID: 6469264363106598912
X-Received: by 10.46.91.82 with SMTP id p79mr197538ljb.34.1506242985213;
        Sun, 24 Sep 2017 01:49:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.67.148 with SMTP id z20ls1948143lje.0.gmail; Sun, 24 Sep
 2017 01:49:43 -0700 (PDT)
X-Received: by 10.25.201.136 with SMTP id z130mr231286lff.3.1506242983649;
        Sun, 24 Sep 2017 01:49:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506242983; cv=none;
        d=google.com; s=arc-20160816;
        b=0kHDODOHQ62Op7RnA11wGQY35Df62jpI3zxJuPsHMTa+wLobj7Tmccd5HM9pRgEAMb
         KKuRKNzubAA0cfAad6mfx0WkfjE+nLp9d2/SsdOX8rkOt9o5IYn5rdYOaKqrPHcl6RJg
         1qkSHHDu6CewrdmMrQ1XeWCe4wVEfn0KAzYT+F6O19hGYVdkbI1fxa/3GJF1bLgNcF4D
         HAuzPWMQtS4QfoqwC/F+awMs0CfeqFifm9JZQFCUqq9ETTWigCgdczs1AhmAglHsl+KA
         W6H2Zf1VFoMejqkkWnk+MXewfdiFgywLgCLLvlobfga6ccLtCTuRn1D2Psz6nfKSUe8y
         W5AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=x3URuUrGHCWXKPvS5z0nFE6bNa8q599dPPO2dI1MFMk=;
        b=cGep2JS/rxiGI/I0ZsrZ8ku+IzDsH1TygQBewPTZLD9X8LDt0lDkT8eFe2ijP5Sdft
         vZS6n1rUAJDokWe0rVxY4iUJO0prRTL3rcv9CZSzcvX/bN+9oYJZmo1s/HSInYnWrdr8
         ndMA2e5rmjKmG05sIjuMn/0sbPHJcc2Y+87ij73+gROSi/h5lSZcwHjse/uaucfwNnNv
         3pEHpoZuxKJxAzZqOjERcrQOezJKvgS8rwDRqQhJgaq3N6BlMCHVVEOUyl5mFqlT6R9O
         Gguk+929MgdujIO89aRJqqU3rMTzVYd/fxB07zwOibKVbmkCrYE7MXFrkp05X3/5giDT
         xLHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GKJhLHs6;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id l133si302430wmb.3.2017.09.24.01.49.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Sep 2017 01:49:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GKJhLHs6;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id b9so2651218wra.0
        for <outreachy-kernel@googlegroups.com>; Sun, 24 Sep 2017 01:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=x3URuUrGHCWXKPvS5z0nFE6bNa8q599dPPO2dI1MFMk=;
        b=GKJhLHs6E5zVkega/OMN1t+yjgNmKWpVuMRQQXNnqnILpBHI8rBdJyBWRLVLjSe+ei
         dq0nG0AoY8erq6fDsGLytqv/4hVksRce6XYN8pKZjqu+zWh1XgVO921/pVXww53xBZPR
         0aKLSgJrkMZX6Ihr7BsjuXC0N2SGVnO1rj7B6/wwdC8Ll+nlVYYbdjZSKNfWszd50y/7
         y4fq4Ca0XN1AzQI6nHpK21VdsmotTfr/zwMbfmfOZvL+bi9ymtpAkfYH+D4+Sy+JQuHm
         y+SnoGadYixw9VdvvfFwKiM4jVPm8NnICzQ6OX8tEILwJvxBX0kkOf93CrsoMw2iCX//
         ARtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=x3URuUrGHCWXKPvS5z0nFE6bNa8q599dPPO2dI1MFMk=;
        b=cHiGMsvHo92DkFzMSzR7/97inW312HHJi2XCdk0Y/PnceCbqmF/0d44Gw5amC7jzxA
         ou91aickHueXzeKuttx539DZHnu5KyRUox2Ng5phwrxqSLwbvwySfDesNTDoiI2ovl/E
         /y2NrF7hLgfBNW3QyPsNfUd5xbPNPANAV4NPAKVE1JIuqIMr2bcAUF/DGpGcl/FADpzO
         LyVi7lYeE6Npc6YwgsESZ5vOxCYrwIo1W+FajOhYH2sfwK9FPS4IWHuEHowPIfS7uROQ
         iLxdEb9LSo8YxJ5UKr1JR/fTiyBFl7YBsLlegKiCfLtg9iUN/D8ujk03FhnsfayCvPcT
         +cEA==
X-Gm-Message-State: AHPjjUhvqXGY9ogcCpHXMNC6dPpnh4ESZ5MkyXt/4s8QCxmCayuS5YnL
	RF52Au+nlaf38h8AIlBGvJdWyw==
X-Google-Smtp-Source: AOwi7QAHQs3ukI3ck21s41LWbo1TcHpg9E3h+5QmfSEBya9NTWZL2E3U0a4kqs79Bbf7lX20uRhBKw==
X-Received: by 10.223.182.137 with SMTP id j9mr3129807wre.150.1506242983356;
        Sun, 24 Sep 2017 01:49:43 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id 55sm7278455wrw.60.2017.09.24.01.49.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 24 Sep 2017 01:49:42 -0700 (PDT)
Date: Sun, 24 Sep 2017 11:49:41 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: speakup: Use octal permissions '0444'
Message-ID: <20170924084941.GA12556@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixed the following checkpatch warning:

WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal
permissions '0444'.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/speakup/speakup_apollo.c | 2 +-
 drivers/staging/speakup/speakup_audptr.c | 2 +-
 drivers/staging/speakup/speakup_bns.c    | 2 +-
 drivers/staging/speakup/speakup_decext.c | 2 +-
 drivers/staging/speakup/speakup_dectlk.c | 2 +-
 drivers/staging/speakup/speakup_dummy.c  | 2 +-
 drivers/staging/speakup/speakup_ltlk.c   | 2 +-
 drivers/staging/speakup/speakup_spkout.c | 2 +-
 drivers/staging/speakup/speakup_txprt.c  | 2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/speakup/speakup_apollo.c b/drivers/staging/speakup/speakup_apollo.c
index 2edb56c..dcf0c3b 100644
--- a/drivers/staging/speakup/speakup_apollo.c
+++ b/drivers/staging/speakup/speakup_apollo.c
@@ -200,7 +200,7 @@ static void do_catch_up(struct spk_synth *synth)
 }
 
 module_param_named(ser, synth_apollo.ser, int, 0444);
-module_param_named(dev, synth_apollo.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_apollo.dev_name, charp, 0444);
 module_param_named(start, synth_apollo.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
diff --git a/drivers/staging/speakup/speakup_audptr.c b/drivers/staging/speakup/speakup_audptr.c
index 8ae826e..45b5721 100644
--- a/drivers/staging/speakup/speakup_audptr.c
+++ b/drivers/staging/speakup/speakup_audptr.c
@@ -163,7 +163,7 @@ static int synth_probe(struct spk_synth *synth)
 }
 
 module_param_named(ser, synth_audptr.ser, int, 0444);
-module_param_named(dev, synth_audptr.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_audptr.dev_name, charp, 0444);
 module_param_named(start, synth_audptr.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
diff --git a/drivers/staging/speakup/speakup_bns.c b/drivers/staging/speakup/speakup_bns.c
index 60bcf0d..402b0fb 100644
--- a/drivers/staging/speakup/speakup_bns.c
+++ b/drivers/staging/speakup/speakup_bns.c
@@ -120,7 +120,7 @@ static struct spk_synth synth_bns = {
 };
 
 module_param_named(ser, synth_bns.ser, int, 0444);
-module_param_named(dev, synth_bns.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_bns.dev_name, charp, 0444);
 module_param_named(start, synth_bns.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
index 95f4b21..4310c2c 100644
--- a/drivers/staging/speakup/speakup_decext.c
+++ b/drivers/staging/speakup/speakup_decext.c
@@ -227,7 +227,7 @@ static void synth_flush(struct spk_synth *synth)
 }
 
 module_param_named(ser, synth_decext.ser, int, 0444);
-module_param_named(dev, synth_decext.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_decext.dev_name, charp, 0444);
 module_param_named(start, synth_decext.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
diff --git a/drivers/staging/speakup/speakup_dectlk.c b/drivers/staging/speakup/speakup_dectlk.c
index f069954..5d6a861 100644
--- a/drivers/staging/speakup/speakup_dectlk.c
+++ b/drivers/staging/speakup/speakup_dectlk.c
@@ -299,7 +299,7 @@ static void synth_flush(struct spk_synth *synth)
 }
 
 module_param_named(ser, synth_dectlk.ser, int, 0444);
-module_param_named(dev, synth_dectlk.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_dectlk.dev_name, charp, 0444);
 module_param_named(start, synth_dectlk.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
diff --git a/drivers/staging/speakup/speakup_dummy.c b/drivers/staging/speakup/speakup_dummy.c
index 851953d..ea3b291 100644
--- a/drivers/staging/speakup/speakup_dummy.c
+++ b/drivers/staging/speakup/speakup_dummy.c
@@ -122,7 +122,7 @@ static struct spk_synth synth_dummy = {
 };
 
 module_param_named(ser, synth_dummy.ser, int, 0444);
-module_param_named(dev, synth_dummy.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_dummy.dev_name, charp, 0444);
 module_param_named(start, synth_dummy.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
diff --git a/drivers/staging/speakup/speakup_ltlk.c b/drivers/staging/speakup/speakup_ltlk.c
index 423795f..95efaab 100644
--- a/drivers/staging/speakup/speakup_ltlk.c
+++ b/drivers/staging/speakup/speakup_ltlk.c
@@ -167,7 +167,7 @@ static int synth_probe(struct spk_synth *synth)
 }
 
 module_param_named(ser, synth_ltlk.ser, int, 0444);
-module_param_named(dev, synth_ltlk.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_ltlk.dev_name, charp, 0444);
 module_param_named(start, synth_ltlk.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
diff --git a/drivers/staging/speakup/speakup_spkout.c b/drivers/staging/speakup/speakup_spkout.c
index 9ca21ed..1037aa0 100644
--- a/drivers/staging/speakup/speakup_spkout.c
+++ b/drivers/staging/speakup/speakup_spkout.c
@@ -131,7 +131,7 @@ static void synth_flush(struct spk_synth *synth)
 }
 
 module_param_named(ser, synth_spkout.ser, int, 0444);
-module_param_named(dev, synth_spkout.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_spkout.dev_name, charp, 0444);
 module_param_named(start, synth_spkout.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
diff --git a/drivers/staging/speakup/speakup_txprt.c b/drivers/staging/speakup/speakup_txprt.c
index 831ee40..e160034 100644
--- a/drivers/staging/speakup/speakup_txprt.c
+++ b/drivers/staging/speakup/speakup_txprt.c
@@ -119,7 +119,7 @@ static struct spk_synth synth_txprt = {
 };
 
 module_param_named(ser, synth_txprt.ser, int, 0444);
-module_param_named(dev, synth_txprt.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_txprt.dev_name, charp, 0444);
 module_param_named(start, synth_txprt.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
-- 
2.7.4



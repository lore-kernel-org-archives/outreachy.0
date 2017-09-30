X-GM-THRID: 6470854058702798848
X-Received: by 10.84.129.69 with SMTP id 63mr962479plb.40.1506786495871;
        Sat, 30 Sep 2017 08:48:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.232.202 with SMTP id x10ls2894076plm.3.gmail; Sat, 30 Sep
 2017 08:48:14 -0700 (PDT)
X-Received: by 10.99.121.135 with SMTP id u129mr1043139pgc.65.1506786494840;
        Sat, 30 Sep 2017 08:48:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506786494; cv=none;
        d=google.com; s=arc-20160816;
        b=Dg10Piyivmco2k1dOhR7kssVIWXVpQM8tUlKkBJ1a/5kGD8s9A+FhJ55CfU6tq5c7f
         zKlmvgekwAHarQ6UEJ/G5JVVUafVsfnrlIPL2m21fQwtI2PgKvz3GUw4tWQoUOfxWP66
         jVzt7ZyGECIYx1T1obFo+k9HM/RaTuHdvTEf3L7obizropN0oqmVhgA0wXwN3TbN0z+1
         7Su440U9GMmptphrNM5hroKKc93qXjiYcad0pLJ5wKQtsNwAkOuOJmm5qznN87sFkWQf
         //ErkfsHonfZFq7G+LPSZwnNSiucS8h4u+Jz1UO3ExqIiTrwxYtgR/YjlLkZ+AL6qx7Q
         E9tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=hQ7RXjHh8ilZI2WqvPI/j8VlqmqeyMO/IXFfYTkY9/o=;
        b=kOfJXR+NAPjY5kapjoOOOCON4gtpEJWgPGBPH+YkQCFBsEgLx3Yx6WMb9nhEvT44vH
         5LT8NgoihgeHFZKg92mK1IDmBlPjScfOn5m0/GBdejORwytN32Yqg+BYslhiOCS4d+vz
         frn8ORszukW0OsW+QyOJAjt22kuy8jbhd06ex1wyv7BwvrFVAtyiVTsXIjsjI5Uvax12
         59YHzFzKhoLXZT+aNmOEjYS7kWkv7ol4vSVyP+pC9LxGZIpgw/wLLGfQwcxsWCTpjGVJ
         O6IXQUI/QjGLIolHDcF9PyOlZbhZrvWnXTF3/N+N+VDkvRDZYHTfZWtD7usWyjSwUcGc
         hYjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rylWLAgj;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id p73si609641pfk.27.2017.09.30.08.48.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 08:48:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rylWLAgj;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id u136so1743525pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 08:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hQ7RXjHh8ilZI2WqvPI/j8VlqmqeyMO/IXFfYTkY9/o=;
        b=rylWLAgjKNSoeYI+K8syTTxCIzS9OLz8+vvT0GUhhyNRJf01IMb3DNJH0ij/sCHVm2
         EWwLe7LlFtSt7uwyKrGuxI4Oc++CH/VeJVXSuTbeiaknh1k3XF/dEAh+kM2xf3Er+zRI
         yK21myIyRgSbVHXcuq1RnJ07uC9S3CFXtVbMQRBNzztkneT85nNe7d/KOkMrqRrHVQ+b
         ZZXeW402jxImxOr2kBc899AuTxiupMdhlfttE8s0P4ZPYZB8UQ+yA7yO1N782HgS3ZZX
         fazxxcPrG8JZXRwLzXUc+UTaHXqXDS3iDGc9YhaWJLynu9SHBXM52NZEFnyGYB5DXRk5
         M85w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hQ7RXjHh8ilZI2WqvPI/j8VlqmqeyMO/IXFfYTkY9/o=;
        b=d4XpsXzozhGcm3eDZs8QBeZAciQuzMQFrwsB1jUk0dZzyEkmlT5O2bFeOpeCZIY1SO
         ENgEDf6r79u9WTi8xadQSglURkbXqz6Nw9eFyGK31QE7Q9uBQYqCSK49aLhFVcGdSTY0
         3UFTazPjtxPeChX5Z4ZfBS4v0PPyqVCq0KkTEKECl/HeQW6pVnsvvHPAQBoynuACMYOH
         zjEvWD5FEUZS/OlvOSn+XVZn3vSCDeKW74rKEFntWmdfjr9AD0GBbD5RylPehXV8epw6
         5cCTcqIkC8Lo7D45gEiaJAre12sNRraHmKIH8wifynU0B0nRQEpoM/mDup37jTxM145C
         YHAw==
X-Gm-Message-State: AHPjjUhsyZi7cx1UuIjaTRvsOf/ll/VSk0H2FNRhNGFDGwHkwsktS1RR
	kzmypdxytLTNc+/2II2WKb4bJSuO
X-Google-Smtp-Source: AOwi7QDUtbuSOn/409YUKdT1v68FuVBMfgDC1NGrFbjinzrUKVzkhDgMZly0cD30hez9xLsT4Mq3Vg==
X-Received: by 10.84.130.39 with SMTP id 36mr10254853plc.429.1506786494411;
        Sat, 30 Sep 2017 08:48:14 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id b22sm10131134pfh.175.2017.09.30.08.48.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 08:48:13 -0700 (PDT)
Date: Sat, 30 Sep 2017 21:18:09 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: speakup: replace 'S_IRUGO' macro with octal 0444
Message-ID: <20170930154809.GA5525@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Everyone knows what 0444 means. But one has read through docs
to understand the meaning of 'S_IRUGO'.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
v2: make the same change in remaining files too.

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



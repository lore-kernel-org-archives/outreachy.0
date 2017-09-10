X-GM-THRID: 6463500175393423360
X-Received: by 10.202.170.87 with SMTP id t84mr4555717oie.51.1505021743617;
        Sat, 09 Sep 2017 22:35:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.110.141 with SMTP id w135ls3628056itc.18.gmail; Sat, 09 Sep
 2017 22:35:42 -0700 (PDT)
X-Received: by 10.107.152.208 with SMTP id a199mr4421026ioe.104.1505021742905;
        Sat, 09 Sep 2017 22:35:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505021742; cv=none;
        d=google.com; s=arc-20160816;
        b=dc8T5Dut5hqA5MnBM62+UULL7NaNF7BBSHiyGA5VByzidGqMAbaL/6eHja/+kHtkrR
         U6nfkz6NG8xcB/EdfDv4BBD6ygiKE+/uh4pwhEco5ZoPk7ERVjjYGLbkRFcpc2h6d4iH
         ub2KFJLs56O5PwQOhJG5gLXSZ+MnnDn36mByWcI4QWcqEmckNgACxWrpIOyZar91xO0r
         WaFrBDIWnkhfavAP71afWTRmI1SXCKTnwx446lYipEmRR/hPaZuMZBTwUReXDcJQUfJa
         f7hJF3PsZsnxyv66xIBhOP8q63KIQiMuZ1Eb3UjWWsp1Cs/NFVxTXSCR9WqoiF/R8IrN
         ovxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=eLVLL9M2oQYDgCcBry/9dTMxw+UIHC0NKJvRwPrU6to=;
        b=vEo+Wj4mMo9NxfdqLGGhQFeUWu12+SPo16PuvIDsG0ikLdXFnJBMadBOwJCeiOmHnN
         kK6rlhdxVtOgyuOKmahPQ9CuHIkUkhgdeoxuq+aCT8SenBMh2fyPIn6+Zra/EFMbaM65
         ClDN18jcekCuHDn0GGEtA7y0STBfmqOhJT7bii3maaWj+C5+PTIY3rNvDY7CSZaOJpoj
         J6toAd/ho4NeToJ2+QWojrlsbxt118T7St4JjyynSLCc63dXvkWVbFqZv0qTOfBXkMub
         KHhBkBhY+EqTbyylzo8oOfEAdmjUNLfs13lXZqpzov/jX31rVPo9zuWffrmeQZc/GUDc
         VioA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m/HyOQnd;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id t77si617006pfi.13.2017.09.09.22.35.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 22:35:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m/HyOQnd;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id j16so62918pga.2
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 22:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eLVLL9M2oQYDgCcBry/9dTMxw+UIHC0NKJvRwPrU6to=;
        b=m/HyOQnddTWbqisZs94LT5nKXmv1UF3d5MlTN9/auUiaLm8z55yLKMOTs8yT3NTOwm
         DcqqVL/raPPc6oHDa+ygchLTEmeFXVQf5Qhs9cP6JRB8SEhgCP13ptoWdhGfaPemSer7
         Qj6bO+jWwFIuZm/f61K5G0U0lCbN2JWJYsytz1WBz2hoDwGJI1D37Rac9NLj18hNddcz
         iW4YI8Rlpj4OeYJraZWaDFsoavAtfd+E7eY7llhwFRRK2BjAvuFvlI40y8XWQXuy18lf
         4OD6x9l+v3QqnWsNWTIDL2vuQmWmR/Sow4sv4qogkDLu00+klo/XXw8Lbu65xYyOf8G3
         CJEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eLVLL9M2oQYDgCcBry/9dTMxw+UIHC0NKJvRwPrU6to=;
        b=RtJWquPWD3sM+v/9sGcHZ1FOf6dcPTLbIdvKlSHEtvfPMGlQ3Isx/Mf0z1yWS6cViV
         c1biVM//3U+y+IFUUpMK70lQIFjyi4gkgSpu+6MThMXR+0fuW52buFoS6pXcE23R48O0
         Q29fDHO/efg6g3IdVss6usDo7wd+OUXGESEtkfAxNwL6yoHCG4cFAMM/0TRBzTCJBvjy
         pILZ9wCW6bh8u2SxYf+ntPvbtvtRl84guPPw3YJ7C2p6n6/OWWePFez4174Mm+o45ZDg
         DqwYokTgYySbfK3/re2O/IxbMr0I6UmHSRoKNG4JAQ6sLRV0WubDVB6QJPEz8qnlhW6B
         IWUw==
X-Gm-Message-State: AHPjjUgtGzS5xgpIGtTMYKlASptbjj6nFlBMxasFT6LWhe6KSawuJMkX
	rNCJVLjee5zkz4gp
X-Google-Smtp-Source: ADKCNb76dH0iX/in7iaB8eOiBqVyRazTqQo/+JRWFH8hxsSOL3vyRf3oYDUJyOPhSTKbdSL8WnGBPA==
X-Received: by 10.98.100.69 with SMTP id y66mr6153644pfb.337.1505021742603;
        Sat, 09 Sep 2017 22:35:42 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.170.207.153])
        by smtp.gmail.com with ESMTPSA id r3sm8602138pgf.48.2017.09.09.22.35.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 22:35:42 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: gilad@benyossef.com,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: ccree: Merge assignment with return
Date: Sun, 10 Sep 2017 11:05:37 +0530
Message-Id: <1505021737-4674-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Merge the assignment and return statements to return the value
directly. Done using the following semantic patch by
coccinelle.

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v2:
 -Correct coding style problems

 drivers/staging/ccree/ssi_sysfs.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/ccree/ssi_sysfs.c b/drivers/staging/ccree/ssi_sysfs.c
index 0655658..ed662cb 100644
--- a/drivers/staging/ccree/ssi_sysfs.c
+++ b/drivers/staging/ccree/ssi_sysfs.c
@@ -412,8 +412,6 @@ static void sys_free_dir(struct sys_dir *sys_dir)

 int ssi_sysfs_init(struct kobject *sys_dev_obj, struct ssi_drvdata *drvdata)
 {
-	int retval;
-
 #if defined CC_CYCLE_COUNT
 	/* Init. statistics */
 	init_db(stat_host_db);
@@ -423,10 +421,9 @@ int ssi_sysfs_init(struct kobject *sys_dev_obj, struct ssi_drvdata *drvdata)
 	SSI_LOG_ERR("setup sysfs under %s\n", sys_dev_obj->name);

 	/* Initialize top directory */
-	retval = sys_init_dir(&sys_top_dir, drvdata, sys_dev_obj, "cc_info",
-			      ssi_sys_top_level_attrs,
-			      ARRAY_SIZE(ssi_sys_top_level_attrs));
-	return retval;
+	return sys_init_dir(&sys_top_dir, drvdata, sys_dev_obj, "cc_info",
+			    ssi_sys_top_level_attrs,
+			    ARRAY_SIZE(ssi_sys_top_level_attrs));
 }

 void ssi_sysfs_fini(void)
--
2.7.4



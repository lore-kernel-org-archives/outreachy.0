X-GM-THRID: 6463500175393423360
X-Received: by 10.36.117.71 with SMTP id y68mr3201229itc.26.1504953868420;
        Sat, 09 Sep 2017 03:44:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.51.138 with SMTP id z132ls1479057ioz.52.gmail; Sat, 09 Sep
 2017 03:44:27 -0700 (PDT)
X-Received: by 10.13.254.68 with SMTP id o65mr3447018ywf.86.1504953867721;
        Sat, 09 Sep 2017 03:44:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504953867; cv=none;
        d=google.com; s=arc-20160816;
        b=tgUhjwdj5AcGTCslxHB/0CXATxClPJgII02b/fasK0JwFd0GxTihRYZIlupyr/SL/G
         C69mjRDy9qb2JiQsd5ASaixZs/XJdCXIdmtjBdk2eQHlGvAu1QVfjUwC4hPmG3wBWlcs
         XKRpL5RLl2FOnk0/P/MzR0jNKVQNZXnK4qhFNd4INz0vF7decMSkVrt5kROKIV+UgIAF
         R6zr2+zO5X52cpaFdFs3bE+Jq6OwfZKuZGZc0xnJpJNUaUBSJagghIfMbw3FKGZW2yee
         8/2hVr8foaTZoFbLIqjqDWpsYL+kysbiw3Cc9k/yG7xlOrWSDlDNx421ZYic9YiC5Crx
         ge/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=K3a4mMvg4VdbK41UsUa9D1dKn38+H3GSza3yUBkL1BE=;
        b=re+q//rP5L3XeKmpG+wcV5Wc0Uk6tFPJ2DyEBHdvGmX/5s6SnUlJ9t4arDohAoJYnk
         sJpcrm2kGEq/IQZFBC7cosObUp8sk5iwZoH+Or1nYBhWISpGo0m2ODRme2bTFkoWycv+
         WosRwVOblpqoga8ez+PIPCTul9Cjq/vpPNDGzCfCWdnOf1M8j4E9saGkssvARpOO8hFU
         xZbg7JgmXrVzMLD+vASEOEWKF4aehK88txrgOtLnXT+9XkdSBJvhiBJEFN2lEsLb2A1r
         lBRA1AWAe8HzDaoe1cARsijQnqF/+GNROM3Jnd2m7rugg5aAwAohA3VaHSHu3002bOV2
         NWdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d8JVlZ85;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a17si473526pfk.15.2017.09.09.03.44.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 03:44:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d8JVlZ85;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v5so2429068pgn.4
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 03:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=K3a4mMvg4VdbK41UsUa9D1dKn38+H3GSza3yUBkL1BE=;
        b=d8JVlZ85Fynj1IdPKdL5K9RU0kTr8WZXpnWkoZLTe1Bx+5gE4T0jBLHvcZ5i52vp0M
         6Woa/VIusEurz0Qu9DKP5KGq7gPglMBN0Rx8pbqvy+rkZEmdiPM3LZ5DeA/Is9x1i22z
         RS0vySVghKCU51wp+CHAoTiQ5HJwdcXUDPGwQ/oJ9XyyrSArBmpeRNJdGLNwfan2rny0
         UAEXMBiwG2arFi/V9Jlrafh9wcbx/4jBZ3qI4fBMz8/qFANNsZlcV1RtmtINw3AIWYvg
         OZpdEidhpRiw9t/mogkyR4rvCxzLDaHMdwM+4dPuhuvnVwEObXZGP6ZwuNjEBedYDvcZ
         cIjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=K3a4mMvg4VdbK41UsUa9D1dKn38+H3GSza3yUBkL1BE=;
        b=pI6mBVvs0rgHBN9ZSAYYMy8oTFGiValX1NLvlv0kfSXMR/moHXGID6Ws4QIEnUgNt7
         oDDHjYioN2zVOHH0xVo2hTyB73wdYl2jPxYif82DZ1406t7jMMsnJmA7EiSeO2PpBjX1
         iA0OcHcPn6vlUiOEgHE5kEbDSLFrTycUkRuQWr4qI9Ps9FliRSKgNLWfdUds/6NV1Tm+
         YtJdgBlG/MLFIjjk9aKONHQ8nW1hGu1Mw1fqHt4rRAbtSZgV3f9MGhGW6W55Q/pNHGXW
         lgowwwTHBEaFIeWqg10eOxIQTDLrj0CpspnLC0mMzXWmYbH3NAVMF+9ScYvZRAboLveL
         Yo7Q==
X-Gm-Message-State: AHPjjUgzXnv1Jhq2kDpOyTG9YMFKmYWUqUT/QuWm3R3VTicsDW2SP1P7
	5xdeEEDJKU/M+Q==
X-Google-Smtp-Source: ADKCNb7gdEYIc1ItctazjUA44t4nrHPyuPxqAD6zCkQk1Xj9quYdBPgfSnlcZ69PUJHobdagxN9S1w==
X-Received: by 10.84.234.136 with SMTP id n8mr6650117plk.328.1504953867486;
        Sat, 09 Sep 2017 03:44:27 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.9.172])
        by smtp.gmail.com with ESMTPSA id o67sm7518601pfa.89.2017.09.09.03.44.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 03:44:26 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gilad@benyossef.com
Cc: gregkh@linuxfoundation.org,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: ccree: Merge assignment with return
Date: Sat,  9 Sep 2017 16:14:21 +0530
Message-Id: <1504953861-3221-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Merge the assignment and return statements to return the value
directly. Done using coccinelle.

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
 drivers/staging/ccree/ssi_sysfs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/ccree/ssi_sysfs.c b/drivers/staging/ccree/ssi_sysfs.c
index 0655658..9fa7be0 100644
--- a/drivers/staging/ccree/ssi_sysfs.c
+++ b/drivers/staging/ccree/ssi_sysfs.c
@@ -412,7 +412,6 @@ static void sys_free_dir(struct sys_dir *sys_dir)

 int ssi_sysfs_init(struct kobject *sys_dev_obj, struct ssi_drvdata *drvdata)
 {
-	int retval;

 #if defined CC_CYCLE_COUNT
 	/* Init. statistics */
@@ -423,10 +422,9 @@ int ssi_sysfs_init(struct kobject *sys_dev_obj, struct ssi_drvdata *drvdata)
 	SSI_LOG_ERR("setup sysfs under %s\n", sys_dev_obj->name);

 	/* Initialize top directory */
-	retval = sys_init_dir(&sys_top_dir, drvdata, sys_dev_obj, "cc_info",
+	return sys_init_dir(&sys_top_dir, drvdata, sys_dev_obj, "cc_info",
 			      ssi_sys_top_level_attrs,
 			      ARRAY_SIZE(ssi_sys_top_level_attrs));
-	return retval;
 }

 void ssi_sysfs_fini(void)
--
2.7.4



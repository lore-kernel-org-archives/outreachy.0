X-GM-THRID: 6670329493054291968
X-Received: by 2002:a67:ee0e:: with SMTP id f14mr15568903vsp.0.1553057144718;
        Tue, 19 Mar 2019 21:45:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2743:: with SMTP id a61ls169456uaa.0.gmail; Tue, 19 Mar
 2019 21:45:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy8qv4giAmhp6qEDnqC8sZBVDHyyMwtEdnsYlQoeSiwxdivk5ESXf6JYjeOEiH4lDe8GmC8
X-Received: by 2002:ab0:b98:: with SMTP id c24mr14793878uak.19.1553057144123;
        Tue, 19 Mar 2019 21:45:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553057144; cv=none;
        d=google.com; s=arc-20160816;
        b=zSpKq2rtptakjG3nsV/FG3hVUb7dbnfl6skNUp8asXrJpHnvGw9ZdBQzBMOxfHjQZo
         kPFUzgylduIy6aZvkxIIGx2o8UcU7SZ805qPtCPWP1ascpAUJIR2v1KYaywHqgLnb4e4
         gMAIAe07MjuIwHNQ8A6aLjyyMhBDWpZMVdBHrsK7p/ZKD/jN/M6zSD1q19RoXhJQgvrx
         VY7m0YM81izAp5nJWNyxpe5fSxeZI1ZJD1p9qKTJ5Mv2OsyxQFJFwUZ9i+h78bP9K9wf
         ZksCnGPTGefxsV3WDvBB7ZlSNIMowv141s0CHw+BptyXYW5+WMzSfce1gD2Ad2AhCvNp
         1mxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=jVFqOu4mpXN4lNkaW8RYfKvlcTcmj3LpMEwMA16GGqA=;
        b=QFw2atp/bLztNjzY/KX0n6Ar/KnrS/YPIphH6fGfNPWrpVtdx7cWwD39yM3blKsX8D
         Fo7RFdBJ/Le57p2qwLBtBCyuEDednElnONlW5gJ9miQBLKnVbrZnDfPXJ7pgOKxmWsk5
         fr/ZPobaer/sceQgmRiSiCVkq+0D4ORuaRygLpCKBKQt4zL4jp6g3vSwutRMhXv8w2cL
         Uf28rLI3ueFZjpqIOK+GQDRdfRqYiLwgrkZFs0fv+9c65qvbZ4OVVVQ6CZDTRiBmXpE8
         fBs0qtUCzeac+3U92gvCVPPjFcdGe5eWfCcsbbLFT376lj3GdzzgIQhQUnAHMNj32bcF
         l1BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HdtjjgHK;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l10si42317vkl.2.2019.03.19.21.45.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 21:45:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HdtjjgHK;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id a22so790709pgg.13
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 21:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jVFqOu4mpXN4lNkaW8RYfKvlcTcmj3LpMEwMA16GGqA=;
        b=HdtjjgHKbUiDj0VB/8B+x3bSqNUoAmjt8JwtZKCSZc1pBI1+ZKJdm0CNVGWMve93hc
         lPt0AzplYw0pBSHsFdF5ujBJzwzWhr2/pp2M6VbRju2ElF7ioX5ljd8BZsuTi8hAzYVL
         Vyo7mUNFVvfz19TKfoud+o47/Yd3vb602mOL1anNVsqFJtuHoGMAE7wh0C8QrcNCgs1R
         eAja0IgqaoJIlv64Awroro6BWiOiJjoUOjyAVFIYK963kYssH2dpwYUFCjg884+fGddZ
         sJ0V7D6e4MczYZ5rJKtLzjASZpwpZRCwVseWr8c1SbNWB+OfCOIxkEBFos4wKpbaliuE
         BpAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=jVFqOu4mpXN4lNkaW8RYfKvlcTcmj3LpMEwMA16GGqA=;
        b=DIgERv0Ih3Fmoixp1bgu7gJKWYxRw+iVDGuba8xvaqjvsD9JAN8FOxed0PMxfWHEO6
         wA8zFGIP6eneOkR8Vbq/fomK5idY/boX/lBBHs5W0zTjqUJqH5kXyJMP8ziJcZTwrRIW
         g5ku/m4NWsl9Fp9q+fRUoqutUOQH03RkNu2UMSSe1uVqvw+knMQCcCKvU9sXHw+B/CJn
         WejL8pA0c5mUoFoMvF8rGLAPUwojfkReDt31Ef595umjfXulGsIoxJEfFd5zMKcs3UlJ
         J/lntImYdxz1UuXda0QYPllTfeUiaeilk/vercGoAHfsF5RQTzMRYz9mmban3F56BNDJ
         C1NQ==
X-Gm-Message-State: APjAAAXfcjpFG0mN6Ess35YMfNDt9xq0Opf+dDrpA8jCP3bn5f0rj8m4
	deFiDmM+DGs5YPj4lim4/0s=
X-Received: by 2002:aa7:9219:: with SMTP id 25mr5811557pfo.205.1553057143314;
        Tue, 19 Mar 2019 21:45:43 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id z124sm1101341pfb.150.2019.03.19.21.45.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Mar 2019 21:45:42 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 3/3] Staging: unisys: visornic: Replace '--help--' with 'help' in Kconfig
Date: Tue, 19 Mar 2019 21:45:01 -0700
Message-Id: <20190320044501.5445-4-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190320044501.5445-1-etsai042@gmail.com>
References: <20190320044501.5445-1-etsai042@gmail.com>

Replace '--help--' in Kconfig and indent the subsequent text to silence
checkpatch.pl
warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/unisys/visornic/Kconfig | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/unisys/visornic/Kconfig b/drivers/staging/unisys/visornic/Kconfig
index 1676dc7072d5..865f8963409e 100644
--- a/drivers/staging/unisys/visornic/Kconfig
+++ b/drivers/staging/unisys/visornic/Kconfig
@@ -5,11 +5,11 @@
 config UNISYS_VISORNIC
 	tristate "Unisys visornic driver"
 	depends on UNISYSSPAR && UNISYS_VISORBUS && NET
-	---help---
-	The Unisys Visornic driver provides support for s-Par network
-	devices exposed on the s-Par visorbus. When a message is sent
-	to visorbus to create a network device, the probe function of
-	visornic is called to create the netdev device. Networking on
-	s-Par switches will not work if this driver is not selected.
-	If you say Y here, you will enable the Unisys visornic driver.
+	help
+		The Unisys Visornic driver provides support for s-Par network
+		devices exposed on the s-Par visorbus. When a message is sent
+		to visorbus to create a network device, the probe function of
+		visornic is called to create the netdev device. Networking on
+		s-Par switches will not work if this driver is not selected.
+		If you say Y here, you will enable the Unisys visornic driver.
 
-- 
2.11.0



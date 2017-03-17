X-GM-THRID: 6398525870990950400
X-Received: by 10.46.21.79 with SMTP id 15mr2263015ljv.8.1489774647574;
        Fri, 17 Mar 2017 11:17:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.6.2 with SMTP id 2ls744908ljg.13.gmail; Fri, 17 Mar 2017
 11:17:26 -0700 (PDT)
X-Received: by 10.25.210.146 with SMTP id j140mr2134274lfg.10.1489774646974;
        Fri, 17 Mar 2017 11:17:26 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id b186si467785wme.1.2017.03.17.11.17.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 11:17:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id n11so4546687wma.0
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Mar 2017 11:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Cg6k0l5GaQJ/CLzG2uaE98ZgCsxFY2ccTSNDyTS/La0=;
        b=pa/hCcqwbkouMOJFDclAVvEt0ahTcq0yNs++F6JAEoq8x5ltf6nSRrDcow8Vxt9x2+
         cENNGDKYndjq17YUhB3RAwvj09xI/eQxFqM430g+tjSkvh8DVUkoilnNUMeD6UitPnD0
         mHzA3GM8dKbL0kF06Z23EJicup3N6fB0JVAMo3EDmBAMW7dBie2KlV4DDJnnSbxp3SXB
         I+F/FV6LwDQ3pA5I1AraLragc1GiCOQydNz7xwgOuNCHtyghk3o+zPKiAdsWvwOdMG/T
         e9H6tSIBC456vIH1H6GnssH2duMxlxsfoehzdnMiYDFpVSq+8D3j3VRLzg2hcopeZr9+
         ZSkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Cg6k0l5GaQJ/CLzG2uaE98ZgCsxFY2ccTSNDyTS/La0=;
        b=OwOn9CfF3B0JOLExO5fSXxNSAsILxdOEkgpaJcrR2MbO92xH2E/UYTzgsaTEZaKxEo
         Tb24bCZJKmqUCwp0137isNF8LchG2CRcfNsmkj9JKGkVsZPDyWf/UrxAjPHb8kRsyL02
         0cQAmrK7+8W1EoLA7R9cWFYzqxTwNVPdUj3jzTlKqsiP3+v+7sA6mQub3OktHsyVL2YK
         GoQk1G5puKIsigFVRgcgCP/Ydd7AqjbyovmV4tiNbMXy+9d1532RB8eWMcARvP1BYMJ0
         Zl0EOvYppqm66vuRHSdJ1waa/EGqXlhxNIBcryrjQX4EuuTHy4rzpU1zBD5aRAEDYO8G
         GSXA==
X-Gm-Message-State: AFeK/H2ZNj4+cXEMRu19TiRaoMDDI7LBddFFM2CIFG83UdJMW1oiQ/Txu9uXvZTeNRaA5g==
X-Received: by 10.28.111.3 with SMTP id k3mr4133221wmc.39.1489774646769;
        Fri, 17 Mar 2017 11:17:26 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d9ac:2cee:7395:ff69])
        by smtp.gmail.com with ESMTPSA id w97sm10806335wrc.20.2017.03.17.11.17.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Mar 2017 11:17:25 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: corbet@lwn.net,
	linux-doc@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2] Documentation: md: md-cluster.txt: Fix typos
Date: Fri, 17 Mar 2017 20:14:08 +0200
Message-Id: <20170317181408.16160-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix typos in md-cluster.txt file to make documentation clear.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v1:
*Correct 'over-rides' to 'overrides'.

 Documentation/md/md-cluster.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/md/md-cluster.txt b/Documentation/md/md-cluster.txt
index 3888327..d221039 100644
--- a/Documentation/md/md-cluster.txt
+++ b/Documentation/md/md-cluster.txt
@@ -77,7 +77,7 @@ There are three groups of locks for managing the device:
  3.1.2 RESYNCING: informs other nodes that a resync is initiated or
    ended so that each node may suspend or resume the region.  Each
    RESYNCING message identifies a range of the devices that the
-   sending node is about to resync. This over-rides any pervious
+   sending node is about to resync. This overrides any previous
    notification from that node: only one ranged can be resynced at a
    time per-node.
 
-- 
2.9.3



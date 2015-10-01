X-GM-THRID: 6200611211635064832
X-Received: by 10.66.255.42 with SMTP id an10mr7282015pad.40.1443692302790;
        Thu, 01 Oct 2015 02:38:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.149 with SMTP id g143ls599187ioe.30.gmail; Thu, 01 Oct
 2015 02:38:22 -0700 (PDT)
X-Received: by 10.50.225.102 with SMTP id rj6mr1825697igc.9.1443692302489;
        Thu, 01 Oct 2015 02:38:22 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id el2si827164pbb.0.2015.10.01.02.38.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 02:38:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id ex6so69878534pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 02:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=a4+eh0XllU3oyWpRFF6cCbeXeREYqHoty5wboHlW8oI=;
        b=iHnzI5urV1cxhLKVHjFtDsArTAel8k70kdEODVJAd+we63dCGTwWSH8vpKG4PF//ki
         xOP9Q3zmucQx0HHx9cwPExZ1xm2s9E2t0i7b5LTVNhzIgVtJrJc4TLPXr98LXlCSyOWF
         SJRfJwAd4RwvUpMHFuIvex1hJoF0NFkIO0jSX/GDGhOKwsziivPqVvwPTv6X5r1xY9VE
         r2ysrxSlUYXkyh0Jzhg26MxXo45g9IvbHZMucK275skHLLpNNBOfre7MVG339qJ2F5+0
         WufHYjXPPtkc4Mw5YI6t20UalkkJFtNuxEFW58ju+6TXyf37jDPi6guLN6Hdi72La8ne
         Vxzg==
X-Received: by 10.67.3.167 with SMTP id bx7mr11062358pad.47.1443692302350;
        Thu, 01 Oct 2015 02:38:22 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id b7sm5520201pbu.20.2015.10.01.02.38.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 02:38:21 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] Staging: lustre: ptlrpc: Make functions static
Date: Thu,  1 Oct 2015 15:07:57 +0530
Message-Id: <1443692278-9074-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com>
References: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.560CFF0D.008C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Since these functions are not called anywhere apart from this particular
file, declare them as static.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/pack_generic.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
index d2fc627..0d32147 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
@@ -1929,7 +1929,7 @@ void lustre_swab_fid2path(struct getinfo_fid2path *gf)
 }
 EXPORT_SYMBOL(lustre_swab_fid2path);
 
-void lustre_swab_fiemap_extent(struct ll_fiemap_extent *fm_extent)
+static void lustre_swab_fiemap_extent(struct ll_fiemap_extent *fm_extent)
 {
 	__swab64s(&fm_extent->fe_logical);
 	__swab64s(&fm_extent->fe_physical);
@@ -2405,7 +2405,7 @@ void lustre_swab_hsm_state_set(struct hsm_state_set *hss)
 }
 EXPORT_SYMBOL(lustre_swab_hsm_state_set);
 
-void lustre_swab_hsm_extent(struct hsm_extent *extent)
+static void lustre_swab_hsm_extent(struct hsm_extent *extent)
 {
 	__swab64s(&extent->offset);
 	__swab64s(&extent->length);
-- 
2.1.4



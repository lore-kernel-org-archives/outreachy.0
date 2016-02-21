X-GM-THRID: 6253680199579205632
X-Received: by 10.50.65.69 with SMTP id v5mr5949472igs.13.1456048386686;
        Sun, 21 Feb 2016 01:53:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.101 with SMTP id k5ls327367igv.20.gmail; Sun, 21 Feb
 2016 01:53:06 -0800 (PST)
X-Received: by 10.50.79.161 with SMTP id k1mr5978576igx.5.1456048386122;
        Sun, 21 Feb 2016 01:53:06 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id u66si2816319pfa.2.2016.02.21.01.53.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 01:53:06 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id q63so76039299pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 01:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=rJ/KbRJxXAnlTjO7OL4tLL472+Kd7NmrlkujXkOmOMI=;
        b=nSA9PV9EnuMfViAPL6yWBxZ/UfFAovThTq/uJYDGYhUGLdmDvAd0hexx6JXe7c0XJB
         karNadlsQuFSxoWNV2gaSy9eGaBoiDEVFOUcBXdCJc+NJGO9pTgDP6BuwsCarRJF5PDT
         XCUlp+ekdCHikBjtE05+jyMp7KNzQjbXPLm70XWgS4JkHp64aOe10608GDVPkYmBjt1K
         F0et1ZvoEtlcmo5tpmTGIaOPnuhhT9mykZpW6XmWGMTx6NKhXYzelDbgYP0S5PgD+J8r
         OTSAmIpB84wga9s1gnSDjnfu412QgVek/SK2PYM9+fAfE/tE1NUCcIlV4eZWrEAa8jyB
         JteA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=rJ/KbRJxXAnlTjO7OL4tLL472+Kd7NmrlkujXkOmOMI=;
        b=DIm2Pt6Enj+tUJaMsI7wiXbC9Ow6VzkkMWEN0bBWnVuYrLMA3sy7FNqxbkIc4uTXwP
         PpQVPM4j+s+vOECM/G3eBMkRJs/hwsISSiwsfskzhRouZSfKqFAeK7rRHiPYJwI66j6+
         C9hU/jBI2oTyi3CGeigH4572v9URQLhP9RH7b70ssnxYEBIj20sT6lyeup//cfljA+PV
         6QZfM/Mx/dG/Ixo5bGDfchjKpet8kfbKnVU4TKl76kS8nBiAcF3bGA1dacWK7etE9urv
         nOCGEUhhBA0zOqsOJrLyzAFuC/o9tidqbgpbyUN5VTShvF/9G5iAsvVptTRxFkGfcWc7
         punA==
X-Gm-Message-State: AG10YOQAf1aS4XbMahPYKFP8jrDvZl0mjskU6BivSU9eXxhl27VBIvhEiCY1nl+IDH7+uQ==
X-Received: by 10.98.68.86 with SMTP id r83mr30427042pfa.12.1456048385994;
        Sun, 21 Feb 2016 01:53:05 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id kw10sm29399716pab.0.2016.02.21.01.53.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 01:53:05 -0800 (PST)
Date: Sun, 21 Feb 2016 15:23:37 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rts5208: Prefer using BIT macro
Message-ID: <20160221095337.GA25362@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace all instances of bit shifting on 1 with the BIT(x) macro.
This was done using Coccinelle.

@@ int c; @@
- (1 << c)
+ BIT(c)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index f564a74..914bb39 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -224,7 +224,7 @@ void rtsx_add_cmd(struct rtsx_chip *chip,

 void rtsx_send_cmd_no_wait(struct rtsx_chip *chip)
 {
-	u32 val = 1 << 31;
+	u32 val = BIT(31);

 	rtsx_writel(chip, RTSX_HCBAR, chip->host_cmds_addr);

@@ -238,7 +238,7 @@ int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
 {
 	struct rtsx_dev *rtsx = chip->rtsx;
 	struct completion trans_done;
-	u32 val = 1 << 31;
+	u32 val = BIT(31);
 	long timeleft;
 	int err = 0;

@@ -647,7 +647,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
 	dma_addr_t addr;
 	u8 dir;
 	int err = 0;
-	u32 val = 1 << 31;
+	u32 val = BIT(31);
 	long timeleft;

 	if (!buf || (len <= 0))
--
2.1.4



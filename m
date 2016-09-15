X-GM-THRID: 6330571692278022144
X-Received: by 10.157.51.3 with SMTP id f3mr6566362otc.30.1473951081467;
        Thu, 15 Sep 2016 07:51:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.30 with SMTP id j30ls1098778ioi.30.gmail; Thu, 15 Sep
 2016 07:51:19 -0700 (PDT)
X-Received: by 10.66.226.10 with SMTP id ro10mr6547384pac.29.1473951079848;
        Thu, 15 Sep 2016 07:51:19 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id z4si1279880pam.0.2016.09.15.07.51.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 07:51:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id oz2so2206000pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 07:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5ZZ3mMcPNl90Eho2WWxAuL6k54Iohnf3sl0WzMBt1j8=;
        b=UXE52wk97jU4S+EqxPAJaJN27eV2UoBHWeZW4Pjr57s1NAg+ke0yreKomTO88RyjsZ
         SW6QU4Ovo93Bz/7J+DWcFZKAR98Vq3lmoefotEF7EaUwJxqAmZFDw6qKWwsLFaYMWN/l
         11rc7+p8Uwe2qZn60A37mjJCO8LQfWCIJWkJFCKXkEZrxdkOKMdtlukIASAfnbb8IK3M
         fjgxturEG/8psK7mEoCGc30+KGreOTPcsuhuNyIIl64icW+DDDiorndqnSzevphxpcG1
         P2YMeNkv/dG08TfCrnwFetlNBZSPXlE+7m6NCCphlOgGZkBcH/v5jAwUuviiAAlVIlfJ
         ShPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5ZZ3mMcPNl90Eho2WWxAuL6k54Iohnf3sl0WzMBt1j8=;
        b=iNUl8sWzU1qoEQfi0CNwnEyfne362ypvJMt7ymfpGwXbmTQbI5nxReU6XA/O/N69Fo
         bq/P0L5TC+8Pj4YGwN2IntxMi2GwSFxyGnnTGkPyE5GrvxBSaenWZuekWKTdBo8ctVxH
         Lh25SUuI3+JrT5faajrQUlR3mSpvYcOBRHv3WLj2hmEAYnMLXuoFbEgvmSA0cU6bUsUf
         VzRp2AWl5zDQxmsH3OAvqch0+AbkfejlyGtMMyKuBLqTRWSKAOuAMrr2Tf/+nDOZWIiX
         /X+1xFveGDSJAOQGeyujuqA0UhE8iLz/Z9Fhbimz6xgGeINtVLESVB3H6/E7b9o1NzgN
         IEjw==
X-Gm-Message-State: AE9vXwPeZ7ExE5zPhlNg4AWvJPjtj1O7Dqe3myBIB7mpu8koL7TwUGFbTVGjuwILyYr6JQ==
X-Received: by 10.66.76.225 with SMTP id n1mr5076226paw.122.1473951079475;
        Thu, 15 Sep 2016 07:51:19 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id bx9sm5817267pab.17.2016.09.15.07.51.17
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 07:51:18 -0700 (PDT)
Date: Thu, 15 Sep 2016 20:21:09 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, jon.nettleton@gmail.com
Subject: [PATCH] staging: olpc_dcon: Replace BUG/BUG_ON with WARN_ON
Message-ID: <20160915145101.GA6064@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixed the warning detect by checkpatch.pl

Avoid crashing the kernel - try using WARN_ON & recovery code rather than 
BUG() or BUG_ON().

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/olpc_dcon/olpc_dcon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c b/drivers/staging/olpc_dcon/olpc_dcon.c
index f45b2ef..62e70ee 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.c
+++ b/drivers/staging/olpc_dcon/olpc_dcon.c
@@ -141,7 +141,7 @@ power_up:
 	}
 	if (x < 0) {
 		pr_err("unable to stabilize dcon's smbus, reasserting power and praying.\n");
-		BUG_ON(olpc_board_at_least(olpc_board(0xc2)));
+		WAARN_ON(olpc_board_at_least(olpc_board(0xc2)));
 		pm = 0;
 		olpc_ec_cmd(EC_DCON_POWER_MODE, &pm, 1, NULL, 0);
 		msleep(100);
@@ -369,7 +369,7 @@ static void dcon_source_switch(struct work_struct *work)
 		break;
 	}
 	default:
-		BUG();
+		WARN_ON();
 	}
 
 	dcon->curr_src = source;
-- 
1.9.1



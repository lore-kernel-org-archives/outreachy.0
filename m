X-GM-THRID: 6396981220938350592
X-Received: by 10.99.56.67 with SMTP id h3mr14888580pgn.73.1489413255379;
        Mon, 13 Mar 2017 06:54:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.8 with SMTP id 8ls4103334ion.18.gmail; Mon, 13 Mar 2017
 06:54:14 -0700 (PDT)
X-Received: by 10.99.127.86 with SMTP id p22mr16810315pgn.107.1489413254338;
        Mon, 13 Mar 2017 06:54:14 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id c123si3069206pfa.4.2017.03.13.06.54.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 06:54:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id v190so19078808pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 06:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=D9kkqym7QoDn3wtjVcASy1Ej/cWTmo4jensqCszl4SA=;
        b=VpHQgzZsepwivONJMUjfEOCe38RV1dkSrla6CGdTSTNpbgDkUsBiOQZajuLwHYvN9o
         rir5tW2zcrVOZ+ItQ6GpqQ2eUd3g8Eal/fFRJRuAg4tEs5G1+4ijhs7kRoJ/Gp0o750g
         hnBr2BMTSgwMVF3n0U6zn8UotkIwR2sfedg4oWcvRaQpvcGGLBBFby4hLhHkiAAMpMVc
         0rwMI1A4DBXHkmGL9iTrFJBXAORWbocncMLpXBrGY6r79UmRggtnbMwEPrPEOE6KzCPp
         EKWchTPZREBM12Seo1mgHhqwMIEQG2FBdPd65HXrz7ryRYsgbgooTUpqzFMp/yrdZwCI
         Wryg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=D9kkqym7QoDn3wtjVcASy1Ej/cWTmo4jensqCszl4SA=;
        b=a89ciRQQjBNcEsBLuOUctXmV8GZb5DiQXXiqL2GAicxlnArOfpieeyMCNuS2vsPcdZ
         zcW+UBL19RNavTOr4g8rMTR0qDOEx+95YWthHpUPoCr3DKUABFBOBihMLCagHoLv/PPn
         VWAdy/k7AnlywnIGaxQOwAkfF3HY8Pb9Zm3msUmt8f9ehUHy8VKxhaCdD0bO03Mk3UQz
         iZIY1aufmKMzuNKWDm9su8BXJLwp65cALI69auKjtsDGFjU2KdOk8ssfsAGirFCXHOsm
         KQyG2fzt4bP9TYkMdotR++sLJs/mF2oIEWOxeKbb+qcTaYXBciTYyRsLE7Zi5uZVQzma
         yELw==
X-Gm-Message-State: AMke39nyj3nWryMdsRSj2rnpfFru37BG03vGiKFR/JHlcAMqMUuefm393vBlW2ynXyc3cg==
X-Received: by 10.98.212.81 with SMTP id u17mr38413939pfl.75.1489413254086;
        Mon, 13 Mar 2017 06:54:14 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 23sm33109699pfw.94.2017.03.13.06.54.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 06:54:13 -0700 (PDT)
Date: Mon, 13 Mar 2017 19:26:24 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: labbott@redhat.com
Cc: Laura Abbott <labbott@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
	Riley Andrews <riandrews@android.com>, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: android: ion: Replace pr_err with dev_err
Message-ID: <20170313135624.GA9869@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

All devm functions has a device structure as the first argument which is
required by dev_{err,info,dbg} printing functions.
This patch converts pr_err to dev_err as dev_* is preferred after calls
to devm functions.

Done using coccinelle:

@r1 exists@
expression e,e1;
identifier f =~ "^devm_";
identifier g =~ "^pcim_";
identifier h =~ "^dmam_";
@@
e=\(f\|g\|h\)(e1,...);
<+...
(
- pr_info(
+ dev_info(e1,
   ...);
|
- pr_err(
+ dev_err(e1,
  ...);
|
- pr_debug(
+ dev_dbg(e1,
  ...);
)
...+>

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/android/ion/ion_test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ion/ion_test.c b/drivers/staging/android/ion/ion_test.c
index 5abf8320..0ab7d11 100644
--- a/drivers/staging/android/ion/ion_test.c
+++ b/drivers/staging/android/ion/ion_test.c
@@ -255,7 +255,7 @@ static int __init ion_test_probe(struct platform_device *pdev)
 	testdev->misc.parent = &pdev->dev;
 	ret = misc_register(&testdev->misc);
 	if (ret) {
-		pr_err("failed to register misc device.\n");
+		dev_err(&pdev->dev, "failed to register misc device.\n");
 		return ret;
 	}
 
-- 
2.7.4



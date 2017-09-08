X-GM-THRID: 6463464119976591360
X-Received: by 10.176.4.55 with SMTP id 52mr2315474uav.42.1504892511640;
        Fri, 08 Sep 2017 10:41:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.68.196 with SMTP id o187ls1692425ita.15.canary-gmail; Fri,
 08 Sep 2017 10:41:50 -0700 (PDT)
X-Received: by 10.55.125.2 with SMTP id y2mr1888088qkc.42.1504892510866;
        Fri, 08 Sep 2017 10:41:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504892510; cv=none;
        d=google.com; s=arc-20160816;
        b=BRGtfDIx25ykIOOJ9dsKBQxvYlhJoz4QFfjp+H9W22yOGsaTPs+x5ikSIGqn2ida7W
         bOjWr336JcE+uh6MeG+cMOziGrQ5Z/S1JXfcZj7IO3UUO9gD7Q4+/oNejyJY1z2K2pWO
         xFjkQgDTUpFT+kxu4EEhb68xGbBW1a3agDsLAXYQkyL1Eju+4gf+EuHVhBOigu6t3kIj
         Zryw2r62uBkPzmFUgiy5EPOWx+GU7m9+5lH3rSyS3uW3jx4hdNJVaSwzYPp2poOJrrUG
         c2YD3MG6moWzsOB1Cz2yrPostsc42M4YtjZN1dgORyeJKcDwZqvnlyHmVaLHr4EDEoBk
         78EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=nqcLRd1ROSQbm9mf4vZM+PGfsHSCZQ2wFVihtrY+P64=;
        b=x/qQU65l0sJKOXRhkEaD/Wnj2A8H8ruJFZnVEy1nskwkIV4w5qb0Mr9JX5dHvgB9o8
         +JWGt0iN1aTsgIgCLxOXg7EoOQKhRgj4F6buYUU+3K2Hre3hBoCuI3ZEulraIvuKIGvu
         ow9Tb1VjYgEwuHMzCmGmgWkh8rQZV5Xdb0bP6HvWA6Y+BZ1qoxtq+5fbm0Avpued6vPd
         HVGcl4hM78XFAiRri2x58Lf4G1S9tlW4NLNM3i7eaiOW4rkgxBu9DX3y9b8b3mb9GtgW
         riH1FsMc/TVmGJBnAR0jlzw2ZfzhLZbmOHl/rR2Wog9cjnZ0MX4RfivDF6ZuEDMfMyjf
         QSvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bjfTq21e;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id v25si288200pfg.11.2017.09.08.10.41.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 10:41:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bjfTq21e;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v82so1601230pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 10:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nqcLRd1ROSQbm9mf4vZM+PGfsHSCZQ2wFVihtrY+P64=;
        b=bjfTq21ee0dw8nLB600hfUXK0Sua7PTFpDHZmJnbCIz24tHR7PatrM7FgJWOy2LXRH
         VFRkduJ9rSLbl0aqzFACMxOWN0h6f6xEKW4qOwViCDo4b1+dSUTryvkVTATks/KHSFdf
         HTOHJkOC3pcte5l020hdCQ4DNI63bbn+cWFhkyoQEtEd1IrVaJckxZsfBcmb/TpHsAbC
         ZI7CPcA6Pv7C3WsJ6HbRRy9DHsiXuFXyi+DVjEp429QruDA1XrKYjPi2xWxzBEokni3P
         bwvui++jNgxnrwY25qSFPSo/9ZktIrFBdaeHKZAIA8uwBwbQtKlU/41+WtqfPF5GMVVB
         6Z3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nqcLRd1ROSQbm9mf4vZM+PGfsHSCZQ2wFVihtrY+P64=;
        b=AWcQ01/FRAWEOItXTpabtu0vMogeRcoSZMSOarHd9C3GXUypEO3kS655a011SdnbHm
         kkYX7RaXhQB4NxkpNdWpSyExYmdT+4qT1Rp7Gfa+zMpsopgv+TnpgpA+ImbQPcQb5HMB
         pL2D7xwSmsMkRuvWkwAXuuCSZhBJ+yCUzkujvYZ2RJ5Lg/aogfXKK+uNGRawxag/lhGN
         j/1Vv21NMj29THqrvPEa7ItkBskBdLVqstrqQJCG3ActTDAIRroDbKUsgSrh/j5YqfXL
         I7AXsvHBV+E3rxvhMZuo90c1EaCUsinmZzD86Q7XlWdPFKfCTutZ9oB+OUA5vLtZ3H9g
         UcoQ==
X-Gm-Message-State: AHPjjUiH1GVW1O/K0On90L+8L3o0mD2oBzTILKInnPGNWQexxAmS6pXo
	88ryAnUACQuW9Q==
X-Google-Smtp-Source: ADKCNb5FQ/EhatTZ1NM2ZhU2K20F98S7hjm5ydE9Byfj9LT0r5sVJ77c4Po72wSeXGEFQUvF39Z1Lg==
X-Received: by 10.159.218.7 with SMTP id v7mr4431581plp.322.1504892510596;
        Fri, 08 Sep 2017 10:41:50 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id o11sm3792113pgp.88.2017.09.08.10.41.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 10:41:50 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2] staging: typec: tcpm: Comparison to NULL pointer 
Date: Fri,  8 Sep 2017 23:09:51 +0530
Message-Id: <1504892391-5607-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Makes code more concise and readable 

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Change in v2:
 -Change in subject 
 -Change in log message
 drivers/staging/typec/tcpm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/typec/tcpm.c b/drivers/staging/typec/tcpm.c
index 630fe75..9f4a5a5 100644
--- a/drivers/staging/typec/tcpm.c
+++ b/drivers/staging/typec/tcpm.c
@@ -982,7 +982,7 @@ static void svdm_consume_modes(struct tcpm_port *port, const __le32 *payload,
 	}
 	port->partner_altmode[pmdata->altmodes] =
 		typec_partner_register_altmode(port->partner, paltmode);
-	if (port->partner_altmode[pmdata->altmodes] == NULL) {
+	if (!port->partner_altmode[pmdata->altmodes]) {
 		tcpm_log(port,
 			 "Failed to register alternate modes for SVID 0x%04x",
 			 paltmode->svid);
-- 
1.9.1



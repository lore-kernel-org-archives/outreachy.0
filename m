X-GM-THRID: 6670497613364592640
X-Received: by 2002:a24:3dc7:: with SMTP id n190mr7634992itn.62.1553410766773;
        Sat, 23 Mar 2019 23:59:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b2e:: with SMTP id c46ls4633399jaa.2.gmail; Sat, 23 Mar
 2019 23:59:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyWeDwHftqdNTvEj4+rUnSvb2wnU6u5gbneHwvi151tObf0eCDHgvIjbtYTBXKtmcExTt0A
X-Received: by 2002:a02:6610:: with SMTP id k16mr13403829jac.40.1553410766001;
        Sat, 23 Mar 2019 23:59:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553410765; cv=none;
        d=google.com; s=arc-20160816;
        b=pDw+WFXKLaF60pRja4L9/S5Pj5vtUEBB1d0qUn7n7S3+GQcA/fVbqXK5ipK1iJuDRB
         JdGPItTR2SbmFnwisoH/b5M39QSsz3aZGvoMYUfFDPJPcpScasZZ2IBF5zXRfdQBc+n3
         k1HgwiruDFsnOdxLVwtiJUvUor2nyC9+Qk296F9eslHsOnjYMJdQQNNOs9zRw5IS6RCu
         QofkY89mH359ruHHgrWOVACRcCosSk4Wy5zmysyOAjpCk0NC5kF8dB+qX0iPDbhtVu0X
         ZxSOyZQzvJKOkHGyVAXyGiQ8HoK2ER1rD2g111aarWutrhvddZDF0k58aIenMM2XPOUK
         8nbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=pbzX+T4vsXsRUOdej2jN/0fZ05RncuDrp2XVWaF3C2E=;
        b=SjQaGm/7nciBCWVmWj3ZZH5P1o42iwMeYA2QBV3Ua+I9JlUfBFct26FbTCqhUbQ6+W
         dNxswS/CdtyW+stStmldI58lHpdTCQtR3iMd5ldSS4An2zUByM4LKZCHwrhV+THIUnaF
         9UsP0BwmUBpYkZRHgJs+v/onGs/jZ6xJqskxQc/JWB2zS4lz62p6g4PngiSRiaMFKxb+
         YNr+axXzx3Gm0Xoj9LzoOgW6Ubu+XIltHM4yVNdL1lBvxI+4Dn+USFVMP0GcgBwb0FAM
         uoQ/uWqgRJaV1SEhduWa5gwzcB+GWc/nhNTk8ivLynr/pSyZooMswsAMIzeLwc2zO83R
         w2kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hWqaqdvH;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 65si1085996itx.1.2019.03.23.23.59.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 23:59:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hWqaqdvH;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c8so4221711pfd.10
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 23:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pbzX+T4vsXsRUOdej2jN/0fZ05RncuDrp2XVWaF3C2E=;
        b=hWqaqdvHIFoH+vFGo5vrA1X9NBuIp4/hXFkuPm5LA9V9IkiHbjfincq0magumpWoWQ
         qzxiRIwxNUmF2ASQuSjGPV6Sg8cVCvEM3QO4N3oJpNFPAGKBcay547ysU0tyGiShw3xe
         8hXBuI6IUjVQlntElZVYh4vez0Cpgvqrh5jQfQCDyg70RSvgJp780XP7hyqNjj/Eh+jf
         ZgLV0Jd51E3Y6JAqjkyYUn/FHM8DqdIULhC75WssWJP/8Jmo8rOkP2jO51UB2sPQooaC
         9a4L3FXEx2ZC6EOHMzR2YCyK7C0ptB4MI4/+qpJd8xPsHfVmiaGAwZk2yGixRkwP0G4m
         lo8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pbzX+T4vsXsRUOdej2jN/0fZ05RncuDrp2XVWaF3C2E=;
        b=aa3xbTOyPAhiLbggeu/aaTMgOYJE8k2Lv3MRgfdyXosQuIeCmnXl0G27485zahGmSb
         Z5W7q4GYB0viESImezhvGqzirB4C/kJcCP/UsYa3NX+QBsQt4n2zLm2FVjXcgMBT6lgm
         IBJWHxkCtfs3BeUvrCxY3614Gg65GxX4DA44vOsRI1Kc62lkvrG5iLbq82EPYlq6zVOZ
         Nu3QftXjeRofEsuYAXoNRqQBxxExd40X8aCwsKp8VFIm77XeNXaF4O0Bx3lOdkH2w1CC
         OicnxY+C8l0/SuaJOWi3zrsth5Jl+y2sUuUcaO6me7Ba8QU9DXSYj67ybKUim9Jfy6rX
         GD0w==
X-Gm-Message-State: APjAAAWIOskC5OUpOdSKcrOFVD4GTVrr3j+X7WLB6GjwV22QY1P2UAf/
	I8NhgsMKlHwEqsfApX6vpMDg8Qau9jM=
X-Received: by 2002:a63:3185:: with SMTP id x127mr17131040pgx.299.1553410765386;
        Sat, 23 Mar 2019 23:59:25 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.77.18])
        by smtp.googlemail.com with ESMTPSA id t10sm22080418pgo.27.2019.03.23.23.59.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 23:59:24 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: core: rtw_recv.c: Modify return type suggested by Coccinelle.
Date: Sun, 24 Mar 2019 12:28:55 +0530
Message-Id: <20190324065855.7685-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

The last two lines in the function could
be compressed into one. Avoid usage of local variable.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Test build the patch
 drivers/staging/rtl8188eu/core/rtw_recv.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 90eb1a025051..606a9f51508a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1859,8 +1859,7 @@ static int process_recv_indicatepkts(struct adapter *padapter,
 			/*  including perform A-MPDU Rx Ordering Buffer Control */
 			if ((!padapter->bDriverStopped) &&
 			    (!padapter->bSurpriseRemoved)) {
-				retval = _FAIL;
-				return retval;
+				return _FAIL;
 			}
 		}
 	} else { /* B/G mode */
@@ -1879,8 +1878,7 @@ static int process_recv_indicatepkts(struct adapter *padapter,
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@ %s- recv_func free_indicatepkt\n", __func__));
 
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("recv_func:bDriverStopped(%d) OR bSurpriseRemoved(%d)", padapter->bDriverStopped, padapter->bSurpriseRemoved));
-			retval = _FAIL;
-			return retval;
+			return _FAIL;
 		}
 	}
 
-- 
2.17.1



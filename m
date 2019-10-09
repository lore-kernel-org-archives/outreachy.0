X-GM-THRID: 6745947085082722304
X-Received: by 2002:a62:ac02:: with SMTP id v2mr6270051pfe.97.1570663201743;
        Wed, 09 Oct 2019 16:20:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8bca:: with SMTP id r10ls366185plo.13.gmail; Wed, 09
 Oct 2019 16:20:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyyzmSivh1CiIsOhUTcclxh27167iJl/VSxbjxyx55AdXVYgI1nbyM4gi+3IsyO8jh7Rehq
X-Received: by 2002:a17:90a:9416:: with SMTP id r22mr7187248pjo.20.1570663200681;
        Wed, 09 Oct 2019 16:20:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570663200; cv=none;
        d=google.com; s=arc-20160816;
        b=gVipql3ZirwsGeIlbBxkyppZjSg9ig+XS212vzjFtUqzGh5n6fp86K9E7G9Ezonc6C
         NjltG48jyZTLNZRwU8NY0P7KyEvbCzWlxE2Yf4+VlzUKewijjOFcpSOuBjmgwFcjjZLQ
         5Xqaibmo4X/Y+MGob8jtgNtVJM/UjGj2/BAfOwZehzeul8sLL6EzHkG41bcesmy6oLvJ
         FlNtQGWrRRZNZFq5gKW1qmMkHbaLgqh4N7K29SQpDntKugQ40K3cbONo1mudsBXToggL
         WN/pifWbcVi3FE+t6DhAWBCkLmbHx55VwNK6IDAUbZKLSK98EhzWHntE6+thwIJ0ziqE
         4O4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=aIg/tvRNjXcYSyM6pfllmcAozn90gFN35Jb3DHk2+Sg=;
        b=z01hX8nbQxiND/oY1FiimqlwdmwvMYYdDfxbw+LCXthiipa3SkxvvwGxQ3+nzHCgKL
         5AdxyBux7io49izAcVZbZjwe5PsX1pQRTL20Lwn8XI2BPiQuYb4Rij/lIxTgoKMguebZ
         GTGizeWRGtrGX8GKv7SCH8Z4kM+ek3aMizZ9F/8juPzhwftkjqKry4BIUKGPKVHwiz+F
         YasiQhvp3utnzlAO8O4cGlmVAATWMyM/bLpO+c7hgcIKfhYusv9mpHzcwi0WUER7x3q8
         VYjVUtBTx34l0aGkhagIi1nkEOh6/4y60Rra1xtuBWRs4LSdQffdY7eCM/LJgDiOUFqH
         ZSWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AC2oWHKJ;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id x13si104356pll.1.2019.10.09.16.20.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 16:20:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AC2oWHKJ;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd43.google.com with SMTP id n26so9320119ioj.8
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 16:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=aIg/tvRNjXcYSyM6pfllmcAozn90gFN35Jb3DHk2+Sg=;
        b=AC2oWHKJDhzvCGsTJLoDqVHK8zfrtoInqnK5+6R+beNirfpeIy32MJePG1Uhe7pmIC
         /yP4IO7WsR6Ve+vv0Cm1leZcqBw4KmkN/FQDu8ix8OgAwg3XxZvc44xjoZkBZ5fXGWrQ
         t073VsUf+GAvFOOxAOoh5w4KuUTRZ5stAIudcrVX2ffeKYDgTS26U5shIAwzwGLVjGmf
         3TGW/cSbNSt6pE7g9SBdu1dT1fRYTm6KUn6RcEvfHrbT8hYTRkhKmKhzLJZ5oyYIG54t
         s+FyYtMdtQCKVBvcb0ZukT28aoJVZNIYXTY1Jatt5jgbO8unuzS+gRdv9Is1qfJ+tj7X
         tU7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=aIg/tvRNjXcYSyM6pfllmcAozn90gFN35Jb3DHk2+Sg=;
        b=gqQ+pde2erX1DPVB5qE+HZXFXPQwRcWvRZFUsWcoYsTpEMoGjzbfKUr9y1webRwGEd
         XbkGkj+og4jNASwnJ10A/ZUxSzF1EbebnGkx8CRKKnmVFqEVLgdRrtS6n1iSocOMjY6F
         +Henn4hTqJ1PwIyXNHUmhvG4TBfd2T/VaftAriWWLbaKiFLilqHtc2dYGdnXsKmd5QE0
         fFLkHF7bwEXSdWdffcpvz3bQoq7N3i2GdslOX/IJJOIpTnzzrS8zgAn25pmBqSmG7p6m
         +/iEUtnqIejo9GawHf+RCT7MMFASD0zEHxUyDD/QezmXXYU2HttYD4aNgZ4NbrhVvrRI
         v4hw==
X-Gm-Message-State: APjAAAWQj+nUdYNWrKyTX2hUACDQORFAvpUxbjvez7OOGt8Z5xZPxPxg
	ISE8IchFttRXKlVP5vh0vqHCK4C72lI=
X-Received: by 2002:a02:6a28:: with SMTP id l40mr6324525jac.39.1570663200416;
        Wed, 09 Oct 2019 16:20:00 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([185.229.59.77])
        by smtp.gmail.com with ESMTPSA id t17sm2299992ioc.18.2019.10.09.16.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 16:20:00 -0700 (PDT)
Date: Wed, 9 Oct 2019 18:19:56 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Fix incorrect type in declaration
Message-ID: <20191009231953.GA8774@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Fix incorrect type in declaration to solve the warnings 'incorrect
type in argument 2' in the rtw_get_wpa_ie and rtw_get_wpa_ie function
calls, as both expect the same variable in argument 2 with the
type int *.
Issue found by Sparse.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 8e58763c8a8d..db6528a01229 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2430,7 +2430,8 @@ static int rtw_get_ap_info(struct net_device *dev,
                                union iwreq_data *wrqu, char *extra)
 {
 	int ret = 0;
-	u32 cnt = 0, wpa_ielen;
+	int wpa_ielen;
+	u32 cnt = 0;
 	struct list_head	*plist, *phead;
 	unsigned char *pbuf;
 	u8 bssid[ETH_ALEN];
-- 
2.20.1



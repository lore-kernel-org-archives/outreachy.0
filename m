X-GM-THRID: 6464894536375074816
X-Received: by 10.13.196.6 with SMTP id g6mr9611952ywd.137.1505226314764;
        Tue, 12 Sep 2017 07:25:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.246.135 with SMTP id u129ls1293788ith.13.gmail; Tue, 12 Sep
 2017 07:25:14 -0700 (PDT)
X-Received: by 10.176.93.200 with SMTP id l8mr8897045uag.119.1505226314039;
        Tue, 12 Sep 2017 07:25:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505226313; cv=none;
        d=google.com; s=arc-20160816;
        b=VqrOeVm4JhyhUHCfz4aSE4hD1ncRu/90dHyJY+dX9eb/OqmwBxDtlzTCMHV/SPL3Tb
         mEByv4p3nIfcGvmef/V9ioMeUKBYmCaWJF6dvXZoeGLPmBHh4yg9rEMfvtU5Of1VXmzK
         EkTEv8/yIz6jj6LxAktFpDIeV83O6FKro8tX0vBc0tcNKo9zxmSj8z3h0mgVoZjGq/H1
         kWS78KEpBHDeONYuoxeL8LGERWB2N7sn8aNAe9Bsifa/3+a/uwwW+8H619IJLYXcLxPU
         p4Y9+2FL4pmQ2XEcUQUI7RFEgHJK1lIagfUpOR+PP36Aw5ykf+UWpIQgIUw7/21vQMvx
         gqrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Se3FXjWxXBUDLX4rjGtfGPO/JP19ERr45KzBoLhf0Cg=;
        b=Pj6tUlj6KGnQ7Q2OqPBxEEkxtUNN4GgnAkvDVncakIzO0G6CO9Z3PzSS0fQFR0pgoU
         XEErQj5ELbOpOjiY0drV90ouotPAFsWTr3hu+Fqw9fTvEkMGVJoujTnR/dQzH8L295Gs
         2kFKdET6C4lmLS9AeJnxn0tIh0j0sItLSUlEU4iauTUAv5ChYX0KIa/aXKbldxdRvUYE
         z6MkqvLlKi3iVX5uuDQtDs48Ut+E78QG2UKsvH13SisZ7QZq/4KsuDTnsnS0QPkguone
         6M1Y94cN4foTJpXeBIc5DcDOUQYv9QHQ+WzkbC4I0vRBUXFmTkpv2seGNANMXNDUk8pB
         Iqrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vcC0rNKC;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id q65si1168801pfj.8.2017.09.12.07.25.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 07:25:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vcC0rNKC;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id i130so4237717pgc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 07:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Se3FXjWxXBUDLX4rjGtfGPO/JP19ERr45KzBoLhf0Cg=;
        b=vcC0rNKCwCFEfyh2rxpaoux89DUvfwgbrmYpgCqXRXoZuq96FYNVRsSo737bevIpsP
         X/QDqs+kJ+EMW1Eyk82/4EBJKZgyCHsf2k1ib7nY/SiTdzkWXLqy35Wmd54cVTACmCcU
         igHdvmUZqtujmcOK+CHOl5L4tDe3lMgXRLXP0jbn4w5Gxr4gvkcnkxVMV4HlHYQrlgMK
         4fcxEHi8VGO9fheL+SzblZTiWRzi9fdni35uRMvnHRgDWysEidtST2afJLGtlO4eVuYk
         9pCC9uFB9ZI0P39G4QrLfyrxsZBbCqRrRBnKdRbIJu66jrqB6uYhiB0gy3j2UIn5GpQ6
         eAAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Se3FXjWxXBUDLX4rjGtfGPO/JP19ERr45KzBoLhf0Cg=;
        b=pj0aWZRMdi4wLvxLCW0IIK/e25Vn0xcxYFJPRQKIcyMXyfM1r0FK6DdPlTcNpj+8Ik
         NIQA5i3Rg+XLb3KotnS3B2L662pR2GzRhfd81vChebE86oV23X62O4AMz7P6sBBkCkuq
         FkLryPIpwiXf5NA5u2iVNoqFaLyxH8q0hVsqfXro8FLSWDd5dk2R+Spcxwp4pMszCrAy
         eukUI3mBVCTyjVBoYgdo7cd8CC+vLp86xn1C4jjh5BRF4NJ4We7l1+3W+Hm+/l+3Qd15
         8Fy7Xj71o5SHh8qNgKxJKg4O9DvVzXQLjRnvqZrMacdkDppR51n2Z0ESrxIvsfxpv3E7
         EHmQ==
X-Gm-Message-State: AHPjjUhwLcXAly19vyC2zSQoaMW6sIeLB9a3sR/Aqh6Gx9gt0cZ2zsLT
	SwHAXExELAdjFQ==
X-Google-Smtp-Source: ADKCNb4yCfjno5ZAA4lD07gTBUTH6k/rh0+qQ7nesIBBr23KCo+qk8mJRhwFyFXmXDvxNOJ94niNAw==
X-Received: by 10.99.114.76 with SMTP id c12mr14546757pgn.296.1505226313729;
        Tue, 12 Sep 2017 07:25:13 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.175.183.249])
        by smtp.gmail.com with ESMTPSA id l131sm23534838pga.24.2017.09.12.07.25.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 12 Sep 2017 07:25:13 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: media: atomisp: Merge assignment with return
Date: Tue, 12 Sep 2017 19:55:07 +0530
Message-Id: <1505226307-5119-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Merge the assignment and the return statements to return the value
directly. Done using the following semantic patch by coccinelle.

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
 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 11162f5..e6ddfbf 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -1168,13 +1168,9 @@ void hmm_bo_free_pages(struct hmm_buffer_object *bo)
 
 int hmm_bo_page_allocated(struct hmm_buffer_object *bo)
 {
-	int ret;
-
 	check_bo_null_return(bo, 0);
 
-	ret = bo->status & HMM_BO_PAGE_ALLOCED;
-
-	return ret;
+	return bo->status & HMM_BO_PAGE_ALLOCED;
 }
 
 /*
-- 
2.7.4



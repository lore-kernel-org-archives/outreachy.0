X-GM-THRID: 6956886688242073600
X-Received: by 2002:adf:f152:: with SMTP id y18mr5654076wro.77.1619776405874;
        Fri, 30 Apr 2021 02:53:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f68b:: with SMTP id v11ls4125778wrp.2.gmail; Fri, 30 Apr
 2021 02:53:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzZMefAAvul99CDeCM9hCbGjaEOOUbOn2UsZjljMRTJrhZBxBIxn2hhZcS6Yb4orrg0KRsu
X-Received: by 2002:a5d:6d0c:: with SMTP id e12mr5416154wrq.321.1619776404478;
        Fri, 30 Apr 2021 02:53:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619776404; cv=none;
        d=google.com; s=arc-20160816;
        b=0C5YCWSrfRHGNXZG+8dCtTyEK2Ys+KAlMQGO+8v2Rxl56PyASrkmrTmhZXkEIMh6eo
         FwT5IZ57hbL6e+MBpKa9Ljyoy38sFlCFwAefNTUCetYxeOggyq8TyYlwZXfYZHSe6yGg
         JGvO70N6qygCoClD4m6Rr0xLX4DnQPDZFCe1y0+nZiz42Jhxdb2fOOuFTE4Im5VD1tcy
         lptmQ/MbxqAlbKv61beG1CO0ckuUb6k29ZOigm70AsmwlxTGNFGyEm5F+OosXO2lOL97
         d8/rrhD7pEACRXCAsR3lyXCvwfv4EOHZNP8NB9wFIB2EO9j0u26HqJg2QDRhPiHsXyKo
         bULg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=fBSgjBNdxte1Vivu5LDpQPAo+k7uzN+EmhLuoV7VqWM=;
        b=K+lan1KICs2EElODrRrFJbylJ/3fq8lXB1HNHdDWGce3rxyKySwYM/WCz+BFAgf6DT
         jWp3CaMW7q+o6Mj/cw9kKyOJHo5OgDJbAte8+seEh0qNXImlhyaUcmbt7J69tHQ6hlg5
         w7k2YoFXvqeQ78d6F6aeIAePBagmW1FQ8H4lHPyIG7Rur9g29fjVOqXc2uv1ISrSM1Lo
         9RyrAnk9ylErNBg64ffL9tyU5ycbvad/8i1OfDRByIpzjGmKUYjRlCGfZzRZZUJXh1tj
         gTcE7eNAJq9EjBgdb2pL16qPvIXJhLU3qqEzcCf3L1C9FsBkCIIbiMQkHKBndrxPavjr
         YzIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AlFnVwHw;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id s8si393144wrn.5.2021.04.30.02.53.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 02:53:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AlFnVwHw;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x536.google.com with SMTP id q6so22638394edr.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Apr 2021 02:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fBSgjBNdxte1Vivu5LDpQPAo+k7uzN+EmhLuoV7VqWM=;
        b=AlFnVwHwJlRnAr3omoF9QiU4okufovYE5Hl+g7u4QX145UTL/w3pr26Xrs2z5ZG2lZ
         glzT3dq8lDAqhkwPoKumXgU7OSVmIRk7iabOwra00oW5lRN2UPawHoYFmdemtbPAEUw1
         G/w/15GXp8y6P3lavC9oc38rgopY700OqkFxop37WzJKSfKb1oOVCrqeqe+ZWVMrBoTJ
         yRjQryvDLhX+jvo2pV0W/IjphyUHPvpi5zHMLDrYHHw7HUkwkeIEeE0ItBCGoEDnc7Y9
         40i0RQpZ+CXtlxYlLLmH1SpcjZADxOMJRL26Gjrnn3EvD+hahOdMyTnplk6KznfQJr6i
         nBSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fBSgjBNdxte1Vivu5LDpQPAo+k7uzN+EmhLuoV7VqWM=;
        b=hrsgpKrj3i8zfpgM3jB60U8OQgNrJErVuyXdcUFc2UeC1KAfe68viSmR1uPb8HG9Vb
         Iz762cbyFh0MTIuWJbtRyiXvevWki2yv7+EtS96OOqjn4Gjf3xnlLmf7KO+0YqwqseLR
         oBPZtGHs0NNhc7M1jVm9j7EooLFz0P/j59GdxGJveCCPF/dSuEZSSiCuNQhHJ19ilFRh
         y8nzxVMzwLsIOkqx3NG9aocoeNpn//fx+7HKMbWF3niIcVgxemc0W2XAnShe2NwAVwt9
         PKeudKwHhQlNWY9cgrpPh3uKLFUZh+ajrRlzcBFfENm4WA7oPZElsb8tn09KGz3Xh8gq
         Goqg==
X-Gm-Message-State: AOAM532U89Whd293kW7tOfRY+FImnCHG65bmXgFezdGQ6wCR1MFZItLi
	53I0ZafriMveItVIafOwQd2n1LA1R6DiI6g+
X-Received: by 2002:a05:6402:6cf:: with SMTP id n15mr4723481edy.51.1619776404091;
        Fri, 30 Apr 2021 02:53:24 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id f30sm1626861ejl.62.2021.04.30.02.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 02:53:23 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 0/2] Remove set but unused variables
Date: Fri, 30 Apr 2021 11:53:17 +0200
Message-Id: <20210430095319.23226-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed set but unused variables. Issue detected by gcc.

Changes from v1: As suggested by Dan Carpenter, removed no more needed
curly braces around single statement blocks (patch 2/2).

Fabio M. De Francesco (2):
  staging: rtl8723bs: hal: Remove set but unused variables
  staging: rtl8723bs: core: Remove set but unused variable

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c     | 9 +++------
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 -----
 2 files changed, 3 insertions(+), 11 deletions(-)

-- 
2.31.1



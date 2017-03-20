X-GM-THRID: 6399553954141700096
X-Received: by 10.46.7.80 with SMTP id i16mr3852256ljd.5.1490012266009;
        Mon, 20 Mar 2017 05:17:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.2 with SMTP id s2ls206648lja.46.gmail; Mon, 20 Mar 2017
 05:17:44 -0700 (PDT)
X-Received: by 10.25.196.68 with SMTP id u65mr3414221lff.0.1490012264800;
        Mon, 20 Mar 2017 05:17:44 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id t131si671148wmf.1.2017.03.20.05.17.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 05:17:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z133so14159322wmb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 05:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=sH8NNCD4NzF9em5TmtYaEyQsGQ/YO+Ms8I3kkbRhNFc=;
        b=Kf6jDtmsihvJvZdCQYRoDEdu0Kl0Sbql949BNMQB7BpLy8nXL4djEHeEB070LIgGYc
         ZZFiswekzT2GXGwkW/jzsSaZ92vExPdknJuTboKeMn+s/bUFkt4FyguGkYUzjiAwhdU4
         GRNui+XShzMHJBYMa64hrhAGxFcBtKyiRjt2I1ErKiv+GAjtpQm5X4vNWS0TSAF+7JjB
         UdjrHp1mPxnn0Lsg2/xU1IdndxFm2JDlo2tLUvvc/cMhn8eykgE1SaSFaSCvpnf4EsVO
         W/RfWoyRWm0s7TNPheQCUtTa4fayfx1KtJd89rwxb5QKElnk9T5smM52gamNtfLJKcRX
         oOjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=sH8NNCD4NzF9em5TmtYaEyQsGQ/YO+Ms8I3kkbRhNFc=;
        b=cRaizACBN/WV6oBAfAfYCEGsftrpP09mgilnSaYfKEn6LNG1Y4ViqF3vTzaeFbDED3
         PtJAo5x9AqgkKXHRskfHRXCD9MzVwSHsPPhPUCytevdAbXKehIvMChXHL0f/WX0hvv6m
         ePFH/EmfLTv3/pP/kJp1Nnj8+o02kyg88Zn1wOKNGPWaRS0JB7fcpzWCHfa0UwjxyQcM
         mTjPjH3gg/nXBMi/LsyfbePeGfzN9gd33IwUYIlGCJEdvzDewAWRDUi31s9TWfwLTq9I
         CHJIKtMKE+LU2rfZs0m/t3wWKllLaZadLVAHSfIKND7+FaGZ82mnd+VnPH00JN1tBC9j
         62Kw==
X-Gm-Message-State: AFeK/H0KyilDvvMm1e4P6xEq11VRMBalaKZl9HHNqlCvA2tnGg/lhfZJ4nH0duK3Gbo/dw==
X-Received: by 10.28.36.86 with SMTP id k83mr10549429wmk.90.1490012264595;
        Mon, 20 Mar 2017 05:17:44 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id s17sm20724486wrc.25.2017.03.20.05.17.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 05:17:44 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 0/3] staging: iio: Fix multiple checkpatch issues
Date: Mon, 20 Mar 2017 14:17:22 +0200
Message-Id: <cover.1490011900.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes multiple whitespace and alignment issues
reported by checkpatch.pl

Narcisa Ana Maria Vasile (3):
  staging: iio: adt7136: Remove unnecessary blank lines
  staging: iio: Add blank lines after function declarations
  staging: iio: cdc: ad7746: Fix alignment with paranthesis

 drivers/staging/iio/addac/adt7316.c | 5 +----
 drivers/staging/iio/cdc/ad7152.c    | 1 +
 drivers/staging/iio/cdc/ad7746.c    | 2 +-
 3 files changed, 3 insertions(+), 5 deletions(-)

-- 
1.9.1



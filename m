X-GM-THRID: 6746014123494998016
X-Received: by 2002:a37:5b46:: with SMTP id p67mr7443559qkb.318.1570678810440;
        Wed, 09 Oct 2019 20:40:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:7587:: with SMTP id s7ls841542qtq.4.gmail; Wed, 09 Oct
 2019 20:40:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx+CEBHWBN8U+RKaX3Pw+7nc85/rq9xfXWsgxXwQXRuRoBKtZcnowmjI/I1f+c36GIpYyV4
X-Received: by 2002:ac8:5556:: with SMTP id o22mr7809086qtr.217.1570678809518;
        Wed, 09 Oct 2019 20:40:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570678809; cv=none;
        d=google.com; s=arc-20160816;
        b=iVwJrjkRuSYr0uEupVy18r+/GgQCZOJQwdWAdiKTiD4j8ri0oMcRpaU0lXqB7zqh2p
         d/OPbZiT5xluzQ3h+U4WCq/XLS510fjDrgrrCOxRGAKb73HBcxCaOC/LMJ6HKWMcWpy6
         q721bfHAyDCtUKTK9Psh2hJA3Vd/3FR7sJRsqD8GsvOL3xM/m8DKYzghKb6l6BHgz+bK
         YHJVsXlogtKcuIlj1BgwCJbVk4Ey4coCBcUy6LYnEO3Pc52LiBFiwiWEk7f8/jDNgq54
         d5QXv4//rMakrmq8dubbCpSZutk+tKfd1nCvC75+pmpL0EiD2E0Z0S0By4dtEptTZjP6
         KXVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZK2sCc0LVeILJIcSjSFvo/+6Nag3nmcw2niS7MjL9pk=;
        b=jhId19htHrp1L94bWIyJo5Q7b2VOSTy+xpGL3VKk0jtJIwyV6++FMq+CuLp57xt3xp
         Z9KZrj0f2o2B61pUkece3IIfud82EMUyKURIyzrChqcSwj4yozc8pmcPMBH5Tm4Qcv45
         5tOaymQm9dpXQdXgvzoAhFBW5gOhJK+pUrrZAggwMIAHfo9cE7i2hefTrgefEgMsjUex
         8WP/siWtxgDTHRuiB5rHx42BvDfVWynfC2mbiU+VI8i8cgmftU220LPPxCiJHssANBzU
         BNMVHeSF27eJMYjeuayJdEl6/rW17IXfjNOoo46E6zVv9FGZIcicm5XHRKBKCwa/kZN4
         gEPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MZbjJKd7;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id n67si49100qkc.1.2019.10.09.20.40.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 20:40:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MZbjJKd7;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id r1so1555273pgj.12
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 20:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZK2sCc0LVeILJIcSjSFvo/+6Nag3nmcw2niS7MjL9pk=;
        b=MZbjJKd7k1YG/Oj7W2lWYjKMxRW1Q5nh1GwhgnqilvVgXbJ8KtkSCh3i7cxrHzefov
         O+xCscx/l35nQbKifkoW/aJQwMtIUmPz5BxoKQcZUql+jRB4L4TeQa2z2Yu8h8u+VhNq
         yJcVVNApCTsmOwFyar3Nrui/jODAtPl5lNTr4eIcPfRakt+wAzm9DJ+e2lt9xuuu5Ypg
         m9o+mtOmYACJ17RT7tt87N0Q/Hz4ZfRvsufZpzS8skWZcvJHQNZt3b8/+67I3o8i9F2y
         PlNE4OP2l9zcrvk4HDsoOqNahY+soNus1/iBHVIYxQA+KR4hFDuu4okSbZfDIb9g261I
         43mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZK2sCc0LVeILJIcSjSFvo/+6Nag3nmcw2niS7MjL9pk=;
        b=TrWOYaBW9Fad+hiVaLPN76LzZ6rWm0eKmF74JFtlS9UXRQ/yCkCBcXThijO4PDFyDh
         iJhgvDV+qBEBWQdFpMQfC0O3EIek9qTL0Ke9aa56+t6QABsIOtK1TEXCSZHottpA1d5j
         4gN3+o6ALGwaK9nXtaWHomajxLFTEKCoY4c1QtP8wurJCqRz/qXF5TfWqk8MccStJt6g
         B7y6Uh1vwYyZISYmk5dLCLIBeJEhLcETMas62rA+/mPUh1Ld/sq2D/7O09LMGcMwGKnD
         HZG37dbsXdk5Yk4Bb7knbwx7Tkcndh+YMTREGZQ7GgmApriC5judj3AK3LPoaJdOyzQQ
         lvzQ==
X-Gm-Message-State: APjAAAVbPHb3VxklH3cw5WDwY+fQW4BEQQbxsAV3DLLYog9INDK7WMsF
	6dMJgXSd1uwMstI2wNALyJMjiGJTKBM3qQ==
X-Received: by 2002:a63:d450:: with SMTP id i16mr8226993pgj.126.1570678808149;
        Wed, 09 Oct 2019 20:40:08 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id k95sm3517741pje.10.2019.10.09.20.40.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 20:40:07 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH 0/4] Fix style and formatting issues in rtw_mlme.c
Date: Thu, 10 Oct 2019 06:39:20 +0300
Message-Id: <cover.1570678371.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchest addresses multiple style and formatting issues in the
file drivers/staging/rtl8723bs/core/rtw_mlme.c.
These issues are all reported by checkpatch.pl

Wambui Karuga (4):
  staging: rtl8723bs: Remove comparisons to NULL in conditionals
  staging: rtl8723bs: Remove unnecessary braces for single statements
  staging: rtl8723bs: Remove comparisons to booleans in conditionals.
  staging: rtl8723bs: Remove unnecessary blank lines

 drivers/staging/rtl8723bs/core/rtw_mlme.c | 157 +++++++---------------
 1 file changed, 48 insertions(+), 109 deletions(-)

-- 
2.23.0



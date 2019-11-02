X-GM-THRID: 6754555674055671808
X-Received: by 2002:aa7:9d09:: with SMTP id k9mr17743024pfp.154.1572667545343;
        Fri, 01 Nov 2019 21:05:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:6889:: with SMTP id e9ls2010818pgt.15.gmail; Fri, 01 Nov
 2019 21:05:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxVHhirE7A5KiLkyfduBjQjox8OXVrcfdNOKfC+yaPMgJS6Z0P08W/mjJ/U52VEMM3vdSWM
X-Received: by 2002:a63:e444:: with SMTP id i4mr17925008pgk.247.1572667544131;
        Fri, 01 Nov 2019 21:05:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572667544; cv=none;
        d=google.com; s=arc-20160816;
        b=JmZeu5jeQML6Bh7u2IhcsrsUpD3sidwdnnKsYBPbvjSEFH2oR/3lsfwAQa5cyWDVmH
         n9xzEaoJwVKjAeIEjf7UE6xnN2mYMKgkSmPDUQYBcTAmnXUb0U/vbcu4zMiNR0NILgue
         96AoiMDS2+8OdcSFqSocX4Xwcog/sJbOkYxJBtWohNfi4JoHwOwSiyPjvda2XBoA+Yb3
         TI1YbgIvZ6HMGbAIVVEV0iMUP17QADDj0xdEEAWXBzbd58Yadnc0cDgrP1mLaVXd8/qZ
         R2b+xC9P+Imb+sVH9ZM397bUJDE/hp6HeFE2RyDCs7wQt741ZUn/Qs4mVTy09cY07M4u
         b6JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=9XAK5SGiPHDWV0Ycxb9r8jnP26hHfRPB1BaImCnWo8g=;
        b=stgWDzoH4X7uReerqQ6lXOOGRvToU6QRtLBysZ5Fuicxfj5OHjVaU6soqWfQBvgML5
         XrBahsEbA30MbeySJ1QA74oF2uNhxy/0CEiDFWJez6wuze+HTv+Ph80BTjGWiDuTt/hB
         /LGfyQG2JMI7MdAgd0JJgu2FHhS72ITs6QB+5SyfwW16v/TWkaxRxCqWiYQTVX7UAAoy
         DL2PlpIECIgq8+N99Il3clpnp9voRSFvfpy+trU1o2iSahHgqoI7W1l1ouiww2oARg22
         c6ocGzxsLJCtNX5QksnNkbyoFZA6JKQx/Kvo/pQtz3VNFELPXizneFUPeddyrLYKAzda
         G6KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=BqxLOFPI;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id s26si429730pgn.5.2019.11.01.21.05.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 21:05:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=BqxLOFPI;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk1-xa44.google.com with SMTP id j84so2659551vkj.6
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 21:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9XAK5SGiPHDWV0Ycxb9r8jnP26hHfRPB1BaImCnWo8g=;
        b=BqxLOFPIgr/8jRZrjxDbDOa0SxCVDxRwCssIJR11V+oHI6VoQ9idPtzyNY9TGB0Cmr
         Z0FDVnUWao/iFoyi8kSq3UVN8XZkiuS8BHdZZMG7H40rfa3FuuxGvcgzGMXT81+HlexE
         PKu4kUCNziJmaUHGDYnrDyOdpjG/NKXtqGgzNX6YHHInis3TOGRZAeq8EVLTR3tAuF73
         BvstQt5AM6hqALQY8G9AFz3TanbLikzl79uwYJsdw9FU0vZKmBQ7pb0cMEHc3zIpGHaf
         W+Tywf3WmhJzhlkUEVnTS6C43z88TAQaJtJjrzTLZHt2o3uClGWT9V4thBSO0XXkfSIH
         vqOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9XAK5SGiPHDWV0Ycxb9r8jnP26hHfRPB1BaImCnWo8g=;
        b=Co4CGPpw8H2MtYPgp1KhI5QK91HPgfeG6rS/9mBxrIVPVN5TaRsgmB1u1Pe+BPkVUA
         aGD9v5nZnAJzaIPEKJFSeoG5XI4S3kuQy/FNitMvzpedrkNnvDOTjIdz3nwPJHE/q51n
         ZRiuebGmbUOvQVqnoR1xqvCZsv4H459zrFisqx+lIdb0Fnah2RaMV6oGGpBdS13Y8p1x
         5E9ikri8vuATxmYQS3pC55nS1vQcZCEgjxI7mghEnHLypqNnESP5tq0kXgJ/0Z9evFat
         yOyu1s/nCYUKSmHUUb5izJVcI+sjCsyTzJxaC3vH3OH2drcdSQFAZCjaU2HFGr2MqKqf
         lc/A==
X-Gm-Message-State: APjAAAXrMNittYkLITeEvXv5cyuljFusDZ2hsiy9EfbxmvTHLtgfm4/l
	sQQ3uKYsucBu4EIzCuDjTJkxAA==
X-Received: by 2002:a1f:2f51:: with SMTP id v78mr7147161vkv.101.1572667542910;
        Fri, 01 Nov 2019 21:05:42 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id v17sm1992102vsa.24.2019.11.01.21.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 21:05:42 -0700 (PDT)
Date: Sat, 2 Nov 2019 04:05:40 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH v2 0/2] staging: exfat: Improve line continuation and
 alignment
Message-ID: <cover.1572666556.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

Minor code cleanup consisting of putting the logical operator at the end
of the line instead of at the beginning. Besides there are some alignment
improvements include too.

The code now is more complying with the preferred coding style for the
linux kernel. Issues found by checkpatch.

Changes in v2 by Julia Lawall suggestion:
  - Improves log messages on all of the patches.
  - Avoid repeating checkpatch messages.

Frank A. Cancio Bello (2):
  staging: exfat: Fix parameter alignment issues
  staging: exfat: Fix logical operation continuation

 drivers/staging/exfat/exfat_core.c  | 5 +++--
 drivers/staging/exfat/exfat_super.c | 8 ++++----
 2 files changed, 7 insertions(+), 6 deletions(-)

-- 
2.17.1



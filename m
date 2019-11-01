X-GM-THRID: 6754188364413403136
X-Received: by 2002:a25:84cc:: with SMTP id x12mr7722590ybm.383.1572582024514;
        Thu, 31 Oct 2019 21:20:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3a06:: with SMTP id h6ls843167yba.6.gmail; Thu, 31 Oct
 2019 21:20:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxoT01/gNF4dFHUyJKA+lcHiQGQyfDjzcbi8AodXQ51svfnGpUr9aCW8hVW0+NaKp2GCHTw
X-Received: by 2002:a25:7257:: with SMTP id n84mr7318527ybc.265.1572582022875;
        Thu, 31 Oct 2019 21:20:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572582022; cv=none;
        d=google.com; s=arc-20160816;
        b=DWqy2kK/L17mC+5/YoDA/BVGqNv3wLDeif/uJQQJTp/bx7SZqjjlSthaHC/L0p5QMt
         BxTuLglnAEiuBgBEga4fWftZ3BjpDVaXear7Eah03Imim+wELVmlCWqQuaZNEa/y9zW8
         QsoNAPkay+ah2Kb9JuXxxCjJrHcES3kvolmPf4qK8nkdtGtRB7agjws3cOwtYUq4R1Sz
         TIRcjZPz62nwPsnZgVtQRh9clNeIfA3m7QUKlDILCCROrI2eEkyYK6OrSqw2BS7HK9Jo
         YljQqj33+vdn7UersZZ9kdazx2t9yvCxmO5NMGKbZzgGO2szO+UxvwTN1CMgtFVFrJRU
         lc6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=gLsGQCofAaFHMp2pec0uCApxPfkLKkFnaPejDXmWtyQ=;
        b=x6IcxJdqGk1ZAO6O544JTZgWqXFNUOxwQpqUUr3t4b0EM938Ud768GnDW3qT6H9h+m
         2MJFoJERJm3viBRS1FyhavKO5Adg/5HZbM9GCzU5Ngo40uid6xgqZdxEEoPpPN2l4bzs
         B5wTefUVq7CziVZ2LCRwFbqLEc0bS9QPPsZxvq/FBTEx5Wu74wa5olexFzW+mZVsUGr0
         kw9rmiraA/ugMtIrCFSddx+AUAaRQgKOXmZ7+Ak449o/f80otHuB0/R4L+VTu8LBbN4e
         S9Lm9YM0zfM6WThSF4rgZOK1yLoNW4c1EqPBIuYYnSZrCG4BvMyJw/rhRoRWUVHhMaPb
         ZCRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=lDnIKdtc;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id v135si458182ywa.0.2019.10.31.21.20.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 21:20:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=lDnIKdtc;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vs1-xe44.google.com with SMTP id g7so2741753vsm.10
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 21:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gLsGQCofAaFHMp2pec0uCApxPfkLKkFnaPejDXmWtyQ=;
        b=lDnIKdtctgy/EXzwYGcdvlWB5WPoAPwzKF1UnFI5JFAqjmqV+o3DmvKj3p6GZKGN0i
         ccPEGTLTf4OpTpDGjf0zX7VG+PBym5ZjbDyWsQYYH+HOXU7ChH6FBh501cba+tfCAJkA
         /vUw8fPAxzhAMz8JjpnmhY8nnug1oNVGD3ib+Ac+wTUkW3W2FI2wHwLZ/wB16yth+uep
         C+lzU7FA3+DiOAuKhHnFhGmDHSEdgu1tzoCqmepqU0chc3RiuifBMG8twKw28ZGR/yy6
         hfiyPACD1HMnxXribvq20ZNGGFHyatHO55Fhid2mLCI58zSZyl0Bjhe/BxTh2xwLwyRC
         FyWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gLsGQCofAaFHMp2pec0uCApxPfkLKkFnaPejDXmWtyQ=;
        b=h98BlLUtZkruUX/Y6AqlTRJNRclSp0x/00HUa7Mh0Ic5tikv6GO9YVzgM8qHUrruDk
         kokHaJar9tdFLiXdV/AccXg1YomvxuDEl1MuZcqYubcLS3T3zGe/sq8Fqwc9vNC0s9zy
         O50epvFQPfeB0DneKEpGDbyyI/mtktTV6OZa0ap3sjvNBS4A9oNm32xYFC6rsqzLGjbF
         ukyBcImq2Avkm/mI3NiB+JwRPaaSTKgoVa6jMG1nW5u0Z5O4zRuxxgUTCn+X/GXyKVOb
         Ylj+8KRK2NT1Hoazxjy84NfNjebhoP0Wa7udlxKirQmqOB+naRgvHSgNZfdNI1edgcZz
         kMPw==
X-Gm-Message-State: APjAAAWJ3UWDmBs4zLGb3xd7dTCPx0CchGK7d3NZHfkcQxNshLS9TJcL
	f6aV4WifL15fj3d/G2Sb2LAIZQ8jOWtRQh16
X-Received: by 2002:a67:dd88:: with SMTP id i8mr4576623vsk.150.1572582022082;
        Thu, 31 Oct 2019 21:20:22 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.12])
        by smtp.gmail.com with ESMTPSA id b4sm1782655vka.35.2019.10.31.21.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 21:20:21 -0700 (PDT)
Date: Fri, 1 Nov 2019 04:20:14 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH 0/3] staging: vt6655: Fix alignment, spacing and open-ended
 lines
Message-ID: <cover.1572581578.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

This patchset fixes minor spacing, alignment, and open-ended lines.
Three types of checkpatch.pl messages are addressed:
  - CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
  - CHECK:SPACING: spaces preferred around that
  - CHECK:OPEN_ENDED_LINE: Lines should not end with a '('

Frank A. Cancio Bello (3):
  staging: vt6655: Fix parameters alignment issues
  staging: vt6655: Fix the spacing around operators
  staging: vt6655: Fix open ended lines

 drivers/staging/vt6655/card.h        |  2 +-
 drivers/staging/vt6655/device_main.c | 14 ++++++++------
 drivers/staging/vt6655/power.c       | 10 ++--------
 drivers/staging/vt6655/rf.c          |  4 ++--
 drivers/staging/vt6655/rf.h          | 19 +++++--------------
 drivers/staging/vt6655/rxtx.c        |  5 +++--
 6 files changed, 21 insertions(+), 33 deletions(-)

-- 
2.17.1



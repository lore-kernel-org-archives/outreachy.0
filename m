X-GM-THRID: 6608897994052861952
X-Received: by 2002:a37:330c:: with SMTP id z12-v6mr8578544qkz.29.1538753973199;
        Fri, 05 Oct 2018 08:39:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2a41:: with SMTP id k1-v6ls3213163qtf.12.gmail; Fri, 05
 Oct 2018 08:39:32 -0700 (PDT)
X-Google-Smtp-Source: ACcGV622vJunwm8fOSe9BL8u+Y01pHNAKFigH+N0dqz0xiW75d+lu9aQe3VzJBZDFeEeRBxXsYmn
X-Received: by 2002:ac8:1a38:: with SMTP id v53-v6mr8689872qtj.33.1538753972588;
        Fri, 05 Oct 2018 08:39:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538753972; cv=none;
        d=google.com; s=arc-20160816;
        b=O40mmgN2DKy79uV6+bpRLXEU+jPs12URdNiE9mgC9BgKiSB7Iw1T0PYpgKIbhKXe/o
         jXa9OxOaJ7Oz26c+d+7JFXMZeFZZd3fCYyFw8NZRyrJrjt2XkEVxnQVLg0dhoIBCVCYW
         82IVmXZkeLyTS8TWi8rCUO2Vp3y3Quvj1NQP7mBGVKI01iL/ynBebPKNbRqiZ88S7RSK
         DsMLYAXr9YTpWf2yBDgJwcFOiUEzmErKZNC/oB6vFb+LS4QS8c4WEQW+BzRDBTIdiqw0
         MWxTaqfUtcxFiCs1lIb8JJt+aDNEOASitoEHGieUFTqLJRksBA18y2yimh/FPT19JYD+
         5KIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=0z5CYHKZ1aJQ+FeySB/WHRMYiKtYU1H2w2DF5FNFvpo=;
        b=flVFhgvfErRup3Kvto2Ytq43Uxp6D0B+ZeWvvOmDAXho0sX6/TStKc3ZcMiOd9IPT3
         WFdqh7z7CcR3RCccP/cgYm/z9B23Ghlk1sozwN6JYuV6JvkQiLC+vVvWEBILWSba0PNb
         Qkr6/V2xgz+opknMuMG+I9QRcKAY3DqsFwQOK87SzPoNBPfAKSavZ7zbhqc55KC11YLA
         8BJcr6rkY1fEXKPVAS3XDz3RrD3PWeXAVgs9P8SGCdj6ufVqYBx5U3IkqA1qs8HGFlLk
         t8J5VxditDvENnwF6X+Uj7t/KxswY0+faOh5dJsOCsNobvBOiOh5GrXUefcEFZrOI0Fr
         mU4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p3VzbSMY;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id p9-v6si393953qte.4.2018.10.05.08.39.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 08:39:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p3VzbSMY;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id v133-v6so4922567pgb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 08:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0z5CYHKZ1aJQ+FeySB/WHRMYiKtYU1H2w2DF5FNFvpo=;
        b=p3VzbSMYDZfCsLHhtLNaJb7wDtuB4/DJDQd9pJbHxzKXXW4yudGy749IseD6ZWf2XR
         P2DAvznWgemnXH9d7OIZ3PKKKmfc19DtIqCW0V1ejI0i3I/Z0oNKnsT1xJmrObgEnIMF
         wtWLr3YxsKBHCe3Rcckmfk/n5L0fpQ+QV9bD/SeldfuWXY7AGkUW0t9uHtvMia697hY8
         0K2jGM1oHemIaelZz4xI8PCp0Bc17ChKczU00jU0iklFd4ihu9KnZcgugByUpjkGZHcZ
         O0JWptestY73AyklP8Bg6ExNPiS32qxsjY442ZbNyC+9AZUf/GQ3y9QPHf9UIGMtg0/J
         UxKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0z5CYHKZ1aJQ+FeySB/WHRMYiKtYU1H2w2DF5FNFvpo=;
        b=j088mUYEmikwgydigYlQtljIDNIC0mpJsrqFJ4jVjQ38ELcomykOAdcTL5OHSeFTRq
         iknM/Uzq3aSiNjAGjybr41f/KGk31Eus1ZgqkITEcGEN4reMa9pmacuRDr1UGIWH0LsS
         eqwTrwI1qqS3d6uYtEVjFGqt4Caq+HQwAToKzp5Tn9FfESlYaZsFfmMWyR5tpt+/lUUq
         9HJtdH1USwTZ2kGPAaqv2KnWGpXJi1v8Yb7ijpkYEnmhqijC2h4yn+gPyFSW13llEUAp
         pUZpWTRlq78gAqKDt+S6nQvX75wKV8b/30KSIJvCwbxJvT5o5ipxHJAtntMsVhb1p8om
         XnXg==
X-Gm-Message-State: ABuFfohg2Fq7lJUuNJkLx8lp7iunAcAHHfdrXhMTuQek2vp5njuPoltC
	1MIWMLDUn4Cz9sPfAmtedC2XeW9yOnc=
X-Received: by 2002:a63:4a64:: with SMTP id j36-v6mr10757833pgl.168.1538753971590;
        Fri, 05 Oct 2018 08:39:31 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.105.99])
        by smtp.gmail.com with ESMTPSA id v38-v6sm9487621pgl.82.2018.10.05.08.39.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 08:39:30 -0700 (PDT)
Date: Fri, 5 Oct 2018 21:09:26 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH 0/4] staging: vt6655: Fix coding style issues
Message-ID: <cover.1538752705.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix issues found using checkpatch.pl for vt6655 staging driver.

Mamta Shukla (4):
  staging: vt6655: Add blank line after function/struct/union/enum declarations
  staging: vt6655: Add spaces around '*'
  staging: vt6655: Add spaces around '-'
  staging: vt6655: Remove space after cast

 drivers/staging/vt6655/rxtx.c | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

-- 
1.9.1



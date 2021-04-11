X-GM-THRID: 6949753709721026560
X-Received: by 2002:a05:6e02:2182:: with SMTP id j2mr18597276ila.89.1618115629621;
        Sat, 10 Apr 2021 21:33:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:1584:: with SMTP id m4ls2988005ilu.3.gmail; Sat, 10
 Apr 2021 21:33:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzneSmR6vM9dnY76RueByLfcI7zOHlgka10Jp8D4tV0QvVM5Wq4qFDBKMtqPISxNv3DlQJ1
X-Received: by 2002:a05:6e02:1ca2:: with SMTP id x2mr15177409ill.128.1618115628821;
        Sat, 10 Apr 2021 21:33:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618115628; cv=none;
        d=google.com; s=arc-20160816;
        b=gbt9eF8UZegt1BFlgW8wgvm1C4BE6WldZHk+P7PXaTctcZyMKHayKb/I/onKuZnznd
         zPEU0bhJNikZhT0uZPzuSqO1RfV9ZJAhVDCUHDpk/FLUrTNUzRb4non03feVARKBf+Et
         XMK/v4CovCJCrGwb0KBs7H9oTv0E7s3b0Zza8pXHcEhDkXfCiI3vj/4tgraCG28rIX0Y
         TsHT+a86zPW4Bq+f63O3li9/36a9aIGrXolnTCiZpbrsTRHsG+UgprcMfYORXc2UyTwv
         gWyauQ1/fIKfiyLPF+bjPmyC5kh8YF00VapvD9EWzgzKB0tIoAiltYWsuJQinT6j2Rp4
         7L3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Fhx4bFoz4AMpMdIpkI4YdswXasRpyjIs7bwxZv1lokc=;
        b=JJBvZZAwtmkwvt2PYsF+pc1od4ehMtAwD+l/o/o6MEbSsMrhj8F5VgttM5C1kCaXVY
         L8yu9BJuAWerxklgiHeA0Y9oOPqriWSvnDjAdTxD6/R7uIZRnmmD8WXbdOw2WHDyBg5g
         d5RkG3LV6o3SRlvO25ocgdgEyUI+zeKR6koHvc8Q8bowS+DfJkj1m7j5TAZdRUVL+3Xc
         CMu2oZ56ICw9HzDQJhHHgVGvgk/zi5XN8hKqK6L0rkjzfxwRBmwN5Ls6qkC4cPWdd6vn
         DSgWpGXNLzARMa3bHOAolebIy+xwZL5CM3af2Za+27SI49NP8AD/MtZ1/uwhjeScDHwi
         RPoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=naSRNKXl;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id y13si289296ilv.0.2021.04.10.21.33.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 21:33:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=naSRNKXl;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x431.google.com with SMTP id a12so6956260pfc.7
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 21:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=Fhx4bFoz4AMpMdIpkI4YdswXasRpyjIs7bwxZv1lokc=;
        b=naSRNKXl4+AVcsZ6V0ZzIrqr+ioCnJZtER7CZP6F5ddHLxFAFxbb6x/AeZyc8NaXhX
         O/+NKprUHBa98HXhjhjsyVe9xOSDDTEw/U3F4fXao3ObGki0df2ZbGHFCCb8iRE3CVe1
         K3FWwEy31KV7a0v/ZXz2JSkvMKZr/HTb9vu9bQz1/9nV6Ku0Qjr81B8xnprQ/tFAo/AO
         KXC0z+rEI41lOBi0kMM/Rl4Y6SOtbbfTOfnDK21R8t3F9ggYDQuEu5p7AgZ2brvFPp3L
         ZkR2xbsqI8+rqT60XJzBgklqcybOuwbhV4cDJYNSBA8Q71Bb+znxBmgT1H0W6K8Qtn7V
         ubxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=Fhx4bFoz4AMpMdIpkI4YdswXasRpyjIs7bwxZv1lokc=;
        b=BSQKXUVaFkuAjO1StnBiqdvvYqvWZJFdC/nNmMVqOWDnd9AzoKvsaBU4vl/LNfgV0T
         MkFdXMkWFACkwkt2MUEerEbi28O0fkIi+ZEhNXtpUDLIMvZjajloLM/zp65T+yEVg+vD
         UIJY7QKAHHQsiQ1ZMmV+Z25mtI4VzW4cOQybPZhRDEE8ZPbVuGOmGWSAihUixfIU/bYf
         VNvpErVorOnk01cO2Jl5/ZCBjThV/ZZut2CgNBK6hgp9EgKlf1Ph74rq08ejmiYxS7Vf
         yAyqtvRD/exh7/X8eiQLf7vhcmOxptsOsLg4dHwgOM8XdIMyKkpS9zjo5H2P5+jO6tie
         xhhQ==
X-Gm-Message-State: AOAM531GBR96jXcSNMCuv+Hs1Ct+scKEzGqk/lsMbNaDVm2xWdulYD21
	ny9DiuB408P48KDQJsDKgsw444GHo7yZhw==
X-Received: by 2002:a63:d815:: with SMTP id b21mr20632938pgh.217.1618115628183;
        Sat, 10 Apr 2021 21:33:48 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id p22sm6570951pjg.39.2021.04.10.21.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 21:33:47 -0700 (PDT)
Date: Sun, 11 Apr 2021 10:03:40 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2 0/3] staging: rtl8192e: remove unnecessary parentheses
Message-ID: <cover.1618110617.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch fixes style issues
Changes from v1:-
[Patch 1/3]:- Removed unnecessary parentheses around boolean expressions
[Patch 2/3]:- No changes
[Patch 3/3]:- No changes

Mitali Borkar (3):
  staging: rtl8192e: remove unnecessary parentheses
  staging: rtl8192e: remove unnecessary ftrace-like logging
  staging: rtl8192e: remove unncessary parentheses

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.30.2



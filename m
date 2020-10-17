X-GM-THRID: 6884574355610664960
X-Received: by 2002:a67:a603:: with SMTP id p3mr5089933vse.4.1602939878648;
        Sat, 17 Oct 2020 06:04:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7005:: with SMTP id k5ls372587ual.2.gmail; Sat, 17 Oct
 2020 06:04:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy95Hyd7oYLkY19KtLidWWxqyxBqVWXPMoLb2ay23TyjT0ye6SAZQI+i8OU7EzeKOQhKBQS
X-Received: by 2002:ab0:6988:: with SMTP id t8mr4513645uaq.18.1602939877370;
        Sat, 17 Oct 2020 06:04:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602939877; cv=none;
        d=google.com; s=arc-20160816;
        b=zrm1JlkAQNf259yX9GWXAedkn8sgfh2DRK9NV0y5hCyLYeicNFucTU/t+MJX5nQ1gQ
         kE9yDoEHoZvEPO8W6n5+H+UQ0FDPi7pfZ8egqFWHyPogjJwxjWEwJMV4ZnD9IcfhrDwl
         rdhIaFDrD38n6obXee3qhdZHgmmmRZm5aa/IIgHVFRcuRW3xe9VBxHAOXEwNV1cNFoj/
         ZR2tsNr5WVD7HGP3B+sPqEUI0AfNpxYlb2VWZPCI49wdOzJSzu+jovAxgmxAQzsFhozJ
         EE+DWN0MfDBKrrHNLYkGJMnxHj5DHtn8FLwVqccYfeOODum9d0dCqLg7fen45TIv1lDl
         9qxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=b9G1tqFEOub035g+Zg8hq/z0UBJchHNUqK+kjI48bZE=;
        b=HpzFKjmYVl5HJV9mxDvR7+ARGQki7xHl8yi/3WEHwwxBcCNjnNSz//E2VBPvsJ7jY0
         oNAiqbIszvzO11mh+0+RC+g86mIDqCxx9d8TA+nwSUO3vsjyfkXvBeH2A/2jzVkeJEjh
         CcBrSXKcO74xhUc9C6oM5MDLlIYfG/AqCTJ2qrMvXPg7CXUWImzjOhGggj6lsv7d7IKz
         MWb51ncLHTS52u4wfKsxDk9HJw6IYWz1cqcLwA6ItqDfKcJg+SKZNo3duu7gs+hQbqww
         UuxP6xqDJa/pfbMmZ0DNimq71pBjSinq8snZY+1eTvPtNSXQ5nYzMHLzs3oOo11q8Rrs
         Au2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EgWkMsRR;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id s3si242169uap.0.2020.10.17.06.04.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2020 06:04:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EgWkMsRR;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x631.google.com with SMTP id bf6so664658plb.4
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2020 06:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=b9G1tqFEOub035g+Zg8hq/z0UBJchHNUqK+kjI48bZE=;
        b=EgWkMsRRL1j+Yjh4uvckDHC6enXk5NM+v983ZJrzMXxkk86zIOH7Vcw/R+yKJvAiv6
         HECwBx5qIPTLNAf7qFoIXep7Ox6g8LMliKGFEhSfylxN1565tdyfk8/RChRY5Ud7PHUE
         lxjpQhurZ8wNIcsimyHGUsUMTsTS68Wxeu4sfMFqWRm7IIMM0DuuqtMV1kIgznP9zgIt
         YYqqsGLWcrwmpFvK1csPErvYdJhP5PEzu0HN7BRiJIy+Jo/R6a4TR3XARtz6vxPUFolE
         hCG53/4M7NjyXu/8tlo2h4OCQ6cfR3N3N+/bkNgQpqt/7kt34Ua2ZA871QVIOusWWrv8
         Vf/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=b9G1tqFEOub035g+Zg8hq/z0UBJchHNUqK+kjI48bZE=;
        b=U9/96S/K/ZzVq037IFpU0tj7HZWy35MWXd2CewjHLWSbSCyjKVqgE2uzxILgLO56VL
         ibjsiuqt435vDYvPltMwi8Pw/HZFwMiyhrZUm1PvHv2YQhOqNwssN+PMyOgECCAZNmBv
         4/GPjHJHyUQUiPFM2FCoVKG6nqAId14koosXTMi+UuYfuShviZGzc46TDtQIXfQxRrDD
         F52jNAvv5HTRqGwypusDSoXR113+3rsf0HkdVUiKu6KRyadaGvFHyp8E3CnEB3NOJ27Y
         UvhLioi+qEQRFmzGf6G22A8gIAUYqwKyG6/J8iCrn2wEIkW9F931axt/fI8GFV9mhR40
         1oaQ==
X-Gm-Message-State: AOAM532jOIYCjGf+rRjIt4kUJ46mGQvOwHyahqnbujmYM4cfLUhKHJ71
	p96sGUEAvGQmpzW6XBMAf4o=
X-Received: by 2002:a17:90b:19cc:: with SMTP id nm12mr8595757pjb.203.1602939876587;
        Sat, 17 Oct 2020 06:04:36 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id c187sm6086234pfc.153.2020.10.17.06.04.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 06:04:36 -0700 (PDT)
Date: Sat, 17 Oct 2020 18:34:31 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy-kernel@googlegroups.com
Subject: Need help with Coccinelle
Message-ID: <20201017130431.GA71138@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Julia,
I have installed Coccinelle and tried to used it. However, I am not
seeing any useful outcome of running the Coccinelle commands. For
example, I ran the following test but did not see either an error or
output. Can you please suggest what may be wrong here?

make coccicheck COCCI=scripts/coccinelle/api/err_cast.cocci MODE=patch M=drivers/gpio/ j=8

Please check for false positives in the output before submitting a patch.
When using "patch" mode, carefully review the patch before submitting it.

Thank you,
Deepak.


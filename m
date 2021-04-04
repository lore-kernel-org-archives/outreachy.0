X-GM-THRID: 6947438561526284288
X-Received: by 2002:a25:bacb:: with SMTP id a11mr33756139ybk.128.1617576592764;
        Sun, 04 Apr 2021 15:49:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6902:6ad:: with SMTP id j13ls557794ybt.5.gmail; Sun, 04
 Apr 2021 15:49:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzhHjv4LfFNLI2GAqjf4F2iNlpFKJUJ9SFsxhZwBgSy0YrqiwB6e87lxTbjebjwm6cpZAnf
X-Received: by 2002:a25:b282:: with SMTP id k2mr33090354ybj.21.1617576591346;
        Sun, 04 Apr 2021 15:49:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617576591; cv=none;
        d=google.com; s=arc-20160816;
        b=rbPcpmeSt/tycecMN5JLBPs7nR0FM0BqXgnhbzXT6A/nKD7VeyIKkoTH2CHlx7x4UO
         838yrm+O3wiu69l0PBvxgsk1eGrhdueO8gF+3uTBb538NtA4m8FCqmpYHvMvEg6wfrtZ
         UP3RmvfWRn8fgHd2jwEsXDYqNWcXVTM7cBU4Wryjo/cvJ5vSQzEBfyTCt3kbAfTApUoC
         ja3HuzAAuuJFpQHiRen69dAsxCEhmvRcWeOBIOgh6YL4fUFqxPxYTIS/tOvoImv2wScM
         I70/2GcPKMNJztaPBvlUyzfJF5wfUmvFHbLLcihyzPOlxr55fo6fhwQsvNdpOpLHkv/P
         bbhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nOcn0vPLVXxEmV92y9dqyHeBVs9VlV3r+13+jQMCYTI=;
        b=GFiEnehWoH59Vm9m+THobUfjC5COt8KoYD27fkkeO2a2droS07PiWcSbQKrYQVeexY
         EFp8hm73bXIERnJ+ePLnWibkfh5T67ZjCBw24fvb/zHkfgktQGO8cUZmUFT3BG0piLQ9
         L+tsKHk984TWkL99Dcq9NxWTwkQ9yO/oqu5L3xOYB/Y/I8WW9NE15lTmSxdx3gOHQ4UW
         yUnqMH1ydOE7k07w7snarChMv3s/Ias62aiJU/ZKo3C4pWC9ZQtv8lD6doKrT7FDQNtv
         NMAY/QVAifD+VriM2wc0kddg2+1vZnUxlYl9dfdU7vP4KL42iTpeluZwfTqx7B4BAfHd
         G2ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nvvSZz75;
       spf=pass (google.com: domain of davidvillasana14@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=davidvillasana14@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <davidvillasana14@gmail.com>
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id w15si188143ybt.3.2021.04.04.15.49.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 15:49:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of davidvillasana14@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nvvSZz75;
       spf=pass (google.com: domain of davidvillasana14@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=davidvillasana14@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x333.google.com with SMTP id 91-20020a9d08640000b0290237d9c40382so9829967oty.12
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Apr 2021 15:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding;
        bh=nOcn0vPLVXxEmV92y9dqyHeBVs9VlV3r+13+jQMCYTI=;
        b=nvvSZz75tIKCp29BJjqqS0GAGb9LZ/ElLCex9zGhJwb5c6BZl56Yt58akOSRSh4uFy
         bcbX7EuZpKWklE8y0NFfuXw5CNuUk+HTr0E8IJjY3milB6peJeh3ys70IVYbGcBmgVSu
         Wp6wjk0DollRYQUjotAUh7LWz5/kWyvJouiEqeCK7kUHxJqolCpWmn2IDsaLBJbEdZc6
         iILGI8i/O6KYSNZXErfzNF3gQKAgY3VP2013eSEYUs0QKl1Q2UqXXttDZb+ziAR6iHo+
         Dt/wVZDPohOiOIUhbY2+dAlivaGiRY6U4+hvREHMp3/9PHWPNiUiQkGE09ZuqOe/kZjJ
         K8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding;
        bh=nOcn0vPLVXxEmV92y9dqyHeBVs9VlV3r+13+jQMCYTI=;
        b=bMOmEDjEtgjQysvESII4y5M6/cuEQcS5N6CHb4Iwn7o28OBjjCHY1i8Crscw1sySfA
         UVhQ8k+9Ow5vKlqPiX7KS34yjceKJ7yFcRe198x5EGOoKyCPey6OZIvLh8WBve0oO4mC
         LILGQiwDX0CovzUA0D+wU6QcsZD7gQ1+v3hd035x/BezgDElPm630wbbCuq7+QD7TJOI
         w7olFhCL+Qk5ulCUtmdUbuIleO9IUiANASfm7SrdMh75TB6G5ZD9BL6c1A/wVfE4rKjw
         GaPqyoU37xIOeEVVhr+cucpHapGahpg30mvUDkcxSJztshd8Biy0WY0fB0n6tJe0wjpv
         YGLQ==
X-Gm-Message-State: AOAM53035AEib66fotr2uemyR4ec86I4JgT+RN0uPxpPVb+lz88yPnmk
	OKJ5kIKCD+CDjnaCPrOikiq2Gq6hippzsQ==
X-Received: by 2002:a9d:5a5:: with SMTP id 34mr20853977otd.353.1617576590968;
        Sun, 04 Apr 2021 15:49:50 -0700 (PDT)
Return-Path: <davidvillasana14@gmail.com>
Received: from fedora ([2806:2f0:7000:86b1:c1bc:6875:f962:d652])
        by smtp.gmail.com with ESMTPSA id d1sm3466977oth.13.2021.04.04.15.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 15:49:50 -0700 (PDT)
Date: Sun, 4 Apr 2021 17:49:46 -0500
From: David Villasana =?iso-8859-1?Q?Jim=E9nez?= <davidvillasana14@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] kpc2000: kpc2000: Removed extra blank line
Message-ID: <YGpCij8SVkJwO9AN@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Fix checkpatch warning:
CHECK: Please don't use multiple blank lines

Signed-off-by: David Villasana Jim�nez <davidvillasana14@gmail.com>
---
 drivers/staging/kpc2000/kpc2000/pcie.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index cb815c30faa4..f1fc91b4c704 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -6,7 +6,6 @@
 #include "../kpc.h"
 #include "dma_common_defs.h"
 
-
 /*      System Register Map (BAR 1, Start Addr 0)
  *
  *  BAR Size:
-- 
2.30.2



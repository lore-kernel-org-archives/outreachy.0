X-GM-THRID: 6949988784020652032
X-Received: by 2002:a17:902:9a84:b029:ea:e627:f7c2 with SMTP id w4-20020a1709029a84b02900eae627f7c2mr3296748plp.57.1618170377801;
        Sun, 11 Apr 2021 12:46:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:4d81:: with SMTP id oj1ls7725388pjb.2.canary-gmail;
 Sun, 11 Apr 2021 12:46:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwfKD2HnuNyyQQJS4Ezft5ea24iDXeROoheru2PvMtXjNGz77GXMks8oD4Df/bampfLM2Lh
X-Received: by 2002:a17:90a:fd82:: with SMTP id cx2mr24973524pjb.151.1618170376550;
        Sun, 11 Apr 2021 12:46:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618170376; cv=none;
        d=google.com; s=arc-20160816;
        b=IeVWBuair3IjbZrS/qy87hVFKqtwjsPTdfFICqOVDODH4egffE/2NFbSMt/0AeVEAQ
         9z5/QmeIx6LcKkxB+jq/Fzenko0JKQeVzaLzkC1cRYdAub0HMdei6BlbS0ZY+dtroF/u
         mJBHcqvVgKkaR9XhmN+2Qmz55clovwk6eiFLSiNAJ8npWA2DfqBBhKbPLcWpLzTXrpx8
         UrFPQkUVUkU1PFoNmgDtS3qZWCCZrY6KsOjc/Ko/o49ZJ3DOYN8+8j3+j4+uyv1FE/rP
         1nbGFD0zJCtWXXuEgrJkgNb74cIea6AVRaMbCI0GBMCmtb8ObekDHLY89jXT18ZBnkDb
         DHLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ok7lysEHXRexS0y6XA+d9qp+BmlU7q6Xo4kMGxuikak=;
        b=rcDbwrxeTNLmLLWpHjmA0AIBgL6FSC6WkDQin3+FKEMMyYG/d6i6nBIuX0wI2sNMzc
         KrmVjQC4EMk8jL18L4E4YoeURZlsBGVYSMupGMGuiIVQPpC2EmgRlPFguYLUewRy8Ors
         8glq/W4mHITgJxitLU9bYAkZMZjgc1NAsNnzIcS9O1BAB7dbYp/JIiUxXQMpUbQkBJCC
         GDfv5+fzODy86r2SVMTnpk0zVeenPOHsVxxjyXYh+Ta0j7STQtzRzTgWcZ4GWHHFOIJ3
         LNguRbqKPEdkhMbk6ZZL4G7abHI5DD7DiMha3Z076q/Vq7+9AEFTKXZFWnoMlspYDoHy
         7MgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lBJKRMJs;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id a8si529611plp.2.2021.04.11.12.46.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 12:46:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lBJKRMJs;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42f.google.com with SMTP id l123so7766934pfl.8
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 12:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ok7lysEHXRexS0y6XA+d9qp+BmlU7q6Xo4kMGxuikak=;
        b=lBJKRMJsZ6pfpN5zQnZutcwGBALnLihAJTTbHsEPrQa+VKOY5tO/XXmcFQXC4o2mSc
         ts0Z5jN3QK6VCje8DAc9B26ELAlZAgYyj6Fd+QQiS2yM/gYfDrjJpje84C80MtCanTPl
         8jtB7K+sW1UbPXgpmVik2h7134jhlsIuesIcosQ5rq9GK93+BjPGHpDyaCA3ON7/qOSr
         j9xg6rCsoiXcuLtqmr751dcNY6o/efoJzELbHTa5wD8hC+MBl9BAz+Sl0942+8cl1lSG
         nBZu0XcUAlaN+6ZjvBhNzPUphnMzceDIlp2QG60A/zdPNK9lcUycDVl3BbPHQE58Cbma
         8inw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ok7lysEHXRexS0y6XA+d9qp+BmlU7q6Xo4kMGxuikak=;
        b=DeC86n2VHcd5hg0z0BdXkDmhgoVmF+WHyviewG2WSCqHo+8y89G0uXjPk8Xvnv6GOq
         a/ZPbrjeST63tqgOEgADrKxaYMgiQFOFoTYUbFONdgQJ7rXnsQq3ZTOiC2lF+/0WAgVP
         lQfyFH8dxXh8MGT3PVjo8rkEsTFtHxyFRDaQZTOWe2cfskto8huZ7oNvCvFQatiAkXcI
         uBUcbgZgaaECYw4IJ+xpDwAsmwv9hQN0WPho3cZRQRKTIXgAUFfJNFZi+/PqEOepErB0
         qVI7g0S6WTpeDlROTL/xcuCSWBoyORfXo80iQNkv09JQW4GJ+NWfNKlZ5pBjIN0i5WBF
         X9HQ==
X-Gm-Message-State: AOAM5304nhxaxSpE1aaF1a08XPom00QuMEWV9PKE1Zi2Vvt+TZ/zSJGz
	I/oxSwpJLetUOr8g49bgAzQ=
X-Received: by 2002:a63:338e:: with SMTP id z136mr23349875pgz.115.1618170376210;
        Sun, 11 Apr 2021 12:46:16 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id 22sm8563328pjl.31.2021.04.11.12.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 12:46:15 -0700 (PDT)
Date: Mon, 12 Apr 2021 01:16:08 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 1/2] staging: vc04_services: remove trailing whitespace
Message-ID: <5a54a06bae846f1f037165c0c7ba7ffe5a55a4a8.1618169920.git.mitaliborkar810@gmail.com>
References: <cover.1618169920.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618169920.git.mitaliborkar810@gmail.com>

Removed trailing whitespace to adhere to linux kernel coding style.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/vc04_services/interface/TODO | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/TODO b/drivers/staging/vc04_services/interface/TODO
index 0bcb8f158afc..adb28f46ba67 100644
--- a/drivers/staging/vc04_services/interface/TODO
+++ b/drivers/staging/vc04_services/interface/TODO
@@ -27,8 +27,8 @@ unused.
 3) Make driver more portable
 
 Building this driver with arm/multi_v7_defconfig or arm64/defconfig
-leads to data corruption during the following command: 
-  
+leads to data corruption during the following command:
+
   vchiq_test -f 1
 
 This should be fixed.
-- 
2.30.2



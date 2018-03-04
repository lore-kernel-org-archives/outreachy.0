X-GM-THRID: 6529117174550757376
X-Received: by 10.31.191.201 with SMTP id p192mr5670648vkf.56.1520178554875;
        Sun, 04 Mar 2018 07:49:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.202.66 with SMTP id a63ls7105070vkg.6.gmail; Sun, 04 Mar
 2018 07:49:14 -0800 (PST)
X-Google-Smtp-Source: AG47ELvCpChl47DaoARnhK8oenlPDjrtzwoU5Y3KCk5of02s6LJ4LImRVhd3Mn9JTFokppu7K8vJ
X-Received: by 10.31.21.194 with SMTP id 185mr5614448vkv.105.1520178554054;
        Sun, 04 Mar 2018 07:49:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520178554; cv=none;
        d=google.com; s=arc-20160816;
        b=Lkj5ep+1y4gPYA1gBoswJ6WIEGiiAlpcsj8wokMDPKgA4/rRKkXYGxFGl4N8S55gDr
         7eI3otvVmw6CA8biaGkVmh7j+tmVt6jH2PpmZ+lW/9iTB1yLwDdvpA2lXegXa3zQzHQ8
         ZSGaxlLqcKehnJhEBp2yfadA348rgx734/T8iOtyEeQGR0EPjhmwPKisWQ1P1Tsd4A1K
         45SVrKq7Wwq7wtzdkjM1ZLfD9ByrM10JtJZopE4tLM3GeOHt7r4cNSMdufheOlL7Pezl
         0cY/1CrF9wH/I6TrNkiAJbXiVZz+Osfvn07asKE364pnOp3b172FvkKOHb08yQMItxBP
         in5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=xMHeClEOjIcRwBi3woAXrVR6jXVArY1wd9hzxVHZoeo=;
        b=hu3FXl9rRdo0tmLNQ2p2mjWMbkZQBABSljehSJPqRMJKF/J54MFfbyeve0yU7uwDr/
         1HRXp3LMwnQUQgN5aYeQp4ND/c0lncN47yLLp4wFwzRAl6tUwoXnaYmZvBkyI/Nndszh
         PL9L0DnY9SxfHAwpuCHHvOCL2ZBI0w64+oMDKg0L3HwlwjRGJQyA+yDbrWIaeUKf9F7w
         KdQId3WbjOMpUzKOJprRv0R3sln7eo7omBHakhHPj4tdGiaE4F8HbksbnQPV+qcyv3XC
         AdfZNTAqUl7TRDZdxYV/3aO4BQd5952Np/BLLuPvDbg6Bc0qkftvUJPLjDTnY7UFFx9d
         bTlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KGQPU2pA;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y9si833431uaf.5.2018.03.04.07.49.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 07:49:14 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KGQPU2pA;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j20so6163305pfi.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 07:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xMHeClEOjIcRwBi3woAXrVR6jXVArY1wd9hzxVHZoeo=;
        b=KGQPU2pAzm/1GkRf0GEJG8tejdIUCcNVjg+tFvSe7B5Zg/F/GdX9Puc92j59oL4/dC
         N6teX9ZnX2Xnxn20V3qPdN24MmFydKl5gGvSl/MYPRUpj9Dc6exqP2jcX6iknRTVvmPZ
         u4rzJA+eVo0j2XG7+RyRGYGehYG6DF1pJ+pPOaYhsq6Xnz2g7pXFEOYapDMi5y1q3Imb
         ys79tnzUG12LIHKgtIle68poIW9ZwtmwUo5LxzMZc7DaPRt9KU2EN1O6UVs3cW1aiQk0
         nGvFcV4C5kjT/viVG2Swt5suTqcgRkIgRZ65QmPCbwGrsOKVxMvGxyZ2AJsaidcnBrIv
         ADCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xMHeClEOjIcRwBi3woAXrVR6jXVArY1wd9hzxVHZoeo=;
        b=dw7oqeuFiuS9ZOsZ+G0oyfzPXcZhxTeOeRauYSiPpu4aTyGhi3wwqBsMXTBmPWN63t
         LzrHknw7c6b3ofL3B3VzCBj8LH15VNbKDbqZfYmjTqtGKSICfZ6+odcjvMF17k7/YpqQ
         Xku5ZDHxylKgsW8Npx4WcIRa7hGdRodooB7G3+/Q7dKxe0NIBIY7pPj08PsmzXcwSIfU
         YPjOowDEU/hDIWIl7bl5HsmNjNfeGKAJflwKibZtHZApM/jGd9TZdHXBHmOnMLWiecjL
         xSXC6XMAEyxEigtnxC5tBymZxoD208x9nQxzaI2zZR6RibGNRrjSnPLfrQEI+paZbX1x
         gU4g==
X-Gm-Message-State: APf1xPA2VowKSjdhypjrA9jAz+Vf2WSo+KBD9S61uNtKq7z9X8cP2xWG
	W7Jv6Ln/3SpZWVXyJI3BGzQ=
X-Received: by 10.98.242.65 with SMTP id y1mr12128651pfl.232.1520178552989;
        Sun, 04 Mar 2018 07:49:12 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id o82sm24847163pfj.163.2018.03.04.07.49.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 07:49:11 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: alan@linux.intel.com
Cc: sakari.ailus@linux.intel.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/3] staging: media: cleanup
Date: Sun,  4 Mar 2018 21:18:24 +0530
Message-Id: <1520178507-25141-1-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4

Spellcheck the comments.
Remove the repeated, consecutive words with single word.

Arushi Singhal (3):
  staging: media: Replace "be be" with "be"
  staging: media: Replace "cant" with "can't"
  staging: media: Replace "dont" with "don't"

 drivers/staging/media/atomisp/pci/atomisp2/css2400/ia_css_pipe_public.h | 2 +-
 drivers/staging/media/atomisp/pci/atomisp2/mmu/isp_mmu.c                | 2 +-
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c                    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.7.4



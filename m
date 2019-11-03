X-GM-THRID: 6755114272133480448
X-Received: by 2002:a50:eb49:: with SMTP id z9mr16609584edp.31.1572797603125;
        Sun, 03 Nov 2019 08:13:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:edc6:: with SMTP id sb6ls1413719ejb.1.gmail; Sun, 03
 Nov 2019 08:13:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqyVQ2bEOp+6AvXH1G7fQkof7lOAGL8eB0UYk5uQaoxeoi/9hPPjrmzCCkvtvKkeioP94Jrc
X-Received: by 2002:a17:906:494e:: with SMTP id f14mr20432300ejt.42.1572797602150;
        Sun, 03 Nov 2019 08:13:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572797602; cv=none;
        d=google.com; s=arc-20160816;
        b=g8e1X7r53MMxUVkK/3McdgWsTLbY1+/eofklEDDfwWL4IIMbbo53Vsk0yKAZRCtvM6
         NiCX49axz21F5Zk6k0IdPWnxBpPC6MD7rQb8eNAiOGAtZgJj9PN3MQSCSCuFYCKyXsBW
         oAgNQcaSPIlKHq+qthvqtu1R47TEuYQ2txtNWJVVukvTMCxZPK3SzS3rpJF05QUmyXT1
         Z4R1YJLFrkJF63x7NW1pubsiJGCAMkxw6fWPTikZJb+CIkzl7Yy6UPApfXVuapXKWC5k
         o5BTLZvQoiTTgtX9yIcWk6onqCmY7Z5fdyDo9QKKCfJAkAB0YDUcSZ9psZdTF7cQXzf3
         O7Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=HmoAZ2Yh+0BH5LKalXRMfyHNRd66n1+Bs0KJa2Bsrj0=;
        b=Okz9CIJdl7rYHPMlb6XbEKXNHXCXpV0vmOT/dmGimAKqGh6rS85fZsuxAQWFGDIbY2
         j8FQRpPXlrOLdsUzHvAsSiMD72okDNVqfQH3Zaxv2jVfV2BfRLgm30xCg7V6oixie5MB
         z7KX7Kvw64g3kW+6ZjEdE+3BCSo1xPAsKtZcO1qGdrelVGlbUW2HRisxetwveZXDlrsV
         gMlO7hr+ixN0ergb0plEwX5WRMPDsmBfngaoEb013yCHjKwm+nAehACdD3D/PwzK/uCn
         Tcqof5Lxfa1Yexa9LZ0UIQXRLPgqDiXscjM8uoYuq47VZpp+QmATzSoXqplMtXj4UJNk
         +yEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pf19Ph0i;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id q17si1214347edi.1.2019.11.03.08.13.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 08:13:22 -0800 (PST)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pf19Ph0i;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x432.google.com with SMTP id s1so14390009wro.0
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 08:13:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HmoAZ2Yh+0BH5LKalXRMfyHNRd66n1+Bs0KJa2Bsrj0=;
        b=Pf19Ph0iD48eafUethZIhTsMspyAFZexvxpf9wjA+CKxXCsKaclKTTYCrBvjmlBeN1
         z19YnvIy7mqYjAS+8j4CR22ogHdNcMIFfED4zBwunLQusnYk3VKo7rGazeqsdebxerpJ
         +NOUVptc9OOd+avQ0ym02VnZYO9ISo13ZJ7GW7u7RdxSPeMZSxjphTl744i71Xv2AGv7
         yMsiQh4uat03vWu0yRhNPxvQcmoEcX9PsvBz5PGhcssUN2sduAYsZ9Yj0e3zr8wriXOk
         idTGaub5I/OIEnVQw79MRakNd3I8dWPdCYG4pIkkvqLzQhfm+FO6tcH7Oj7CT7k1ns8I
         WX/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HmoAZ2Yh+0BH5LKalXRMfyHNRd66n1+Bs0KJa2Bsrj0=;
        b=qnmvouw/rntjn+RAmJijCu6+ECNX3RdNe/WBs05iOyFiMbUPncJPeHXKAfP0RRAcQq
         A3O3+Sh8zxlrPE8wD8NDAFPkr9rr/wV+vrMvEc0wfmxesUvl/5BBLx9mye+jc14//wrf
         BtuZ2LS6oitSUlLNdN1ic/OoMoUry3sTE6s/6N4wxwp6umu7oQI53QCX9PonNUpvXp3K
         AXhpzAlAVAW3zSoNkBQseLBD+6V8MdQjZu3nFVbqDHJAqA9YsIRaWqd8yyQ/fPhiCb50
         QHa8n5M/Wx4Pg58vwdHUc88158Lx5qFzgoKK+cFVvh2qokz3+VuUjmlYdh4F+Nw/V8wG
         M8LA==
X-Gm-Message-State: APjAAAWyIVcG0TrPflxBHaXCxYLTuVhFi8NUbQy3KNngBvog0wAKVftx
	tT1RMl0kSS0KFgyhwwfyMrXlrC9X
X-Received: by 2002:a05:6000:49:: with SMTP id k9mr9295157wrx.43.1572797602034;
        Sun, 03 Nov 2019 08:13:22 -0800 (PST)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:fd8b:953d:f833:bf1a])
        by smtp.gmail.com with ESMTPSA id u1sm11357717wmc.38.2019.11.03.08.13.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 03 Nov 2019 08:13:21 -0800 (PST)
Date: Sun, 3 Nov 2019 16:13:19 +0000
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org
Subject: [PATCH v2 0/3] Add comment to memory barrier
Message-ID: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Include outreachy mailing list in "cc" list. No change

Evan Chime (3):
  Staging: media: omap4iss: Add comment to memory barrier
  Staging: media: omap4iss: Add comment to memory barrier
  Staging: media: omap4iss: Add comment to memory barrier

 drivers/staging/media/omap4iss/iss.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.17.1



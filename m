X-GM-THRID: 6751912583325810688
X-Received: by 2002:a92:8703:: with SMTP id m3mr21854029ild.131.1572276777603;
        Mon, 28 Oct 2019 08:32:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:dd10:: with SMTP id n16ls289079ilm.13.gmail; Mon, 28 Oct
 2019 08:32:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz1gQRA+1LWrlWF9VPSAt0Ck0kuSAnUO2O1H7q/BeVcKS759xjVo9PhP3SJjUFc53Y431Ve
X-Received: by 2002:a92:bb0f:: with SMTP id w15mr22222590ili.224.1572276776439;
        Mon, 28 Oct 2019 08:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572276776; cv=none;
        d=google.com; s=arc-20160816;
        b=1A4ZMaXlQV3Y548+c8TSd5iPIrs5FsO1D1tcTBrXRXNHLF1ir3gESkuYdrLNGToBYF
         4dpZOP8wnkh94tOb1hD2mmdMhBwSJEkRS4XqgWx6m/cHjufxA/3qN7h/1qFt+jzr5Bx3
         i+su9sH4CNU1DkV52wE7lsKRb0gwKuagAgRJ27LxSUi+71Xh8fAi/4DAj6ngZIj/tmHq
         15rKCDF5RGOUWyUJLZqZGCNdYU8OxEsIlNPq2OwNAfU7nCFqwfYtXKW62zV/XMzfYjG+
         uHFdbyZ6qjWEdLkM/kF1rvizXRP1crEVXGz/CbZK5hlMumqgAEzA9yawACqWNLuFd5Rk
         pe0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=K01MlbOPcqeaYhVIj4KrVUdXGySrNF3wqsQr/ouX7b0=;
        b=aUH0ee7A9c/D8ro39oIAKx2s5dTM5qxxswkOmn3XnlbKAq1o/Hj0Gt5hz3PWxlb0FX
         +SA8M468jfOYESkObO+5JeSa9pN96N+LddADVHToF4iwA8ATFtm8tFHm1JAkW+2DkwNl
         BlkUUdecjYEACGBBkVNrh8WDLQki63aaJTzlljPpbGwVi4Op1ZkAHoldURKsCKZL1Gcz
         zdeIw6Puogq0VWpCUmh3F1U5pqAjt2ptEMpPGmhxcsZWEi/BI8t1W7F91evp/2rZqVtL
         9w/JwmpBddx94im5OteVY/8H8ujhOdkpRLeKEVFgWj55rT1hFvFPgbBJjX6d6H6HHbRV
         rM4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hroZuIQ/";
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id h14si676978ilc.0.2019.10.28.08.32.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hroZuIQ/";
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id t8so15154964qtc.6
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 08:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=K01MlbOPcqeaYhVIj4KrVUdXGySrNF3wqsQr/ouX7b0=;
        b=hroZuIQ/kLaov7AW148eGUTn1/nFPiDYcaajtH6eTf1Dur5xFiVRVAyOp482vUKlaJ
         MlwHEzEld8o/ujXiofVc/OEbYdtws5Fx1tLiZES4K5Zj69UWZJSnGfoMwcACWIR4pNyQ
         obNKNEsLq0yEbVJgLhzKOFjj5g28hgnsOzq/mjnylp7AnjSNPH1VGEsVS22RMvivefjx
         PGaY6yQVci35INvQZyiSscZOIHoRjbSqKgyAafe0CIiAbhtROeK/8+Q6ftAeA66xKUjr
         RMHR+jS5pLZt4Jih+eKmW15PQUemS/YrYZf7YeerxsYAIia5GkQtPlioWXKE7NERcoX7
         ZJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=K01MlbOPcqeaYhVIj4KrVUdXGySrNF3wqsQr/ouX7b0=;
        b=Dpw2zKhfpv3tVWtab7FaGrob+cgrt4i0ZuP44iZZtUuJY+SpdkVKQmWnRLFk4WoUw6
         isGrLJ31LtO6DO32adOacZEGMyeF2J2v5U/dLSvBZBjKYZkKvbgn+Mq1vgbIRyTP0gqQ
         HjaRc9w425WPJ1ZtBdf46ydQFOSf26g8Zhhv30yaIqS4OiStuPDQV9ONq+sWSgMkVlPU
         LoCYd075RGkwl+kYArlP+FpQECEFT/ekxGIDYc6WFwhiGuobKpAS6ggzs8tIDULah7JJ
         j12SkUm7zwqLa7dWbDiP/+ZuiOcTbzybNnmVUodlxBXYa02LNMlw7MZN8xRHMWfysygw
         zC+g==
X-Gm-Message-State: APjAAAVLdNPIGSGzUC76Kyv+Ku7YnVi0h2PjtFYUBuZbAmFvXmSgdciP
	TENBE/JgZX4ofkQurA2FJhN1Fub5UrqUfg==
X-Received: by 2002:ac8:6d0b:: with SMTP id o11mr17554607qtt.253.1572276775728;
        Mon, 28 Oct 2019 08:32:55 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id w69sm2021498qkb.26.2019.10.28.08.32.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:32:55 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:32:50 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	Julia Lawall <julia.lawall@lip6.fr>
Subject: [PATCH v4 0/2] Cleanup in rtl8712
Message-ID: <cover.1572276208.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Cleanup in rtl8712

Changes in v2:
 - Arranging conflict between author name and signed-off-by.
 - Remove unnecessary parentheses.
 - Change the driver name to rtl8712.

Changes in v3:
 - Change alignment of eth_type.
 - Change alignment of SN_EQUAL.
 - Remove commit of unneeded parentheses.

Changes in v4:
 - Fixing misplaced parentheses of previous version.


Cristiane Naves (2):
  staging: rtl8712: Fix Alignment of open parenthesis
  staging: rtl8712: Remove lines before a close brace

 drivers/staging/rtl8712/rtl8712_recv.c | 38 ++++++++++++++++------------------
 1 file changed, 18 insertions(+), 20 deletions(-)

-- 
2.7.4



X-GM-THRID: 6608456604457107456
X-Received: by 2002:a6b:4614:: with SMTP id t20-v6mr4257243ioa.13.1538651732319;
        Thu, 04 Oct 2018 04:15:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:8618:: with SMTP id z24-v6ls1427104ioj.0.gmail; Thu, 04
 Oct 2018 04:15:31 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61siMvhyYg2sIiaoYDSAt94RoYlGfdYOlDeTpagA+rq/wBY4m73txTk5S9d1n2p7YTHY7Vw
X-Received: by 2002:a6b:9308:: with SMTP id v8-v6mr4264583iod.23.1538651731429;
        Thu, 04 Oct 2018 04:15:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538651731; cv=none;
        d=google.com; s=arc-20160816;
        b=EWcOIHiVq3oxZ1P30xN1vxxRtcMeJQWG32J62oTvj5amNKeEEKciy/hWzsxI2mEEos
         gd9bQ99ZNRxMU95k+S/5JZIvj65lf4cR7ylKgxS7C1p4ECxS6nHKPOs2gXlnwGBi2SFh
         RobPgH9bZLokv72dzN9K0HFkYDpd2dv7dz3xbAFttcMTmQNPdNkE7SWHRbZATj8ra6RI
         bzqPFzSKstzBprjd09N328+wMMW0GdlbbCmbAKcljsUDxn6T9xC2QfpsXSxIp6AxCzWK
         GZAMUV1DnCYwl0/NazrP9PTyyPk8ByEF17NCuxAbKKCvLSLaD7OzjaFOjxXkwHho2mux
         srIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9aYQRtuf6ehernca7iiIwO/PBAzlDBu3OzHESmDaqvM=;
        b=yjPTWssenIZwBrEMXhnpB72gptOCqFUIXbJyaI2e0G4Vxl3nChfXCWcMNBzp8mGH3/
         Tjfmf0WQ8aafwDp/9fn64mp8mGLt9gsY3WgsxdPftcUszNb6Nwx905b/z1C81o6zhIxx
         U7Jjaz0uwYRm7+r8nyvDfqtXlIrzDDSerDQG6gIUiIyfCiUyYgIiG25SURWlsB3xY0Z7
         EUPqRmkKkDaYYjFrrBsLYcJUa+hqRNh/0bxwqV7rwmdAvw7Gq3EN+v/jdFw29f7vaoZk
         GN0PtWiHVvGs3WTL3O3dZTnQFhNRZ4n1g+iz7m3g5Ho2krZfaDUZLzS6vOUFKFhrFi2V
         3C4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZzIYHqwy;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id s7-v6si172812ioo.5.2018.10.04.04.15.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 04:15:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZzIYHqwy;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id b5-v6so5023084plr.5
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 04:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9aYQRtuf6ehernca7iiIwO/PBAzlDBu3OzHESmDaqvM=;
        b=ZzIYHqwygHz423ZXZgvWTrrU33xyN1CTB+YNPOTfOPhlzLIvQPPd9N4seUHF/jQ7Vn
         yua6jj4RN+wLXgFkk1NPBDIaAgXmc99xnM5gkw8ymMv3VGHYFh6ioA10k/MRif3BdMwY
         kerQJYFEB3xfYe7sykikrUmq+EPhmmdfQtIJimIRtDVVrz+PkZPC4EYuiGJbbAHWCGQD
         anOdabLS9H55NTBVAJ3Pg6ybYX5hh9fKUX2vKVqqZ9bn7UI2szkp4EVDw6irx7WXRwCN
         f6gB/GfYWkQ/MJeHRlpSzJu9ScqmA5O0lQ0kBiv70BbUOh0x54WYwYrd6MHHs7+YyEVQ
         2QJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9aYQRtuf6ehernca7iiIwO/PBAzlDBu3OzHESmDaqvM=;
        b=fXrqP5BuMrEkVjZv66FdUGjdoPd0/LDSNCffa7RrOERQ7ViioUPwpEa1G4x3tbMzKj
         /6ZtnWwUsoCW3Ae55o/rq2bM2Blb+x3hOSkjIQ1doFznpsIhiQlWHxrypiU9QSAi7dQA
         IzGyGLLWZdStJgtCZCnjageHYbcYtZqlbhqFRdySVpDNGBEafE1iJi+WA9jUVVZGX/7a
         GGzr6ECNb5Kt/kOMcn6xXx4/w4a9IOLBV++oHQ/FGtMP0+Nx5zGVeuG9TFK6fGms0Si3
         bL5/KmBVsUkeeuWuvy4FPkRh/ZeEXG9TI40O8Hl8xwIysiP8Hlx3x93nBIUQtOHUu1WI
         C4Xw==
X-Gm-Message-State: ABuFfoh4vlPWQSTXnIrdNcV6sYilq5scPsBi8M+mu/o+EjEgBrPoUazq
	b7HNLOaxY96duOFz7MAE3Pg=
X-Received: by 2002:a17:902:622:: with SMTP id 31-v6mr6064626plg.43.1538651730765;
        Thu, 04 Oct 2018 04:15:30 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.195.35.235])
        by smtp.gmail.com with ESMTPSA id s2-v6sm8768646pfk.133.2018.10.04.04.15.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 04:15:30 -0700 (PDT)
Date: Thu, 4 Oct 2018 16:45:00 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH 3/4] staging: mt7621-pci: spaces preferred around that '|'
Message-ID: <2e3eb8f9b4461a330f292aa187158385800c56d4.1538646749.git.mamtashukla555@gmail.com>
References: <cover.1538646749.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538646749.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add spaces around '|' to fix checkpatch issue.
CHECK: spaces preferred around that '|' (ctx:VxV)

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 14aac08..780ba56 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -644,7 +644,7 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	switch (pcie_link_status) {
 	case 7:
 		val = read_config(pcie, 2, 0x4);
-		write_config(pcie, 2, 0x4, val|0x4);
+		write_config(pcie, 2, 0x4, val | 0x4);
 		val = read_config(pcie, 2, 0x70c);
 		val &= ~(0xff)<<8;
 		val |= 0x50<<8;
@@ -653,14 +653,14 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	case 5:
 	case 6:
 		val = read_config(pcie, 1, 0x4);
-		write_config(pcie, 1, 0x4, val|0x4);
+		write_config(pcie, 1, 0x4, val | 0x4);
 		val = read_config(pcie, 1, 0x70c);
 		val &= ~(0xff)<<8;
 		val |= 0x50<<8;
 		write_config(pcie, 1, 0x70c, val);
 	default:
 		val = read_config(pcie, 0, 0x4);
-		write_config(pcie, 0, 0x4, val|0x4); //bus master enable
+		write_config(pcie, 0, 0x4, val | 0x4); //bus master enable
 		val = read_config(pcie, 0, 0x70c);
 		val &= ~(0xff)<<8;
 		val |= 0x50<<8;
-- 
1.9.1



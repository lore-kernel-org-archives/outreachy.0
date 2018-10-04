X-GM-THRID: 6608456604457107456
X-Received: by 2002:a6b:fb18:: with SMTP id h24-v6mr5194354iog.17.1538670965372;
        Thu, 04 Oct 2018 09:36:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7345:: with SMTP id y66-v6ls1362612itb.3.gmail; Thu, 04
 Oct 2018 09:36:04 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63mXf0zEYihB1mJHwlbZ4AEdK82V0A8mqWpBO61uEuRp0PactMWy/wUb5ZHcZ6Ouf4m1U+F
X-Received: by 2002:a24:ee43:: with SMTP id b64-v6mr9534492iti.3.1538670964676;
        Thu, 04 Oct 2018 09:36:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538670964; cv=none;
        d=google.com; s=arc-20160816;
        b=Z/z+ho4gDnC3eyRtMLCMeDyrndnz0z+N7ymff0Uv1nTJ+aUMYbAbzyIQef1y1/Bt6X
         EAbrqpQNthhflL/W47SpuQrts1qjeQzAjiJyJ3vPQW1m6rtq5Rus/m2/uaa6F7ExCBZW
         D4GLyqtyIm3dOwwBt+QeCUdMAmkv+biAK9nDqd2CpxdCn5cHY/7d7XqsWeU9Bpsrln1p
         DTbW6O0Xj3DHJla+BBGs2W3Xd+Q//BUXi/nvelV/6/cUkZcomBNJqp4QpNh7Yedw7JsK
         FtgY1XNG07LGQW/TblN/7DC58E+Bpz9L0BpyFXwAngF1TlyBhMhmc2hap5sEtJsigqvS
         VH9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9HBFSK3lEe69MsmaHthiap47q1bEAQb3iQM5JYD3FCM=;
        b=ihUf5LNdDXjmo8NrTM7nsE4DClxDgzQUFLscGK0y51pHKY1GKmWOSvwa1SIxUxZQtF
         u2/wVv57q4e9CxU6Ll0XU/yLDPLO0mC08R9rp2Yx7nXqMmcnYllvCvShSN1Cf25XukJH
         uspeawrXv1G6J0LsJ0b46/bOv8Z58gkUOzoOOSxZs4Kn2ifk+htAt8dQucc6dFVqqgq5
         xmZDpgC2kAESb8e7u56q9cz02/Sc4AzY84/+z5QhSnYd3QNRDk0mV+5JU9b2JE77HJeR
         pyjJY5FIA+JNb/eIWDj/UC2KCMWtF7J2Kg846CXvISZmmQUgVeeTqAuyNgNcC66fHRBm
         u7MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AXMIAD82;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id b133-v6si64900itc.3.2018.10.04.09.36.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 09:36:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AXMIAD82;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id c25-v6so3329909pfe.6
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 09:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9HBFSK3lEe69MsmaHthiap47q1bEAQb3iQM5JYD3FCM=;
        b=AXMIAD8291rt9CdgGOoz1cMmkzYGtIDagsQVgr4DjfSbQ9cdz4Kwlrd+6ZFjIZQHKU
         SAPixKXmSo/e35U+wsj6n07jMLD1qh3LAhmgq/HZKG4ffurPsiXRjzKULSPqvi9QBUrA
         H79kyvGb/qsHVH0VQv9NF/R5Klt6nL3cTC+k1I9IQgX4raPLnotDfA6TDjcSEq9DcHBf
         xuL/FwrOzyQOeBR23ctW1F8oTnmweI3syzBMbtnyLzGZUrEKkEDg+PkFlmOAlwQmvfl0
         28f+3OmdX6KrPYVcMkVEcK6A/cGpBV1ZLLQyenM3p/HF2GG27s/hclqMWm4tK9CwU+W/
         WRYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9HBFSK3lEe69MsmaHthiap47q1bEAQb3iQM5JYD3FCM=;
        b=IhlgBKQ0cvB9e0DV5YYDu+vuektVDvrOvODUx85eZVyU8MzToF5jxpFdhTlMMchTgX
         /kH2bxRbEJJvsmFqHs0Vf3iA1OVZ192/FvbPftJ5upykEbdZUSfUKCK6dY0tT0jrhIhR
         Vu4e1ubkQFj//wb5YS8Xmx/bMuG3uDEo4vI1h7TZCC2Q/zUU395Q/xBMumMUrLTDkxlC
         Y7a0dillskV6XcUDiaEOQhFLuWLUu3FN6ihKI4euLHrOMcrhd1ggERAgvXdrOV87T3lk
         IQNTf5UCwAmuTTjy7dj5o+/GC1wV2TqceNqFF+cdAmwZyn0B/FD5O8nyZsfbhF7g0edL
         6hqw==
X-Gm-Message-State: ABuFfohKJzaIX3QlKeGbA3yhpfoh7jJ3+2XeBUYMpHEIjlzgDFYuJLE5
	WOE/mh+wEWZOB0sfkGPGa3s=
X-Received: by 2002:a62:9f11:: with SMTP id g17-v6mr7497640pfe.144.1538670964269;
        Thu, 04 Oct 2018 09:36:04 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.104.165])
        by smtp.gmail.com with ESMTPSA id y9-v6sm7276887pfn.123.2018.10.04.09.36.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 09:36:03 -0700 (PDT)
Date: Thu, 4 Oct 2018 22:05:58 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH 3/5] staging: mt7621-pci: spaces preferred around that '|'
Message-ID: <2e3eb8f9b4461a330f292aa187158385800c56d4.1538670297.git.mamtashukla555@gmail.com>
References: <cover.1538670297.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538670297.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add spaces around '|' to fix checkpatch issue
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



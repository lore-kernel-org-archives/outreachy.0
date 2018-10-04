X-GM-THRID: 6608456604457107456
X-Received: by 2002:a81:7015:: with SMTP id l21-v6mr430357ywc.23.1538651650163;
        Thu, 04 Oct 2018 04:14:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4054:: with SMTP id n81-v6ls1186683yba.14.gmail; Thu, 04
 Oct 2018 04:14:09 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61toucznlqTrmT6hX9utdN1N7zHdRHNiYzYg/xn5i4kxZ0LPDCxbW/RIYyabA9Vqil4kFV1
X-Received: by 2002:a25:2204:: with SMTP id i4-v6mr3142538ybi.54.1538651649545;
        Thu, 04 Oct 2018 04:14:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538651649; cv=none;
        d=google.com; s=arc-20160816;
        b=fOIxtrEDK2ImGAo6rrY7m8N5DvzEX5OPbgFKaAqwSoRsJcnkMQiF71T0KIxmdkGw/P
         2CeuZWtWkdasCF+S4jZ5DHhhJGc0+h/h74V+Elr44oE7nteBMK6yyyyRIXE7ESNiJCFj
         Qu2omb7Syum6T+b7gUsIPM48ZyA/yP1ekwIMKkxhK8WK060ce2uFpsJ+vx7NS59AqTWo
         Pz3xv3ygqkyE2hbM5Wb+aXPtqSr9EyiFifo4/BJusg550+nVoivcyusbJkRh8GVk371T
         fkMVRcXpRWGX+hG+xEQcQd+KESPosuDsqWuWmJcUZ2uZflY3546zFy+wSSOLr9O/BSE9
         ef6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tLJUcUdhD+lxnFYQsjfSrHi7HekUFnTawtUEWKP/sUw=;
        b=DdstLqPA75tt+bcYeK1lHC6ET9cDPqEOT8ZTND1Yrm+htducdMbtnpMahBGC7/VDSl
         90GAerrkTPZoVOTNIF73i5cWn72l8tDYmnctBeIcpHJpdWXZI3Pstw8YxnIY6le9jTsw
         NaPnZ3HzGaAcrgEbmFu5ScKrYY9sFfiFGRoqiwusJUZwXFWIMtObLoaqIZ+Fa4qdKOaT
         ijJs4npyqNwPwy5jATeUcLi2lNnSk2n/7Qy/ABpqpL5klRPRa42kWYB4KrdqxpgxuOTH
         g6Tw0a3VJBKmBUp+xFMbmPuC6Qusi9fJKvBWpLoJ3MjEsBcP6D0JpY9ekim3dSsJPJUU
         ryww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rzBpWzJL;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y16-v6si171370ywy.3.2018.10.04.04.14.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 04:14:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rzBpWzJL;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id u12-v6so91823pfn.12
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 04:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tLJUcUdhD+lxnFYQsjfSrHi7HekUFnTawtUEWKP/sUw=;
        b=rzBpWzJL3km783brQ4y9Z6d7DTb+/i72wzzDdpNMm5YAodf/g2m+9Rzx842+MSDqEa
         zbqZFalb2Dv9Xy/3BIn2DIW6dSWJ+ZxR3m7hk2kBMNOCajvjQ3Vs9885mdaK5dCekfsi
         EjD9qbyjvOxaueOX6pnjVWBOaKeO5KQoZb2P/+X20k1YSSMELut0w9ZH+wQkBvk72G48
         UNGPvX5ooh4RuT+gzKP3h3IF2p7wHlF8dyD/M93u2EeCCdySCreAk7zllnKXllcfMvnl
         0EbpDsQpw6oDHlnUwlG0Sp2+QKWTVCH4AkT8gxd3Fj9fbMtgeOisfw6uJ22uo39g+bqv
         paQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tLJUcUdhD+lxnFYQsjfSrHi7HekUFnTawtUEWKP/sUw=;
        b=dpQNGx/7FZ45tIOAs4nWVorM51lsxCVHviDO3HJkXeYejAj3VGKCotE+DDbDRF9SMg
         pw0J9uSn8NO7PTAvihlMf6bcvRcEmn+SiDVdlIVEMJVXz+kxPTk7MG7rfbyEXiBr2s/8
         wfyuR69flssgoHYtCdNqHT/WELPsC1dZc4WTP7Ju7vjjmJS2CllgtsXkWuBVfzf7hMjd
         7Y1UH9/uzJ4LmW5LVYmcpWpT3UyUryDEFaEFi/OuXD5O+oDBcmZtjBzyQ+tDOqmWClM0
         ngyg4O1lMUbdCp3irTJubCpNXNHa+1z+MIIzAFnPE1VyM38adlBuDd3MNZMkQq4Pbtvd
         P0aQ==
X-Gm-Message-State: ABuFfojrkaVz0e70pm22ZsUaZG8YxKO9WweEhJBB6d2Mgx1aMZTXU0DU
	jgHGpjjFqCCLFJQpJsdVy0s=
X-Received: by 2002:a63:e505:: with SMTP id r5-v6mr5234119pgh.170.1538651648700;
        Thu, 04 Oct 2018 04:14:08 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.195.35.235])
        by smtp.gmail.com with ESMTPSA id 189-v6sm7788634pfe.121.2018.10.04.04.14.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 04:14:08 -0700 (PDT)
Date: Thu, 4 Oct 2018 16:43:38 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, mamtashukla555@gmail.com
Subject: [PATCH 2/4] staging: mt7621-pci: spaces preferred around that '&'
Message-ID: <7eebed7c7ca59e4d52b9874f314c54a4ef21f0d6.1538646749.git.mamtashukla555@gmail.com>
References: <cover.1538646749.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538646749.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add spaces around '&' to fix checkpatch issue.
CHECK: spaces preferred around that '&' (ctx:VxV)

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 3182d8a..14aac08 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -489,7 +489,7 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 
 	DEASSERT_SYSRST_PCIE(val);
 
-	if ((*(unsigned int *)(0xbe00000c)&0xFFFF) == 0x0101) // MT7621 E2
+	if ((*(unsigned int *)(0xbe00000c) & 0xFFFF) == 0x0101) // MT7621 E2
 		bypass_pipe_rst(pcie);
 	set_phy_for_ssc(pcie);
 
-- 
1.9.1



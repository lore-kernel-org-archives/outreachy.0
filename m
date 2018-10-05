X-GM-THRID: 6608456604457107456
X-Received: by 2002:a9d:7844:: with SMTP id c4mr4534366otm.36.1538723985182;
        Fri, 05 Oct 2018 00:19:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:498c:: with SMTP id w134-v6ls4585081oia.5.gmail; Fri, 05
 Oct 2018 00:19:44 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61L0BaTxsqhii5YB/VO5VnDLo7oOYiprZYOjC1GehpgQWr8dN2m3PoLeAPNgWi2NiAYXKYO
X-Received: by 2002:aca:6a88:: with SMTP id f130-v6mr7174893oic.0.1538723984591;
        Fri, 05 Oct 2018 00:19:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538723984; cv=none;
        d=google.com; s=arc-20160816;
        b=Vj2CYs4LsCJaWNeEJEhSvdG1il0CK/wYMgSPft9iYrn8gz/a7vMS+2trBeYeozaRuL
         SM3ZaJq7ZRZuGiHTmieos4ed4H5eVpfgJawDqJyoEHZq1xZN08RPLRR6TFZpRLQWoNW1
         7E1JDakon2nqUCDKCG/xOJQb+9iECXYDKNHVkmhOc1PJt3qDAUeZ4Ys3yFUrVWh8WZQB
         yzKTABj4SIDVXV3DgeC4YzwkMF3kDaH1Sk4p2CLvAP2AMWD0i7oQH8CSiwe3hivVsSlu
         KEh0vi3YloXxOxOcbzpa0up5zqL060Y9oTsqvPJvelo60J0uI2MOQBf+QVJINgydjhcu
         oNkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DJB8LmtMhftSiCeNKsOrCJ+lowp8IxuESLzXYrzsvyg=;
        b=xZKDRJmOsoYTa3KLhqEfFHMK1qEPYz6npWkXQXo0TrIpEXsWx23RdIgjAkI5rYdYZA
         EKw++zeXpupFCTAf0ia3vSv2hag2yghmIaAeNeZJciu2FP77MuvmxmAd5hlhJPUwoPbF
         5QXpmgQsMait7oivpUcVeqsQRqEZoEM5BCjnkK3O2YndynkIZneGB6w6VYxMIwAzEwSj
         cvOWmkpW8IR04PUh3B5TYlkBhQDcL2yvrnLQzHRBOWZ3Gc2tyVzkFsgcJiISEfZY6nZp
         IrrSFENZC8t2Af9rP29MWW9DPIH6iiSveFtp8RT+nF6gKz9rhaJnwq/3yzkFClUvzODV
         Gc7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YFAftLry;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id u207-v6si342977oie.0.2018.10.05.00.19.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 00:19:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YFAftLry;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x632.google.com with SMTP id b5-v6so6413756plr.5
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 00:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DJB8LmtMhftSiCeNKsOrCJ+lowp8IxuESLzXYrzsvyg=;
        b=YFAftLryx1j4Z8vg0HrXSZ3xhPYEJ0DowODJCxKxmERsT5E7lDBzvzzFsDFoNDIUpz
         ZeXmseWtMyKMh0ThVVDrxW+86EW5uTixiNFNu+YZmH6y5fU9UGUXM84JHFsGflWjwaMF
         Y/Yt/uQ56XjrCjO9K/yMW6fIqVgbdskbXIjQQOF9ckLiW02jLjhxvaTO2olyFRQwu/dK
         +W3QZAMPhKAoFIrvTevnBOWOBO5ACiWbtgr0a1uwCvFiTFBqIJWzHUvR4+RM3f1/lTZy
         VH2GzkgNRh/zycRcsTznlNX1PjcWFqIiI0XXF7qVGs7X+njTgW4gbxnFGW7njDqCQqws
         t27A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DJB8LmtMhftSiCeNKsOrCJ+lowp8IxuESLzXYrzsvyg=;
        b=r+3s7AEfEImeV72ai1ji+NpDF/dCyMnmycNp+iAVMqPDHFzfHAzqom1o/reJB7u+hy
         /vNAonTC6BiQ5FkGinL186NF2YuTcN/19Y78Jb2PUi+Tim3JSJR7E7CJ8GF8BPkFeDkv
         4pZkd7i3o+npGhVDdBWVusocVKWppOKcxbC+F4Kl3t5XPBviCEKM2QbSP397YYrDOtgN
         dCNQmnyh5t5g0vw/A2+GFqzwO+/Mhyf+SS1+rDIPQVMxjngK9UxxDzpZ1ABDCYRudZal
         LgslcNq/8RVNE3GDuX0CXeT5jbLD1MCnW+XYakvrj+2vUu/Qe/36fJ53Go6Mx4gQB7lx
         RlMw==
X-Gm-Message-State: ABuFfohUy0fY41cIfCqclZZuoFrQKD+OCA+l8+FV6F1KUbNo3N4BUWpr
	PEMRREQhcbU5ytvyqbbMpmygrzG31Zo=
X-Received: by 2002:a17:902:bb08:: with SMTP id l8-v6mr9901740pls.252.1538723984197;
        Fri, 05 Oct 2018 00:19:44 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.94.221.57])
        by smtp.gmail.com with ESMTPSA id l10-v6sm10447899pgs.45.2018.10.05.00.19.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 00:19:43 -0700 (PDT)
Date: Fri, 5 Oct 2018 12:49:38 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 1/5] staging: mt7621-pci: Do not initialise statics to 0
Message-ID: <790cac01daeec1486ff5c706b89b381433e0470e.1538722582.git.mamtashukla555@gmail.com>
References: <cover.1538722582.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538722582.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove initialisation for static global variable to fix checkpatch issue.
ERROR: do not initialise statics to 0

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
change in v2:
-Change in subjectline to begin with capital letter.

 drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index ba1f117..3182d8a 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -122,7 +122,7 @@
 #define RALINK_PCIE_CLK_EN		BIT(21)
 
 #define MEMORY_BASE 0x0
-static int pcie_link_status = 0;
+static int pcie_link_status;
 
 /**
  * struct mt7621_pcie_port - PCIe port information
-- 
1.9.1



X-GM-THRID: 6608456604457107456
X-Received: by 2002:a5b:943:: with SMTP id x3-v6mr3736658ybq.55.1538670787321;
        Thu, 04 Oct 2018 09:33:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3b47:: with SMTP id i68-v6ls1410508yba.0.gmail; Thu, 04
 Oct 2018 09:33:06 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62gJzdyH+D1qlc9jN/NWWF7ec9X8CU75No1+Vwh7Zu48haqkTxSj1yYYTER000lhPjmL2qb
X-Received: by 2002:a25:8610:: with SMTP id y16-v6mr3880108ybk.95.1538670786438;
        Thu, 04 Oct 2018 09:33:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538670786; cv=none;
        d=google.com; s=arc-20160816;
        b=cUdvu1e+C9YYmmhd2kyXAyTeLxJOtWNsmn+OZ45Oml4noZDV2jmuhXQd936sIy3yZ8
         h0Wckx4LqJQ1fuVOW91Jm6jsZtqAMy74P0mfb1XlnfhJVh/w3NvDdfaTAlkEdilWLt/b
         7nj91b54wSxJCqHeR6gMwR5ESrs1ZW1DbEUgv96iOPJG+uq3YAe89DGSfcxROTY2rMA3
         OhVVBhHwBXzEt7FEMGHtK0yXydrcjPEonkBHtkeXAs4VrzJjswcgLI5G6xEdfzRXchQr
         2VvGknuzhuSt+E0/5Wb2CiMhBqvQKfSJcq39VgcIzfU+UXbItV/5J2TYJwD2FOvItpZt
         AWvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=I8a0bY5QCgB2pgGydG0e8atlhpgx3NzZj57v7D/vLHQ=;
        b=hFwVD4z/Y68m3Br5qsYxqCZqyebhOINcFirkxfvvjv7uhx72pfHrn/beyJGhkj1jb6
         wxUGAbsd7LsoERXq+nGgtye2xsy23i8dTu57aOc8zQbvPg2/xapB1ozvYSUWYiZGl6Mg
         ieBB/S2L0sScEffR3h9G6sHXpodaQLke7YeU7wezQIya8D/cA0NHjQ1342KRB6BUHxhZ
         O+6F6v+/y0ZqXmfZFGUWKtPbxlyrKSIa3bM+B9XKKn4u0cxHDopy4twN5POP45W8e8zc
         sM680ctDoFkOadJwbqkSFUr0Q9r+mbpkm8qRVQiRN0Ln5FtqmMhssrURGPrenZHt42PF
         usow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QNra/IW/";
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v16-v6si236638ybe.1.2018.10.04.09.33.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 09:33:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QNra/IW/";
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id g2-v6so3386368pgu.11
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 09:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=I8a0bY5QCgB2pgGydG0e8atlhpgx3NzZj57v7D/vLHQ=;
        b=QNra/IW/Te/EcnxXjE9gFjZBRe4LEAvSbs0BNjIdBqKDm1+uaEZeXHh8udJI8nN41S
         pS9xPrW1VIJ+U5IdASQ8AS9y8R/MMq3xpGROnp/otj24XGU/70Ar7XD6GoO15qtVEMdv
         6SfJTPLJAtz1CRvfYiEtKE2iOjI7FIKoT/zeQKo+xYbssrrnxy+BG59QELrATIa2j8ME
         p0PL5SHCKtspKfiWVFHv7ioyTIZYuJFig+aB/YcnQhWipat0LyqFf8CbaFRorq8fZw9h
         7vhNQTCRUEUJwffd2Wne7rMUhsGe8oiIcE+cn/uXKGeEx+e4nHxYLOe5Fbu+EOb3U8PL
         XZSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=I8a0bY5QCgB2pgGydG0e8atlhpgx3NzZj57v7D/vLHQ=;
        b=WcoP/zruplcmYeQ2RhknU7i8WHS2w6JNZvCKRJLDbyExcxj0qnERNH3tvp99EJ3m1y
         tObmCD3UW0LPsA8zlcnjv0HcJ9OXC6y2AiEj6cCN4HPBdZvmY5bFBPUVkL9c1MMbx1YA
         0Of9nzKsScubIrEgzFakim6LyJEhY9AK9C6dJJDlaTr3NAe8YweCrXWlXE8RQ63kZwb9
         kTi0dxE7JKS1A5UsN9KjkyJB/PaKYTOpBo0IoYStvFm4xOtwHGgic4Zg+pAnyGswTRcs
         RwcPAk/Vnzh8fJpDw5BXOGhpG69U1f5y6d7iANlPjWDraz1fQ7Ur78DsoW9+gY/LuHov
         1axA==
X-Gm-Message-State: ABuFfohdKgPzuoO/sXvSLBs/4RhL6EEq2u670TgD+kS5rDSOXiv/VdsI
	MUWxTps1YD/XE8piNDooJhI=
X-Received: by 2002:a65:64d5:: with SMTP id t21-v6mr6608553pgv.428.1538670785513;
        Thu, 04 Oct 2018 09:33:05 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.104.165])
        by smtp.gmail.com with ESMTPSA id r65-v6sm8109875pfj.5.2018.10.04.09.33.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 09:33:04 -0700 (PDT)
Date: Thu, 4 Oct 2018 22:02:59 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH 1/5] staging: mt7621-pci: do not initialise statics to 0
Message-ID: <dbd85c8647fdc02a03e1266568ac8b043bd6720d.1538670297.git.mamtashukla555@gmail.com>
References: <cover.1538670297.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538670297.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove initialisation to 0 for static global variable to fix checkpatch issue.
ERROR: do not initialise statics to 0

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
Removed initialisation to 0 for static global variable:
1.This type of variable iss initialised to 0 implicitly as per C coding
standard.
2.Also this will take space in .BSS segment of memory while linking.

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



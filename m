X-GM-THRID: 6608456604457107456
X-Received: by 2002:aed:248a:: with SMTP id t10-v6mr5253359qtc.49.1538670898093;
        Thu, 04 Oct 2018 09:34:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5c4:: with SMTP id o4-v6ls1828974qvf.4.gmail; Thu, 04
 Oct 2018 09:34:57 -0700 (PDT)
X-Google-Smtp-Source: ACcGV6095lmahf+/Zg2ABJ4RuMS0zFZqhVKwb8PmQMLiMv3Co+OQUUgGpkwv1zZfZOE3bpcvaVya
X-Received: by 2002:a0c:8a68:: with SMTP id 37-v6mr4801338qvu.5.1538670897600;
        Thu, 04 Oct 2018 09:34:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538670897; cv=none;
        d=google.com; s=arc-20160816;
        b=naG+JGmxBdt9DgrDk839+rRf7H75lU1tr3fSqOh5RwRjjGtqdrWcuCZoTE1F4KAnlG
         6EE1I3xbYxcqOtRfX/0jJAXCv47puiOcz9Axu2o0qb3xbLgIFUc6T1d1NJnHd0npopaJ
         RJig8zITTYz+paKPNPeAuBXAaDZ7ZCfYisRq9w6c5H09WipELSvDuyLyBCpq4zIN9SYy
         PSU3JAqwhBREzjxkFDdzkFO3arUSivHLSU/If67pBcZcBKYelXDRbwrf6sBd62JX1+8c
         anEfvSwGm/vyzGJ6c0y6a8KVL1KY/eKJ5qZObhu/fCXLCk1H2Ew9LwkPDBJddlG5BYuw
         l2Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tLJUcUdhD+lxnFYQsjfSrHi7HekUFnTawtUEWKP/sUw=;
        b=HksrUcnj6BCiNF1WRC4OEwsnvbVIJppTk/I021FKcZe306SSo5TMAYL3IsjEssodXm
         lfKtd19dkeQJxb6sihqGs5v72N68Kl1OCK4ZBowpUpqeEhjxhldnLTx0puq+xzdL6qqB
         MPwQfSIs9ppsjLgWtF+Wx8V5qipfFAu+HEDBsSxeFGuNcrAz5/y6O4H/txViTQA9iTXv
         3LHaEuGSs8RdS6LipRQkSEX2eufSkmpGzFt+f+U8lcTOic+eFbIdEkk2URzO3GFiWTFb
         5RcNXYVn2EtVyo9pAknZsZ6DzCW/oMGR1qdp3jTbgISAcgfNEGX3hnQYqgc8/sukuige
         sBQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=odjuwSo7;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id r25-v6si280331qtb.0.2018.10.04.09.34.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 09:34:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=odjuwSo7;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id y18-v6so3417643pge.0
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 09:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tLJUcUdhD+lxnFYQsjfSrHi7HekUFnTawtUEWKP/sUw=;
        b=odjuwSo7Nylf6dhiXsaNHERpyqE8IojOBR9+FZAWyBl3UNmBDhyjeQ0D/Wtfn0jtJp
         pV6nGZ7dQ2ZvxN6z0hslRABVlm0iIn64P1Jxgo4lv5pHGsguc6IZW7auzX0bYaJnCbMr
         zIPbHujpTy9lXOfDxodJnRdZVMfvAvw6SuahXj06DQkgn6/yNL5yyXYWvEJqTxqN3aBs
         L3HDCGA6HaKCs8cgy1FXGnkUWzznH+TCj3WRUORxCoGJRdBi8OlHoZQNcwtzZxVnXm3X
         a3rEsv765EQqNnsEETRaZko1OS7xP2Iit7avhBXBvaF7tJN/wC1jj1aA2ZsMH0qpWn5D
         PVUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tLJUcUdhD+lxnFYQsjfSrHi7HekUFnTawtUEWKP/sUw=;
        b=WkYUbTXz5I/9Ct427mfmjwhSEXJogRC4JZNcUq6SLNcO7OqAYAYlFmWloiyk/IrRNz
         7S79fI6HDsJeftPSk6K1e4QFBIsOXU5vOFnkUjORVQZ4JsUD7pdzvvFLPrzkiBqMOxpj
         O4cUjoNW9Bgg2Gr6sBiLwRLmOdUzV7QjTz3Z9PYXx+QYrAB5apCaYNBaQ2c7HFyyE+zR
         cGImsP0v9Ts0DwUk8YD8oe9fFOKYeGA8Dt9/LHgM5gjP8c95/6Qto4ouzq7Rwin3IDie
         nXrMXkeOO8RAagdomIBsEGzNbrF89I1VajUrrnEXGjUOofY2+BXmvbG1aCiqrfe0u6bg
         r/MQ==
X-Gm-Message-State: ABuFfogS3JRP2Q+ittzefeOZ+IVHmcSIpkmRICUIeJ7j5ac6SuLfDs7B
	Yaihw+5bR76h6aSs7SeraEA=
X-Received: by 2002:a62:a0e:: with SMTP id s14-v6mr7530731pfi.153.1538670896871;
        Thu, 04 Oct 2018 09:34:56 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.104.165])
        by smtp.gmail.com with ESMTPSA id n22-v6sm7421385pfi.185.2018.10.04.09.34.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 09:34:56 -0700 (PDT)
Date: Thu, 4 Oct 2018 22:04:50 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH 2/5] staging: mt7621-pci: spaces preferred around that '&'
Message-ID: <7eebed7c7ca59e4d52b9874f314c54a4ef21f0d6.1538670297.git.mamtashukla555@gmail.com>
References: <cover.1538670297.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538670297.git.mamtashukla555@gmail.com>
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



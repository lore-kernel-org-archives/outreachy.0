X-GM-THRID: 6615072940332417024
X-Received: by 2002:a9d:2944:: with SMTP id d62mr36600907otb.9.1540191690637;
        Mon, 22 Oct 2018 00:01:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:542:: with SMTP id 60ls1839176otw.14.gmail; Mon, 22 Oct
 2018 00:01:29 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61Ag4oAPDuYOm2dr1XorLJqsGA4TBvTD4DpGI1I7dtxYo2pgvQQm4iGJuONLFNmlHSnI6oP
X-Received: by 2002:a9d:2b45:: with SMTP id f5mr36807895otd.53.1540191689970;
        Mon, 22 Oct 2018 00:01:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540191689; cv=none;
        d=google.com; s=arc-20160816;
        b=xSTtYcacdgf182FRtq7Vjgsgw/gSntVJQCu+0kKdic+k1yUAOdZf4YMWu1m5nZpC6q
         x91fmWdr5mfRVMghwcI4iFBu8DOQElNEmohjPn8225qfdHgl+QdOd+fEQr4oQdoFnz9V
         gx1tl0564M9EJsQla6ytQxPVLiMAWZndIwJSSNTYpda3XkIQsEnSxMJ+FGcCGOUopyMS
         j4iYBCnu96D/rqRguuP2YEHav5+L4vOpoORVnSLb+83DtU2CmvUH0SWemLs9lTgGF+dp
         RrfC5K95Dp7bL0DG9wyfCNVYutzdt3Kz1JZn5L+Q7oowygzRhxCC0FUTVF/TnbDpwmfM
         TS3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:reply-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yPL7Mp75oSifc8c3zW5zHBY6k9jZrA8du9Tq/DtxyT0=;
        b=dwEDz3W/hIOzZWnygDjuompktPnsNtCEgNR0/9aqC/lt9UXkylwEDsKN4oYBw2sMTC
         qRGx00DaqT71016jxqf0TwkE5f2xhnpPtF6NxQgZCPGEGCMzr02x8rd/Y9dj9sCSRhzQ
         k6mFynXuZo7j3fu9KpIgrjNyoJQSD5XXnsid0NVr+aiHvqPUEuYaFy4ofEv2Ay0RgRje
         38kwHyyFZgE8sU7e5hYSn1d7fzYVijVgm9wy8Ej/anAnD2nRaLM0+xgwnFNvJn+MUTQr
         duDg5nPZ4xjUhL15hs9G83RtnYHTUaCPIT0g8rB3dV+NOdT/k0CVfLZDUMpWV51Pe7Qw
         f09Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gy6dyxcT;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id u207-v6si1390357oie.0.2018.10.22.00.01.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 00:01:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gy6dyxcT;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id f18-v6so18595499pgv.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 00:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:mime-version
         :content-disposition:user-agent;
        bh=yPL7Mp75oSifc8c3zW5zHBY6k9jZrA8du9Tq/DtxyT0=;
        b=Gy6dyxcTIyCdcgW1jVaHnLqq5DGFX5QtgmERmAExnvYgs5KolhekmvDgg8nChfg1JE
         GqSjchy9HWtz6udYYchGq3sawxyktTB96yhycLjwVcoTDDlXOB7pxQt7lPiSLWKO6ZuI
         aWoDyltD9Kaw1qUXzIqXVy75ZxoCyRvmGkVvNdsCpn46rwe58gzjCyyB3LZG+AfZqgT9
         Gm2cAx7abTRNkidDtoZJSH4bFk/+AQ1oMcoJJr222o9hO3PuCyqpl8/9tSWDScAlFe6u
         ZvTCYeh3Jg/Kw65XH0dV8ZmB9r8qqIcJz41FyjCE1zdRprAlrgdBZVpbBHIEDvRZhhYt
         Oz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :mime-version:content-disposition:user-agent;
        bh=yPL7Mp75oSifc8c3zW5zHBY6k9jZrA8du9Tq/DtxyT0=;
        b=oEpaksKmKCXNxK50pwkuBbAe+zqOSZX+ZXR3eHLzZgQzbtUK4oR3WISM8Dc2kS1ZkA
         Y93tr5c9WshbgeTp62D2RkqrC3bj+QBFeS1BQDCnomEHoRAblSVgSRcNREmnb/VmcTS5
         fgjmhp8UdcchfWErJDnJ9E91bdv1kd77n5fzv2pfDJm3GHWXuqZR0f+MeZyNYiaHc4rR
         28f+IvYaEdDfvdqUvWzOdGv+6gu8LXrwMmfI0kZT8CAoYLeEYl2SI6+5yuSGPcqK5afS
         wUQpfvTgmAZIfciDR163NKSAEXa7UuxZLEEO9B2bo5CWCFDB5jkuB7A3gJDUU8ce7NCb
         /S7A==
X-Gm-Message-State: ABuFfojgClUAhKXiyBicVXBdyaanl4C0WJPus10MxJ4IEm+3aJGUEXUI
	Hxhu2rGJLnB6PbTDmTJKGtY=
X-Received: by 2002:a63:c949:: with SMTP id y9-v6mr20013505pgg.331.1540191689117;
        Mon, 22 Oct 2018 00:01:29 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from aakashd-VirtualBox ([183.82.102.247])
        by smtp.gmail.com with ESMTPSA id i5-v6sm34753269pfo.107.2018.10.22.00.01.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Oct 2018 00:01:28 -0700 (PDT)
Date: Mon, 22 Oct 2018 12:30:14 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, bhanusreemahesh@gmail.com
Subject: [Outreachy kernel][PATCH] staging: mt7621-pci: PTR_ERR_OR_ZERO can
 be used
Message-ID: <20181022070014.GA7822@aakashd-VirtualBox>
Reply-To: bhanusreemahesh@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace multiple return statements  with single return
Used the following script by coccinelle
	scripts/coccinelle/api/ptr_ret.cocci

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index a49e279..bb08fd2 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -403,10 +403,7 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
 	}
 
 	pcie->base = devm_ioremap_resource(dev, &regs);
-	if (IS_ERR(pcie->base))
-		return PTR_ERR(pcie->base);
-
-	return 0;
+	return PTR_ERR_OR_ZERO(pcie->base);
 }
 
 static int mt7621_pcie_request_resources(struct mt7621_pcie *pcie,
-- 
2.7.4



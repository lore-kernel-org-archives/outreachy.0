X-GM-THRID: 6249268328752218112
X-Received: by 10.28.128.204 with SMTP id b195mr834252wmd.7.1455048404875;
        Tue, 09 Feb 2016 12:06:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.216 with SMTP id i207ls10175wmf.16.gmail; Tue, 09 Feb
 2016 12:06:44 -0800 (PST)
X-Received: by 10.28.158.216 with SMTP id h207mr845139wme.4.1455048404385;
        Tue, 09 Feb 2016 12:06:44 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id s132si634851wmd.1.2016.02.09.12.06.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 12:06:44 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id 128so5466733wmz.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 12:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Ldu7tGxw3babXkqcygZb4FK9UbDvPN57L6VRhPqwZzg=;
        b=orfybdcZujU09b7COi8DwzZXg9sKiIU/LN9WGXnsG2GjpygSrFVCBIVdTeeSgrTD9+
         eTeAveeAsK4pHORHs48GDcESGvDd6T0KARq6A6gmqU8roqOntrMZW0BZmVRWAfYepShg
         cqljuXPPzbCj1T6y0oTOPRT6UQFICEb0aUjrj0OEKcLa0EBy6y/mehMKx3zbbCfrm5ji
         RsElEHSPIl1yRE/PU5YsmWHMn/ppu0Rmz9rNJhRke4jNfgZwsYFBWWZVGo8m9VVAk3ds
         TteghuqZYpYjpyHq1IgxyVr/TNQGCPECZDbwGhpRfrhML4q8aj84n267w+/4AUszbTXC
         bimg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=Ldu7tGxw3babXkqcygZb4FK9UbDvPN57L6VRhPqwZzg=;
        b=dvwsLH4IV6bToLhJconfIZ8yHV2d1Q2hJK6R0faUrlvoIWETpkMBKUWPiKD5KSGus6
         BydxLPZuT/hwTH1/gcVvAfiV+pIhVmvRUOl3jqWxV6pwR3qouzzQp+KJrfff+c0i0gTc
         F68bJfsw1KRr8wApxbw1cdFclDDPcpG4o1H6FVkJ3XksUCcRbbWrH770S7jahT4Tx/6J
         Nj7uulYbvYlUxQIPsFLLacTvPmKzRwfRNvNImprWKWaVH3UHhWyzUZh6l1IXZAgQ+Xh+
         nTO52UYPiRWtoRtWGMsDV0THlG98ssVhhqhAx5vVSR9UjtuGtH2RRscCH0rzB0obNHk4
         S5Bg==
X-Gm-Message-State: AG10YOT+tRuMRq2K0YFsCzG6iuMZwxWZARZ+JV3M+phlY1gvph/pF/zH86hTc/lYj1x/XQ==
X-Received: by 10.28.177.85 with SMTP id a82mr6582593wmf.57.1455048404271;
        Tue, 09 Feb 2016 12:06:44 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneenVB ([109.171.130.235])
        by smtp.gmail.com with ESMTPSA id js8sm36162856wjc.37.2016.02.09.12.06.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 12:06:42 -0800 (PST)
Date: Tue, 9 Feb 2016 23:06:40 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] Staging: rts5208: remove unnecessary parantheses
Message-ID: <f6b92ce319fc60717d83166f62da096f7407d2d3.1455047275.git.hamohammed.sa@gmail.com>
References: <cover.1455047275.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455047275.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes unnecessary parantheses around rtsx->pci->dev.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
Changes in v3: Add acknowledgement.

 drivers/staging/rts5208/rtsx_transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 0c9549b..f2eb18e 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -652,7 +652,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
 	else
 		return -ENXIO;
 
-	addr = dma_map_single(&(rtsx->pci->dev), buf, len, dma_dir);
+	addr = dma_map_single(&rtsx->pci->dev, buf, len, dma_dir);
 	if (dma_mapping_error(&rtsx->pci->dev, addr))
 		return -ENOMEM;
 
-- 
1.9.1



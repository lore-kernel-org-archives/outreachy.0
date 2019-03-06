X-GM-THRID: 6665329083117731840
X-Received: by 2002:a5e:c60c:: with SMTP id f12mr4085811iok.17.1551892860776;
        Wed, 06 Mar 2019 09:21:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:186:: with SMTP id 128ls942117itk.4.canary-gmail; Wed,
 06 Mar 2019 09:20:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqw11cWugmssdsbvmhrV2yuxZFZ9Y8MjvYbAwqf7ZCgkbQzonDDlXdwhl+LFoyCfFWRt7J+P
X-Received: by 2002:a24:dd91:: with SMTP id t139mr6330795itf.30.1551892859958;
        Wed, 06 Mar 2019 09:20:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551892859; cv=none;
        d=google.com; s=arc-20160816;
        b=I9QYJ+6rw/iDHWFJFCMOovl2lulCCNQ+AhDxAJdLf/idU5j0xdCO9+PE9wmz/FJIJK
         oUI+BDErQJYUIPxGVzlPkQWZsHfhoO2AuRHg4RY/64qylmlLJgVoa7+Poh5iEs5XS+bD
         XryrfCREMwsBMtT/MTkmViU9TSwyywi7FvwwlSGR94Xadw8ir0yWssIsyaUdiey177Qf
         g6G8wVhg6QpntyyHu+pO//g18z2UD0YdgZ+4dejporTa7GlrPqIDqBn1KMaQdFUKIDMp
         x/Hm0gAkC500HgJWNtLECDhyV//ws6LEFEJkj29v56DjT+tKLP5BR6pyRoj3zWQ0tyXK
         W2Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=9cRAIKuGzOXN3w0HQRA225bIj6n8/Cx9kxPDMmIZDIE=;
        b=yQZctgRSCR+UAm7jyuQFEhfD+S5QdOynO6pXKSeZq420xuXCjyeycLfcpXrmQDwSyF
         stwYkxKs5oTTgGGWIS5MwIBitH1tInCsjZY1X3Y8gLzuGgiMYbJh0oSaCdA1rUvlrQVz
         oNP+hNShI7QvS4FVSbrWHoFSANuEXD6MfgHIJ0wtU/3ORTrGRQRGLfeBBhLnjTE+l8+8
         jagtHfr/gUGH4GrBeMuuHscOvLaLuyZXiTtN4WllCvrmj1n8Kmjy0bb7WGZvD0RWtFaP
         o1F9o5PBZNjDfBG4Z13WE61Tl/IZhsiJKOJwUIHR4HkFSMatTe8z7RbSakPpzfmfY8TN
         6/ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fGGVUBJ7;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id n185si180425itn.3.2019.03.06.09.20.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 09:20:59 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fGGVUBJ7;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id h1so9128515pfo.7
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 09:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9cRAIKuGzOXN3w0HQRA225bIj6n8/Cx9kxPDMmIZDIE=;
        b=fGGVUBJ7WlPuz6LrbTtaESQajDCHAaM5ECRF6f1SB2LWwpaerF2DZ8WHIwRkLdO/9x
         a6K6bxD8BW1AHm6jkwPxBDxDTi7yPemcoQcjzCzty44y1l+e4ULvobBxLfsZ0Pk8wo4X
         /YNBIm2FqX1P+wGxvVUDU1fwCt8hcRfepRWexpZ2dCTUaeQatTQjJ8Yyvo7SxR3Kj8GM
         Kw66fPhiNcJWaxkYsWOnh7NcSVhCTx74a4wdPTXgTNiDhicJa7+EjSyAHuWYkxuMKWm5
         FDw1mfLyyzY16OJklgu5+HPsTTlSJiQUziNoarcqBFJDutuGALvPSO0qnwSZxGOPbkd9
         T9dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9cRAIKuGzOXN3w0HQRA225bIj6n8/Cx9kxPDMmIZDIE=;
        b=AHLHxOc9TjqE1qldPsBRBotOeJZhxIXbUBwXkq7JMMes+SDhx4bg6DRV2MlcogOa+S
         v2Cb5yaqcnebRuVEbfaau79FW7US9uh2X5RSvQFlDB5QAIF6uOExKoHc5dYxhd9Ntd+z
         SGSvvLQX+Oe4kJu1nW+UZ2DN57tg0hM4Yz/lCyQchWN9Pu9wkpYlTsORVZcUTb9srjEr
         O2/YV8HssjsMGtZR5K7R289HhPaouiD59mgzYHkjAH0qcCjS3oZ4ippyq5Nvq5Dxaa4k
         +5r7Z052lwyIHLdfHXxx+okHFLJkK8+XLjB1bqVJRTUWsjbUmszegle+X8Gg/x331qIi
         wIOg==
X-Gm-Message-State: APjAAAW4zJ8esn1L1gEyH31BBmvq54uMVJDOaPRZBJTRxvRuY8w3X+SS
	70gSlj6dP0pMS818t9bIvFLV4o2H6CRGng==
X-Received: by 2002:a62:1b92:: with SMTP id b140mr8380245pfb.159.1551892859189;
        Wed, 06 Mar 2019 09:20:59 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e9d:fc:2d23:4503:1edf:a0e9])
        by smtp.gmail.com with ESMTPSA id e184sm5585506pfc.143.2019.03.06.09.20.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Mar 2019 09:20:58 -0800 (PST)
Date: Wed, 6 Mar 2019 22:50:49 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	Bhagyashri <digholebhagyashri@gmail.com>
Subject: [PATCH] staging: netlogic: Modify coding style alignments.
Message-ID: <20190306172049.GA14665@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, detected by checkpatch.pl "CHECK:
Alignment should match open parenthesis"

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 8554fcf..dc487d7 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -358,7 +358,7 @@ static void xlr_stats(struct net_device *ndev, struct rtnl_link_stats64 *stats)
 			    stats->rx_missed_errors);
 
 	stats->tx_aborted_errors = xlr_nae_rdreg(priv->base_addr,
-			TX_EXCESSIVE_COLLISION_PACKET_COUNTER);
+						 TX_EXCESSIVE_COLLISION_PACKET_COUNTER);
 	stats->tx_carrier_errors = xlr_nae_rdreg(priv->base_addr,
 						 TX_DROP_FRAME_COUNTER);
 	stats->tx_fifo_errors = xlr_nae_rdreg(priv->base_addr,
-- 
2.7.4



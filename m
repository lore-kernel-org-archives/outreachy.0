X-GM-THRID: 6528705081880084480
X-Received: by 10.157.14.14 with SMTP id c14mr3149554otc.69.1520093724704;
        Sat, 03 Mar 2018 08:15:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.114 with SMTP id n47ls6636442otd.1.gmail; Sat, 03 Mar
 2018 08:15:23 -0800 (PST)
X-Google-Smtp-Source: AG47ELvU3+AuM5X5Wd6ZrwTBLTjX3vSo3pZPU2j7sqAkjm49C5L2C1oFjlCZzkh2dK43q7c0AnOt
X-Received: by 10.157.60.61 with SMTP id q58mr4482386otc.108.1520093723832;
        Sat, 03 Mar 2018 08:15:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520093723; cv=none;
        d=google.com; s=arc-20160816;
        b=O1VXVqLHnebZtBB414vIKWy6YohRgi5Xusnr/UQT7BqbUmgOVNb47Hgv2HZdAYp2L4
         mFKX3ElRYBvxa4tFTI/1eZSyjlr4m4258Bzidlu9Kn9IK5asLIbH9ZdNNpVcWrIeiUJ6
         iaq/Ce472oq/L5HYM84T7FPrllx5OinsWWzeKY+ZNgaNCjmPMBcMDwKOtR2ksWMw9okV
         XhDXF81234M53lLOTIe34ATzvn5SASZj2uAf6ZcnDPGCv2HJ/lN3hyih0AXPVf1AHSoW
         PGnFve8fKJFYvkBm/x2lP3n0kaKguVx7UFpKKf8XcezwUoxwUB9bvx6D8w4kKeH8ZFLu
         jeow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=t0HQ6YV8ds8Vb/vE8TqiZEc8+xTnMGLxddhz3oyjnk8=;
        b=Sn/iJkBVzB4ZjHHFDzpsNTht15VbDnHxzYpvPHInCDcRStod6JSDJnZTJCbtNMfMjw
         rtrvYIJqyXMN155qeqShUB/4WVYv7NwKVwXutB2zTcpTEDxgX8RuhNa/M+tj2B13XjP8
         oYwQ9qZ1S3ZDxNzDx1x5QFDWFQ0aWrKDdE02QiQplh523npJqpZeh4LM0RyKnhkbtmhW
         l6roLVp3I0BTmJP3wHcpMXm50/y6fCePNeJvExWtkkuDY3eldRw5/3YrWknD5oQBRZZf
         VpbUJk97bU8K+VE48xsbNtbdYbZ7G85Rzdlkgbc425DEhbG4UNxYYQ0zxQS/S9ZRQvBp
         7nlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DozxbTrQ;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id d67si659176otb.3.2018.03.03.08.15.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 08:15:23 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DozxbTrQ;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 68so5334429pfx.3
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 08:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=t0HQ6YV8ds8Vb/vE8TqiZEc8+xTnMGLxddhz3oyjnk8=;
        b=DozxbTrQfvfjy8J+M/9PXylcKAE6FC5DIe09IyBv2ltoYHglyzMciE9Fk8rXX5RoHk
         ZoG/7+VJylqXBMZGaVvsEKsMagCSVCVnm5LjeOivsr7pr6yiOQRnSRbxQRusumSYhe3c
         iO0kKVNiDrqkmS+7v9UzVezWdfS604Nr5l3EDpoTm2Q7GmGTQUDVUycWe/6i9vADInja
         SOQh17TBMT+o1oFd9UYJdAwbpnBNd8l9R+rim8mrTu89tNoxDQbX/+JuU3d8een2TLM9
         1JuHz5DrmqB/+ctfkwqgizy2BXiryNSAf6AzDBt7TohQRvlQdnuyW/11hsmhX7OA4YG6
         ZjGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=t0HQ6YV8ds8Vb/vE8TqiZEc8+xTnMGLxddhz3oyjnk8=;
        b=syu1bGgm1sJMVAF24Q56OJQscnZw3Lt7L0Jg/gKREl3nXpfWlf1pNoB6GRUM83z3A4
         w9bDHpefptTqflegvvrp/Rsm7fX/So8B6594kpBWuS7QjhCOyhx+PlFnLis/AQUyq52/
         1WL/ejlcgRnXYzD+yNa3jXQbHBkZ/Op0HL+gljLlkADAtjAiW6u2C1tkH1y1CxZ2TBUh
         iKz+kQ/i7C9OPD+1fAvkr7mh+ERcuENv3CRjKDOUJhNP7nJgjYSmz5YnFSqUDSz6I7KT
         eAVAOKOgblO2id3mDPpgXtXZ1fIx/FR0cBrjuAcVDgDS57Ff6aF+gtA/QIxMHmj785Pj
         f5cA==
X-Gm-Message-State: APf1xPD/H+PB0+bQ+mJK9S27ixB0uI0ht0U1Bvg8ZzAw3bYr1TixS4lV
	3gCe1w07EzeoD/AHdZpLHyerIQ==
X-Received: by 10.98.152.205 with SMTP id d74mr9582728pfk.115.1520093722321;
        Sat, 03 Mar 2018 08:15:22 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 9sm18888066pfq.63.2018.03.03.08.15.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 08:15:21 -0800 (PST)
Date: Sat, 3 Mar 2018 21:44:56 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: jdmason@kudzu.us
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, oss-drivers@netronome.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] net: ethernet: Drop unnecessary continue
Message-ID: <20180303161456.GA20194@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Continue at the bottom of a loop are removed.
Issue found using drop_continue.cocci Coccinelle script.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
Changes in v2:
- Braces is dropped from if with single statement.

 drivers/net/ethernet/amd/ni65.c                   | 4 +---
 drivers/net/ethernet/neterion/s2io.c              | 4 +---
 drivers/net/ethernet/netronome/nfp/nfp_net_main.c | 4 +---
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/amd/ni65.c b/drivers/net/ethernet/amd/ni65.c
index e248d1a..8931ce6 100644
--- a/drivers/net/ethernet/amd/ni65.c
+++ b/drivers/net/ethernet/amd/ni65.c
@@ -435,10 +435,8 @@ static int __init ni65_probe1(struct net_device *dev,int ioaddr)
 		}
 		if(cards[i].vendor_id) {
 			for(j=0;j<3;j++)
-				if(inb(ioaddr+cards[i].addr_offset+j) != cards[i].vendor_id[j]) {
+				if(inb(ioaddr+cards[i].addr_offset+j) != cards[i].vendor_id[j])
 					release_region(ioaddr, cards[i].total_size);
-					continue;
-			  }
 		}
 		break;
 	}
diff --git a/drivers/net/ethernet/neterion/s2io.c b/drivers/net/ethernet/neterion/s2io.c
index b8983e7..4738bc7 100644
--- a/drivers/net/ethernet/neterion/s2io.c
+++ b/drivers/net/ethernet/neterion/s2io.c
@@ -3679,11 +3679,9 @@ static void restore_xmsi_data(struct s2io_nic *nic)
 		writeq(nic->msix_info[i].data, &bar0->xmsi_data);
 		val64 = (s2BIT(7) | s2BIT(15) | vBIT(msix_index, 26, 6));
 		writeq(val64, &bar0->xmsi_access);
-		if (wait_for_msix_trans(nic, msix_index)) {
+		if (wait_for_msix_trans(nic, msix_index))
 			DBG_PRINT(ERR_DBG, "%s: index: %d failed\n",
 				  __func__, msix_index);
-			continue;
-		}
 	}
 }
 
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_main.c b/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
index 15fa47f..5cd4f3f 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
+++ b/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
@@ -258,10 +258,8 @@ nfp_net_pf_alloc_vnics(struct nfp_pf *pf, void __iomem *ctrl_bar,
 		ctrl_bar += NFP_PF_CSR_SLICE_SIZE;
 
 		/* Kill the vNIC if app init marked it as invalid */
-		if (nn->port && nn->port->type == NFP_PORT_INVALID) {
+		if (nn->port && nn->port->type == NFP_PORT_INVALID)
 			nfp_net_pf_free_vnic(pf, nn);
-			continue;
-		}
 	}
 
 	if (list_empty(&pf->vnics))
-- 
2.7.4



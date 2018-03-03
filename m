X-GM-THRID: 6528705081880084480
X-Received: by 10.157.14.98 with SMTP id n31mr1308036otd.114.1520082606273;
        Sat, 03 Mar 2018 05:10:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.97.139 with SMTP id v133ls1436456oib.19.gmail; Sat, 03 Mar
 2018 05:10:05 -0800 (PST)
X-Google-Smtp-Source: AG47ELuWSE+rwLt8nAZQW7mjArlfp7SaZqMKAUP5xFvuU8a0sK6rCr8aB8XoZqaVUkB/Ejmd/hK7
X-Received: by 10.202.206.198 with SMTP id e189mr3890637oig.79.1520082605329;
        Sat, 03 Mar 2018 05:10:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520082605; cv=none;
        d=google.com; s=arc-20160816;
        b=htOHqY61sSdJ0OqJ4xMwVAoTgAe6TCIh66EVIaryLX2sd+HOZPpmt3fY+DQ6XYXmds
         kglVGIYNVEOrEKEq7cT5SNjDdF2kNtjrejkrD19nCfVR0OdATX0XN5Qf9LJUbIec7GSI
         EEofyz08h296YB7gTfSmE39EWNDLgmQ2VU1n4/ZND8jhLLCZ0sjq8y3tog/BZew20Og4
         /+O14LjP8AGlPUUkfk72mGxUt6EVUDn7fIXfn8+sSlv+A1rwGwvJddOWAyC4uiNsNr3a
         GD52qmzwf0p8TyTLCudyOLS8jtGyu8xpgLvSzngrtatBD1qenWxbL+1QUeerxHZCM6d/
         grQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=PrX4uBkV0G6iFmA2Rt1g8J6WoqbpIjfVQOnavqHIMrU=;
        b=0cBK6ip1K55tcauI+zagAVN4+HfOO5DSDvmyIVSqAqiTgELIum33d7KLqDUU7RCLnt
         zGZNisAx/0UNummLKpRsxvqewgXFLBgnazcFVXLGhjXdrZrWlfS7HbORGkf+pseWM0u/
         Yjh4qhEvgUU/GbTsQYKRzjf/z8MOcKxyDuutyNQIYpxsRoqxDvqvR/iah8tiBe6J4AoB
         RuzCU5KOcCYRLElw7JNixy0LtltKH8XLpuziPswbfl4Xba+0IMqYjUili8IHnq1VCP6U
         NV4CuKtZ7btemp8+tzYLzhuwpE8SYOm/GBx9pv9uFQCwkmXube/szagqLdf2H0roSJMF
         DLpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=duVsVAde;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::236 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x236.google.com (mail-pl0-x236.google.com. [2607:f8b0:400e:c01::236])
        by gmr-mx.google.com with ESMTPS id b13si608071otf.2.2018.03.03.05.10.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 05:10:05 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::236 as permitted sender) client-ip=2607:f8b0:400e:c01::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=duVsVAde;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::236 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x236.google.com with SMTP id y8-v6so7241685pll.13
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 05:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PrX4uBkV0G6iFmA2Rt1g8J6WoqbpIjfVQOnavqHIMrU=;
        b=duVsVAdesv6Kv2YWTH6oT6maxwDXL5ZCRpc2xUtDIaZWtpNgeIl3R4ajvB5lB2183t
         tp4d48k6rTDO4lYvOXyw+mQWp0aeOV/56Jn4dr1YE7A91vUd643CgGPwT0MDHDTXuXGZ
         9Zra1h/wcYHCqMQguki4zJkJy98gmeki7VFDhfvg+4UPNGQi90x6xfQcrQBsvSJSwVsO
         HL4bdBBra2Fh8S6ePNuiFHAkB3o+k+uyUEKLpifzMyWX/WKIQLxsefQFITWs4v3woA6S
         OMZTZm2rpvBZ/begArYt9zZvLnu82Mwd6py0GVGmztzONIvwXViszZ/b6IEfwiIS7oKd
         10TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PrX4uBkV0G6iFmA2Rt1g8J6WoqbpIjfVQOnavqHIMrU=;
        b=JEnon6c2/Bj45EcI/VGRauSFYXTS6Lr3U03PuSfl6tvKU8Jh0k1ow/q7MmfBjb0xjA
         a2ZLDI3GLojYsYhZzd0wto/jq4KWnO2M1DHoKxT+awMvXOCxS8dY9agecfhg5uY4qBv0
         3HoNuVtgZZ0Q4tMOBPDqXwF9OWM0RA9IKo5936Hvc6g/WtB3VKg1+A8/vNQVBTI2R5kE
         3XNkg/+mI8ndQklfE6NLbLjQeBRosf+MdtZsVTEV7sAzTM53JIyAOtRhipJIHrxoMv0a
         OPZ6uH7dImXv3x0jaS0iVGJ+a42kEF3ns+xEz+ma+tqG6KiBWMxi5v6x1nlAGx3RWLMt
         cjVQ==
X-Gm-Message-State: APf1xPCnRZL7mnViAxCnlbWFWK3F3QiC2zmeQRCNAvfN/7vFhhX0U8F9
	kskjc/v7v1Mdq459N24dySe5YA==
X-Received: by 2002:a17:902:6bc2:: with SMTP id m2-v6mr7548139plt.432.1520082604476;
        Sat, 03 Mar 2018 05:10:04 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n12sm13934031pgp.20.2018.03.03.05.10.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 05:10:03 -0800 (PST)
Date: Sat, 3 Mar 2018 18:39:34 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: jdmason@kudzu.us
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, oss-drivers@netronome.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] net: ethernet: Drop unnecessary continue
Message-ID: <20180303130933.GA8337@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Continue at the bottom of a loop are removed.
Issue found using drop_continue.cocci Coccinelle script.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/net/ethernet/amd/ni65.c                   | 1 -
 drivers/net/ethernet/neterion/s2io.c              | 1 -
 drivers/net/ethernet/netronome/nfp/nfp_net_main.c | 1 -
 3 files changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/amd/ni65.c b/drivers/net/ethernet/amd/ni65.c
index e248d1a..5975f29 100644
--- a/drivers/net/ethernet/amd/ni65.c
+++ b/drivers/net/ethernet/amd/ni65.c
@@ -437,7 +437,6 @@ static int __init ni65_probe1(struct net_device *dev,int ioaddr)
 			for(j=0;j<3;j++)
 				if(inb(ioaddr+cards[i].addr_offset+j) != cards[i].vendor_id[j]) {
 					release_region(ioaddr, cards[i].total_size);
-					continue;
 			  }
 		}
 		break;
diff --git a/drivers/net/ethernet/neterion/s2io.c b/drivers/net/ethernet/neterion/s2io.c
index b8983e7..5123abd 100644
--- a/drivers/net/ethernet/neterion/s2io.c
+++ b/drivers/net/ethernet/neterion/s2io.c
@@ -3682,7 +3682,6 @@ static void restore_xmsi_data(struct s2io_nic *nic)
 		if (wait_for_msix_trans(nic, msix_index)) {
 			DBG_PRINT(ERR_DBG, "%s: index: %d failed\n",
 				  __func__, msix_index);
-			continue;
 		}
 	}
 }
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_main.c b/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
index 15fa47f..77916ed 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
+++ b/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
@@ -260,7 +260,6 @@ nfp_net_pf_alloc_vnics(struct nfp_pf *pf, void __iomem *ctrl_bar,
 		/* Kill the vNIC if app init marked it as invalid */
 		if (nn->port && nn->port->type == NFP_PORT_INVALID) {
 			nfp_net_pf_free_vnic(pf, nn);
-			continue;
 		}
 	}
 
-- 
2.7.4



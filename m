X-GM-THRID: 6251518681798410240
X-Received: by 10.141.3.134 with SMTP id f128mr16156590qhd.7.1455545673919;
        Mon, 15 Feb 2016 06:14:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.139 with SMTP id e11ls3323825qgf.48.gmail; Mon, 15 Feb
 2016 06:14:33 -0800 (PST)
X-Received: by 10.129.146.73 with SMTP id j70mr16020288ywg.25.1455545673234;
        Mon, 15 Feb 2016 06:14:33 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id yd9si189226pab.1.2016.02.15.06.14.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 06:14:33 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fy10so47145285pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 06:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=3OUei1H6A/WZ6mzhlQZj456mxeIF3/EE8vH9cdCP5W8=;
        b=dEGq5f9tzTYdauc7fcHcgmrAhVpqde7dHjkoaZOMRgwHKRnPVfVXp+g672MwxSnKw4
         CsSii5e0lp+fpsocbv40CepQQC/U4kgvA3VYpdkMJf+VkdbVn/YWmxEn9XT7vhyVmAMy
         XBZ7WuU2GJxrbHIIT9bsodhp/pVGsf/nC9VBqQumAsTDqpSyiPvt5V+0oAoRliydRzpb
         81rbFKxBfz7dAi6xSJD9jvCQ2Oqb5Bri9qp9/i1B3AxP4WWqev6H3P/PfOL2URg4nWTj
         DcKMeqEWuDx7kWshk1RrVWi/LMA9znxJ5qd5p+38bS3VunJv3h37LdZMvrvrw+XTs4Fd
         4CVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=3OUei1H6A/WZ6mzhlQZj456mxeIF3/EE8vH9cdCP5W8=;
        b=bTWCxuSoddD1GCAH2AYOpBGMerwGgCl0baqP2ESuL7ncMc3e5zgOkvPFgUOrI/rqv/
         A5eU/H57QaCzgfZQppOOGzF6wU7t0kYpSk5AyASTMjNHDPzV2rGkpN88+NJDMRZ2/OHu
         H+LBCUnDkv/dJtK6Gna2ucErSl6wlCaJxTcfuVsTP9FWYfKExASfd7SwcI7iGsmbA7Zo
         bnI6/XBODeKEnEkfimipcRQZGrlSp+8DQFHoVmIEbqjjwV2K64lBUGO6rgzclQZKh6x1
         cHevAdDzYpxgrnNifADEynxTSpD/YNPmzukOgpCLeAmpohCJGJ92jeQCwqB5pzVsQFxs
         MItw==
X-Gm-Message-State: AG10YOT6ESIwVCvrKvRQ6Bwxyf2FP3hIdRiSBfq5KPZ+5Lo86E0lKuW1vaBaolLLAL+n6A==
X-Received: by 10.66.189.165 with SMTP id gj5mr23656038pac.157.1455545673106;
        Mon, 15 Feb 2016 06:14:33 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id 195sm39027388pfa.5.2016.02.15.06.14.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 06:14:32 -0800 (PST)
Date: Mon, 15 Feb 2016 19:44:57 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Fix "Possible unnecessary 'out of memory'
 message" checkpatch.pl warning
Message-ID: <20160215141448.GA27532@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Braces are not necessary for single statment block.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 397ad45..ba2b940 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -355,10 +355,8 @@ static int wilc_wlan_txq_add_cfg_pkt(struct wilc_vif *vif, u8 *buffer,
 	}
 
 	tqe = kmalloc(sizeof(*tqe), GFP_ATOMIC);
-	if (!tqe) {
-		netdev_err(vif->ndev, "Failed to allocate memory\n");
+	if (!tqe)
 		return 0;
-	}
 
 	tqe->type = WILC_CFG_PKT;
 	tqe->buffer = buffer;
-- 
1.9.1



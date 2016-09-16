X-GM-THRID: 6331031087658041344
X-Received: by 10.157.60.98 with SMTP id j31mr639142ote.82.1474058043540;
        Fri, 16 Sep 2016 13:34:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.36 with SMTP id q33ls6112892otb.33.gmail; Fri, 16 Sep
 2016 13:34:03 -0700 (PDT)
X-Received: by 10.157.34.165 with SMTP id y34mr11012073ota.28.1474058043108;
        Fri, 16 Sep 2016 13:34:03 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si3105581pfw.1.2016.09.16.13.34.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 13:34:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so4008964pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 13:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nOt+qcnQQ52yGWYgZdccLOinrf86BGEB3DKn3jDHg5Q=;
        b=AvNLKQN7EIi+BN+mlTqvLOpr9tSEOOlG06FbH3uCABMArvKXGpNgF4cCBOci3bt247
         YPeU6ttLC6enF/+SuzcCcSrOhfJVi9HaRryixgiQOoh2Bvr3lbivJeUTGiq7NKaoZmFE
         cBmIC8A+qYG2CiFKSypfymSxRtyrEmxmaG2z5vkUt/FjlmXdsxLHGQWDDe83cvX9u1el
         10cwY4X74t8rD9Nf67BR1i4Te/PG1KL7qenaFHPVKp2oozf+6MX7eAoZnIt+QL+wDL4U
         3SH45zirrwh/Dq9dtCIcAKW7uurfUzcuphgMSBiWaR3mLf5W14HlFiswD7NXOV0wZZQU
         quQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nOt+qcnQQ52yGWYgZdccLOinrf86BGEB3DKn3jDHg5Q=;
        b=TYXkAfBnqb0qK2I18NFs/rMkDvUWHu2V7dui7GxTKwbMQsIk4HxE3L3JD6SZdQinll
         PVGkwbBcS79/z5QbCZTd9v/RASoDVNWYcKWYPILuETi1bmt8nIlkdgtkiuCWxvp7jq1m
         gAv5wFlWzBCJJRcJ+0JSarjJpXtmfw4pccmN1gI2zk5AsExJWOqznN4As/bN5ZaRZwuV
         7fEnvfx5vxSdurBcdfbt227tIMe2Vz0Sg4TIh81VKADpcNPTkHGpYHHberAzMDAJlBNL
         PcwZde7mbWypKMaPvdfgCrlsIyVR3DR7j2A1ki6zBTnauNN2cKV2sFvKsG7XKdjGkhzw
         WlnA==
X-Gm-Message-State: AE9vXwMRj9Pm4QytvVwi6v7AGXoMjqGpuv0avuuChfgBNfH8/cicf4JOYl7YBqNVJnsbkQ==
X-Received: by 10.98.31.133 with SMTP id l5mr12117179pfj.178.1474058042734;
        Fri, 16 Sep 2016 13:34:02 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id l81sm16020930pfi.14.2016.09.16.13.33.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 13:34:02 -0700 (PDT)
Date: Sat, 17 Sep 2016 02:03:45 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jens Frederich <jfrederich@gmail.com>, Daniel Drake <dsd@laptop.org>,
	Jon Nettleton <jon.nettleton@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: olpc_dcon: Replace u_int8_t with u8
Message-ID: <20160916203345.GA30544@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces type u_int8_t with u8 as suggested by checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.c b/drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.c
index 6a4d379..1e23ef1 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.c
+++ b/drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.c
@@ -49,7 +49,7 @@ static void dcon_clear_irq(void)
 
 static int dcon_was_irq(void)
 {
-	u_int8_t tmp;
+	u8 tmp;
 
 	/* irq status will appear in PMIO_Rx50[6] on gpio12 */
 	tmp = inb(VX855_GPI_STATUS_CHG);
-- 
2.7.4



X-GM-THRID: 6207482452562149376
X-Received: by 10.112.151.9 with SMTP id um9mr7012256lbb.19.1445292146787;
        Mon, 19 Oct 2015 15:02:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.42.209 with SMTP id q200ls670642lfq.72.gmail; Mon, 19 Oct
 2015 15:02:26 -0700 (PDT)
X-Received: by 10.112.173.170 with SMTP id bl10mr4134904lbc.7.1445292146217;
        Mon, 19 Oct 2015 15:02:26 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id o3si5062wiz.1.2015.10.19.15.02.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 15:02:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id fx6so19133926wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 15:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=FMnQky7pH0hEhb0oGNc0rFtr/dFc+UPB8GNkz4Cm8Mc=;
        b=ThA4ZK8EfGdKhpfPjc+TWd86dm3N4dj23/tAe0rVtmCAbNCYVCTAyE93h747N4BJne
         7Wf2zgiFAM2VqkA79P9njPEVvNUtPemiGrJK3T7tXxIEADl/yfrRUeeW1Jqwe5vbxTPN
         RkSLP/5wsz2bo7ozhWoBJn+OKtEuE2xCANGU4yB2WDJXWY1JINx681JdL22haO0UMgWa
         M4WoNbDsrI2XlywgXKU1HcStLjolVbUrWvELaRTKUUgC9vNZYdOXRKi7vSZt3gaguZoJ
         Iws9cVjAjNhAoDSWAnzvXdQ38ei6zUd8CSoGsDtWUbjfl4wN/aE3IbZurz0tH+nXn9hd
         OsgQ==
X-Received: by 10.180.91.12 with SMTP id ca12mr23301883wib.4.1445292146090;
        Mon, 19 Oct 2015 15:02:26 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.61])
        by smtp.gmail.com with ESMTPSA id bf8sm42577788wjc.22.2015.10.19.15.02.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 15:02:25 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 10/10] staging: iio: magnetometer: Remove explicit comparisons
Date: Tue, 20 Oct 2015 01:01:45 +0300
Message-Id: <9d1f4e46279b951b8dff1763ef89b92c14398a3c.1445291799.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL in order to provide efficiency

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index 4aab022..394bc14 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_core.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
@@ -334,7 +334,7 @@ static int hmc5843_get_scale_index(struct hmc5843_data *data, int val, int val2)
 {
 	int i;
 
-	if (val != 0)
+	if (val)
 		return -EINVAL;
 
 	for (i = 0; i < data->variant->n_regval_to_nanoscale; i++)
-- 
1.9.1



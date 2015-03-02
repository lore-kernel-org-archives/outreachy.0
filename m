X-GM-THRID: 5891768188928
X-Received: by 10.236.19.8 with SMTP id m8mr26771491yhm.53.1425298108715;
        Mon, 02 Mar 2015 04:08:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.94 with SMTP id 91ls1381950ioi.72.gmail; Mon, 02 Mar
 2015 04:08:28 -0800 (PST)
X-Received: by 10.68.237.8 with SMTP id uy8mr25947448pbc.7.1425298108537;
        Mon, 02 Mar 2015 04:08:28 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x232.google.com (mail-pd0-x232.google.com. [2607:f8b0:400e:c02::232])
        by gmr-mx.google.com with ESMTPS id m1si1526635pdc.0.2015.03.02.04.08.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 04:08:28 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) client-ip=2607:f8b0:400e:c02::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfl12 with SMTP id fl12so7998128pdb.9
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 04:08:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=IF3FKbBohPmu/QEfjXpdFY9LBuzrxYxAkWfuZeYzFiA=;
        b=tLSO/4mrUQskEHpg55GAuo7cJs1C4MJTNa+c0GLfdHU6pJ2GShhdzux85C54bEvXTf
         thhXtseKs86Qf9d1/vVB9Qc5iw28zbAVLoFvNXTO9JmW+nRtsxS4jsq3I/RzsdWFQfop
         bNbh3wC2iDrejrGOPFOhoRQz4V2y3EUFgd1A4OpOAVGNonI/28NTq/uSUNYwZcFaKYMu
         YFMN0mHzTikg1tVIJhPHN2B5nBDGQ/OBtXw7bePmJbI/Nixalw7mtLpIgMTbWNGgakPA
         7dMBHEMCSq371xytTV8C+OzzhAhYIjqBr9l0ssMoRpKfO8TGvw+v+z1mDRhU1BD2hiD9
         grnw==
X-Received: by 10.70.52.131 with SMTP id t3mr16601185pdo.110.1425298108432;
        Mon, 02 Mar 2015 04:08:28 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id l7sm3512531pbq.92.2015.03.02.04.08.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 04:08:27 -0800 (PST)
Date: Mon, 2 Mar 2015 17:36:55 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: comedi: Replace kref_put with kref_sub in function
Message-ID: <20150302120655.GA29851@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Since, kref_put calls kref_sub and its return value is not used
by calls to comedi_buf_map_put, it can be replaced here with 
kref_sub.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/comedi/comedi_buf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_buf.c b/drivers/staging/comedi/comedi_buf.c
index 19e7b22..f96b87a 100644
--- a/drivers/staging/comedi/comedi_buf.c
+++ b/drivers/staging/comedi/comedi_buf.c
@@ -157,7 +157,7 @@ void comedi_buf_map_get(struct comedi_buf_map *bm)
 int comedi_buf_map_put(struct comedi_buf_map *bm)
 {
 	if (bm)
-		return kref_put(&bm->refcount, comedi_buf_map_kref_release);
+		return kref_sub(&bm->refcount, 1, comedi_buf_map_kref_release);
 	return 1;
 }
 
-- 
1.9.1



X-GM-THRID: 6388438478115307520
X-Received: by 10.200.35.6 with SMTP id a6mr3777545qta.72.1487425577533;
        Sat, 18 Feb 2017 05:46:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.124.6 with SMTP id a6ls83159itd.22.gmail; Sat, 18 Feb 2017
 05:46:16 -0800 (PST)
X-Received: by 10.99.113.69 with SMTP id b5mr3775102pgn.161.1487425576850;
        Sat, 18 Feb 2017 05:46:16 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id f7si1307805pfk.5.2017.02.18.05.46.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 05:46:16 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id c193so1473430pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 05:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CM+y6kZaU3Tol6ujQdf8YpDqaJkzg67bQE8AWQ5UyWM=;
        b=N0fbJUck5Tbwj211mnQsA+51/nIVdNJhna0UtgMZ7s2Ny+UNrva9jAihD0n9kssilD
         nYO1JLeYOWbIkjnZ0uepr7oBaauoRDuyTxree6b48FhXw7Y6Y+mrN2IvEcXXT+ySvfs1
         /aCAJz8VC92HujjbDEciSWj7JlySmxO/pNcfNTDPHyyo+TIE+w64GdN3CLYgymo+8g8f
         PSgzpMp2wPutk2SVCY/JKrCrz0D9J9O8S1eh0/l9SCePKOeMJub6my4ur4kRb4pu3uD0
         pYKFUanGfSLlsg7nPb6mWVKlfn1Zuo+ekWvJ2cxuJnNBZVRkYrhg0mfEEpeKMl6J5/OR
         gUxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CM+y6kZaU3Tol6ujQdf8YpDqaJkzg67bQE8AWQ5UyWM=;
        b=WeHnkKvrqYVIIBTpfTVeoDs4ACGW63lxzEsCfdFmCw8j4C4l7qfErV27lQx0dkAaPA
         FKG5HK8o3AdQV1OAy/dTKmaHQP9m0ChWNylnZdXys79PApjzCSjYzv4KrXYz18J1nTRO
         vXbHbb9d75R1XpmOoPFAPwTmX0SAJK4J4TQHDnwXrCjpXJrFjWzQdefHQQUxbmKxD22I
         +aKZfLbxMTpT5p/vnaU6fdPca1u7pox0uYo311Hc6IWikr1ppJ3YVc6K9btQMeJiwWzc
         HwMdJHpe/0oMWzJuUiR24rvEbPCpbwI3NIML0YQaTp057CfmKSTp6CMoOwIzPxgJ+Q8H
         fUOQ==
X-Gm-Message-State: AMke39nDgAS+uHuyYKIvmfAaw3dCKJoLqlfTpH6hQK1C4TE8xt6+/8Fca7DWd7OFOi4P/g==
X-Received: by 10.84.218.11 with SMTP id q11mr18532071pli.141.1487425576669;
        Sat, 18 Feb 2017 05:46:16 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 75sm25512194pfp.80.2017.02.18.05.46.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 05:46:14 -0800 (PST)
Date: Sat, 18 Feb 2017 19:16:11 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: xgifb: function definition argument should also
 have an identifier name'
Message-ID: <20170218134611.GA5240@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

function definition argument 'struct vb_device_info *' and 'unsigned
long' should also have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/xgifb/vb_init.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.h b/drivers/staging/xgifb/vb_init.h
index 500cabe41a3c..e835054b87bf 100644
--- a/drivers/staging/xgifb/vb_init.h
+++ b/drivers/staging/xgifb/vb_init.h
@@ -1,6 +1,5 @@
 #ifndef _VBINIT_
 #define _VBINIT_
 unsigned char XGIInitNew(struct pci_dev *pdev);
-void XGIRegInit(struct vb_device_info *, unsigned long);
+void XGIRegInit(struct vb_device_info *XGI_Pr, unsigned long BaseAddr);
 #endif
-
-- 
2.11.0



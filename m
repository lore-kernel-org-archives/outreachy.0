X-GM-THRID: 6329929865196732416
X-Received: by 10.66.231.104 with SMTP id tf8mr2417475pac.15.1473801644158;
        Tue, 13 Sep 2016 14:20:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.100 with SMTP id l91ls2157186otl.14.gmail; Tue, 13 Sep
 2016 14:20:43 -0700 (PDT)
X-Received: by 10.157.16.68 with SMTP id o4mr21746315oto.32.1473801643763;
        Tue, 13 Sep 2016 14:20:43 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si131952pab.2.2016.09.13.14.20.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 14:20:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id h5so82883pao.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 14:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=LhfH+ReoeWRpId7PkNv+5Vys0Y4cgrDsJSDpFs8f6/8=;
        b=F5SWG/8j6z72LneBqUfkk8jdCoHlzVworHJbac2mt5Aw5oEQt3QnM1CS63ckXsbeR4
         FqVBV8B2PPjpPAK0WZfK8IqMXBOKHK7sxSSpfuDMKseytmhdveoZBCC0sKX9WddFlPsw
         idiefKCfgFat34VN6whyFKfwrBy2N7IQfSJUJdYne9lB7eEutaeukTmS3fwPlynN8vSU
         5rVaP8i6RroRK2/e+a00diFTQ7bFJhJ4zkj8xHQkDgHmfy1oo9+6Oc8ENxUNXuPtR5ij
         OcYWvC80KrJkb5Oq/BBMfIBCE6h7YoFZ156gwJZdu93PYlWRtQ1/viqFiH9gg5tfSnCu
         J1/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LhfH+ReoeWRpId7PkNv+5Vys0Y4cgrDsJSDpFs8f6/8=;
        b=kRB6+2uUZ4JZJ51yWaHDTLk8ezx/AGL4dGXSvAg9wOWieStpdILNHpldzt8wn5kxr1
         tCvGTe4rpVaRmpu7om5naZzuSTnEbinMjsMParZ3YVIZbFL1IsnnQLQUDZm77zJxF62t
         fJdBsO1bT9iHjmKrxBhhJkM9kQW+IX2BVoUUlg5l90Vo0cv/6sOixUW0syfQv7zt+RXo
         xyaV+SZ8CdTyW8JpYY080D+2DREvE/Kff3WnokEOk+0J2svnXwvRm53DvlYURaPyE/Rd
         6BqBCSa07nfu0t3hU9vdrjhes5lCdAgnAoLHlR3NdI6ad1IDO05mY7hPHyBc3YMdmoZd
         trWw==
X-Gm-Message-State: AE9vXwNnVhwtsCqe+cxtRvgcN9rQ1QEIUogavcN6l9p0qyW0E0sDVYsG6w3ATdqlB3XNoQ==
X-Received: by 10.67.7.170 with SMTP id dd10mr4957148pad.152.1473801643280;
        Tue, 13 Sep 2016 14:20:43 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id ah5sm461182pad.30.2016.09.13.14.20.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 14:20:42 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: octeon: remove multiple blank lines
Date: Wed, 14 Sep 2016 02:50:01 +0530
Message-Id: <20160913212001.3945-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Correcting the commit message. Fixes the checkpatch issue Please don't use multiple blank lines.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 0bd5c18..ec8e424 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -686,7 +686,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-
 	cvm_oct_configure_common_hw();
 
 	cvmx_helper_initialize_packet_io_global();
@@ -929,7 +928,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
 		}
 	}
 
-
 	cvmx_pko_shutdown();
 
 	cvmx_ipd_free_ptr();
-- 
2.9.2



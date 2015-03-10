X-GM-THRID: 7382846406656
X-Received: by 10.182.142.102 with SMTP id rv6mr33440989obb.47.1425989166918;
        Tue, 10 Mar 2015 05:06:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.11 with SMTP id j11ls51053qga.70.gmail; Tue, 10 Mar
 2015 05:06:06 -0700 (PDT)
X-Received: by 10.236.220.74 with SMTP id n70mr32665510yhp.40.1425989166614;
        Tue, 10 Mar 2015 05:06:06 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pc4si78671pac.0.2015.03.10.05.06.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 05:06:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so1218586pab.13
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 05:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=iceMmiWy4R+ws8a2ViflcbPjoSS7cDIuoVJlKC2HJ98=;
        b=iGN6BQvahH22jI42MFdjw+S4+H2nsp+9mTHe9CN78gtdO/FbtuBjrgE+5n2w+f5qQV
         1mUj+q40gebVB2niEaBe+Fy1163xndbmiAhmVSf/RvaXjDMTuXzk1ujp4eQrjRuSdtlp
         ljMsNZA0fXOLEkWXMRzO/SRAuJt1ky3RYmJPLyK+rGWM4KP10JrBHo6W+fho7DxqAdgc
         bNmzenWC29GFU4b1xIH79wl3QKGLK4odGYA8tXDFoDkOKs3FxN8hUyNwkFel/RTqxmVD
         t6kWEAFJR1eMMHW6WRXAiXbjMgnVFgQCg9Zkh1SzLRhuJdltPunt9fSI7Ph1BX9Ottvh
         gbHg==
X-Received: by 10.66.65.169 with SMTP id y9mr65246320pas.60.1425989166417;
        Tue, 10 Mar 2015 05:06:06 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id ey1sm775815pdb.30.2015.03.10.05.06.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 05:06:05 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:37:28 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 7/8] staging: media: Use kcalloc instead of kzalloc
Message-ID: <13153243ec59a3dc35ac569ed7a2b75b4d691e07.1425987911.git.navyasri.tech@gmail.com>
References: <cover.1425987909.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425987909.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses kcalloc instead of kzalloc function.
A coccinelle script was used to make this change.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     - Make commit message shorter by removing the
       coccinelle script.

 drivers/staging/media/bcm2048/radio-bcm2048.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 5382506..c68fa4a 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1792,7 +1792,7 @@ static int bcm2048_get_rds_data(struct bcm2048_device *bdev, char *data)
 		goto unlock;
 	}
 
-	data_buffer = kzalloc(BCM2048_MAX_RDS_RADIO_TEXT*5, GFP_KERNEL);
+	data_buffer = kcalloc(BCM2048_MAX_RDS_RADIO_TEXT, 5, GFP_KERNEL);
 	if (!data_buffer) {
 		err = -ENOMEM;
 		goto unlock;
-- 
1.9.1



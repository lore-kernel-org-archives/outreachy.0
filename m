X-GM-THRID: 6261602092574572544
X-Received: by 10.31.165.1 with SMTP id o1mr15313021vke.12.1457893048397;
        Sun, 13 Mar 2016 11:17:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.46.65 with SMTP id t1ls631355igm.30.gmail; Sun, 13 Mar 2016
 11:17:28 -0700 (PDT)
X-Received: by 10.98.33.76 with SMTP id h73mr12425849pfh.0.1457893047995;
        Sun, 13 Mar 2016 11:17:27 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id y20si2570749pfa.2.2016.03.13.11.17.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 11:17:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id 1so12712700pal.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 11:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eT/dnUWS4l9zABFcacm8qdgs3l3H5sIBO9ZvMimU8mY=;
        b=ZcJBIr8Xjgee5pZZScW6R377IYVPkql1BmGN/S7XQCJGqjSMSvoXyz+avILh6L+Iel
         KWfaetTiNC+jX3jLBxsIjIkKo4snLnyOs/bCn+bid+fadpMFm7P8RiD/iHBEBwTyKiRQ
         kX62Vfo1f6/5medCVRUvN2p/oGKgqhuvGS9VNuJlq0JowH25iJi+QKw7VPBbcFpN8113
         9ZiIkSPtYEXmYDDHKimaKveFr3+hSvU7NmFXIJ2n6vtQs/u2j0LdkpgMUR4/NDxeRpHN
         l/hkkRwTErxCqDJU2HL28ueZz1daNkWYxdFBFLSp3G69sIerNddYC6YPXzM10HvV2SfU
         zgIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eT/dnUWS4l9zABFcacm8qdgs3l3H5sIBO9ZvMimU8mY=;
        b=Yft4JbYIDu0mogCRy72e09+fR1JSZ/6iQfHBbwofvKMeMcMNINKnxhtDG9sdhFWgHo
         AhUPNgAfchBV3IF19E9L22moea0O0PldVKD6kCaOayCnap22FunVL86fFVN2uM+pYZuo
         27T6CueoQNLRScocqUXFod8t3bUfZOvOJT/efG/Uko6hzeWRGDW6FZzVBGPPGghk2Mo/
         2c7R5WwsuChjxc1G2fKhSumB7qD/Gflxtpb9Adq1S+By8+2wUgY1q+A1PWpS8XWOl9Dy
         QBbFKDL05M8o5eVjqMeBf8VOvygUIx0fBqiurYRJZszWNReTxyTinebwwBmzTRIT0hip
         pfBw==
X-Gm-Message-State: AD7BkJLLBEtg0dS7tZ8PPgLg9rgIhAmpKyzKcwF9u58saSCwWNsfzNOvgW6hqXNE23QMRw==
X-Received: by 10.66.251.194 with SMTP id zm2mr32246086pac.131.1457893047837;
        Sun, 13 Mar 2016 11:17:27 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.34])
        by smtp.gmail.com with ESMTPSA id qy7sm26537637pab.34.2016.03.13.11.17.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 11:17:27 -0700 (PDT)
Date: Sun, 13 Mar 2016 15:48:15 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: gs_fpgaboot: Fix alignment to match open
 parenthesis.
Message-ID: <2f99ae0d92ce3368e2572453849be2cdbb79fed9.1457863546.git.bankarsandhya512@gmail.com>
References: <cover.1457863546.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457863546.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Fix alignment to match open parenthesis.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
index 7b7c978..de1a9a6 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
@@ -201,7 +201,7 @@ static int gs_download_image(struct fpgaimage *fimage, enum wbus bus_bytes)
 #endif /* DEBUG_FPGA */
 	if (!xl_supported_prog_bus_width(bus_bytes)) {
 		pr_err("unsupported program bus width %d\n",
-				bus_bytes);
+		       bus_bytes);
 		return -1;
 	}
 
@@ -277,7 +277,7 @@ static int gs_set_download_method(struct fpgaimage *fimage)
 static int init_driver(void)
 {
 	firmware_pdev = platform_device_register_simple("fpgaboot", -1,
-							 NULL, 0);
+							NULL, 0);
 	return PTR_ERR_OR_ZERO(firmware_pdev);
 }
 
-- 
1.8.3.4



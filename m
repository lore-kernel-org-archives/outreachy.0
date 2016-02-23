X-GM-THRID: 6254584557690945536
X-Received: by 10.182.255.203 with SMTP id as11mr35254850obd.49.1456258948065;
        Tue, 23 Feb 2016 12:22:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.137 with SMTP id z9ls2614558qgd.75.gmail; Tue, 23 Feb
 2016 12:22:27 -0800 (PST)
X-Received: by 10.13.223.140 with SMTP id i134mr32270072ywe.11.1456258947475;
        Tue, 23 Feb 2016 12:22:27 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ff2si4448613pad.2.2016.02.23.12.22.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:22:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id yy13so115763112pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 12:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/SLrNpu9Gehp4N8GFEKcboVWD8MNDzFctxkRGc4G+/c=;
        b=WN/T7i72n95zfrjIIwjDXyLe/DhnujzGfce4X/klaUZVKYZhdS2pZbHjloLU7/eYLt
         eWrw/MTC9PcRuBpAl7UCNhLz7fpofCTPRTFRhB/ldKrsx7fh3gXdZle7hH3UeHC1XPBc
         3CSxp02qqfx13Zphg0JnokV0SHrLxXjBKlf5/XovBGWI/81sowVgvCsAi7TLBLXnQeLf
         y8VoK2oxcWb3VLR7AwkWXCfoqT4rSZYeFdkGnL8f3aEa7Npr2ulFpTJlbxqtFX0+HuS1
         SHInHma0zzcJYOg1KAUsHLSHoaAI+Nzm+ilknm4wn2v5EZu2GC5IbV7igaxBIuwQropz
         /tgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=/SLrNpu9Gehp4N8GFEKcboVWD8MNDzFctxkRGc4G+/c=;
        b=Bij0/HmtBntZ4Se5v7X06H2dteeIgiDTW1in5R/D9b9khEhUgdaEQRFJJukeQ2WpCM
         JDvwjy9pBPGqH89fCfG0KmyPTNsYzpCoygUza6Q8NKwoqaoQ/ZP2gvETEAU563KVRQN/
         sPZQk6P2zXET4QylLF9uJAzyjThmd6apWu1uA37Vinoeo8xTgmiD/J8l1d6HyAZ8AaRk
         UAduz3N3oAb1SOiicIO+PeyU2vCxGMUPH/gmu8e/DpiMsrlJGea/Z9xWSQaR0KpuGbd0
         4zrijs+mY8ZcUZUz9DwrdBPpD4qtf87EsOgZVRJocpkNZvs5ZR+4XERpwWKEFNioNc2Z
         F7Ww==
X-Gm-Message-State: AG10YOTgh88XYD4H+2tp6o0+YQjKh5xNOvJAvhAeMVS9q/5SDWG08DdF3eWHfjBTIsUkKQ==
X-Received: by 10.67.24.104 with SMTP id ih8mr49224898pad.124.1456258947302;
        Tue, 23 Feb 2016 12:22:27 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.185])
        by smtp.gmail.com with ESMTPSA id d8sm46344180pas.14.2016.02.23.12.22.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 12:22:26 -0800 (PST)
Date: Tue, 23 Feb 2016 17:52:34 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: gs_fpgaboot: Fix alignment to match open
 parenthesis
Message-ID: <20160223122234.GA2965@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Fix alignment to match open parenthesis.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
index fe3a6bc..53c3301 100644
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



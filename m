X-GM-THRID: 6263088426063495168
X-Received: by 10.140.94.117 with SMTP id f108mr8407632qge.0.1458239254998;
        Thu, 17 Mar 2016 11:27:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.194 with SMTP id b185ls893103ioe.11.gmail; Thu, 17 Mar
 2016 11:27:34 -0700 (PDT)
X-Received: by 10.50.112.232 with SMTP id it8mr8753952igb.9.1458239254542;
        Thu, 17 Mar 2016 11:27:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si1506453pfa.2.2016.03.17.11.27.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 11:27:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id u190so12427318pfb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 11:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3L4PBWGDeAUpzj67cP+tBABfxgOW37mp04KZsNIrM5E=;
        b=yHuu3UC8A9Vcn8/NW1Rm7MozFDBubqeJ5FI5zQpB5vUllnsXl4Nh//jGyzE2EHLc/k
         lZ8a1fS9YKYQSx8tNxWcWGN5sdUqrUdpcFP9czVaNXcRCHx4scB/ArorqmJBAmv2h36z
         DQ0OEXwsTywnTNjdpjh64q05nEjrH16wTTAVyN/d6DvPqY/daurcYNeCRZ/DrlbeNNy0
         nPhVx8CJKVKxTN+YYWAoSbSJ0L3+LE57j+ok0HlpfTk1zbX/gpATHEfMSiq+fPA9xdoW
         oOAvk9VCnJkAxB1yVFJulw63TcDazsWcjs7vOHU5EvHECvqADOUgbJWf/tBP6Lz5lKR3
         rh7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3L4PBWGDeAUpzj67cP+tBABfxgOW37mp04KZsNIrM5E=;
        b=Cl2MOrawnNkubhhnvjOxIUt6Xm/AqDJlkipGiljW7CVCsMNW6GFbkECchrWcN943/X
         qLvpY+JUHuMu6Lb8Di5Qsera6x14jUeEk2in15wsx0B97Iji3Qy4Y3Bum8ISAGMcekCe
         0o07POIu/iNwlEf0IkjXwsz/xFkl2nRwjZ4MHwDCHWOCXgk/7BduYCCW+NxG3cBcOmlP
         81wBiAC/LW1IgTQcZtdOuGrgExf4H/SnD1ZYW+HOBTT+UcZJPcWKUlig6mskDgxdB9HK
         NKpLsezmHbiHVqfzVCpiOeMMxI7PhMpKFgarJIFwNTPQe/2i0pyL8+BoBJtxoM4G+Ru9
         yArQ==
X-Gm-Message-State: AD7BkJKLaD1QCgaVo/7h7JlAmR/PQj8W6iFAzK8pHZVlI5kk39dAuMTwwjz5TfwGs+BHwg==
X-Received: by 10.66.185.227 with SMTP id ff3mr17081582pac.117.1458239254369;
        Thu, 17 Mar 2016 11:27:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.0])
        by smtp.gmail.com with ESMTPSA id ko9sm15007804pab.37.2016.03.17.11.27.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 17 Mar 2016 11:27:33 -0700 (PDT)
Date: Thu, 17 Mar 2016 16:58:37 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] Staging: i4l: Do not initialise statics to 0.
Message-ID: <193b9c6fde9f74f1534d6cf80001052db010be5f.1458213062.git.bankarsandhya512@gmail.com>
References: <cover.1458213061.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458213061.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

 Do not initialise statics to 0.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/i4l/pcbit/drv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i4l/pcbit/drv.c b/drivers/staging/i4l/pcbit/drv.c
index 2087a52..c1b6f88 100644
--- a/drivers/staging/i4l/pcbit/drv.c
+++ b/drivers/staging/i4l/pcbit/drv.c
@@ -699,8 +699,8 @@ void pcbit_l3_receive(struct pcbit_dev *dev, ulong msg,
  */
 
 static char statbuf[STATBUF_LEN];
-static int stat_st = 0;
-static int stat_end = 0;
+static int stat_st;
+static int stat_end;
 
 static int pcbit_stat(u_char __user *buf, int len, int driver, int channel)
 {
-- 
1.8.3.4



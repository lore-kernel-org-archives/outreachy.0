X-GM-THRID: 6254586343072989184
X-Received: by 10.129.3.69 with SMTP id 66mr32968688ywd.41.1456259364438;
        Tue, 23 Feb 2016 12:29:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.166.82 with SMTP id p79ls1226784ioe.23.gmail; Tue, 23 Feb
 2016 12:29:24 -0800 (PST)
X-Received: by 10.66.218.8 with SMTP id pc8mr29991588pac.45.1456259364023;
        Tue, 23 Feb 2016 12:29:24 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ui7si4173151pab.0.2016.02.23.12.29.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:29:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id yy13so115854976pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 12:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=zA5aykYt77e16VXwlfAKNKEjHLH5luDH/RtZaLKtY10=;
        b=BYVB/odUjHoCvSLJdtl3y6pgAtrE3AdHtlyExdpSo4SabIdGbCOF6YL6kVIn/hUnoT
         9uW/juysRLTDc9QbcRCVUGCcuKmr2aQCD6zjemf7HH9ioURKmlND5gWFexZjn28Xv17H
         KN/Y+of+3TOtKY0+MbI9gVbhbsJdWpu0dfdTLRrlTnbt+TKGpldVMsLFiOPpUioeNzXd
         zc77or+D0sfou31v62xk/Gwg0pS9ojUpcZqjSdIWmEHEBzokWcKAV/4l2qoL13FLsL17
         2z3hBA0odMmafeB83d9dz2dhJGHTXvKe1tr/V0DwwbGYIW0nj5iT3ZHTb3FNInbr8rLy
         /PgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=zA5aykYt77e16VXwlfAKNKEjHLH5luDH/RtZaLKtY10=;
        b=b+WRFGUwbLau5oeOEGHtgxdjemwnJBtR/AMgQblgOx5yUKZ/Zglb9l0hqaJRGSUSBY
         dKl1TVnf8awm7IRRQqACwVZAJbsbZT4KXAyJJkDFbA0qw9jJ1c/VhGk7m3ZiP5qHREvl
         nJ9odsUlENsCweTBlk45KrL69gkQfSjpSqCWxcTGDafCGgTtocw7D3Xup2wtfzr5EbbP
         MZJR1TPRl2bHLCqfHoYMDn1YQ6C2ZE/6c6R48itP7jdGUc4t9AHJl10vdbQntALNpD4L
         DXlrZJ9g1f/L4yX2Mg6M2mHSK9YsT4/GH27qr4G/lpF97iBcZxSP+2HlFeeskUk/QYSe
         dJXA==
X-Gm-Message-State: AG10YOTrux4IUZhRkTYmLYrDp72uwTZ9K8TgyrWN8yVewWI1rJKzudNEAntjRxHBYoebpg==
X-Received: by 10.66.222.199 with SMTP id qo7mr49118015pac.38.1456259363902;
        Tue, 23 Feb 2016 12:29:23 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.185])
        by smtp.gmail.com with ESMTPSA id ll7sm40788566pab.6.2016.02.23.12.29.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 12:29:23 -0800 (PST)
Date: Tue, 23 Feb 2016 17:59:30 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: gs_fpgaboot: Use space around '+'.
Message-ID: <20160223122930.GA3000@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use space around '+'.This issue is found by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
index 53c3301..8f2ffa8 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
@@ -222,7 +222,7 @@ static int gs_download_image(struct fpgaimage *fimage, enum wbus bus_bytes)
 	pr_info("device init done\n");
 
 	for (i = 0; i < size; i += bus_bytes)
-		xl_shift_bytes_out(bus_bytes, bitdata+i);
+		xl_shift_bytes_out(bus_bytes, bitdata + i);
 
 	pr_info("program done\n");
 
-- 
1.8.3.4



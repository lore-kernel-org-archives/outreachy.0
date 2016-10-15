X-GM-THRID: 6341570941829513216
X-Received: by 10.157.39.233 with SMTP id c96mr4074530otb.118.1476512044094;
        Fri, 14 Oct 2016 23:14:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.166 with SMTP id 35ls9284222otq.35.gmail; Fri, 14 Oct
 2016 23:14:03 -0700 (PDT)
X-Received: by 10.157.49.79 with SMTP id v15mr3646102otd.27.1476512043653;
        Fri, 14 Oct 2016 23:14:03 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z76si3398081pff.1.2016.10.14.23.14.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 23:14:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id i85so5167960pfa.0
        for <outreachy-kernel@googlegroups.com>; Fri, 14 Oct 2016 23:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=GXfG2hUKXlLmN1iUiqtaMaUeB2yq1C3bXGBfEUcXhxY=;
        b=iz1p1h+rQShdIpmW1RWlPWAatIp6m5H/4c81Dsr0heub0YoOOsLg0atoa85UwqSzFO
         C0KsycTvsvlod9FEoLC00Q7oCrxGU6oWQvkFBHB9pOT5DkXPL+uxYzxcs12BHIzH8bpY
         h7UdDn0juIfOudePXafpEhGpMxxZaRXws+UtKs9fJocBwNmo7z+iCroKBEPGkmolPX2f
         J1KHqPy4+mG4DZ5xgUqb7gRjqMt0lrXOqVpdoUYlpCs4CX8NAMRhwViEFdI6IVrawGeb
         u69CzuC8BNhme/QJz7/NliR8dWWeMuuYQ47/5uufU8Ad5DPVbOFCyCMpNquoTItv6oN9
         xxMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GXfG2hUKXlLmN1iUiqtaMaUeB2yq1C3bXGBfEUcXhxY=;
        b=Nyh6ETbPH86EE0WRjvYBkbrOPK+A25JZKTz35ul0cRceA3SJUDRmQKn5AmDg2TUxDJ
         UyJsr84BPC9lx17i+LXC/lssqbbmzsCosaDFuqF3ludnryDbb+CUWdxWtcCDVf4SQvqS
         HJXJ5nQHZJD6g4MQDGyGLLwksIkuA/QWHOhiEexhl9s5+jIGnoJRBm7hPzGYlkZxVpmu
         HqeOS9LotC7yzS1z+g97Xoz/uxLNtHxFjoudGGDr9vYvj+a7CFLqRNAz/Ws2CqhtJ3aZ
         YB5MSEHss9DXBITLCF+GcJYRXK8+ibFeAlN3QQtXOyg6duoK7YQo+oVpD4BRay+z5sUI
         6cyg==
X-Gm-Message-State: AA6/9Rkt3Rh0nFz10g8jrLDizQQv77034liqYUtU4438ghjwKOYYRHKTBs/FdcgIiOoXhw==
X-Received: by 10.99.111.142 with SMTP id k136mr19589102pgc.143.1476512043034;
        Fri, 14 Oct 2016 23:14:03 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.138.189])
        by smtp.gmail.com with ESMTPSA id sv8sm31770746pab.18.2016.10.14.23.13.55
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 14 Oct 2016 23:14:00 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 15 Oct 2016 11:43:49 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	labbott@redhat.com,
	sumit.semwal@linaro.org,
	arve@android.com,
	riandrews@android.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: android: ion: constify dma_buf_ops structure
Date: Sat, 15 Oct 2016 11:43:48 +0530
Message-Id: <1476512028-2583-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The dma_buf_ops structure is stored in the ops field of a 
dma_buf_export_info structure and also used as a condition inside the
if() statement. The if condition does not modify its value and the 
ops field is of type const struct *dma_buf_ops, so dma_buf_ops 
structures having this property can be declared as const.

File size before:
   text	   data	    bss	    dec	    hex	filename
  14471	    819	    224	  15514	   3c9a
drivers/staging/android/ion/ion.o

File size after:
   text	   data	    bss	    dec	    hex	filename
  14599	    707	    224	  15530	   3caa
drivers/staging/android/ion/ion.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/android/ion/ion.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index 396ded5..45eceea 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -1013,7 +1013,7 @@ static int ion_dma_buf_end_cpu_access(struct dma_buf *dmabuf,
 	return 0;
 }
 
-static struct dma_buf_ops dma_buf_ops = {
+static const struct dma_buf_ops dma_buf_ops = {
 	.map_dma_buf = ion_map_dma_buf,
 	.unmap_dma_buf = ion_unmap_dma_buf,
 	.mmap = ion_mmap,
-- 
1.9.1



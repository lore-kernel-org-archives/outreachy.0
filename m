X-GM-THRID: 6253787292670885888
X-Received: by 10.129.90.84 with SMTP id o81mr17493434ywb.37.1456073320639;
        Sun, 21 Feb 2016 08:48:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.19 with SMTP id p19ls1074990qge.24.gmail; Sun, 21 Feb
 2016 08:48:39 -0800 (PST)
X-Received: by 10.129.92.65 with SMTP id q62mr22613764ywb.19.1456073319857;
        Sun, 21 Feb 2016 08:48:39 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id 79si2664982pft.0.2016.02.21.08.48.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 08:48:39 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id c10so81555710pfc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 08:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/DFC7od5HzlzmF+1E+dy6YcyRNRq7r5p8QddjYNQ2Hw=;
        b=kZ3lKOYMc//DVOqtPwYRPDdC91J+0n2lSg0HlyKTK+SZnAn7A70e9WHhsVnl3yhULn
         5R6XvInEvv52ZSS9qfYs2OuLnfa3LUY/lQdR1A5doyDr7Ooj6CBqWAavepMoQxu1Di2I
         5S+z67jWJ7b3oGqfrVJ+kkON7jzg3LrsSU1bdjpR2SzQAPAXBNGs/HK5/a6EbhvBBvux
         zF1zumR9MPYxUSjYyJay6sIiNT25AbVOTkX6NBoEpjZ1aqcrth2EPsg5IMThHubGdGHO
         6gJgQ5GcrTHHS9zicAPwQhlj/B9ffYDIiqwSdvaX9KqKFI4X+YYradG4lBs6+L0MWLRO
         kOgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=/DFC7od5HzlzmF+1E+dy6YcyRNRq7r5p8QddjYNQ2Hw=;
        b=l8O706I22RBQzt028T0qeGql7FDpR/tOWbF2M+Gzg0LjzeAUv72qwIUjI7Ny1OOi8t
         han3RRuUJlUqMQ9Es4wdFjViBtnrHuSb56T0vYysv1kfiPmRbWBnJ6jDXh20KzxbJ5Oi
         qQ2sq0HOZq3Vbmg0zWiQvUX1Y8Pj/nwx191PhJ+bcgKJwtjH6b0FbNPMreZdcguPJFc1
         5wEHuj9ybvRkUzJN+PsBlV3bxUAD9/eyaY3tcfL7q1YIt4mBjlsglJs4ef5ORz3qm+vz
         9dCo+83R8OnnMuQ7WKXk1IqTqfeR0S3zRe+knp/nHT1Bw0CxYAJZg8oYAVzIQpehr/dc
         qtyw==
X-Gm-Message-State: AG10YOQ/+h+MyqJLSBEaIpfoo9uL/7mxTxUWW+V14IyzfL3D+PIKXU8rmC5R9cum2sTCEA==
X-Received: by 10.98.16.69 with SMTP id y66mr32281484pfi.86.1456073319710;
        Sun, 21 Feb 2016 08:48:39 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id 19sm30887451pfb.64.2016.02.21.08.48.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 08:48:39 -0800 (PST)
Date: Sun, 21 Feb 2016 22:19:05 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Check for quoted strings broken across
 lines
Message-ID: <20160221164855.GA4867@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

checkpatch warn about quoted strings split across lines.
So, convert multi-line string into a single line.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index b55a0c3f..62ac8ee 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -443,8 +443,9 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 	/* } while(&rptr[1] <= &rb[len2]); */
 
 	if (rsp != cmd) {
-		dev_err(&spi->dev, "Failed cmd response, cmd (%02x)"
-			 ", resp (%02x)\n", cmd, rsp);
+		dev_err(&spi->dev,
+			"Failed cmd response, cmd (%02x), resp (%02x)\n",
+			cmd, rsp);
 		result = N_FAIL;
 		return result;
 	}
-- 
1.9.1



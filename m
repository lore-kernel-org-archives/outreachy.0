X-GM-THRID: 6249270687841648640
X-Received: by 10.28.47.211 with SMTP id v202mr512092wmv.3.1455021716015;
        Tue, 09 Feb 2016 04:41:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.126.130 with SMTP id z124ls594392wmc.19.gmail; Tue, 09 Feb
 2016 04:41:55 -0800 (PST)
X-Received: by 10.28.225.8 with SMTP id y8mr512239wmg.7.1455021715593;
        Tue, 09 Feb 2016 04:41:55 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id w10si501823wmw.3.2016.02.09.04.41.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 04:41:55 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id p63so3187299wmp.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 04:41:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6rTXOH5QA5jtP5E/l/PNkRi1DZ6ENmBAbMPbtaKB2m4=;
        b=TwSXZu0ZKlzXYbkAqb2vRS/0FM6xO8HsuNaQF+O0ZOWqS4933JKuqw/pxn5pBijjwi
         OG5COWVngxjfTDiua68a3C7xKoaFfjG6NIKF8S4qYSOqSK3nS+akxLL8wHtDSrI29gKw
         ZxzvHRbgiXOMxodC+cDhPdV/UFKbxYbrJ3zxGo3/Zv2skfI855SmAFWnQoOyxNX8soPN
         py441aGCDFeiMzhJ9Qbw42uj8FtRO2gVxP0ozeEb1MHJwwBDmOOjxuvnUILWwmmOhQBN
         pCezrYPVQDeJztnY1k54vIZsR3FnyZ+H22ktLV0Smzy8ktu9ELE6Br6JhOyfUe0GDqHt
         Ey9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=6rTXOH5QA5jtP5E/l/PNkRi1DZ6ENmBAbMPbtaKB2m4=;
        b=AoSeme+r6bfGnrFcXU8pQo92IEJorq4EVCIol37o6UBK/Unqn0h+CHLJzR4c+KYe9/
         lbVI/dOK0TqTpESv+aio0stbYyvROiz2Je3QRDFpDL2eg/N32IsqumtO4JzZ8a/eoonj
         +t9ud+NBp77pTBSDQCwKkyBvHtVhRuP+sg44SKkTndR+HTQqVArUaopA2Yb/cfASlr72
         lHiDSQOdP+IbJp4rb/4mi9M+RkLLkN5te9f5L++uhMkff8zvomBfJ7tNDvNBswXbnfAQ
         uci1TD+wICEiBgUW/BHEFxXVltSpSOmum+93PY7mmRhD03T3eZ6pbB/oghQCnds/af0x
         Reew==
X-Gm-Message-State: AG10YOSZL/BEJUmaWsalQg0Ud7pY7WTf0USfL1B1eHzD20Xsbuq9AWNioV8/rUjWk+y8AA==
X-Received: by 10.194.57.48 with SMTP id f16mr3571611wjq.99.1455021715507;
        Tue, 09 Feb 2016 04:41:55 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneenVB ([109.171.130.212])
        by smtp.gmail.com with ESMTPSA id ko2sm34459153wjc.9.2016.02.09.04.41.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 04:41:54 -0800 (PST)
Date: Tue, 9 Feb 2016 14:59:55 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] Staging: rts5208: remove unnecessary parantheses
Message-ID: <20160209115955.GA28315@haneenVB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes unnecessary parantheses around rtsx->pci->dev.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 0c9549b..f2eb18e 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -652,7 +652,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
 	else
 		return -ENXIO;
 
-	addr = dma_map_single(&(rtsx->pci->dev), buf, len, dma_dir);
+	addr = dma_map_single(&rtsx->pci->dev, buf, len, dma_dir);
 	if (dma_mapping_error(&rtsx->pci->dev, addr))
 		return -ENOMEM;
 
-- 
1.9.1



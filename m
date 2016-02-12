X-GM-THRID: 6250289163666456576
X-Received: by 10.182.24.41 with SMTP id r9mr47056157obf.25.1455258848219;
        Thu, 11 Feb 2016 22:34:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.33 with SMTP id 30ls1501038qgc.99.gmail; Thu, 11 Feb
 2016 22:34:07 -0800 (PST)
X-Received: by 10.129.92.65 with SMTP id q62mr46452952ywb.19.1455258847612;
        Thu, 11 Feb 2016 22:34:07 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id ff2si1286419pad.2.2016.02.11.22.34.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 22:34:07 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id x65so42635725pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 22:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=KNqo67s3eQLVEbI5Ejvy2rYx/Ctg4A9JalFUzhNYM5Q=;
        b=rUFQFrjjMzSPxjNEWV3oSWyZvROh3FbcrPaubMWdZ/K4bJMX/ZIdN8GNjfrjTh53hQ
         J2loXKVDCE5fBqvY/+zw14w5doeYfvizb61sE3EvecNKy4glteRrwum/i6JCoCJa6gOf
         s9vTwydmzCYJZPtZleMAeeDDPlnAC11EqYpK8C2B1QuC0TvJ9a/CbeGP3CodS2rzcbDY
         Iqp/E0E/uPBebieTVduhqYLMkjZK6AFXs7qrrbDRpgBCd1pDbO70ajaSTcWHhiMXIa7O
         4QWRtVGqy9v81woJZVBqcVENgnuRYxNxbzY+dck0mTLhAkuYnU4yZC3k43D8IsouSWHX
         D25w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=KNqo67s3eQLVEbI5Ejvy2rYx/Ctg4A9JalFUzhNYM5Q=;
        b=Seo72jh0HpHz8/dMslmBZFrcp9bZ/8aN6rOaj2n37L46WpuLmfKrrOZBn0/ucfPzhu
         SFYuvNs2MZBz+c68ijjPKnBGznakxjYjDAn1G7b7Pw4e32kJH5J1QxyIz0VD+Ymhq/I3
         1bSInd0F0syTDQAFUWMZO+NfLKGY45U+J6ITZOyRMkeu34DwIn7GbsiwWOJ/vY+Bms+d
         OOGcUvDIhb/klfjS1BAl1PoW9Jsb8QM3sy8tDku2KdYee4rzPtQljc3mO1sr6YUC8jZ1
         p2lGMWVKpDK5h7HRFPGJWpqeyDJycNsH1CHuNYFN9mjoqhL+YWr87KJFTnLY7ibtYE5W
         dNfQ==
X-Gm-Message-State: AG10YOTg8JKFIHpWG88NG37WAD3wkWdp8jQJVQTannLPdWtRwiI3dNctl23Ea2F5NtUCPg==
X-Received: by 10.98.80.135 with SMTP id g7mr72892521pfj.132.1455258847450;
        Thu, 11 Feb 2016 22:34:07 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id z3sm16537203par.17.2016.02.11.22.34.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 22:34:06 -0800 (PST)
Date: Thu, 11 Feb 2016 22:34:05 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6656: replace kzalloc with kmalloc
Message-ID: <20160212063353.GA12041@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

All fields of allocated structure are filled in directly following
the allocate, so no need to initialize it to zero.

Use preferred kmalloc() sizeof style to silence:
CHECK: Prefer kmalloc(sizeof(*priv->rcb[ii])...)

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index a2f23ae..74ff707 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -449,7 +449,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
 	}
 
 	for (ii = 0; ii < priv->num_rcb; ii++) {
-		priv->rcb[ii] = kzalloc(sizeof(struct vnt_rcb), GFP_KERNEL);
+		priv->rcb[ii] = kmalloc(sizeof(*priv->rcb[ii]), GFP_KERNEL);
 		if (!priv->rcb[ii]) {
 			dev_err(&priv->usb->dev,
 					"failed to allocate rcb no %d\n", ii);
-- 
2.1.4



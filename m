X-GM-THRID: 6208116032868974592
X-Received: by 10.140.134.82 with SMTP id 79mr8026759qhg.0.1445439651037;
        Wed, 21 Oct 2015 08:00:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.100 with SMTP id k91ls876348qgf.38.gmail; Wed, 21 Oct
 2015 08:00:48 -0700 (PDT)
X-Received: by 10.31.54.198 with SMTP id d189mr8028750vka.6.1445439648531;
        Wed, 21 Oct 2015 08:00:48 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id el2si1121501pbb.0.2015.10.21.08.00.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 08:00:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id z6so57128076pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 08:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jIhBo3+Ldil/8d5H96Zcr7QBc79YjGJn9RnsBrBMwu0=;
        b=zAyio2TPjrhqQ1mKvNaZFhAaFTGrxtl8AgH81/ORSGVFWZ4bKXHhW06C2bUgh4RRZt
         lcwOzfdKCj3OKNc+er44tMd+9WMxSUjlRvghNfl68XxP3VpoG39hwJYwxOMRW0rByHed
         JCbUsokw+46eoCPchqx/B2w2VTqZTJgF4SmMOx90re3QOzo3Qn3nYCA74qchFr+f5Sse
         Q6TipaJRsI22DGUHqUfCk5segUKooBewzVh52kUeRc1ggDUAKbO1oMD1MDM8AMWxt17b
         srG9yLfWaUHyChUxW3k8jDBR+MELXZAjIKyOqpVgCWi7Gis06ogdE3Ltm1ytpG3v9Bvo
         j9iA==
X-Received: by 10.68.69.45 with SMTP id b13mr11003913pbu.67.1445439648293;
        Wed, 21 Oct 2015 08:00:48 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.184.172])
        by smtp.gmail.com with ESMTPSA id yp9sm9694151pab.1.2015.10.21.08.00.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 08:00:47 -0700 (PDT)
Date: Wed, 21 Oct 2015 20:30:44 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fbtft: Fix endian sparse warnings
Message-ID: <20151021150043.GA2840@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix a bug found using sparse which generates the following warnings:

drivers/staging/fbtft/fbtft-io.c:78:29: warning: incorrect type in
assignment (different base types)
drivers/staging/fbtft/fbtft-io.c:78:29: expected unsigned long long
[unsigned] [long] [long long] [usertype] <noident>
drivers/staging/fbtft/fbtft-io.c:78:29: got restricted __be64
[usertype] <noident>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/fbtft/fbtft-io.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/fbtft-io.c
index a6f091f..a9a46c2 100644
--- a/drivers/staging/fbtft/fbtft-io.c
+++ b/drivers/staging/fbtft/fbtft-io.c
@@ -75,7 +75,7 @@ int fbtft_write_spi_emulate_9(struct fbtft_par *par, void *buf, size_t len)
 			src++;
 		}
 		tmp |= ((*src & 0x0100) ? 1 : 0);
-		*(u64 *)dst = cpu_to_be64(tmp);
+		*(__be64 *)dst = cpu_to_be64(tmp);
 		dst += 8;
 		*dst++ = (u8)(*src++ & 0x00FF);
 		added++;
-- 
1.9.1



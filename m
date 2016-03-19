X-GM-THRID: 6263794151847886848
X-Received: by 10.182.103.138 with SMTP id fw10mr16932659obb.47.1458409662219;
        Sat, 19 Mar 2016 10:47:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.22 with SMTP id 22ls2828230qgi.41.gmail; Sat, 19 Mar
 2016 10:47:41 -0700 (PDT)
X-Received: by 10.140.89.10 with SMTP id u10mr16485577qgd.24.1458409661414;
        Sat, 19 Mar 2016 10:47:41 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y20si2926440pfa.2.2016.03.19.10.47.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 10:47:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x3so22427065pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 10:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fDGDKRll2h32zHmBRnAgPiAieorpj6pXvCjkMJ8ENNY=;
        b=lRzTNGJl672JrMtf71/fYhe8NI1xLlTObY2cFT/BsYydvD6l0BDY5o9NaxupxF2Cp2
         RZIVn6XvWKj+UWguZxS6ALgcVc4c45VsMzfW1D+EKvHDw3dmcjmWNS3wMhKN8Ot5KcCe
         fJAdS7Nre6xX8zAusyxSC9Gk253i8ajFoj2g0zQhmSBerNE4V9XaRF0grxbhPbMnKI/b
         jNf/yCtD4fiJWiA6dcbNgRU0JBi9C5LfKNBGzq2SdtdMtZ3xK7KjOpi88EMzsoaWBoLc
         u8i1nFyEYDV0/JPTKLfgmee0l4XhV3FOgaH74hv3FD/ctkCkuRLJnDgD0fBPjcqZhkPw
         hW1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fDGDKRll2h32zHmBRnAgPiAieorpj6pXvCjkMJ8ENNY=;
        b=gQVui0FQkLsIjNoxJZEQCeeqGAwQLdxd7Kp6FAoV1uwIxql76EebUFdVTmBORB+KgO
         kiiaL3lKT3EfMSOw4BRYZuZkZnD0lCOfP5dW2biR7/50Wd7gE7qtXzrNJ/3q4fP/6jb9
         S07x6dYqBIbTQpHmWJRzRO37WPnQBMx0hXyTvn9sLLJuhM7QvYPLbBkG7l7sdIEl3k2m
         GXK9pVqd7a3/0jxBj2XoxKEGWPkD+ViO+BRWjjrtB87XJZjt9P35AC4G1RHuck3CbC1i
         UZdumdzkRmNb/wIqcI+/M+vfIIJ5vvmCP9gDcrL40UJymskQDPNnY+EKZlfzxV0RcMnG
         C6tw==
X-Gm-Message-State: AD7BkJKCdBU0D2LtKdk9O4T0Gt2Mow6RR9x4pntH4t9KBWFRrQPU1ZF6rWJ+FiVJ2lYPFw==
X-Received: by 10.66.171.169 with SMTP id av9mr32911957pac.36.1458409661232;
        Sat, 19 Mar 2016 10:47:41 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id e1sm29410364pas.1.2016.03.19.10.47.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 10:47:40 -0700 (PDT)
Date: Sat, 19 Mar 2016 16:18:47 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/4] Staging: rtl8188eu: rtl8188e_rxdesc: Use !x instead
 of x == NULL.
Message-ID: <b745b397de71c4bc8c966dcc4ce77fd19e5d5457.1458382380.git.bankarsandhya512@gmail.com>
References: <cover.1458382380.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458382380.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
index 53cf3ba..c7e48f1 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
@@ -45,7 +45,7 @@ static void process_link_qual(struct adapter *padapter,
 	struct rx_pkt_attrib *pattrib;
 	struct signal_stat *signal_stat;
 
-	if (prframe == NULL || padapter == NULL)
+	if (!prframe || !padapter)
 		return;
 
 	pattrib = &prframe->attrib;
-- 
1.8.3.4



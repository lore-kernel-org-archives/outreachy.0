X-GM-THRID: 6751114890360913920
X-Received: by 2002:a17:902:a50a:: with SMTP id s10mr12578985plq.59.1571866425493;
        Wed, 23 Oct 2019 14:33:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5043:: with SMTP id q3ls1029152pgl.14.gmail; Wed, 23 Oct
 2019 14:33:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyRSW/pf+k0QYlEDgYn+RvaBP+34+PpSVg6RhwOQqJ7y881v823jEYo5nKCrQgGwlLh2wKx
X-Received: by 2002:a63:a03:: with SMTP id 3mr12858120pgk.112.1571866424226;
        Wed, 23 Oct 2019 14:33:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571866424; cv=none;
        d=google.com; s=arc-20160816;
        b=SkismHzbgYy9edMTZerwDDgY/Yj5Hj+cudbdn1b/z+xbVEFoEg+9qieCsjIZPCyjQ2
         Ei3xnqFET3QrWxpXNmzAICz+1krAGVgtZjLV8MzJQfFQGuC63Q6GWwaVlBTxhZbUr6mi
         ZeaAjb2JtG90xCF2wFGHI/5499i8EEIa6h/LEVH7UXpp8bSWzYBjr/oeKgAarHrJyIJg
         DSeHE9zjDhyXAu56gWX+R7THH0jeYIw9cbasAkfMVS/33wBCeIYX2l5J9hgVSt8qwAe6
         C3yclKuIvTyD72CPonRKULqqvCvkOEk5Z7tQSBpXd8yTQ5ejtRxP6Ip2z+rSgZb6yhj0
         xsMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=kuY980HdnqYLoe1neJtmlXSIo3BABHBokHGLHiDOJN4=;
        b=ohX1dqkLWTaxPsZqpGYKI+QTv9N80Qb8WWFD3CM9zyOntnKdnaeC8bEzAm4HOuL8mf
         T1pqC2iVzThINe7iW1Z9JGxtRlRPmN4Z5XyZJzxAD7YzfwnW6gSFxFhdTJQgYHMuaWKD
         tunYLhoUvQ+0sZsaM3VXNCe4FpkgDlAyXe3q6tM//fQcem7M1GamCaxsJ6E/YlxF+xSH
         cwkuC1UD19WhD+H7cm/hy3giLG+HW5VpcKdVcR+Lgtqlvfyhn+0TqvyKeKBjVQr8i+pm
         KZSvkabh+AE+Z5nAZf/5oqOv4p0hVPT6ixcqtiDthjwUgmYZLJgMM7wFKzi6wk2C3Nxh
         maPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VJVBjOH9;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id az24si4251pjb.0.2019.10.23.14.33.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 14:33:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VJVBjOH9;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id c13so2516617pfp.5
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 14:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kuY980HdnqYLoe1neJtmlXSIo3BABHBokHGLHiDOJN4=;
        b=VJVBjOH9iWbOmgQRdYi5bfleWynBeWSbRKGUYd3DObe/lb/kBiq3OrfGGhh3eRdxg4
         h3lXhqeXuh8R6Ux8oUvyOUgUWk7oDxsYnOPBQmLSgxbcMFDYGoamb0i1NGrlQzkNF13N
         dt5FGUcRALr5lGLvJb1IN+kla5dLKF1Gm1UKAYEnDkRHEnpauHalYZ36pDNGm+aBVK/2
         jpSEwZJ1Qjs5t1ZzuGGyX2UqmBBWWupJzK/fzm6XpLV/fIjNvB1O204tAT5F+hp7r9i4
         5RVfdpOyssxaTWC/rdAFzIwQIufi0BN93TxqMhPwxNJtBpohaZzbSq9QEL7e6/J8QtX1
         ppPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kuY980HdnqYLoe1neJtmlXSIo3BABHBokHGLHiDOJN4=;
        b=jYx4eSounnIJFHqAfS/naispH26Pil7YthoIgDr88T04wedXkfJp5I/hM7Co+ryOzf
         Y3j/uY6/+fz/+62EKTdLzWGviugjfQyIoY5qtiowWGvqAy/00CE2Adl9rCAz7BAJg5br
         nIsorr4Rb+Xi56cAM02uZN5ebHZDrLY+wztjZafFIw3jPmfQ1KGs7OYrpY80B4sZ8usZ
         7efkzSR75R+YTO6mrPebtaNTFow84x7kDOt1AlrkPo2OIjfFSZi8eVcgphPH8++NpjYQ
         SZ5nq9BuzFN5lIUke1TnzNJ/dqtzbb/AFoxH629CvjjOOw6H68NRg24bYDLt0xCs1M8h
         1t7A==
X-Gm-Message-State: APjAAAUDn/ZjYhkgmbUpMbRnaZ598O7caGaVzuxBuOpyNjeU5lwXLN56
	Y/+IlCb3h6e35DgHMl+7aCzkV8En
X-Received: by 2002:a17:90a:d818:: with SMTP id a24mr2712177pjv.5.1571866423768;
        Wed, 23 Oct 2019 14:33:43 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id 190sm218842pfu.156.2019.10.23.14.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 14:33:42 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: fbtft: Fix duplicate arguments to bitwise AND
Date: Wed, 23 Oct 2019 14:33:30 -0700
Message-Id: <20191023213330.14009-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix duplicated arguments to bitwise & operator.
Issue detected by coccinelle.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/fbtft/fb_uc1611.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/fbtft/fb_uc1611.c b/drivers/staging/fbtft/fb_uc1611.c
index 65681d0fe200..8e0f1500716e 100644
--- a/drivers/staging/fbtft/fb_uc1611.c
+++ b/drivers/staging/fbtft/fb_uc1611.c
@@ -91,7 +91,7 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0x2C | (pump & 0x03));
 
 	/* Set inverse display */
-	write_reg(par, 0xA6 | (0x01 & 0x01));
+	write_reg(par, 0xA6 | 0x01);
 
 	/* Set 4-bit grayscale mode */
 	write_reg(par, 0xD0 | (0x02 & 0x03));
@@ -157,8 +157,8 @@ static int set_var(struct fbtft_par *par)
 		/* Set RAM address control */
 		write_reg(par, 0x88
 			| (0x0 & 0x1) << 2 /* Increment positively */
-			| (0x1 & 0x1) << 1 /* Increment page first */
-			| (0x1 & 0x1));    /* Wrap around (default) */
+			| 0x1 << 1	   /* Increment page first */
+			| 0x1);		   /* Wrap around (default) */
 
 		/* Set LCD mapping */
 		write_reg(par, 0xC0
@@ -171,11 +171,11 @@ static int set_var(struct fbtft_par *par)
 		write_reg(par, 0x88
 			| (0x0 & 0x1) << 2 /* Increment positively */
 			| (0x0 & 0x1) << 1 /* Increment column first */
-			| (0x1 & 0x1));    /* Wrap around (default) */
+			| 0x1);		   /* Wrap around (default) */
 
 		/* Set LCD mapping */
 		write_reg(par, 0xC0
-			| (0x1 & 0x1) << 2 /* Mirror Y ON */
+			| 0x1 << 2 /* Mirror Y ON */
 			| (0x0 & 0x1) << 1 /* Mirror X OFF */
 			| (0x0 & 0x1));    /* MS nibble last (default) */
 		break;
@@ -183,13 +183,13 @@ static int set_var(struct fbtft_par *par)
 		/* Set RAM address control */
 		write_reg(par, 0x88
 			| (0x0 & 0x1) << 2 /* Increment positively */
-			| (0x1 & 0x1) << 1 /* Increment page first */
-			| (0x1 & 0x1));    /* Wrap around (default) */
+			| 0x1 << 1 /* Increment page first */
+			| 0x1);    /* Wrap around (default) */
 
 		/* Set LCD mapping */
 		write_reg(par, 0xC0
-			| (0x1 & 0x1) << 2 /* Mirror Y ON */
-			| (0x1 & 0x1) << 1 /* Mirror X ON */
+			| 0x1 << 2	   /* Mirror Y ON */
+			| 0x1 << 1	   /* Mirror X ON */
 			| (0x0 & 0x1));    /* MS nibble last (default) */
 		break;
 	default:
@@ -197,12 +197,12 @@ static int set_var(struct fbtft_par *par)
 		write_reg(par, 0x88
 			| (0x0 & 0x1) << 2 /* Increment positively */
 			| (0x0 & 0x1) << 1 /* Increment column first */
-			| (0x1 & 0x1));    /* Wrap around (default) */
+			| 0x1);		   /* Wrap around (default) */
 
 		/* Set LCD mapping */
 		write_reg(par, 0xC0
 			| (0x0 & 0x1) << 2 /* Mirror Y OFF */
-			| (0x1 & 0x1) << 1 /* Mirror X ON */
+			| 0x1 << 1	   /* Mirror X ON */
 			| (0x0 & 0x1));    /* MS nibble last (default) */
 		break;
 	}
-- 
2.17.1



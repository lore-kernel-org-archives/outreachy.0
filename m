X-GM-THRID: 6803435195586314240
X-Received: by 2002:a37:a346:: with SMTP id m67mr23556466qke.313.1584315735114;
        Sun, 15 Mar 2020 16:42:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:38ad:: with SMTP id f42ls6164233qtc.9.gmail; Sun, 15 Mar
 2020 16:42:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtEddv8IjBTUsWNtBZaa31G3gC0UUjDQ6YIdkikmN6Ygt0zsTkS5qAhaFB2I44blyiqVsFc
X-Received: by 2002:ac8:6648:: with SMTP id j8mr23754495qtp.350.1584315733826;
        Sun, 15 Mar 2020 16:42:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584315733; cv=none;
        d=google.com; s=arc-20160816;
        b=TZqlP4KhrQW23OC9lznyvA+mML+/z6WZ2DOEgPLHnNCrqkwGCV9viHj6ZLodjyw4WV
         hSXGOoLCr+29llAwqA/vkyukCClQNDaXDcisJBKvIzrVoizXnqMUC471l4KczZczltw4
         ExDv18c3vpN8g9d5ufHpzopLwYxV9Wge+1EglTT5OW1eyRSp1BQnIKQno3TBIC4vWcmn
         SVQDEU2JfitDFfDx7GmeiPQ5zid7fzRu4rRkCJRbbOmxNC7rMP0ac9xN2Ct0vyr35XLB
         VJlBdTBJQ2XXV1W9SYYvqvoYZK65ZvPtNwH9g0O9R5fFZ0vzCI7QjZPPs5JHX+Z/Kgsz
         YZeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=LmjWc4raiH/gQsSmzEcDZ2/M+YsygOVRHN1vfOxWHvg=;
        b=QI7yJnhy13yo41izuLuhTaui2ie5KMZ2t4y6skur967ze7yBr00L5ciSwlfpkGlzQY
         U6f3yl5H9cUQymxmY6rs/idWOEa1kS/YvJwhvaf9Q2EDJt1gKjQ+dL4cEMvJHn1v5GQL
         DVDVPP5OtEQr2OlCVrU42dDl5yQy5/gszWkITATzzPfHOKvSm2FsiiOMNHcU5ySHefeE
         gAoj15JonMh44t/xQLwX3TruAmw7S5mJrZSPflvJCiurJPr6yBFOXCCsQxtgo2o3FqU2
         /FFs5BVmXeFVCpq7J9BAZRYf6lVt4/s6gk8kV37tUkuhBHBaU8ka9hNAt/bhFFT6kIXj
         oBww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d5xFCa0+;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id m18si937373qtn.5.2020.03.15.16.42.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 16:42:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d5xFCa0+;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id g2so4617347plo.3
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 16:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=LmjWc4raiH/gQsSmzEcDZ2/M+YsygOVRHN1vfOxWHvg=;
        b=d5xFCa0+YGTV5RS7OUJ3HbXn6fXzG0BoQflZrYhlvAHKqQmPLOWCIUyMR8mdpA1DB+
         NW6SkqMcRgr7Cq+DbQ+xnKcAqFynPpWmWA9OjdF3GBEJJ4oONvoPaBlx+Fo4KaYuAbHJ
         1UEa+sMhmNt7aMD06ntIEmyiobmalE1LwbE3OeYemcyQmQ9dQzwJr1nubkEHiXhmSP9M
         ELD5ZBVyzdPxSkFui9K/VWdp30C4pZuXfmFU3MKQxaUZrZLBYqSW5CFukrqFV5WogTg5
         +TZ1MBXo+djHmWuhBtZPv3sf/QV31cX84Wepa2wBRS4raZuJH6kdGGGdFg7mG3RAsySl
         UluA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=LmjWc4raiH/gQsSmzEcDZ2/M+YsygOVRHN1vfOxWHvg=;
        b=cngiIK4/10+Xs9Nw9BuhnXdlGeU5eeIag2nM5mlyJP4Es0ZCx9ueiwuuw0hqA7YHWl
         AlrRMbXN6BKbYgzmwduIoW58/7xB/SbP7jeQ/V4EK0IZXDKCmiFclErXR09d0dn44oTq
         EaTEq54oz7TuUPCrNQWfbDouAAkP87e5f46HAPSd1jLmJYEFuyj9svGCxegcM96tbYn+
         PCJKqMDxDkJBNNgA/u/KAnfi4eGhmX0ql8rqoBA4Rqxz4/P+wWa6cknnVQTi1Z1LIDou
         ZevluAxnEO3v+AZijKHXhdu7R42DJG3iaQbM91ClN1HaOe5+aXzfBNihoBuv5VcR+4Qp
         mdDA==
X-Gm-Message-State: ANhLgQ0Txm+7EHkhXGHCvbNxc7sIjMNNwUvWf5uVMLM7NKdzAiaOTqEv
	0/rS46c8CL6J6PORR/16rFfzRbtp
X-Received: by 2002:a17:90a:1912:: with SMTP id 18mr22269729pjg.10.1584315732857;
        Sun, 15 Mar 2020 16:42:12 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.225.138])
        by smtp.gmail.com with ESMTPSA id h132sm60474144pfe.118.2020.03.15.16.42.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 15 Mar 2020 16:42:12 -0700 (PDT)
Date: Mon, 16 Mar 2020 05:12:08 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Subject: [PATCH 3/4] staging: fbtft: simplify array index computation
Message-ID: <4bf407e1b3e05745f767b2bad6218c9fb836d869.1584314604.git.mh12gx2825@gmail.com>
References: <cover.1584314603.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584314603.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

An array index is being computed by mathematical calculation on the
Lvalue side of the expression. This also further results in the statement
exceeding 80 character statement length.

A local variable can store the value of the array index computation. The
variable can then be used as array index. This improves readability of
the code and also address 80 character warning raised by checkpatch.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fbtft/fbtft-sysfs.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
index 2a5c630dab87..26e52cc2de64 100644
--- a/drivers/staging/fbtft/fbtft-sysfs.c
+++ b/drivers/staging/fbtft/fbtft-sysfs.c
@@ -25,6 +25,7 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32 *curves,
 	unsigned long val = 0;
 	int ret = 0;
 	int curve_counter, value_counter;
+	int _count;
 
 	fbtft_par_dbg(DEBUG_SYSFS, par, "%s() str=\n", __func__);
 
@@ -68,7 +69,10 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32 *curves,
 			ret = get_next_ulong(&curve_p, &val, " ", 16);
 			if (ret)
 				goto out;
-			curves[curve_counter * par->gamma.num_values + value_counter] = val;
+
+			_count = curve_counter * par->gamma.num_values +
+				 value_counter;
+			curves[_count] = val;
 			value_counter++;
 		}
 		if (value_counter != par->gamma.num_values) {
-- 
2.17.1



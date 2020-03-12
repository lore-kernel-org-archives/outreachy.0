X-GM-THRID: 6803435195586314240
X-Received: by 2002:a9d:5e8b:: with SMTP id f11mr8361809otl.110.1584048330292;
        Thu, 12 Mar 2020 14:25:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:2415:: with SMTP id n21ls1956791oic.1.gmail; Thu, 12 Mar
 2020 14:25:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuO+Xi1CLrZbW72853BHiN++XsfddGAVCSaIEMylusiBjoTbwC+vfGtMMxgE3RjdQuCMwRy
X-Received: by 2002:aca:fcd8:: with SMTP id a207mr4550820oii.56.1584048329286;
        Thu, 12 Mar 2020 14:25:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584048329; cv=none;
        d=google.com; s=arc-20160816;
        b=IFc7smoPeKdu0LNDBXCGnAbG652sEStAMHP38C4ErqEnU+a8T+YZFtXuglATE/agdB
         rwaQrBzb3ylkoPcNU0Eng+0h2lHCXIYuQpBcto+XFMNA6AwrabppHqwnZWHlK4aaWEgV
         FoCE8jGIb/Ugrke7xmcHX8SEHMD4opTO2ZgVLEA19vgv0FPLkBtVGEgigRaDyr6Gy80C
         fz0Tdvy2IfVG0YDgajroT9GKa7OuA39XUX78xQPrcWu0a3HltdHuVEuXD0d7Y5uaLYz2
         5T/zd8diztGZEmknuA+9T21hfAVwUXXtmr2JAYPaoh/5s0S9vkIrvBlSW/o3x7n2H9Dt
         i3NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qm0z+zcJJGRWXO3CCbVZzkAch/AOPoMZ7xZB0PeVYGI=;
        b=bHjRXKJxP/0l4zwHZTmr12GrHkB393nrG1SKcPEtwJIqqd1IuWWCiYQ81Ne+JrVnS0
         BE0MN79gJTwE/dkqQl2rZggvyXAjOik73NZSos9SbmON+W3Trs/3VNjp7J/bzkm4n39T
         SrHqO5mPy6bQPkKAOGmM651ss+EZ+J2pLKaSRuzKPZQNdxr/9Y0V1nF4LGnFusTlPcBX
         4UNENcXvCJmgHo8osLsdW3Pcvk65jZ1T48hfaWmciJ6lZouO+jgeTPrQ2gJXvv7x3jzZ
         iFttG46PpRHJz2UjltJ/UqdFngpb8/XPGZKghxU7MNRP0ABYdYt7fdaPKt31R03vjuMY
         oFQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aUMPwfit;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id b1si208863ots.2.2020.03.12.14.25.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 14:25:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aUMPwfit;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id d8so3178498pje.4
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 14:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qm0z+zcJJGRWXO3CCbVZzkAch/AOPoMZ7xZB0PeVYGI=;
        b=aUMPwfitk9BwKaO7gPF9gvqOrjusnYibw8bS28ocyIMIY9xFHHlVxExPP2rAYoH81Y
         mY89W5VVnORtZkN7jCsYNH6/7FDJ1+vfnjkPnoF9rlL7KLaw3sf8kxWUGCNGXYbmuW3n
         KwsnlQ9rOJM/7uf2lfn5QVYclcOeIuqfoUDXlfLnIg/Q7YQm9Fhk+MyLjvxP5bQ3wcp0
         /7rBDCiiP8ll5rIVvdZF/pPgSC6Cmro9gauhqUAHIxltOqciuJFJXwguavf7BDHcjYiO
         Oph0k1UOH2t0CnGRSNQGrGBFh2PHaKGgsI+jEqRI6U0SOTDNXHM2NBjeM12XN5klR9Jc
         LZsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qm0z+zcJJGRWXO3CCbVZzkAch/AOPoMZ7xZB0PeVYGI=;
        b=tmW0Eil+61AfJJ7Tw2q5RadqrEhOG1ngKPzCpo3pbDVuXz4fHgrQ91VoIsHJL5qMkp
         1k4m0F8ffc8POCT8c68Hp0BH0+wNNOf0ZggNrPj9Vi3mmrS8icbkrJFVthlNngmhpNYU
         2PJmx2RqLF+nHOTO325F0CckpdQrebskThJTem7GAoODk9oveAJ7PjoB7Et/s1oMTA6r
         z8BEIp/OQkLvqQDDlJ+lxCkuuUon3vTCysDu6sYKG+NTC+JSpnpyCWsa4AO8kl9toasw
         h4Cc7wyTX0q6aG3HOyEL/QwbiXUp1EUpi4szjmZ4bBn1vTAU+TDlByheGA5bEzgUu6G/
         1NTg==
X-Gm-Message-State: ANhLgQ11iksm9Y+HSHXARNW1cEv8lSdb0nOm7NIBXtkcBOnkEEKeKH+P
	EIg+paCaaZWBr6cxsUH3yor/elVB
X-Received: by 2002:a17:902:ff08:: with SMTP id f8mr9731294plj.311.1584048328316;
        Thu, 12 Mar 2020 14:25:28 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.39.128.28])
        by smtp.gmail.com with ESMTPSA id a13sm23324000pfc.24.2020.03.12.14.25.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 14:25:27 -0700 (PDT)
Date: Fri, 13 Mar 2020 02:55:24 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH 3/4] staging: fbtft: simplify array index computation
Message-ID: <34620c89e9ecfd91ef35571fa1a167f33c777d52.1584045569.git.mh12gx2825@gmail.com>
References: <cover.1584045569.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584045569.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

An array index is being computed by mathematical calculation on the
Lvalue side of the expression. This also further results in the staement
exceeding 80 character statement length.

A local variable can store the value of the array index computation. The
variable can then be used as array index. This improves readability of
the code and also address 80 character warning raised by checkpatch.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fbtft/fbtft-sysfs.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
index 2a5c630dab87..4d505a13f7ab 100644
--- a/drivers/staging/fbtft/fbtft-sysfs.c
+++ b/drivers/staging/fbtft/fbtft-sysfs.c
@@ -25,6 +25,7 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32 *curves,
 	unsigned long val = 0;
 	int ret = 0;
 	int curve_counter, value_counter;
+	int counter = 0;
 
 	fbtft_par_dbg(DEBUG_SYSFS, par, "%s() str=\n", __func__);
 
@@ -68,7 +69,10 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32 *curves,
 			ret = get_next_ulong(&curve_p, &val, " ", 16);
 			if (ret)
 				goto out;
-			curves[curve_counter * par->gamma.num_values + value_counter] = val;
+
+			counter = curve_counter * par->gamma.num_values +
+					value_counter;
+			curves[counter] = val;
 			value_counter++;
 		}
 		if (value_counter != par->gamma.num_values) {
-- 
2.17.1



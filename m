X-GM-THRID: 6803435195586314240
X-Received: by 2002:a25:5f0f:: with SMTP id t15mr16316999ybb.194.1584107049081;
        Fri, 13 Mar 2020 06:44:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5789:: with SMTP id l131ls2821683ybb.9.gmail; Fri, 13
 Mar 2020 06:44:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvWc/uL5D9gZW7+PHNWNb8g9S0NS6Y+ACXRhtTMcFsTXl308akA9p2tKpBVXd9IdJCOQnOT
X-Received: by 2002:a25:6a56:: with SMTP id f83mr17356056ybc.17.1584107047680;
        Fri, 13 Mar 2020 06:44:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584107047; cv=none;
        d=google.com; s=arc-20160816;
        b=E2TbJLk/K5aS5rLjC1a1IEmvJPKcseb0QZhCTFe5VuOyyORUQfXRGltzM/dUosuPN0
         09Birutkl3Zkk7IpEqD2IsuiOf3oKOjqJVTl9L0g1YZzXST4hUeg5riTXhvgd47N6tAI
         I5y1EECtjundWHlDz2mDM1t1I7TcSbRJR6T3Gw3mi4IRCUke/PlbnEAIs1URSBwk42v2
         D66bqH09vu2qE52f/E9MgPlFmNUs6GesoXT9B6Aqf6eXlDoRZd4Qyj23QkUohAv4Axrf
         5akmentLuqkmKXq8i6L2eCaf3zq+GUuyA36qgCBq6JsusgJZIuf9xAmrHiHps2TeT0Tu
         2JNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qm0z+zcJJGRWXO3CCbVZzkAch/AOPoMZ7xZB0PeVYGI=;
        b=MBvmqqF1DYgopWY6kgAaJ0zBCKza+OHEpIg04aJVwJzbafqGfnZ0KzBOpKPad2ksCw
         qEwFntY5+0JocgoKIxhEjpGt4NCQsbNHo0KGqUBFFVW5EMQzvGwH18oVNBx23yCdtpdg
         dyR77bbPgNH+cEr/srBi9IDsXeuf6xFTuiA84oZ/+3fJ3LyOLnDb9YaMNdFhb8O+4mGB
         6Kr8m9cfDg8e30vlzeuDJskQ31Qyc/4AFXnjrcRTwjmcjM0FndaBIBNtSYsRzZYHPw6E
         ZGvoMgsz2OXlNRMTrElGWa7HwtNO+rmFlfsGPEJXZLnTL3yOrL3ijAIcBINulVSAW/+x
         owqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bgPT2Pie;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id l1si95816ybt.2.2020.03.13.06.44.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 06:44:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bgPT2Pie;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id ca13so4370949pjb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 06:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qm0z+zcJJGRWXO3CCbVZzkAch/AOPoMZ7xZB0PeVYGI=;
        b=bgPT2PieUK+jMwduna3Uii976H63zDAs3lbRKDQqCNl2NJ2l11jGhpsEUimz0VS45f
         5egbGwhNa5ReZ9/IAUs65Z0jqkhxqBLj0cBcatAPfeHlf2HU/5CNvgub9L1V/mrh2VHf
         4yDdVcfzx4Uqhca2mh9ZzeMdvFCxgN9DEAsOBK1YxGbezwHWYHGKyC6GgUcefAXEpVPw
         dP5rQuVPCKk9+ggFefplywC0lLTSQrtFaVTyNYxBQuyh92y65IWIyh/tfLI185vlbVH9
         y8thQJkTpte5SxeZQUmujrrYwiNr0yvQr2mmt0ZZgysruf9+yIfkzo4wsg3sZLym7xB6
         8MEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qm0z+zcJJGRWXO3CCbVZzkAch/AOPoMZ7xZB0PeVYGI=;
        b=cpFPYvXy0yDrj3UkvPgtxS2NVZp/aVBC5nZoJb05lbhkWhPd/cLWXn8dpowmqyS0oC
         7IWOQvZeZPTzT3DIiLe3cqP5cRLzMTAalfA/rdN8hOK7HRWd4P5QDkqsmi2tYmdKZNFB
         3B0l2M78cb4T3+HI7o2HeevD06uxaiDzfo01yURcRz7E3poZttQ4tsARaXTgYZJhgvpl
         ndWs8jjrfnR31atOfUhORamPgy0pwLa+bBn9LBRSTEPhbnlQIZiyg52mzzb4AzpAY0lS
         hXIGPmdZGOMUyn4MIecfDYrREC8ln2EhcjQzNTJyui5KIqbUGTgrwxOAbqJx3wWuWvEC
         Oqqg==
X-Gm-Message-State: ANhLgQ3evCmK+mIGfRJzJFrOXg7dCM6PdZQ7LrKfVPXDosN9uadE6V1b
	R6sWI0hKN4lI+TkjeqEROiiJGTAL
X-Received: by 2002:a17:90a:3249:: with SMTP id k67mr9858466pjb.167.1584107046615;
        Fri, 13 Mar 2020 06:44:06 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id x9sm27467425pfa.188.2020.03.13.06.44.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 06:44:06 -0700 (PDT)
Date: Fri, 13 Mar 2020 19:14:02 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH v2 3/4] staging: fbtft: simplify array index computation
Message-ID: <34620c89e9ecfd91ef35571fa1a167f33c777d52.1584105606.git.mh12gx2825@gmail.com>
References: <cover.1584105606.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584105606.git.mh12gx2825@gmail.com>
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



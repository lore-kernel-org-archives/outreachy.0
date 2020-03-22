X-GM-THRID: 6805399652543758336
X-Received: by 2002:aca:d68a:: with SMTP id n132mr15235686oig.40.1584906921792;
        Sun, 22 Mar 2020 12:55:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls5339194oto.3.gmail; Sun, 22 Mar
 2020 12:55:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsdqu+tOTRfwBPNmmpKFa/O44+lB91rIJHhA3k9zvTO5zl4DvGZaQlXj3vx3WoqR8IdONch
X-Received: by 2002:a05:6830:30a3:: with SMTP id g3mr15500794ots.222.1584906920515;
        Sun, 22 Mar 2020 12:55:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584906920; cv=none;
        d=google.com; s=arc-20160816;
        b=mn5MSg705L3RV1Dq4s/vbEmhZitlwvnjOeGKg8aQsMvK4a7L+qWZh8VGlsgXUOCnVG
         MIjIt/jOj4f5iLhQ9gW5RU5MPJUPLWsC5goTg8ofHPE/jr40F1i73gm5QJhjg/F6c8iQ
         34/Ow9kcgYsHcRFtyo13z+Lh2fsY+KIP115+6BVVAdCEJDtspwAyEgOZviHtyA26/U5P
         83DD0R9+vuoCLVQin1n3ch6M3UyWZaxZVnSbHNJVGH397AnxPM/3ShLBewIktp/SoVBD
         mSXiDbvvlZAhZ37YRZA2YI9iM83ciWfKXZZRNkONOO4onXc80xDZ/aWCMiCInI/254Ql
         xgew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=b77TY7UrsoyS49ONmyF7UHFxsAFfpAPqrIo/6B6TxU0=;
        b=A8lXZsRRy3cgsRSPrgKd3p1Z9n2WTfA2XUh2iid8/igY+6NqTEk5It0y+rsw8fG6rP
         Njay2V2SY1eOiHWaLaD3NSs5Dc84PutUOkJcGT7ZFEumichPi9vYzJISr2pCWqQOSefi
         3ks8WXsUZhAUS1ywVLPDSzkAW+N+5BX/cS6AjSEfbXxEzjsfCV2fZUxZLQbavRkOn7t6
         WPx8Mv+Onj2cv5Lcr/BGjVZ3f4VD8XhYcS9YxbLWYldrGemNTfzVhfxFnMZWnbclCMW0
         +BPupWAlnfwktr5c4Rgw+U42HSdPHnoTSJa6oX8eiZBwl6Lee8wghmvWUNb9bebC8+ob
         QyNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HNR9ytwS;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id t81si698815oie.5.2020.03.22.12.55.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 12:55:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HNR9ytwS;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id jz1so9387pjb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 12:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=b77TY7UrsoyS49ONmyF7UHFxsAFfpAPqrIo/6B6TxU0=;
        b=HNR9ytwS/mNQzGAhFGdfGUQ+2Lur4oNAxLxbX1JqrDl19h+OSBlnCnU4q2bkk0TG8m
         efZIxBd6jAwHpdiDGjY5eg8US8ekWegGXYsrUApMt6feCxupW8rCjtVHnhDUSHTb04dI
         a8A66bqw/DV25P6t4A6CfAEmk7VvIBJz5f23D9qYdkYlD0lI6NVmA1MC9grq9+zWJBsm
         cc/zAQl733Iz0JL0v9BBSZOSq1TbzL69qlVikRy195hN5JR6Nb2x+o4yGMxsLKYPXfcW
         /EJnRWaAzCE/DmU3fA/vR1xT+pJUWY9JmcNSJTJVr+VsyrHTc0ncs+DA4Ifnno8OrH4i
         VRGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=b77TY7UrsoyS49ONmyF7UHFxsAFfpAPqrIo/6B6TxU0=;
        b=GajfRMUEG0DuXsHu+AYGqx9EXAiCuhokyDBZYEay7X47idEG8DW5Z/oTD3RIwu/V7l
         MzqTZw7VjszRndSU+wsmmNOh5T+Vw5yC7BRD/Ay3CiDAX5XSs1mg+EruVZ/jE8Kzg+IM
         O8vB5F3R2P0uVl//0/aakIPJLHBW8gRz9X90luk53yYAk3U14de+ZFdzTbhts9WzSpo4
         nfydNDyodaZVRIdo+RyJA3aDYlkQsohwNSHGU0d6NP98DAUPI92bz3FVsEERcQ0huFeQ
         eTeQh581TkHWRNm4uU9dhR9Ti9FIH+IbhTECdsGmZ8dBj9BUMLuI3qmQ43jYBwM8hvKn
         MhuQ==
X-Gm-Message-State: ANhLgQ1hUqqUit9No9zhfjKJCySwky7+MS5VTFi7YfiouY6/TgeO1ocY
	P/Y/2OiKAIQZ652QFITWh504JF7X
X-Received: by 2002:a17:902:728d:: with SMTP id d13mr18445214pll.92.1584906919637;
        Sun, 22 Mar 2020 12:55:19 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id c128sm11043761pfa.11.2020.03.22.12.55.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 12:55:19 -0700 (PDT)
Date: Mon, 23 Mar 2020 01:25:13 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 2/4] staging: iio: adc: ad7192: Correct macro names from
 SYNC to SINC
Message-ID: <a5aea6836da9aa2f950449225892ee18f10e217c.1584904896.git.mh12gx2825@gmail.com>
References: <cover.1584904896.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584904896.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Three macros include SYNC in their names which is a typo. Update those
names to SINC.
Fixes: 77f6a23092c0 ("staging: iio: adc: ad7192: Add low_pass_3db_filter_frequency")

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
Suggested-by: Lars-Peter Clausen <lars@metafoo.de>

---

Changes since v2:
	- None. Version increment to follow patch series versioning.

Changes since v1:
	- None. Patch added in v2 version as suggested by Stefano.


 drivers/iio/adc/ad7192.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/iio/adc/ad7192.c b/drivers/iio/adc/ad7192.c
index 02981f3d1794..d9a220d4217f 100644
--- a/drivers/iio/adc/ad7192.c
+++ b/drivers/iio/adc/ad7192.c
@@ -144,9 +144,9 @@
 #define AD7192_EXT_FREQ_MHZ_MAX	5120000
 #define AD7192_INT_FREQ_MHZ	4915200
 
-#define AD7192_NO_SYNC_FILTER	1
-#define AD7192_SYNC3_FILTER	3
-#define AD7192_SYNC4_FILTER	4
+#define AD7192_NO_SINC_FILTER	1
+#define AD7192_SINC3_FILTER	3
+#define AD7192_SINC4_FILTER	4
 
 /* NOTE:
  * The AD7190/2/5 features a dual use data out ready DOUT/RDY output.
@@ -367,7 +367,7 @@ static int ad7192_setup(struct ad7192_state *st, struct device_node *np)
 		st->conf |= AD7192_CONF_REFSEL;
 
 	st->conf &= ~AD7192_CONF_CHOP;
-	st->f_order = AD7192_NO_SYNC_FILTER;
+	st->f_order = AD7192_NO_SINC_FILTER;
 
 	buf_en = of_property_read_bool(np, "adi,buffer-enable");
 	if (buf_en)
@@ -484,11 +484,11 @@ static void ad7192_get_available_filter_freq(struct ad7192_state *st,
 
 	/* Formulas for filter at page 25 of the datasheet */
 	fadc = DIV_ROUND_CLOSEST(st->fclk,
-				 AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode));
+				 AD7192_SINC4_FILTER * AD7192_MODE_RATE(st->mode));
 	freq[0] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
 
 	fadc = DIV_ROUND_CLOSEST(st->fclk,
-				 AD7192_SYNC3_FILTER * AD7192_MODE_RATE(st->mode));
+				 AD7192_SINC3_FILTER * AD7192_MODE_RATE(st->mode));
 	freq[1] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
 
 	fadc = DIV_ROUND_CLOSEST(st->fclk, AD7192_MODE_RATE(st->mode));
@@ -576,25 +576,25 @@ static int ad7192_set_3db_filter_freq(struct ad7192_state *st,
 
 	switch (idx) {
 	case 0:
-		st->f_order = AD7192_SYNC4_FILTER;
+		st->f_order = AD7192_SINC4_FILTER;
 		st->mode &= ~AD7192_MODE_SINC3;
 
 		st->conf |= AD7192_CONF_CHOP;
 		break;
 	case 1:
-		st->f_order = AD7192_SYNC3_FILTER;
+		st->f_order = AD7192_SINC3_FILTER;
 		st->mode |= AD7192_MODE_SINC3;
 
 		st->conf |= AD7192_CONF_CHOP;
 		break;
 	case 2:
-		st->f_order = AD7192_NO_SYNC_FILTER;
+		st->f_order = AD7192_NO_SINC_FILTER;
 		st->mode &= ~AD7192_MODE_SINC3;
 
 		st->conf &= ~AD7192_CONF_CHOP;
 		break;
 	case 3:
-		st->f_order = AD7192_NO_SYNC_FILTER;
+		st->f_order = AD7192_NO_SINC_FILTER;
 		st->mode |= AD7192_MODE_SINC3;
 
 		st->conf &= ~AD7192_CONF_CHOP;
-- 
2.17.1



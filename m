X-GM-THRID: 6393357965121814528
X-Received: by 10.157.15.149 with SMTP id d21mr1608030otd.19.1488569650264;
        Fri, 03 Mar 2017 11:34:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls9272244otb.24.gmail; Fri, 03 Mar
 2017 11:34:09 -0800 (PST)
X-Received: by 10.157.60.52 with SMTP id q49mr1641522otc.108.1488569649801;
        Fri, 03 Mar 2017 11:34:09 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id u12si228988pfd.3.2017.03.03.11.34.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 11:34:09 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so13519199pgy.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 11:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+H8ZS4sQfo7FbO+wKRSFjbvfOFHH9VvVTBc0sXHBGq4=;
        b=V0jIPv4vDbdNjMIC23sgoEPLMokMhVeLpJONlQI1y5nwh26gPsg1KoJVsBUZKmDsRj
         dRgEYUjvyc0FrKNd1lDVmmtmiQGUE6aqWeSBtXFFQPVUWr2WN3U69yvd8ixhXzNbjoKA
         Ydj9aRcVzx+u8auoBG1zRuziLFojJHhlhrXy1ORSPkBH53oQ6mSbYupUnoiRMsC8o9FU
         kc7zYI9jsN5G1QSJkcrwWh1CXeJxu1BEOqVFOrr4DgNHVtWHVQobboSrGrQAeLhAmeAT
         amUBhcMURsaveFd9fZ/DNqklIWaZQxXpNaFr+EFtnV/kiY37aHwtj7dc6rSv+unRlGgJ
         4rcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+H8ZS4sQfo7FbO+wKRSFjbvfOFHH9VvVTBc0sXHBGq4=;
        b=fISKHWj2cp9UldPbJ5OX58G57oG5+2kBObRYm8ZsC2h0kNGUfoagxpiJrW6JZ2O4vj
         JlldZk0Nafq+R5yXpt3QwsbfCk1WHF1lK28/SLh2kAQ1VwLwwAVT+vLzWP98yzbqUYUu
         B6RHnFsGYIYFP7bSDsDO4DZJ8sLrRK3LXkaO9T5i+j2oWfulRE6xfRkZKwZQXldagkFG
         sQayqze2xQ02kcz0fB1RxN2McrDD330NjHemwxChCN3g9NnyMIFLcF5CvC7J2jd1FIx3
         11GbzPa7oj2GxiEBryoOQ9dRlXgeV5ZK1GYmDxnpcK/32RvtxSM5gHzGfmGJk3Gh66eq
         0rvw==
X-Gm-Message-State: AMke39lyFWYPsUXgDxjKsf39CsAoycimUwWkdqUedUZb6zgvbsD46V3JqpWHjOK6AUFnpw==
X-Received: by 10.84.248.79 with SMTP id e15mr6553438pln.133.1488569649573;
        Fri, 03 Mar 2017 11:34:09 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5508:2b2:841b:c6f4:fb42:37b7])
        by smtp.gmail.com with ESMTPSA id l22sm24913153pfk.69.2017.03.03.11.34.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 11:34:08 -0800 (PST)
Message-ID: <58b9c530.96c9620a.73b37.24bd@mx.google.com>
X-Google-Original-Message-ID: <20170303193404.GA20028@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 01:04:04 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 7/9] staging: media: atomisp: Use unsigned int instead of
 unsigned.
References: <cover.1488567772.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488567772.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Usage of unsigned int is preferred over unsigned and this patch fixes
the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 .../atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c | 6 +++---
 .../atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
index e8fab37..5ddf61f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
@@ -30,7 +30,7 @@ void
 ia_css_macc1_5_encode(
 	struct sh_css_isp_macc1_5_params *to,
 	const struct ia_css_macc1_5_config *from,
-	unsigned size)
+	unsigned int size)
 {
 	(void)size;
 	to->exp = from->exp;
@@ -40,7 +40,7 @@ void
 ia_css_macc1_5_vmem_encode(
 	struct sh_css_isp_macc1_5_vmem_params *params,
 	const struct ia_css_macc1_5_table *from,
-	unsigned size)
+	unsigned int size)
 {
 	unsigned int i, j, k, idx;
 	unsigned int idx_map[] = {
@@ -65,7 +65,7 @@ ia_css_macc1_5_vmem_encode(
 void
 ia_css_macc1_5_debug_dtrace(
 	const struct ia_css_macc1_5_config *config,
-	unsigned level)
+	unsigned int level)
 {
 	ia_css_debug_dtrace(level,
 		"config.exp=%d\n",
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h
index 8f0a78f..53ef18f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h
@@ -24,18 +24,18 @@ void
 ia_css_macc1_5_encode(
 	struct sh_css_isp_macc1_5_params *to,
 	const struct ia_css_macc1_5_config *from,
-	unsigned size);
+	unsigned int size);
 
 void
 ia_css_macc1_5_vmem_encode(
 	struct sh_css_isp_macc1_5_vmem_params *params,
 	const struct ia_css_macc1_5_table *from,
-	unsigned size);
+	unsigned int size);
 
 #ifndef IA_CSS_NO_DEBUG
 void
 ia_css_macc1_5_debug_dtrace(
 	const struct ia_css_macc1_5_config *config,
-	unsigned level);
+	unsigned int level);
 #endif
 #endif /* __IA_CSS_MACC1_5_HOST_H */
-- 
2.9.3



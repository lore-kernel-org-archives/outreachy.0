X-GM-THRID: 6393357965121814528
X-Received: by 10.157.40.138 with SMTP id s10mr3350717ota.97.1488648012549;
        Sat, 04 Mar 2017 09:20:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.49 with SMTP id o46ls1799882ota.35.gmail; Sat, 04 Mar
 2017 09:20:12 -0800 (PST)
X-Received: by 10.200.1.193 with SMTP id b1mr2710687qtg.82.1488648012223;
        Sat, 04 Mar 2017 09:20:12 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c123si593956pfa.4.2017.03.04.09.20.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:20:12 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x66so12944311pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:20:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0WHb7+IKZIkI56HkzriutKHK0XABn3UAuTVnggCsX00=;
        b=rmibzlnoTp1ywZ96JqrMCG/TV3padekTusZJDAHM5okrDS7VeA3NSgQubWsnuU6+yK
         FW9/4WuDDUWGS1i8vJwwz+ZqsygHACtjpAjMkK6nS9rQdvLtO+sgcyW5E4ps32Y10ao/
         QnE2VwhMHBVfCsuWVodAI3eILzhxKlmA/DnX+EA4D0B3AJWwNltWv5KQzFlJkkeS8ua5
         Yzf2rDjZQp9I2KHHarWLjCwLM0O8rebmwasG4KFINAj69szrxfOsjHOgV1zXdjYq4QSk
         3pHJUpV6AJHGu1cPxxwLIdjg9AaT+6IgCrsQxF5e5I3M+oYxg2VuBj33hzwEjFahR9gU
         asmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0WHb7+IKZIkI56HkzriutKHK0XABn3UAuTVnggCsX00=;
        b=G1NvuKtSa6fTs7FvZSCqjMRiITWGMZiazApYxD361GIrS4Ewkod71iw/bGXTX4s9DY
         ckidzepyjdI0W+kkL6MsM9BIxeEnrfqt7JJkpnN6uhzNt6Trp9J9gMmx3cTAOJnAnZr8
         xUumk8gqqXFXJKVOjybp2YmGwXuhE6ss2sLoRGRjc3ANBDimAEx5tih+/Rvs1rMjHRtL
         ToJoDOc4uMzVfKsqrwgqkAySMygnl9MgltWIX3V4t03rUq6Llcgup4o24301JizOxbWL
         OeZWN2xuzC1eSBWVN/J8PDplEFbLw1YMm07BwZZN6HnwpJ9wTzNZIM00aX7tM59jxWgu
         7HLQ==
X-Gm-Message-State: AMke39mDEVyQS1raKExa3Hf/NzsqKNf7xVAeMP65DUSbJIDHa36+CTUHH+xbFJqEW3Bc+w==
X-Received: by 10.99.149.66 with SMTP id t2mr10496616pgn.152.1488648011968;
        Sat, 04 Mar 2017 09:20:11 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([118.151.209.30])
        by smtp.gmail.com with ESMTPSA id 132sm13483793pgf.27.2017.03.04.09.20.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:20:11 -0800 (PST)
Message-ID: <58baf74b.8a05630a.66d4a.abc5@mx.google.com>
X-Google-Original-Message-ID: <20170304172007.GA5660@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 22:50:07 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 7/9] staging: media: atomisp: Use unsigned int instead of
 unsigned.
References: <cover.1488642821.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488642821.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Usage of unsigned int is preferred over unsigned and this patch fixes the
checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No changes.

Changes in v3:
- No changes.

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



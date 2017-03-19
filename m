X-GM-THRID: 6399180589235175424
X-Received: by 10.99.245.15 with SMTP id w15mr12887490pgh.63.1489927145266;
        Sun, 19 Mar 2017 05:39:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls12083270otb.17.gmail; Sun, 19 Mar
 2017 05:39:04 -0700 (PDT)
X-Received: by 10.157.2.209 with SMTP id 75mr4070316otl.72.1489927144922;
        Sun, 19 Mar 2017 05:39:04 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 190si745002pfv.3.2017.03.19.05.39.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:39:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p189so8238663pfp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 05:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IiQvos6UC2S6iG3ZZbcUl9pRWkP3gF51qIgHNFI/sX8=;
        b=MFRAJoYTpj9cHgiQYMqEx3qdfarGFkC9uVcH+EZCbGo+nwFggQ8U8/ooFocmsQrmul
         0RptWDTC1UPwablG09IZhRk3iDuTyYLk+dVmM2Z0MyW5sj++t2xnm4SRYRDHhIUVQ50v
         F9cBU3oCjAx79KFuYXCOCIPZWarE2+L0DrICxxQJAOoTur8d9IipxKgoCZ+mNhp4mnm5
         zGFbii2irnAQGMIKDvXtsDABzDGxXwuuR7Q1139faNYiHfx/1NkFEa9l8gT1+6QV48PZ
         aw2rXMvtHr92huUSNXABVpY+C51+NbDxUjpbqej0iFR8eIR3CeHdgdHfh8zVcHoJ+nUR
         2dYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IiQvos6UC2S6iG3ZZbcUl9pRWkP3gF51qIgHNFI/sX8=;
        b=R2gt18BBR33rOCBcK+DjIaw+X0x3voXGIJ7wpY1Lydh4T99/miPlvB9tCYmC9hpMsp
         a/zEaMSZ5luqhcYN93cY98l5hJ1dxuc0noBkpI0WZQvnrAg88vSxxpk/I3NYOLhLzW6q
         NlNhn6oMZzaFHFihgnz9qasHJ2z3bQHUWvKAc1c2djVbe7StDoX3M9eSWuO4adzKAfQc
         yVsoNmvIoYXfq9rsPmHm1NpSYggihpYu8Wni1eUGoYb150zM7esEHFQIlgoNRZgp6UUz
         EEBb19l1AGwFyr1UTms3RFMmpXmWxG15vhynpq/90QSpE7W1mV2x5o6F1civMjlPvZ1O
         gqzQ==
X-Gm-Message-State: AFeK/H2E9HgdximXcGWsI+p+OQ6GeiDFr/L1+lKDXz12QkUVigFXdKNV4oD7Jd17XFGamg==
X-Received: by 10.98.43.204 with SMTP id r195mr27153860pfr.96.1489927144701;
        Sun, 19 Mar 2017 05:39:04 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([157.49.4.219])
        by smtp.gmail.com with ESMTPSA id 73sm27226271pfh.56.2017.03.19.05.39.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 05:39:04 -0700 (PDT)
Message-ID: <58ce7be8.cc07620a.c3b79.704e@mx.google.com>
X-Google-Original-Message-ID: <20170319123624.GA8601@<rvarsha016@gmail.com>>
Date: Sun, 19 Mar 2017 18:06:24 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: media: atomisp: Remove unnecessary braces.
References: <cover.1489925957.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489925957.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Remove braces which are not required to fix the check patch issue. The
following coccinelle script is used to fix this issue.

@@
expression e,e1;
@@
if(e)
-{
 e1;
-}

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 .../pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c       | 3 +--
 .../pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c    | 3 +--
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c       | 3 +--
 3 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
index 5d58dc1..07bd24e 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
@@ -52,9 +52,8 @@ static int ctc2_slope(int y1, int y0, int x1, int x0)
 	assert(x1 > 0 && x1 <= max_slope);
 	assert(dx > 0);
 
-	if (dy < 0) {
+	if (dy < 0)
 		rounding = -rounding;
-	}
 	slope = (int) (dy_shift + rounding) / dx;
 
 	/*the slope must lie within the range
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
index f61bfab..955b6c8 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
@@ -97,9 +97,8 @@ compute_alpha(int sigma)
 		alpha = ((IA_CSS_XNR3_SIGMA_SCALE * XNR_ALPHA_SCALE_FACTOR) + offset)/ sigma;
 #endif
 
-		if (alpha > XNR_MAX_ALPHA) {
+		if (alpha > XNR_MAX_ALPHA)
 			alpha = XNR_MAX_ALPHA;
-		}
 	}
 
 	return alpha;
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
index 8bc1ca0..7e3893c 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
@@ -79,9 +79,8 @@ static bool ia_css_mipi_is_source_port_valid(struct ia_css_pipe *pipe,
 	if (ret) {
 		assert(port < max_ports);
 
-		if (port >= max_ports) {
+		if (port >= max_ports)
 			ret = false;
-		}
 	}
 
 	*pport = port;
-- 
2.9.3



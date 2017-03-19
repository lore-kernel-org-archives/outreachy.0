X-GM-THRID: 6399180589235175424
X-Received: by 10.129.51.208 with SMTP id z199mr11901135ywz.92.1489925335497;
        Sun, 19 Mar 2017 05:08:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.81.210 with SMTP id s201ls1564662ita.18.gmail; Sun, 19 Mar
 2017 05:08:55 -0700 (PDT)
X-Received: by 10.99.164.9 with SMTP id c9mr13633290pgf.4.1489925335025;
        Sun, 19 Mar 2017 05:08:55 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si2178383pfb.2.2017.03.19.05.08.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:08:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so15879314pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 05:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IiQvos6UC2S6iG3ZZbcUl9pRWkP3gF51qIgHNFI/sX8=;
        b=ahc2Fb6MKqwbnO2AACG+Vd2cgjdPTXXoLjwtY5yuquiv+mF99EXXatoKjLFjriwJ+e
         e794c7WOZi8DBgAEUwu5WqyJZbuOcr/G4JPDCmpDUtuFcneMRnpfMehst2xb6KRAH4AX
         vQMUjgmnGNXwi+LVXuC6YKHu5sjf8bTvgohO6b1aKyx3DW5n0DSLQHTtlRs3JS7ejY3F
         MuUcOXHx/is+TImzAm2bnfcc7J9ktXLaPcAP+XhgFNjlu3iTekM8frkAJ5ql4foStHmR
         fLZOKBfzq/UQKxT3MtILG9vom1DOpaXjimfboklhzHgsq56itgcP0LcL/g+TV7rEWRoi
         zcOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IiQvos6UC2S6iG3ZZbcUl9pRWkP3gF51qIgHNFI/sX8=;
        b=NECOnPlZTPqdWCTjHuTvq37vNg06NqyA4ECg3swL4wknsJZMh9QPwdyng5Rv2vyZQq
         ebxxfFr1vNsKl9nLiJDV4IoUDvrASy4b5YtTHO4Vbnx31wnBVcJ9X0pONUl7MyKGb92w
         puP11dA9MWi5bE56ougY3IqK/iBpe6U8nMiptTiErzrOsqYOpiq4LZxbdx/icM2bi3Dd
         JCjFKIVxv4rCNv7yNs8q9fAqQsFX9oxjil/vHSeeXjn3M45KvdlfArHp7OY/pMq/Pc+C
         C1Pz1m0iQNQvkn2eCa3KKNr5e6sFLK7kPOZyHXuYMqSixqI1yMtP3OrwXIGlDseLDpHo
         t9Xw==
X-Gm-Message-State: AFeK/H29TYAgPh97wYclo6IsuulhWto4T8a5ZKNER5QI5zgbD34MK7MyjvZx0KUSYPKR+Q==
X-Received: by 10.98.147.195 with SMTP id r64mr27179261pfk.207.1489925334823;
        Sun, 19 Mar 2017 05:08:54 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([118.151.209.30])
        by smtp.gmail.com with ESMTPSA id a8sm27122950pfa.30.2017.03.19.05.08.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 05:08:54 -0700 (PDT)
Message-ID: <58ce74d6.081a620a.caedd.6601@mx.google.com>
X-Google-Original-Message-ID: <20170319120828.GA8187@<rvarsha016@gmail.com>>
Date: Sun, 19 Mar 2017 17:38:28 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: media: atomisp: Remove unnecessary braces.
References: <cover.1489924542.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489924542.git.rvarsha016@gmail.com>
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



X-GM-THRID: 6250095097059213312
X-Received: by 10.67.7.1 with SMTP id cy1mr16371711pad.31.1455213664701;
        Thu, 11 Feb 2016 10:01:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.37 with SMTP id j37ls665603iod.32.gmail; Thu, 11 Feb
 2016 10:01:04 -0800 (PST)
X-Received: by 10.107.169.130 with SMTP id f2mr46306979ioj.10.1455213664387;
        Thu, 11 Feb 2016 10:01:04 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id v197si727988ywa.1.2016.02.11.10.01.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 10:01:04 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x233.google.com with SMTP id s68so21931668qkh.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 10:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BOqlTWyZTXtpQXFlZr/2HWA7GZqva32Mt+xD8IaGJgs=;
        b=g0ae+Lhk6Dx/zdMgKbn0jV8vpuUlIdeKeqWyIEGBhIJBcUhaOc9pnH8iKpTBNqyhak
         yeQ4CvE9XnpXEpSY8ajI9p9BYzIxOiq4x/Q8E/CK6Pg+ix7Taaqxgbcq2b/Uzdwj//ZA
         agEqOezecq/vVnehfmmQbqbmT09n2+fVT848BA/lAruz8XkRS+A9oKO/KQ/s7Ux1AaD6
         BaBHwzF3ecz3rQd35IJLo5P6HTHK9Xg0zcnyohDXzVIRXwod1T12PuNEFYFTqTqoTYxP
         527achcroUVBMdttkk/xY70pfT+R5pr2fex5S0aC/TWviHKDkGMKrmYKx2iom5nC++7F
         7c5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=BOqlTWyZTXtpQXFlZr/2HWA7GZqva32Mt+xD8IaGJgs=;
        b=kr+BS11iLg1QtzTc4AnL24I38/P+eC4jcNV3F1a9DNwe3Gel0VsLnfEzt6YSb4W64h
         PJy+XPA4ymLJhs9YnhCmIfrYZncIVLWLrxjPvvldRbDq9Jjwsa+LSc2RWrTZKAgDU14R
         XvU9jXfLYXoiRmuCnc5FlAXJl6BCMT1xVYxDO9/g0M2PZDazzu0sBWeYD9WUYxYc0tLU
         /xGjJfOFFiZWNv/RSY1jqS11KvbkVWclMPNBBSMbZ+r5lm5U2c1ffeJyms1LvAlvuI/w
         fpDILrAkwlnD/wO1+WpmeE6X1Xfvbzb2vLHV44eLdwwJwSF9LnIrsrEU9nliIvLLNByO
         l44g==
X-Gm-Message-State: AG10YORH1dyKlaPrZJz90ZrVyTXIzszReX4OOPqqlM787TeYyhlRdthyv7mVkpY1xCxS0g==
X-Received: by 10.55.74.209 with SMTP id x200mr57362923qka.106.1455213664228;
        Thu, 11 Feb 2016 10:01:04 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id t103sm3783573qgd.37.2016.02.11.10.01.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 10:01:03 -0800 (PST)
Date: Thu, 11 Feb 2016 18:00:25 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fsl-mc: Remove unneeded parentheses
Message-ID: <20160211230025.GA4949@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unneeded parentheses on the right hand side of assignment
statements.
Semantic patch:

@@
expression a, b, c;
@@

(
  a = (b == c)
|
  a = 
- (
  b
- )
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/fsl-mc/bus/dprc-driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fsl-mc/bus/dprc-driver.c b/drivers/staging/fsl-mc/bus/dprc-driver.c
index 52c6fce..9380ebc 100644
--- a/drivers/staging/fsl-mc/bus/dprc-driver.c
+++ b/drivers/staging/fsl-mc/bus/dprc-driver.c
@@ -129,7 +129,7 @@ static void check_plugged_state_change(struct fsl_mc_device *mc_dev,
 {
 	int error;
 	u32 plugged_flag_at_mc =
-			(obj_desc->state & DPRC_OBJ_STATE_PLUGGED);
+			obj_desc->state & DPRC_OBJ_STATE_PLUGGED;
 
 	if (plugged_flag_at_mc !=
 	    (mc_dev->obj_desc.state & DPRC_OBJ_STATE_PLUGGED)) {
-- 
2.5.0



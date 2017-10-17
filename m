X-GM-THRID: 6477993014183591936
X-Received: by 10.28.145.11 with SMTP id t11mr653861wmd.0.1508275283320;
        Tue, 17 Oct 2017 14:21:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.141 with SMTP id y13ls517889wmh.6.canary-gmail; Tue, 17
 Oct 2017 14:21:22 -0700 (PDT)
X-Received: by 10.28.47.197 with SMTP id v188mr568575wmv.23.1508275282336;
        Tue, 17 Oct 2017 14:21:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508275282; cv=none;
        d=google.com; s=arc-20160816;
        b=ug6ZAu2BnQPNUz6KFE4cjr1flCNjq6mRwTHQpdIgEt4yFZxeLa+MFJdcbYKRf1HK9e
         fiKNr8tDRVRNVMBsSGUyRfDug9rqfZouTz8HkWgALpPbE46mtNNw0J2iMPBHFHS/IsVd
         lmXxJ+CHNP9VKoX2zWMc0REAvHPPPKPIN+rrsWwrzuj1U5ExUPlSpqkLnNPgW+ryxPW0
         uE8b55mOIKfs6lZPHeonuU8aZI2AwsgD4OTSv8SgG9JR3mld0kOfYhN1WHGxzJOTwqxX
         4i+Wok3B9GZRqSMcxybo+RGPDTTjHDLzMH47sjkI1grcL1Ee+w9ttpo2RgQB3XV9mi2D
         ODRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=395b51jtQ6CzWo+eo5+ACbtpwnpOdecIE1NBGOKue7Y=;
        b=z7YeIv/4x/5pIQ83BXeKlEeE3Vs8kBPVytErxUmHgte9bk456WfQbPHf6Ul7Ve2Tlj
         z86hZ2rRPCwYGTjB9V84VZGQpUdMqd4X/dh3CzWGVzxy2fDjmrWuylA1zrEOsJxWhTqZ
         11jX9M/4KidWm0l6KJLLz6yUMDey3/m+M30dDcADdTqCEaun8IsXeYTjFkNRQLmmNBcA
         3/m7zQwuQ+yMF0BESH2iz8bEV0qG9VerIp0LHpWWSoqJeiUSfpCK+TzPptcCOLWsWsMw
         HkJm1R8Nl1ExkWtVSLF96xma/B/pBXF/Fd/Kp+ykjLjwCgnNg8RAsXKOODyTtbRnmt+N
         CePQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aZ3gs4wK;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::22c as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x22c.google.com (mail-wr0-x22c.google.com. [2a00:1450:400c:c0c::22c])
        by gmr-mx.google.com with ESMTPS id b8si371103wrf.5.2017.10.17.14.21.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 14:21:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::22c as permitted sender) client-ip=2a00:1450:400c:c0c::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aZ3gs4wK;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::22c as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x22c.google.com with SMTP id k62so3067073wrc.9
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=395b51jtQ6CzWo+eo5+ACbtpwnpOdecIE1NBGOKue7Y=;
        b=aZ3gs4wKGE/LI9SNlmwaOMYY0q/fv5r0yd1XmkLCaZSIJs4R1B8j2v62Enrtrdgb4z
         KP6WDDEm60EX6wHid8ergPiQYoGIIoVe+86H1i4/72ThahtnwcFzta2dE430ea+m4nlH
         Ij6fbgLJivanjHHxRgtgcQ8Mk1dGkLRdFfR9UVqA4XoYRiqQXGOMyKynSPsc0CmWRTF0
         KQfcQPncCYqSCmBW6ui1u9dd8UB2k242uefUn6Adux0gp57UNYy3ciBziz2mF053ElWJ
         28Y5W7dfGq1pipemc/a8z453PRp7B08LnQial516KPe63YYkBNvxBcUCSUSaG3Av5MIc
         Orzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=395b51jtQ6CzWo+eo5+ACbtpwnpOdecIE1NBGOKue7Y=;
        b=n48n4SYRJcHU6AwQFAiLIf7MggETUp0OcWwxfVMtPDAJtdFFxCSazURedU+/TifuBT
         dU2QozPIOIjuiASQqswrTWjNPDYiAdNehBoD64sj+0cGbCwgjw095N+AlTOzxc6lOcL2
         wyZdUS++3MkJCB2sLuHnBa+ZRvnmjDktT3fUgusAX3airR3PYuF+B65wBJAqyVMfiYvJ
         9wI1FjtNTyqz0NkpRHqlgZfqKalKkh/hxhfZ3h3MefbLJ2BsOoxpcEl6lXEbLV/shcs9
         JBF28XBr8W3F+kd+X6b62mIGX25qtq36ssN6BkGtAR2tH2E9KEmeao+0bfEFytPPG2ad
         A04g==
X-Gm-Message-State: AMCzsaWdycpjO2yCifAdcyydRYZVePBdeGcR6ZckVSEnChSwJ5xVk6Qi
	S6Z2LcV834rpJY6bGzKyqq0=
X-Google-Smtp-Source: ABhQp+S8ZWXJWayB52xQeYsAKLUfNziHy1ox9K5idnbn0FsS+D889KZ/1/6iLkL+/einWG4lkSbe5g==
X-Received: by 10.223.158.208 with SMTP id b16mr4305131wrf.99.1508275282056;
        Tue, 17 Oct 2017 14:21:22 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-79-238.residential.rdsnet.ro. [5.12.79.238])
        by smtp.gmail.com with ESMTPSA id c45sm11970787wrg.97.2017.10.17.14.21.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 14:21:21 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] Staging: media: atomisp: Remove duplicated argument to ||
Date: Wed, 18 Oct 2017 00:21:19 +0300
Message-Id: <20171017212119.12827-1-georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0

get_user() copies a variable from user space to kernel space
put_user() copies a variable from kenel space to user space.

Remove duplicated argument to || because consecutive calls of get_user
and put_user over the same arguments will have the same result. The output
of the code is the same. This patch just removes the duplicates.

Issue found by scripts/coccinelle/tests/doubletest.cocci script.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* changed the commit message to explain why the patch is needed

Here is the whole statement to better see the duplicates. The same
is for the put_user function.

if (!access_ok(VERIFY_READ, up, sizeof(struct atomisp_overlay32)) ||
get_user(frame, &up->frame) ||
get_user(kp->bg_y, &up->bg_y) ||
get_user(kp->bg_u, &up->bg_u) ||
get_user(kp->bg_v, &up->bg_v) ||
get_user(kp->blend_input_perc_y, &up->blend_input_perc_y) ||
get_user(kp->blend_input_perc_u, &up->blend_input_perc_u) ||
get_user(kp->blend_input_perc_v, &up->blend_input_perc_v) ||
get_user(kp->blend_overlay_perc_y, &up->blend_overlay_perc_y) ||
get_user(kp->blend_overlay_perc_u, &up->blend_overlay_perc_u) ||
get_user(kp->blend_overlay_perc_v, &up->blend_overlay_perc_v) ||
get_user(kp->blend_overlay_perc_u, &up->blend_overlay_perc_u) ||
get_user(kp->overlay_start_x, &up->overlay_start_y)) {...}  

 drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
index 0592ac1f2832..a27ecbe89b57 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
@@ -432,8 +432,6 @@ static int get_atomisp_overlay32(struct atomisp_overlay *kp,
 				&up->blend_overlay_perc_u) ||
 		get_user(kp->blend_overlay_perc_v,
 				&up->blend_overlay_perc_v) ||
-		get_user(kp->blend_overlay_perc_u,
-				&up->blend_overlay_perc_u) ||
 		get_user(kp->overlay_start_x, &up->overlay_start_y))
 			return -EFAULT;
 
@@ -460,8 +458,6 @@ static int put_atomisp_overlay32(struct atomisp_overlay *kp,
 				&up->blend_overlay_perc_u) ||
 		put_user(kp->blend_overlay_perc_v,
 				&up->blend_overlay_perc_v) ||
-		put_user(kp->blend_overlay_perc_u,
-				&up->blend_overlay_perc_u) ||
 		put_user(kp->overlay_start_x, &up->overlay_start_y))
 			return -EFAULT;
 
-- 
2.11.0



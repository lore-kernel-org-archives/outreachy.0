X-GM-THRID: 6468561252741283840
X-Received: by 10.25.77.17 with SMTP id a17mr829068lfb.21.1506079279218;
        Fri, 22 Sep 2017 04:21:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.138 with SMTP id v132ls717244lfa.5.gmail; Fri, 22 Sep
 2017 04:21:17 -0700 (PDT)
X-Received: by 10.46.77.73 with SMTP id a70mr1053400ljb.40.1506079277875;
        Fri, 22 Sep 2017 04:21:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506079277; cv=none;
        d=google.com; s=arc-20160816;
        b=fiJ2UQiQJN9HbPTZw/GqIp6P+ZokTat+hrI7SIBDEj2S9ycxkglG3dZq6H4zL/W3UT
         ozzSlRqwsv/fcyNv4A3tGx4d8HGA+P77KuTn0R4lMOgHNjHYB0vy/oR+/SW1PXsDitpn
         ybncrm8nIQ486hB8HrYneh+C84CWkneRh0ksxfmjCcu5KGql/0wWiHPW7ZBadzAkPudN
         80yEJtGyE82Ag4WIyXsLqhccJVUZLc2dVNaA+nAr2AVIUV3p5J2hDlKwFiy/4JbVRaAN
         H9W49zv2NxZUgXmgmfdGvUe0R4v1nf50c3HoqxlBVZZx3IvVpL1RKuRLktln3GLJpA/f
         ynrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=B9pTWEjqphZSdz8F8EKmlmWvK0jkbFZxzmKafLzhYd4=;
        b=u49lsw5aCqI46835wOLZDWzuo0DCkqdI4x0Ui8omEDqz5QqUUw/r/qlCPLXiNYVTzU
         /IGqCrCrTyNXJW8Pn3d1OEaY1LQ2Hhm0Y0sxGF7eDfvnR2jhxD3Wpe2fEuXfBZWsWGCP
         +nRU+F3GEXn9tbjt12jHmWQcahMuQKBEH4Lp86VeIg+kYbqHPSfqmb1o+TzX4Ux2JUQj
         Gok+Nub7+uWVNz5Wv/c+8tzBEQED7gq/I9NR1ztZdAWLfWAzsRnu217aDf9sxN4g9ZMm
         TTwKAgzXTSRhjkFdvLbcE3/msAHeXGGd+w46NLwlq8k094YFH8uLqjnUYUxcikjZGb7e
         Vu5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vJ92nL7S;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id b203si212194wmh.4.2017.09.22.04.21.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 04:21:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vJ92nL7S;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id p37so480154wrb.5
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 04:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=B9pTWEjqphZSdz8F8EKmlmWvK0jkbFZxzmKafLzhYd4=;
        b=vJ92nL7SNVTjiyturDtEtA9lF3qzzOc12TN7VOlN8As8E48RF6TFt3FRTN6NCdwujh
         RgzlZotpXKiKSq/Js0X5GEwsY20HtjLQa2nr0iSsgkdR7Juf99AwQZxrGEvQST5UycpF
         Ro07VCvAUP1jSm/z0XbX0eOv6nTtuHh1TdgKrPcUBYGSap0cS/9YqpOdAomEiGHLVE/m
         AAeOBj/L+D7y+X0R+3dQUy+EhFwOnz49S5ZC0Ek82BZsY+8EgjSUMyhMIxVRA846ThIn
         SG+lRLPWm0uzsbxoMbQvNrs8Tai+ot1iQuh/5RSqHiP8nN0+5cX56Wp0xYhANALXHY06
         VMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=B9pTWEjqphZSdz8F8EKmlmWvK0jkbFZxzmKafLzhYd4=;
        b=CJQM6oM+HzXQGr9Ir3u/45Hkl0ZIh9nJosfvsnIRZGO4TOQ9P5HpX4n8ZA48HeCuDP
         PABT+E9hU/Elhnbexu+uPuiGSqWIRpV8n2O079vL/f7MSm31ELHyLxz7CyF5F/5oQ8bC
         EIymXsykjqqzXj2JD76YURAiqTJf3WES6viozSy2pHnvAJr4YsQRs+ekIgrkuEQtRRZF
         SNDL9f9als7wGz1rxeQPM3RrfkPMim+EELnUxudy/cpwcx+x64EaOsLKnUyfahR1aB7M
         rn7Oh2FbByYBso5SLZP6b+fEQU80+8P5NXMm4nrOcYWgVOUkcOm7auTf0fDkezFolEp5
         aAkA==
X-Gm-Message-State: AHPjjUgQ5au6GIWIMNPKaNmug5UN9gfpFEhvhzbFUbYug21IDn8XOW6a
	k3WfSEIIj7xj+Ix82Em5o18=
X-Google-Smtp-Source: AOwi7QAWC2mmYuIRlpOTwQn+RfDRse/mPkxWO4qXOS8+yKsMpUPgr9U17qyWfVmVLoXcWhN4auWjtw==
X-Received: by 10.223.135.66 with SMTP id 2mr4485994wrz.208.1506079277524;
        Fri, 22 Sep 2017 04:21:17 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id o59sm4966421wrc.45.2017.09.22.04.21.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Sep 2017 04:21:16 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: media: atomisp: Remove duplicated argument to ||
Date: Fri, 22 Sep 2017 04:20:55 -0700
Message-Id: <1506079255-127380-1-git-send-email-georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4

get_user() copies a variable from user space to kernel space
put_user() copies a variable from kenel space to user space.

Remove duplicated argument to || because consecutive calls
of these functions with the same arguments will have the same
result.

Issue found by coccinelle script.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
index 0592ac1..a27ecbe 100644
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
2.7.4



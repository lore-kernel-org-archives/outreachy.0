X-GM-THRID: 6534657346534113280
X-Received: by 10.159.54.111 with SMTP id s44mr5567156uad.29.1521468476842;
        Mon, 19 Mar 2018 07:07:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.182.65 with SMTP id g62ls7249985vkf.10.gmail; Mon, 19 Mar
 2018 07:07:55 -0700 (PDT)
X-Google-Smtp-Source: AG47ELv+ufUPFEjbJHxAxBM19iBtpbps2DjZOa9GzhOqmdlSM5st7iT47hvb8SYgA5IYNh/wn6tz
X-Received: by 10.31.160.202 with SMTP id j193mr1946089vke.58.1521468475646;
        Mon, 19 Mar 2018 07:07:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521468475; cv=none;
        d=google.com; s=arc-20160816;
        b=ZBnRuDhbnz+nD4VhI9vMxYGR0eGPhawKfaxoPHW7GI47J074J5Luzyf2rshbuRjzFj
         rRrO4/Q+IC4Qepscgl5EHCstOIz2shUDW4gkTwlh39UVHkr9iMkX0fh6xTvUUCX/dQiR
         m+d2+Bn0KQIMYLLGz9Si2xKJpXfKp2leZkB6Z24YSCCAMFNMvIvA3lIULLq7Oh/doDmI
         keYhNz7udvZMhZ1hvLC0dfSz3q+J3XQaAa5sFxZRYSDpacQDMoW0gpzvMRYweaeHdzPK
         84nwSJCC6ogzHW+Z2klcPXRyIPvjqHTaVh5ztNScjb4War0bDTGRnazugRT+AdV7mUNZ
         FY6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=EiZyE6I3+XWR8VRhAJHThoZMnIxtP93EJwVG/5v3irE=;
        b=wXAMJ8r84ZQSv6/QoSLubXvULel1MBojLQ5a2iajcKYxIvzE7dx1nWxtQmeZ4C96M1
         og6t9nL/wMaIuW5YlSAlr2zb2wMGWJO4RmzAYTozy+ftOIi28Z3NPx0yfnO041gtpV7/
         wu/qo+cu+0YPRud6MKMTB3mSIl5G+QwUYLfjON2xs0Q4kwlRYfJStlo7LYh0yxXfqxsl
         8W/6is+/cgJGN0LBKLDDBBGoYKPvOXrniWTT4IJgyUDd/GsEwqpoJ9i7Z6NYwqUKYxh5
         9yy2Ugcs5lrDit6PKQE5P1h0/SnlMiSKtIxsmfBck2xt7903UyYGntU9N3Mbvx6VbRe8
         wNBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Zx65W1pE;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id q126si10435vkf.1.2018.03.19.07.07.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 07:07:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Zx65W1pE;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x241.google.com with SMTP id n15-v6so2538094plp.12
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 07:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=EiZyE6I3+XWR8VRhAJHThoZMnIxtP93EJwVG/5v3irE=;
        b=Zx65W1pE9gjGAeC1zuZpohDRdWVXM46LyusHFvla4yYXqwwJkzkq1eW914malB5xRw
         Jq4McZtBrUdgIJGJGM+qsG1uRrLU2iJjMyNwuYE5hjHqt3RYkBYkZVMqTuzSmBYP3bVi
         spIfNBzB3rFfEWJab/3UKfZMjN4sooaGvXYD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EiZyE6I3+XWR8VRhAJHThoZMnIxtP93EJwVG/5v3irE=;
        b=LYZWLd4TiJFCmzQ8tTWBOxa8WjwuL7NmJphccs/poWlGMZ8jwiG+C9HTBmN4sV+bR2
         hIunrHR52Z9xUEYhZZCEI7NlHPnjI41q9nQTLih801A+WjfpJd4pVbX4MuMFjiIk8GkL
         iE7g3kbaA//fTy43Ih/6eFBAfLWUE2Dx8n9j7SB7PEv+qd92130KJbTyx97YA35JUjll
         Qn0toV38T/nk+myrUJjzb4PTR73c8Fb7YHr1YLX+NMemK7ZZWWPIs1no8EFdIk+V39YB
         ykaqYkCo9hgjv3L0+XlEz+ZidPqn5kVcYeJ9dwQUAIyn96TkjmaeSaK5oIEwhO9WpnSx
         ufUA==
X-Gm-Message-State: AElRT7Ep7Y2be6TymcSfw4dvYN81j8XY42sO41rEZ+XOD8kYPp+FltBq
	MvHAwbZGlvA2BYlrQWA21LruyQ==
X-Received: by 2002:a17:902:d202:: with SMTP id t2-v6mr12909750ply.216.1521468474611;
        Mon, 19 Mar 2018 07:07:54 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id t87sm254485pfi.37.2018.03.19.07.07.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Mar 2018 07:07:53 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging:vc04_services:bcm2835-camera:controls.c: Fix multiple line dereference
Date: Mon, 19 Mar 2018 14:07:42 +0000
Message-Id: <1521468462-28073-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Fix multiple line dereference. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index cff7b1e..bae7f2e 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1194,6 +1194,8 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
 {
 	struct mmal_parameter_fps_range fps_range;
 	int ret;
+	int mcc = MMAL_COMPONENT_CAMERA;
+	int mcpp = MMAL_CAMERA_PORT_PREVIEW;
 
 	if ((dev->exposure_mode_active != MMAL_PARAM_EXPOSUREMODE_OFF) &&
 	    (dev->exp_auto_priority)) {
@@ -1220,8 +1222,7 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
 		 fps_range.fps_high.den);
 
 	ret = vchiq_mmal_port_parameter_set(dev->instance,
-					    &dev->component[MMAL_COMPONENT_CAMERA]->
-					    output[MMAL_CAMERA_PORT_PREVIEW],
+					    &dev->component[mcc]->output[mcpp],
 					    MMAL_PARAMETER_FPS_RANGE,
 					    &fps_range, sizeof(fps_range));
 	ret += vchiq_mmal_port_parameter_set(dev->instance,
-- 
2.7.4



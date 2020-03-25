X-GM-THRID: 6807140134242222080
X-Received: by 2002:ab0:2253:: with SMTP id z19mr4036789uan.92.1585169835164;
        Wed, 25 Mar 2020 13:57:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ed4b:: with SMTP id m11ls428582vsp.1.gmail; Wed, 25 Mar
 2020 13:57:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuDF6kKr1XW/w61yUy7KzVsoaJrdR11q7H65pKh4ON0m8GzHsPgy8qMkL+i/OY3cACmrYYh
X-Received: by 2002:a67:7d03:: with SMTP id y3mr4162384vsc.129.1585169833975;
        Wed, 25 Mar 2020 13:57:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585169833; cv=none;
        d=google.com; s=arc-20160816;
        b=blkOVx0PMnxin8bVlNqqnExS4qSli07HxuYnOuTT+67l/Uelj42pNMkgfpomais/Nb
         9SjNrnrOT/4Lw04QNypBcfpLM8KQt2VCUdbVgw033Ef3XatNhrm0ANH2JX+JYh+F+2nh
         NBZrFkGfpTkYhMK994ej2lgkeLxIU3NxIVKZlof3wE71MSaqeu/M9h/u1GL42ztmaAP2
         VY6IXMoah2DcDc1lT4QPgzsCVWGu6u89BvJgudy9kIWpPV+AhcKpZ79ooE7rEk95LLyO
         Mj/N/wV4uT1b5yTVVw2/UduoNQ2dvOGBM3+wZ4LCUSiqn3vHxWfRuIN+7oT++EeO9mc+
         KXgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=g8PMREI45krrfKGXVv90/j3U7ZUWFxhnJ91n7OAeL7o=;
        b=DvxIKZfQfvu7RY2f9PPu14UlQ1KM7gRSbg8wDihg/A18ljwtWdOHUCHztX5/xtusgU
         zEdgoajHLHlRSIAe3sCbHdz3cgBW+/zTT0wVNqikz5lKlVffux3v18X71gPYEN/rAjDC
         h4aaI3y1NYsjq49Qn8lRvx9b3mh0rOzPOroXKRE47TbM7efrIN3Ks0bizfGDEmhyHFGf
         r+wz8ltShFM06hkHvBPkEZSP16MZjjl1JDD88NwUBercUvLU2TLCBbp4mskZO5L5HcAe
         /bOWEX+ZwoLJR3SiBREagGX61eqExjbkRlHCFetzhbNxicRCl3KKIBNuBAQAJW8EzrdC
         d1JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j1dV94+Y;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id s124si18371vka.1.2020.03.25.13.57.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 13:57:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j1dV94+Y;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id np9so1549910pjb.4
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 13:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=g8PMREI45krrfKGXVv90/j3U7ZUWFxhnJ91n7OAeL7o=;
        b=j1dV94+YwpQvRWCXHU6PrOPRHgkUIVMFl5RRTSA+ulI86iK9DssyBjbH7t2pj6/K9J
         scXDEwrxuVdirmoD6KA4BDsCxjX8+da639Vtp0PC4/7yPlfkBwWwqkD6r3UptDJrFcxf
         pKzE4onqzApyYbcIWJVjXzDV8BdRNA/W/I8SyoUm3Hp5QVpUL7XEBdAAFqXSozMPqYNK
         VuvAIC8r+yVkEQRTfQttysAdkcRqIFlgt479FK9YwjKOOG6Wln7jFCg0V28cXC5uznwZ
         M90V+q76Ss6SPGymfwlH5rMKR+VIgI393xVjrk9Zeal0z8qW0AXqKIZhZR7AFiZ9Y1zb
         8s5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=g8PMREI45krrfKGXVv90/j3U7ZUWFxhnJ91n7OAeL7o=;
        b=A0Zrl8W5oDJoZrEc4YPkCRLMknRPpkZ3aGCa3rFdb6xEQrGHe80je3knRKW3sRyoBJ
         MS4UefwWHCUap5ztDWMKxBig8LBgSMYNQB+FxF1JMGMaDskczKgwg3YLRNfIO5fzCqj+
         p/rp6CvER6o59tNMIiLEn3LgitAdF/4dReJOvduHDrgv2RFqFQy+/ja7v1U1yXXxCncf
         phhl4BpIgUIvu8O/9J3Li00JnmdX/sBpnYYTdk9QqHIPxkg9coafdCFkNlQW7zkdjw51
         gXcH6U4kbsPn04HgM1RicviRObx2j7GGm/5FR8pmY8cg9Kfpzkfn3QOLKXOb8vjO2/3G
         1H+g==
X-Gm-Message-State: ANhLgQ3q3DuTRTA7bUULzzn2KVJxI3XpMiFB/0oxumZdZ+uSxIhKYLnc
	h8Jctb9XsUDTJRN7wNr8Z3e7ywBx
X-Received: by 2002:a17:902:7201:: with SMTP id ba1mr5089296plb.198.1585169832879;
        Wed, 25 Mar 2020 13:57:12 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.248])
        by smtp.gmail.com with ESMTPSA id i20sm39894pfd.89.2020.03.25.13.57.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 25 Mar 2020 13:57:12 -0700 (PDT)
Date: Thu, 26 Mar 2020 02:26:44 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org
Subject: [PATCH] media: staging/intel-ipu3: Remove extra blank lines
Message-ID: <20200325205632.GA31257@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove extra blank lines from the code blocks.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

---
NOTE: Resending patch to linux-media list as suggested by Sakari Ailus.
No changes since last version.

 drivers/staging/media/ipu3/ipu3-v4l2.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
index 097c10d9da2a..e8f33539a217 100644
--- a/drivers/staging/media/ipu3/ipu3-v4l2.c
+++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
@@ -152,7 +152,6 @@ static int imgu_subdev_set_fmt(struct v4l2_subdev *sd,
 	struct imgu_v4l2_subdev *imgu_sd = container_of(sd,
 							struct imgu_v4l2_subdev,
 							subdev);
-
 	struct v4l2_mbus_framefmt *mf;
 	u32 pad = fmt->pad;
 	unsigned int pipe = imgu_sd->pipe;
@@ -485,7 +484,6 @@ static int imgu_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
 	if (r < 0)
 		goto fail_return_bufs;
 
-
 	if (!imgu_all_nodes_streaming(imgu, node))
 		return 0;
 
-- 
2.17.1



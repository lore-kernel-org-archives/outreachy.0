X-GM-THRID: 6470525432105009152
X-Received: by 10.99.171.4 with SMTP id p4mr900507pgf.117.1507591142377;
        Mon, 09 Oct 2017 16:19:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.93.142 with SMTP id n14ls1681937pfj.9.gmail; Mon, 09 Oct
 2017 16:19:01 -0700 (PDT)
X-Received: by 10.99.67.131 with SMTP id q125mr552383pga.2.1507591141385;
        Mon, 09 Oct 2017 16:19:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507591141; cv=none;
        d=google.com; s=arc-20160816;
        b=ryrEMTdCLT5eZ2YPDRtxqOMzOboxX9kqiOIlV7QvHrZb88LsrCs8AwTM5FDdn4Oopp
         aey9PsFRFMr3A1RRs1QpDVmOuGSQSQRMsukesPfCCmdDBpXiu0mXycDwCCl8KzNyliEr
         MBwdeTDhVKVNUuISMPyTypfetyFdQsLRNuOqfXz7GwhqTExBp5JrXR3AI3RNotKE7SWV
         2fNnW6/8eNMb9/zc5Mpvg1+PsdaPdqowRosgq/jDyMgy/0DxPBvb+hTjIRrV1L3ZkmYT
         svkq6UauiP0zKBEEWiT3t3seCr9QmWfVE5xrj49grQDGZsqown0lgsX+Yq1mxhbQTJpo
         JxOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=qvWvfyG7Q7rfTQPRmzaMmm6GvMKM7viIlxziYEv9I6Y=;
        b=IshNs/xesrqjqgiJ8XxGNdaNd26XkEBFsorj3/XkrqNcRCCnIQYrU0F6SzZ7xbcpu4
         NRDDOJ7oGbYqoOTfHcemMOZ9NVXi7Ry1EQflMoDD7VakzieO+qKyMVfmbqTBl9H7/g9U
         H97GM1om30rjSQB1lQbNNpmaqaYsSaXVczBuQd/KogvcidaHiWud98NVx3gSH/QpgZZT
         dLYX2vJ8v+wZcQXkg9KZzeIL09+W0hpFzJL2HsCFR6SqgjzhPBSdBvXaVNN/zQOJqOzz
         smhF6M2TELMDIL+IDMq13Gh5uOiqyGvKXaWVjMwzSo2hhZyy94zJ/i2UwNtsyv8nUX5v
         bw4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m17yIYH6;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id e80si1083960pfb.8.2017.10.09.16.19.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 16:19:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m17yIYH6;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id m28so30924266pfi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Oct 2017 16:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qvWvfyG7Q7rfTQPRmzaMmm6GvMKM7viIlxziYEv9I6Y=;
        b=m17yIYH6HFEtnKQjuvlylVf8uApQof8XYIFcy/t5z7PQnpdZlp0aJHxjHBTkMgrCn3
         oGctg4k3ztGj8ZGOCTwJC0/yJWHnV+yo6bBtIcpaFetazT939oawSex6MwmyrH6Tgcx5
         gN3gBJUls3tzEX2aRhVA86lJ7mfw8CIc8v08yudGSOX/oCms19RQNIrOy/t1pTGbK6mK
         15z3yC5QGQnjku0wiAd0Wn2UXASz7YKy2g1rmdye5WImj8upxr6rbwJesnsjfRaP+OMS
         aK2oIq4KnDwNxPMbqtoCf0CCythtE/d+uqyrnxXvLYnOsIbcVq+EqAFcDFYPfI3p16C5
         IWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qvWvfyG7Q7rfTQPRmzaMmm6GvMKM7viIlxziYEv9I6Y=;
        b=LKdWSWlOtrzVyt8cRHJxFhfT97VL9TUQ9r/nNqJWW0JUulnyQLWqzX4UC6jbxbZ7ih
         0bSYV5m74hRPHnFnrcuviy0R2NasGJ53cwe4gyD9UqD7u7vZbrVQuuAjdiWScY9x+8LQ
         xwndBcWWn3KdQA93rXLzkuTBe0SCKKnbbPq3P9WbNlNZIN25vjQzrN445gwaUJRNTRTH
         C3Qtst/aSOOEKhVYYFxSQpEe4Ha17e3Cs1WqHYeTzzFdilVjM7C8sof55xP5ywXvv60I
         LCHkgDeBV3I9eaaY2qTDDud6hTVKgA1q/0GWuQRcn4R2Xl3f7AVwBfev+vt7zJfE7o8B
         Y7jw==
X-Gm-Message-State: AMCzsaWDVqgO4Gh4JNeytjSCNXeodVGMEcLyexKg7U2LbRz/aKAWAkjJ
	Uk4B7ossY07RUHweoaw7p95TkXFP
X-Google-Smtp-Source: AOwi7QDUHA/QbuW8KbVEDH9/5xh/G83I3AXsdmChXERCNOyzS2Zk+2uteFx3Tfy4FHiWliT0iXmfXw==
X-Received: by 10.99.113.72 with SMTP id b8mr10643452pgn.422.1507591141082;
        Mon, 09 Oct 2017 16:19:01 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id d27sm18322977pfb.121.2017.10.09.16.18.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 16:19:00 -0700 (PDT)
Date: Mon, 9 Oct 2017 17:18:57 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Sean Paul <seanpaul@chromium.org>
Cc: dri-devel@lists.freedesktop.org, Mark Yao <mark.yao@rock-chips.com>,
	David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH] drm/rockchip: Rely on the default best_encoder() behavior
Message-ID: <20171009231857.GA19241@Haneen>
References: <20170927182317.GA8249@Haneen>
 <20170927200621.txav576zblby3i2z@art_vandelay>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170927200621.txav576zblby3i2z@art_vandelay>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 27, 2017 at 04:06:21PM -0400, Sean Paul wrote:
> On Wed, Sep 27, 2017 at 12:23:17PM -0600, Haneen Mohammed wrote:
> > Since the output has 1:1 relationship between connectors and encoders,
> > and the driver is relying on the atomic helpers, remove the custom
> > best_encoder() and let the core call drm_atomic_helper_best_encoder().
> > 
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> 
> Thanks for the patch, I've applied it to drm-misc-next.
> 
> I noticed a few instances of .best_encoder = drm_atomic_helper_best_encoder
> hanging around. Any interest in removing those as well?
> 
> Sean
> 
> 

I have found three instances, the one in bridge/synopsys/sw-hdmi.c I
checked and the log msg of commit c2a441fe8f7 mentioned that an explicit
assginment to the best_encoder is needed because the bridge is compatible
with both atomic and non-atomic devices.

I suspect this is the same case for vmwgfx/vmwgfx_/ldu/scrn/stdu.c from
checking commit d947d1b71.

Lastly, there is an instance in tinydrm/core/tinydrm-pipe.c but I am not
sure how to verify if the driver supports atomic and non-atomic devices
as well, hence justify deleting it. 

- Haneen

> > ---
> >  drivers/gpu/drm/rockchip/cdn-dp-core.c | 9 ---------
> >  1 file changed, 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> > index a57da05..275844d 100644
> > --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> > +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> > @@ -287,14 +287,6 @@ static int cdn_dp_connector_get_modes(struct drm_connector *connector)
> >  	return ret;
> >  }
> >  
> > -static struct drm_encoder *
> > -cdn_dp_connector_best_encoder(struct drm_connector *connector)
> > -{
> > -	struct cdn_dp_device *dp = connector_to_dp(connector);
> > -
> > -	return &dp->encoder;
> > -}
> > -
> >  static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
> >  				       struct drm_display_mode *mode)
> >  {
> > @@ -346,7 +338,6 @@ static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
> >  
> >  static struct drm_connector_helper_funcs cdn_dp_connector_helper_funcs = {
> >  	.get_modes = cdn_dp_connector_get_modes,
> > -	.best_encoder = cdn_dp_connector_best_encoder,
> >  	.mode_valid = cdn_dp_connector_mode_valid,
> >  };
> >  
> > -- 
> > 2.7.4
> > 
> 
> -- 
> Sean Paul, Software Engineer, Google / Chromium OS


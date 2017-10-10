X-GM-THRID: 6470525432105009152
X-Received: by 10.28.230.79 with SMTP id d76mr1514123wmh.12.1507626400978;
        Tue, 10 Oct 2017 02:06:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.141.129 with SMTP id o1ls686195wrb.0.gmail; Tue, 10 Oct
 2017 02:06:40 -0700 (PDT)
X-Received: by 10.28.238.220 with SMTP id j89mr1459768wmi.6.1507626400078;
        Tue, 10 Oct 2017 02:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507626400; cv=none;
        d=google.com; s=arc-20160816;
        b=y2qBtjFglJrnFbBBvjJOTR3hgt9DIIpsZQcisgfLzueYSxM8kxAVqHk7lb0N4XBlZt
         RItcaIcmxW4aee8jLknD07jiyvDM0GLapm+7t+FFA5rnRR6gibJ71wxKUkXpqEPIN01W
         2tRBu3E1dsqeG8ow9xBWmqEmkX5wC+sIszach+oIxPbvarTsSncD/S8G4q4GvBV+FyUO
         8gfO/F2nlKTRXuT2+mgkanS9TK9u3E0M+9XcNBdZ2Vb9hjyJnQ1nTRON+Xpep3Eahwo+
         7NkETRLU0fWeYmuCOVwr5JQw3OeURVwAyJ/FtFH9wQnl5rWWCR0O+HwNOzg8xHsisPgg
         8DPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=5a0ovjqLkUvzCX9bCqzvGMQfh9XRv9TNnP9zc9CVTGA=;
        b=aryN9mdJ8CO0LQQX+bgQUvloB7153wWXZpsctP6ay6SunsaudxcrIY9eyE4pmFZ+4t
         4OWtDOntPYuLPDv36YaZIkXoC0VmGeTpdpILMETShkTD8ThfOqSKX+gz6XTank7uNY5V
         50kS1d7ORUZDW0sVmdV45QKyVv9CWGt76VkJhLc5P5z2ihW8Ks1UuJEjS35UkdSV72Pi
         7QEkd762ZZd8Co/5lT/5sTXzSDY/8QKfCX+IR4oIZpv1Q4uCwNc8cDwzXnJ1bql5cbJn
         x/YB2/wP0y5KBEAroka5KtSp3DLnLQ7xgzit9NrwzUnfgLmO/Jgtm97ugjeWEADPUpOB
         1/xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=E0LYijxT;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id y145si1068021wmd.3.2017.10.10.02.06.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Oct 2017 02:06:40 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=E0LYijxT;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x242.google.com with SMTP id l10so21555129wmg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Oct 2017 02:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5a0ovjqLkUvzCX9bCqzvGMQfh9XRv9TNnP9zc9CVTGA=;
        b=E0LYijxTiHTpHdvIGlPOw+XMufsCdEAnI+KAYhAGU+fMiX2l6fNXnZ+gjHup3w00pZ
         /g0Rb2rfTBcYFmOmTN7DZhX5cD8rUPRy/32rYkizavxNG1O0Toe/rC60apBN/861U4XB
         u+DOfou67zCULsdFUNCT05G3mNj2K4CL7MGN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=5a0ovjqLkUvzCX9bCqzvGMQfh9XRv9TNnP9zc9CVTGA=;
        b=GFt8fwp/0gEo/8g6h4maOrPwgds/rrhZQecVxlaUd4LsKWbQi4oRqY5QaqEyBD2im/
         DzrRqLewt8++9qSbB+nKgpW3a9xVB2zsdJUk/ONbs0080YY5AWux3rFpXmYwqj9Yz8tU
         KEOUGOIKUCqJkFYyfIMMkwZ7P5eZdhV+frSxFbD91DnJPn+Gy9LZQM4WGFo+m384N623
         f8h9n9NLNW+V+5CwMMi2fsTaBQn2pTlnVwVW5mo5SPPLMg2iD6W0tgJl8Mg3zfc35faU
         KESTvYhwGrOUk1UYiOYLY2pxs5c3/ZN8rdtMoMXsrMtScUg/lU+zJyN3KUFwaxAhJhGz
         2QFw==
X-Gm-Message-State: AMCzsaWy/HAHnQ744A4Iha9TlNKP4BBPYyBeC6Iou669qIdLxgpjAZ0N
	3MZ6vHjWxs3+H9BQFrG9Fpo+gw==
X-Google-Smtp-Source: AOwi7QDO3+4CpqBnKySJOGy7eqd7lMaOhGEc5anvRLE0lO5Gm+sOHpdJImg/0S9wwXPWWtJzoS45Eg==
X-Received: by 10.80.163.183 with SMTP id s52mr16009596edb.302.1507626399730;
        Tue, 10 Oct 2017 02:06:39 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id i10sm8412940edl.34.2017.10.10.02.06.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Oct 2017 02:06:38 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 10 Oct 2017 11:06:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org,
	Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>,
	Heiko Stuebner <heiko@sntech.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH] drm/rockchip: Rely on the default best_encoder() behavior
Message-ID: <20171010090636.eewb6zmil2bx4ivi@phenom.ffwll.local>
References: <20170927182317.GA8249@Haneen>
 <20170927200621.txav576zblby3i2z@art_vandelay>
 <20171009231857.GA19241@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171009231857.GA19241@Haneen>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Mon, Oct 09, 2017 at 05:18:57PM -0600, Haneen Mohammed wrote:
> On Wed, Sep 27, 2017 at 04:06:21PM -0400, Sean Paul wrote:
> > On Wed, Sep 27, 2017 at 12:23:17PM -0600, Haneen Mohammed wrote:
> > > Since the output has 1:1 relationship between connectors and encoders,
> > > and the driver is relying on the atomic helpers, remove the custom
> > > best_encoder() and let the core call drm_atomic_helper_best_encoder().
> > > 
> > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > 
> > Thanks for the patch, I've applied it to drm-misc-next.
> > 
> > I noticed a few instances of .best_encoder = drm_atomic_helper_best_encoder
> > hanging around. Any interest in removing those as well?
> > 
> > Sean
> > 
> > 
> 
> I have found three instances, the one in bridge/synopsys/sw-hdmi.c I
> checked and the log msg of commit c2a441fe8f7 mentioned that an explicit
> assginment to the best_encoder is needed because the bridge is compatible
> with both atomic and non-atomic devices.

Yes, this is blocked on armada not yet being converted to atomic.

Might be good to add a comment to assignment in the code.

> I suspect this is the same case for vmwgfx/vmwgfx_/ldu/scrn/stdu.c from
> checking commit d947d1b71.

vmgfx is fully atomic.

> Lastly, there is an instance in tinydrm/core/tinydrm-pipe.c but I am not
> sure how to verify if the driver supports atomic and non-atomic devices
> as well, hence justify deleting it. 

Same for tinydrm.

You can check this by looking for drm_crtc_helper_set_config() - if a
driver is using that then it's a legacy one, if not, then it's atomic.
-Daniel

> 
> - Haneen
> 
> > > ---
> > >  drivers/gpu/drm/rockchip/cdn-dp-core.c | 9 ---------
> > >  1 file changed, 9 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> > > index a57da05..275844d 100644
> > > --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> > > +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> > > @@ -287,14 +287,6 @@ static int cdn_dp_connector_get_modes(struct drm_connector *connector)
> > >  	return ret;
> > >  }
> > >  
> > > -static struct drm_encoder *
> > > -cdn_dp_connector_best_encoder(struct drm_connector *connector)
> > > -{
> > > -	struct cdn_dp_device *dp = connector_to_dp(connector);
> > > -
> > > -	return &dp->encoder;
> > > -}
> > > -
> > >  static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
> > >  				       struct drm_display_mode *mode)
> > >  {
> > > @@ -346,7 +338,6 @@ static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
> > >  
> > >  static struct drm_connector_helper_funcs cdn_dp_connector_helper_funcs = {
> > >  	.get_modes = cdn_dp_connector_get_modes,
> > > -	.best_encoder = cdn_dp_connector_best_encoder,
> > >  	.mode_valid = cdn_dp_connector_mode_valid,
> > >  };
> > >  
> > > -- 
> > > 2.7.4
> > > 
> > 
> > -- 
> > Sean Paul, Software Engineer, Google / Chromium OS

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


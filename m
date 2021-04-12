X-GM-THRID: 6950250971878391808
X-Received: by 2002:a05:651c:106c:: with SMTP id y12mr11350242ljm.458.1618242378056;
        Mon, 12 Apr 2021 08:46:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5081:: with SMTP id f1ls1608513lfm.2.gmail; Mon, 12 Apr
 2021 08:46:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzXWXMEvDwIRybEG8AdxcT+p5VCn3hLJv+yzVCUD9cZscOPwpXaZfZgquyQPOHduc6c/Y+l
X-Received: by 2002:ac2:538d:: with SMTP id g13mr11551597lfh.661.1618242376409;
        Mon, 12 Apr 2021 08:46:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618242376; cv=none;
        d=google.com; s=arc-20160816;
        b=KDPwf/8pod8ZOGAuOscWKkvCetLdpLvYRI53fCRYUkP7JkbFzgjAJG+XfXTb9J9l1v
         5cbggGVm/Kv4/T7BwBOMwvv/1S6CX1D0LAowqCf/ENTC/7Lm2kyjiDcHnt8MkQ8Va2m5
         TIdWPHmhNiY5DKeWuJ5/jhEynMWNiQs1++n22/yppRd277kYUObU2e4069J/ySspQh9N
         k1ajQnr/JI7AddCIKjwdg5UfybS33y2z3WYntcM4O4PDVv7weYfz1PyiMAINM38+/NRB
         cxO4nBJkSgIZnWEIbkHHBW46qRZMO81xJmkwYHXrz9qwHRFxIs5cex+SxCoNQOY42XuE
         icKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BOJW+FDoOnJcstvVO7WkKNL0wTgkh61II7x1/rgVxjk=;
        b=LTdgtD36GSJae6vuECkvpE9qBHOUAkD1KkwTZh55NqRdOKGjsoYDLLXA9fvMXp6C+i
         P3kLeIBG9InSyKFkJk4oYCI1+k0PH5UNylRMp6DFCoFfWKWcaBKntLkq4mY+QJaNbhtb
         PblXWFlCiP8rnixj1jcnFftuLDJAAU5B9JDQKflB5nE9EmgUk7uA48RbIWY9YjG0PYC8
         04EnPt8SmMxGATIM+07t/vqewLx/aadmmEKauzE/zm7gYwwTvs7bIyacLqJXZGkq7Bx/
         +YLeNJk8cyPlOt/irsoV7KmHbn86PGsE2qnzMuLUJahd76WOd7za2kZRFEdTgu7jBeKU
         kY3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=ToYcqOtO;
       spf=neutral (google.com: 2a00:1450:4864:20::331 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id n13si805975lfi.5.2021.04.12.08.46.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 08:46:16 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::331 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::331;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=ToYcqOtO;
       spf=neutral (google.com: 2a00:1450:4864:20::331 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm1-x331.google.com with SMTP id w186so2582200wmg.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 08:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=BOJW+FDoOnJcstvVO7WkKNL0wTgkh61II7x1/rgVxjk=;
        b=ToYcqOtOsOscRGdjk/vUJEPI5jKmLL+/shdHIebP8/T8HBiHtSnZEUo6OHy0iLlgAQ
         xaLL9WndRNepKkrlGnt3EIpLbH/w6Jbeh24ZtLLp2jWGLg++SGuL5EChJB+ClOeeSnr9
         yZEOofQEdlqt8sg9Pib2FQ9fCcIMi57FyqOtg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BOJW+FDoOnJcstvVO7WkKNL0wTgkh61II7x1/rgVxjk=;
        b=YtiIapcW0tXZnFMrR6LHRgdAS9+kv14LfMCWajfzU3VnLXaEBaokj6IbaoQxiMS8Tj
         pG3+3sHLur+eSmYR5kWm0lRjI+2gr4CFN8tvA/ICSUwO01lGMlmjuU4odMsmmKzPssxx
         zZ9BfJr9ZIzPVGbMDyyY2UXk7JdzcD0E+L7hxye3hAGAbUqoykTp9+KXiVPb79B8ao7m
         Nj17E1VsRjIh10qe3wll1c/rGStMGeOhEoT+H9ejth8RyXwZF4junDeECsUqKcI49/xJ
         T09fz1Hgg6DXj0YwDx1fJ5p9D4ZAE6VOShQ9qy0WCoC1iR8kBwlhHqGithYECI6fywoz
         6Zag==
X-Gm-Message-State: AOAM533Sj6qU1zo4Aa1SOZ3e2lHUpu2LbsXgHg6xI2K43bpun+TajKba
	QUOwm6jTDIiwll335eNDSuPRSQ==
X-Received: by 2002:a1c:4d0e:: with SMTP id o14mr4836641wmh.141.1618242375993;
        Mon, 12 Apr 2021 08:46:15 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id c1sm2131444wrx.89.2021.04.12.08.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 08:46:15 -0700 (PDT)
Date: Mon, 12 Apr 2021 17:46:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>
Subject: Re: [PATCH v2 0/2] drm: drm_atomic_helper.c: Change types and format
 comments
Message-ID: <YHRrRS7xLs/FRDUT@phenom.ffwll.local>
References: <20210412124213.4628-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412124213.4628-1-fmdefrancesco@gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 

On Mon, Apr 12, 2021 at 02:42:12PM +0200, Fabio M. De Francesco wrote:
> Replaced "unsigned" with "unsigned int" and formatted comments according
> to the Linux style guidelines. Issues detected by checkpatch.pl.
> 
> Changes from v1: Rewrote the "Subject" of the patches in the series.

Also applied to drm-misc-next.
-Daniel

> 
> Fabio M. De Francesco (2):
>   gpu: drm: Replace "unsigned" with "unsigned int"
>   gpu: drm: Correct comments format
> 
>  drivers/gpu/drm/drm_atomic_helper.c | 40 ++++++++++++++++++-----------
>  1 file changed, 25 insertions(+), 15 deletions(-)
> 
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


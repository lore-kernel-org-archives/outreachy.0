X-GM-THRID: 6470705412124442624
X-Received: by 10.28.173.203 with SMTP id w194mr1922552wme.16.1507017826017;
        Tue, 03 Oct 2017 01:03:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.160.247 with SMTP id n52ls3872326wrn.6.gmail; Tue, 03 Oct
 2017 01:03:45 -0700 (PDT)
X-Received: by 10.28.133.68 with SMTP id h65mr1795686wmd.28.1507017825199;
        Tue, 03 Oct 2017 01:03:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507017825; cv=none;
        d=google.com; s=arc-20160816;
        b=QPMQN3ZWkR9Gopv1tuJXZijQ95EzzoqgQa3GsXPj69mBh406q6iAKYnz546n+mMvxe
         F1ofFtY/e/IiInYwb7R/PAx/vOiSWUfVprXONbpz/L/l+Tjyt7nzLQmskeLpTU3gZUCC
         JHmZxSk5qlw1TmMTkg9O7Hi1aHEs94ztNahq/mGk0uul8MOb5RgvqyqHB4uyeBSG4jzP
         ZfzhkZfmvc2DBn9lKYzgZrTctlcmv6UsL/56xj38c/uTDa46DOMHT0VYp0QhkOZnFdiS
         vb4CjX3T3J1JmDzqZJYrtTxbBog8fuERqtWtihlcX33+a82I312pU2RqDHnIuNHo/6iT
         1xbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=1/lllOifsLQxn6pp3Us04wmca+eRWQUa0yGqMnpI9bU=;
        b=KV615lsoBt0rbypnyeFzytx7nzCcZjRtXRwj9FgOH61vtpo4bKTnyjP2ZCWGDJoeWG
         hsxxXLXFZ/Tq5oHDv7OCq0NmAHprmE8v7O7XTeN19OIv9sYkhExQzSgnZgd4W1pv+jRq
         +IQQjJX5D8hwSQnBywzwa6NHdmG604aoAQIA/0jVR1brpCvyeckcFtr+LYeXnwq6Sneq
         a/pDJj8Q+SAF2UYukaLzzJ6fr4ANp396MPDlS5kTAjStPdGm1k8zTX3fwOzDUJEmKcc+
         tHP6XlCiYeUuq55U6tqlLC4bbed3xzJOl/E3BKXbpZOsP7K16JwEmDRX2EUyVWi1S/0S
         Sauw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=iDIORPuj;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id l133si1509752wmb.3.2017.10.03.01.03.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 01:03:44 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=iDIORPuj;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x241.google.com with SMTP id b189so5057400wmd.2
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Oct 2017 01:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1/lllOifsLQxn6pp3Us04wmca+eRWQUa0yGqMnpI9bU=;
        b=iDIORPujqp+1berRzwAnqK9u4t8w8Aw8AwFSCnpK5p2tyL03x1Z57vQ7kzeu9yX8Bw
         AW30LvOcTbnwHu6NYNn4jFJra4eMlRBGDoeP37nDMRG9IAJhMPUyPMhYe1cdJyayZgv3
         3c6tXUftQyXhgN0VDeGH9FGynH+rQ7FWZhDP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=1/lllOifsLQxn6pp3Us04wmca+eRWQUa0yGqMnpI9bU=;
        b=Gd8/H4FPxC1jHVwu7wFz3ItILN5y+7oFt3+X15R5k9zzluBszyADomAMGLssZg+UWS
         cfjIcZXb3UCDaoNTt3ddnbDQ8OohdTXmeecJIjAlpz+FN5k1LjhP0qCAGLbIn4NjqJ61
         bpPclXmyVBeomNHJTAQYfc/RLw+BdxLHokV5gAf7e85/rJNLLTLl+LogOQfu3kT4Y2KJ
         VASpb5x75sx1HkloHBmBfaFrOFxI5tnUe9/cDyLutFKKctW7D3ozkglblpbEgvpMCN5p
         fJLJs963GNbn3kC5BWxlzmJAZNpwk7o/OPNQhQ5Z/rzHHmOL2kMZe4za6ADzI8+FfxoY
         I/Ag==
X-Gm-Message-State: AHPjjUigkZ93OLjB/E4kG8tNTneB1TpFvX+uTGtMKIuLnRZ/QiC+jFuQ
	0F7W2lbsZTTtTRyie7yXAG5s6TFX
X-Google-Smtp-Source: AOwi7QAITNF0z9PJbsYiFCMn9PJ9IDRT7USnu7T2JwhziVPjV8stO4fHJiU9pYMcyGYgmMDwgvch+Q==
X-Received: by 10.80.148.55 with SMTP id p52mr23485274eda.5.1507017824519;
        Tue, 03 Oct 2017 01:03:44 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id f27sm9739083edj.82.2017.10.03.01.03.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 03 Oct 2017 01:03:43 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 3 Oct 2017 10:03:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
	Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
	noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v7 1/3] backlight: Add
 IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
Message-ID: <20171003080341.wvdgtgw6uuwcpmj4@phenom.ffwll.local>
References: <cover.1506878301.git.meghana.madhyastha@gmail.com>
 <7a6311819f8eea0b2845c25cca72324b25e63e13.1506878301.git.meghana.madhyastha@gmail.com>
 <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org>
 <87o9pp6i0p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87o9pp6i0p.fsf@intel.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Mon, Oct 02, 2017 at 12:00:54PM +0300, Jani Nikula wrote:
> On Mon, 02 Oct 2017, Daniel Thompson <daniel.thompson@linaro.org> wrote:
> > So I'm coming to this patchset cold but can you explain *why* something 
> > wants to call of_find_backlight_by_node() when there is no backlight 
> > support enabled. Why isn't the code that called is conditional on 
> > BACKLIGHT_CLASS_DEVICE?
> >
> > The undefined symbol issue is a pain but to be honest I'd rather solve 
> > the use of undefined symbols by avoiding declaring them; this making 
> > them into compile errors rather than link errors.
> 
> Typically the kernel header files define static inline stubs of the
> functions when the actual functions aren't configured/built. The code
> using the functions looks the same regardless of the config option, and
> handles the -ENODEV or NULL or whatever returns from the stubs
> gracefully. With the inlines, the compiler can usually throw out much of
> the code anyway.
> 
> In this regard, the backlight interface is an exception, forcing the
> callers to wrap the code around IS_ENABLED(BACKLIGHT_CLASS_DEVICE), not
> the rule.

fwiw, I think it'd be great if we can move backlight over to the common
pattern, like everyone else. It's pretty big pain as-is ...
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


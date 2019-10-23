X-GM-THRID: 6746979289302827008
X-Received: by 2002:aca:d405:: with SMTP id l5mr1004576oig.115.1571853938256;
        Wed, 23 Oct 2019 11:05:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cf8f:: with SMTP id f137ls954208oig.8.gmail; Wed, 23 Oct
 2019 11:05:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzlxUnD5/vD1NAy5zxCGU9Tv7VouT9p8pevwV4tfY2BhnaKBWCysLh8+v9O9UZnwwNf9j/N
X-Received: by 2002:aca:fc0d:: with SMTP id a13mr1081833oii.83.1571853933339;
        Wed, 23 Oct 2019 11:05:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571853933; cv=none;
        d=google.com; s=arc-20160816;
        b=ymEaRSM6/pg+cv/hvXR4YBTlUU8ZrL7P/tMX+Ii0iA949CSqSfuNkcczWN8AastQNZ
         uMUHJ8Q78VrOnUTq05Ao6ZXMe8IzyVDPfSmlzFltI9f3ZPtw5cpi77PIP+oPSOvkvCdi
         RUepQ+KdrHdPWyT09yTbwdU2XuGnY6zccEvP0vu6DHlImvUaagchEuzQk1hUSWuHKjBT
         9+g417Ee4vk3rwYJ1untObca0Tk8HNXlgz7FxyG4CzZmeuR2e9AwDdkFachtomLXZUu+
         OaUxXsJWOwpIhFp+uPO8d0k+KvfGIIt34+w9/i2fcJPUaFtrgrlkXyJVaCDHvFvKq/6+
         QIhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=tBfEWV8k73MV4Qw3DAmfxqW3sxBZePe885VokyL+kFI=;
        b=loEPPtOIMhHLgnoOEGpd9gPD744JqFYObqAtKAUFeNWGJHzRuOsb3XPi+Uk1fBP9Gl
         CDpJkRxcdOqIClVFOKhiXQg7x09pB3x51cYEhPcQEOv89j2hYi19K2r3Xk7lGfN3Oc2U
         DjPLPwmrxxhy4O24E/9lE48h77AMv1llCRJ7VZ+986NT6iVmXG9ZEPnzAbyucrXgcN68
         wgmebx5GtzhOp23PPFioZEttJBz7bwb5+Ct2qsw5uV2XTjRN9ATUh9W7xgBwbwgIzmLf
         bWN7An+EriX8QLb6F2yLSQEvL/Gg8WelffIEhnMUQNg4R9YAIa3FBCzoJ7nDhxemL9xR
         hBeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XWHGBEjZ;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id l141si171746oib.4.2019.10.23.11.05.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 11:05:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XWHGBEjZ;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id u20so10475879plq.4
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 11:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tBfEWV8k73MV4Qw3DAmfxqW3sxBZePe885VokyL+kFI=;
        b=XWHGBEjZONbK9+JQ40gwN6YVXCRHMMzdlxxNu9JFSKH+O0LdlUyrZ1J9HxXGzbPdRW
         UDpsyBDLJHHvNx9x7qlmPdYbgbgJLrAGaJ8oOhp+3L3Zk5qaGQQCLPVMu88NfVw2L8aB
         nbuY2rgGUYTX7RNLwlGNfPZ9o2G8FRYhBAh6fLvuLzJVXoUg/nDQWNEAniYYSMJ2wGjg
         rRHNObfKrqxrrx+EAlPuxs0jd3PaWcA+7ApQcUVGCU75aCMTtTY5RcIzYJYH+C+2dw0I
         xr7J7YH6pc4jRa6lb97Sv5EyaRIslGU/UhWEQ4PmyGrf6rxqTkeXzCtzJz+rxmyohyBU
         Mitw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=tBfEWV8k73MV4Qw3DAmfxqW3sxBZePe885VokyL+kFI=;
        b=o0Qyh1L24378e7afZbwqK+Zjm8O/tWyNEmP7Wi7HQgguIsYG1O4gTcKLgEtfKTILSb
         lgt4RK+XAs+ngyW3AHmaE4n8BWMkowiQ6zxnLPQT+46YvwIJKMvTeyEJQQoml2xvbl7m
         Bs8E83EdrOKYxCK21lPr6dkzzMA69w2Aq9v0bDMVs3m6/uT1e6LWA4mM7/AYMIyRW2U7
         4IXq6LeOvAgCfhmuGbeRtXmRHUWBSWEpaBeq7ykOOp1xB7L1bgpKMKVvZ6d77zzF1Uoq
         8cP+2fcHEjZRqhcYX6nc/RLeFig9UYgo2sfj9YPTu/FGzI4+22c0wjDwh/j4653ZON3j
         FXTQ==
X-Gm-Message-State: APjAAAUl7KNNEZ9ODUsmvQi2QrMXU7GDSRP9iTVLQCJ+SCC2tcWsMZx3
	EILqWGWP2Orn4Tu+GDKcejE=
X-Received: by 2002:a17:902:8348:: with SMTP id z8mr11343624pln.12.1571853932584;
        Wed, 23 Oct 2019 11:05:32 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([197.254.95.2])
        by smtp.gmail.com with ESMTPSA id d20sm25278968pfq.88.2019.10.23.11.05.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 11:05:31 -0700 (PDT)
Date: Wed, 23 Oct 2019 21:05:21 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 0/5] Remove typedef declarations in
 staging: octeon
Message-ID: <20191023180521.GA5220@wambui>
Reply-To: 20191023174304.GD18977@darkstar.musicnaut.iki.fi
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910122034390.3049@hadrien>
 <20191023174304.GD18977@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191023174304.GD18977@darkstar.musicnaut.iki.fi>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Wed, Oct 23, 2019 at 08:43:04PM +0300, Aaro Koskinen wrote:
> Hi,
> 
> On Sat, Oct 12, 2019 at 08:35:19PM +0200, Julia Lawall wrote:
> > On Sat, 12 Oct 2019, Wambui Karuga wrote:
> > > This patchset removes the addition of new typedefs data types in octeon,
> > > along with replacing the previous uses with the new declaration format.
> > >
> > > v2 of the series removes the obsolete "_t" notation in the named types.
> > >
> > > Wambui Karuga (5):
> > >   staging: octeon: remove typedef declaration for cvmx_wqe
> > >   staging: octeon: remove typedef declaration for cvmx_helper_link_info
> > >   staging: octeon: remove typedef declaration for cvmx_fau_reg_32
> > >   staging: octeon: remove typedef declartion for cvmx_pko_command_word0
> > >   staging: octeon: remove typedef declaration for cvmx_fau_op_size
> > >
> > >  drivers/staging/octeon/ethernet-mdio.c   |  6 +--
> > >  drivers/staging/octeon/ethernet-rgmii.c  |  4 +-
> > >  drivers/staging/octeon/ethernet-rx.c     |  6 +--
> > >  drivers/staging/octeon/ethernet-tx.c     |  4 +-
> > >  drivers/staging/octeon/ethernet.c        |  6 +--
> > >  drivers/staging/octeon/octeon-ethernet.h |  2 +-
> > >  drivers/staging/octeon/octeon-stubs.h    | 56 ++++++++++++------------
> > >  7 files changed, 43 insertions(+), 41 deletions(-)
> > 
> > For the series:
> > 
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> 
> This series breaks the build on MIPS/OCTEON (the only actual HW using this
> driver):
> 
> $ make ARCH=mips CROSS_COMPILE=mips64-linux-gnu- cavium_octeon_defconfig
> $ make ARCH=mips CROSS_COMPILE=mips64-linux-gnu-
> [...]
>   CC      drivers/staging/octeon/ethernet.o
> In file included from drivers/staging/octeon/ethernet.c:22:
> drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cvmx_helper_link_info' declared inside parameter list will not be visible outside of this definition or declaration
>       union cvmx_helper_link_info li);  
>             ^~~~~~~~~~~~~~~~~~~~~
> drivers/staging/octeon/ethernet.c: In function 'cvm_oct_free_work':
> drivers/staging/octeon/ethernet.c:177:21: error: dereferencing pointer to incomplete type 'struct cvmx_wqe'
>   int segments = work->word2.s.bufs;
>                      ^~
> drivers/staging/octeon/ethernet.c: In function 'cvm_oct_common_open':
> drivers/staging/octeon/ethernet.c:463:30: error: storage size of 'link_info' isn't known
>   union cvmx_helper_link_info link_info;
>                               ^~~~~~~~~
> 
> etc.
> 
> Probably all these patches need to be reverted.
> 
> A.

Aaro, thanks for the heads up - I can try cross-compiling to see if I
can fix the errors.
wambui karuga.


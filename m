X-GM-THRID: 6755177272483774464
X-Received: by 2002:a5d:5050:: with SMTP id h16mr24436942wrt.380.1572861809495;
        Mon, 04 Nov 2019 02:03:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c941:: with SMTP id i1ls2435150wml.0.canary-gmail; Mon,
 04 Nov 2019 02:03:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqxLfmLYqQ1cYu0XCZeoOOPyZultiGVkNl/HKbqsp1jhEO+CQaTK+WBYT4etwRunkqk9CPik
X-Received: by 2002:a1c:544b:: with SMTP id p11mr22595078wmi.46.1572861808384;
        Mon, 04 Nov 2019 02:03:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572861808; cv=none;
        d=google.com; s=arc-20160816;
        b=ZuDTEGNW7M9XF/GXNa5eap3IMyWvfa3pvBT8DqSYPZolC2hj/G9fSMQOqzQUGRXZul
         HmVVxyK+hdsHpsoY0gIRqgDSgI63lMQ3WVLv6h+dtGd+po0obqg0Jr5qf11GmM4Q2Ftj
         vEg2zMZwqVuQvRXDcAC7LOLpwfKeJQI9+735Vd7bnMi6ZG2Swf3yKrRFWZodPXWKwqGd
         Xelr3Asi3h/DasI9W8q9bhG6xT91bR2ubNILG4vXXdcylLfOd8s93P01SXeVlMhY454w
         Tnl/rfnH0C0SbCu9fGfPBXDlYvLVmDrqaO8ITqbEl82+9waL/ktVCUuKhJlMJN0C+MlM
         4/ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:date
         :from:dkim-signature;
        bh=Hb6aneWu4/s6k+rfxRc0Ua5cIZspq2s9BzWCuYkZeCM=;
        b=cG8awq43F9JAaXBZd5v5X+np2mfBcj1D4uHIXWbOoH+OevC8IhG4gqfr0TcZGRRT2S
         1JqTQKf2s7nCQlY+3ov9mDzu8m72F2+H90u8N50+TuO5OsD7RZWNDvxQmaXvv+f/C9sj
         Q98In3lbGS1CwHmb9jSkC+xL+CNsyIU1ZKPWmn0QscKnS0vFTMwuX4Jxlk79n4MRNFVw
         k1wDY7n97jdf2HqhHRtvDPCqWFSCpTgSWdTRnwcRX43t6HXwKpA0QkaYjvmp4fxmFB9I
         /JDoX8munWxxAt4HlPlz34LyfvqPnzg5ScRdxx7emlcdMhsplZeOX+6yRpMBzbH6PAbj
         bYVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="j8/S6yQ4";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id y140si941261wmd.0.2019.11.04.02.03.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 02:03:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="j8/S6yQ4";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id q70so15905533wme.1
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 02:03:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=Hb6aneWu4/s6k+rfxRc0Ua5cIZspq2s9BzWCuYkZeCM=;
        b=j8/S6yQ4YZJRw/pIUskh7tSd4j8vRdh/IN6/ED5G9kbNOtijhVMjoTa4YebOD1lF2X
         2cR5qKqAvLEGpWe8Q3Yb8RgzYnQdinTjUfyWOtd/B1s9ncks2aw14AQbe3qwuaNxRJuY
         i+dGlp2Ww0UkaFkiRWn/7bq8e9e0EspMA3FADc4gNZVNiLbmyTQksSIh6XovyDtTMoqO
         4moRgEfW8iDBjRKc1TYvsbMn/WQdmnRLZPRzxxMyeVH8Wi9qipCIwpZxVUYB3VSDGg+l
         TiwU3/42RLOsvTvB5KsRK1Qd1Csx/1pTr2FQsBuEQDfCUNxVUgcDbt78m5jCsStewM1j
         t3zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=Hb6aneWu4/s6k+rfxRc0Ua5cIZspq2s9BzWCuYkZeCM=;
        b=qo2xLNR5Mug+bgdvVJptZtT9A5H+ce50mWrfCqiXMiD4Uu/CvMky1rpOlJXpsD2lOl
         DiFHqZ4YRfhDsOs7nE9T7c2DJmFzB4tdj2Ot9QllBKYH0um180yzwKVbeqgUKKK9Sqnh
         XbPHAEzqPmNoBFO8Io1cLle+1bpd5ya9/OOr+yQEyJ97C+JDToZ8DGoERowq5z5QqMx6
         xjH7zIG4s2yOOn13yN9EYgdFIHpS7Pn8kmynzGCtU/HBnyRrmjjOvTKA4x8QY0P3cyOf
         hflArx0LH8LdEmPPu6OL8Ex5OhojLa3sDD4uBp0SRrsbg+FCwvEv3dQK3ArjpQkb0phi
         dUtQ==
X-Gm-Message-State: APjAAAVvf427noErH+JICHd6LiC0ApjVxERK5ivzbXMC8urzaWo7CMBb
	xeb1/kX8oTvfaLxwfHYKJd11oX4YgGy/
X-Received: by 2002:a7b:c7c7:: with SMTP id z7mr2375608wmk.133.1572861807846;
        Mon, 04 Nov 2019 02:03:27 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.gmail.com with ESMTPSA id d202sm15963951wmd.47.2019.11.04.02.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 02:03:27 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Mon, 4 Nov 2019 10:03:07 +0000 (GMT)
To: Greg KH <gregkh@linuxfoundation.org>
cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com, 
    abbotti@mev.co.uk, hsweeten@visionengravers.com
Subject: Re: [PATCH] staging: comedi: rewrite macro function with GNU
 extension
In-Reply-To: <20191104062309.GA1119067@kroah.com>
Message-ID: <alpine.LFD.2.21.1911040958270.23730@ninjahub.org>
References: <20191103201740.25415-1-jbi.octave@gmail.com> <20191104062309.GA1119067@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 4 Nov 2019, Greg KH wrote:

> On Sun, Nov 03, 2019 at 08:17:40PM +0000, Jules Irenge wrote:
> > Rewrite macro function with GNU extension
> > to remove a possible side-effects of MACRO argument reuse "x".
> > Issue detected by checkpatch tool
> > 
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/comedi/comedi.h | 6 ++++--
> >  drivers/staging/wfx/queue.c     | 2 +-
> 
> Why are you modifying the wfx driver in a patch for the comedi code?
> 
> :(
> 
> greg k-h
> 
Apology, the mixing will not happen again. I will try the same patch on 
different driver as this one has an LGPL license and seems not likely to 
accept any GNU extension.
Thank you for the feedback.
Kind regards
Jules


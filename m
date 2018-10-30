X-GM-THRID: 6615609378154217472
X-Received: by 2002:a5e:8213:: with SMTP id l19-v6mr558086iom.3.1540941482876;
        Tue, 30 Oct 2018 16:18:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:b007:: with SMTP id z7-v6ls3845088ioe.6.gmail; Tue, 30
 Oct 2018 16:18:01 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cgsLF7hVDX0bhyIz6HFexBzOuXP6VGq8+yRj/71PUybn5ekOraa32ASXUvEqVt3QFWSsPB
X-Received: by 2002:a6b:3c04:: with SMTP id k4-v6mr532704iob.37.1540941481918;
        Tue, 30 Oct 2018 16:18:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540941481; cv=none;
        d=google.com; s=arc-20160816;
        b=JLgZIX6pIB074Q9jE1NSQIrwOMSZymXHzFRwPXdqabUK+qLPM/6xc7xu/pgW6Hs/7R
         f1ZWhcPNxhAFwp0JWLhibzGJz5ZaECaiiGGtAeA3vnQ3p8bZOXS0f9+DbjXwW8j57IkN
         buGEgywyKa4kHSFBC1z529Z3qdNhmbjnSIz8gj1gLnfvZcU/wIHMPyiuSqiMfUiFCnEU
         92cT4fb8gVmz8Y3e6g787Zfxxtsl2jie2ObOHMsfBDzvVPFkpga4PdFuV9vZMU3OmF+d
         sUBDM5RlpVHhKkiB5Q58NJiYsMUdkgAcxAWAvElU/qgzsG5TVWBJ7IBafDsBBH6C4TW4
         3dgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=R4FfmyudWt22yr3GuUsX1lBmqq2M04khVTuNGRj1dc4=;
        b=bV7g0FLZLDKUq0InKf0wkqgk5ILw8VJXwTkccB4mIdEIuCSLFTzQM+gU8I1KL8wFRF
         bavcYHUoJXxz+g8ZwQ345WJk2gcFpN60qIRsqcRDQvQlBQZLrUQvU4sharSg4GfjrmnG
         g7KvUgVrPMYexZEcgna5FDJL8ZfQ8Vy/JpMarKbi9H+vqelfngHf/eo8EXTssJ24RAUm
         JuQ8h6vSD9hea3tgEHeKM0ShCAXZJoecZ9TxU00OlQcOZK+jef3u6C3Bfj4rNdZib8+n
         wS9BgaSytwoBuFaKPKR0aNgoT8MdLp7RpzgMwp94yHdRny8lYSgOHVu6Z4WMKzB++YvW
         jMqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FSiijJ+q;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id b1-v6si226902itj.2.2018.10.30.16.18.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 16:18:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FSiijJ+q;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72f.google.com with SMTP id o89so8430556qko.0
        for <outreachy-kernel@googlegroups.com>; Tue, 30 Oct 2018 16:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=R4FfmyudWt22yr3GuUsX1lBmqq2M04khVTuNGRj1dc4=;
        b=FSiijJ+qyZc8Gd3BrQEIT4zszQZz8FY2xCdyIVFNQkundmNKxd0cqC11QWPUrVDQdU
         4WgU0LyH/3IGr57y04ElyyY2zxklvZURb36l2HQgv9RLacYYMZSkrcKcj//RkWBFvoLn
         Hl2kmBCX90wVXHHb6BrZOIzQ94pvdATh7Ck+Jk42uG5HRjwlGR+sA5iQ7seU2aiWbZBw
         UuJ1Owr4AOp0c1o0ex87065mMhwhNsAaMvrIxFjYyTALMaEQ1bfQvLkjtC9KPBfsdZRq
         QQOJ7bBRID4Nlc/H9nond8l8t0GNRdOV9CGUzEZjj+9A9Ba6npNbNr2ZMLhzDaUb5q+S
         Wy3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=R4FfmyudWt22yr3GuUsX1lBmqq2M04khVTuNGRj1dc4=;
        b=ZNoQkky2t0YK+2+Op3EZgPAHfsx95x9StiJxBdPqMnwlmkr1IDwsZKWzE54k/8ZXk7
         VqGkCG/JQQrPzNqeCU4SKfv1FCmc9tPtnxyzpPGNW5dhnSAs52PsJJVTbD+9S9Sjhscj
         WpOAfrAojc+QL5QgSag51D4GSLDZNGYK8+iITcfhw1Sydptr7+sxQGNBkOvXoT9o2oS6
         ugF4vEJOIDBRsy7roYP1p31ebZTQ1LJKgxgBqxOn9gEW96P30nj/ZS297vd65rzQv1Nu
         UTT3XaO2so9DZAZfPUeyQWPccX2Sh2heI2FwZQVY+ryfvtHNjTdf/J9dhq8JWuWpAnph
         7joQ==
X-Gm-Message-State: AGRZ1gKGfNIAk5Rw44GsPdlenj6E/K1qg0Y0zq5HOOFUITEniIQVZ5PU
	xgfpuAW8dM/p4EAoBhmJtNEK0KhdlYg=
X-Received: by 2002:a37:a09:: with SMTP id 9mr591188qkk.339.1540941481438;
        Tue, 30 Oct 2018 16:18:01 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id c79-v6sm21125836qka.83.2018.10.30.16.17.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 30 Oct 2018 16:18:00 -0700 (PDT)
Date: Tue, 30 Oct 2018 20:17:57 -0300
From: Shayenne Moura <shayenneluzmoura@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] staging: vboxvideo: Remove unnecessary parentheses
Message-ID: <20181030231757.24ooubt25oykmgkt@smtp.gmail.com>
References: <20181023174304.iq4ra7vafwujr3ex@smtp.gmail.com>
 <20181030092539.GA10009@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181030092539.GA10009@kroah.com>
User-Agent: NeoMutt/20171215

On 10/30, Greg Kroah-Hartman wrote:
> On Tue, Oct 23, 2018 at 02:43:04PM -0300, Shayenne da Luz Moura wrote:
> > Remove unneeded parentheses around the arguments of ||. This reduces
> > clutter and code behave in the same way.
> > Change suggested by checkpatch.pl.
> > 
> > vbox_main.c:119: CHECK: Unnecessary parentheses around 'rects[i].x2 <
> > crtc->x'
> > 
> > Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> > Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> > ---
> > Changes in v2:
> >   - Make the commit message more clearer.
> 
> This patch does not apply to the latest kernel tree at all :(
> 
> Please fix up and resend.
> 
> thanks,
> 
> greg k-h

Hi Greg!

Sorry, I do not know what branch are expected to be used.
I used the drm-misc-next to create this patch and I could not
find any merge problem.

Could you please tell me the details?

Thanks,

Shayenne


X-GM-THRID: 6810510356795883520
X-Received: by 2002:a2e:5844:: with SMTP id x4mr7925196ljd.40.1586029864749;
        Sat, 04 Apr 2020 12:51:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:74f:: with SMTP id 76ls573899lfh.0.gmail; Sat, 04 Apr
 2020 12:51:03 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ8wPatPTA85z5o/p34WNl1bKy7T+ZdIcfVB+1yy0X2SOowq0YjXoTu80KZICkEtBqQt/5l
X-Received: by 2002:ac2:545a:: with SMTP id d26mr9157268lfn.85.1586029862970;
        Sat, 04 Apr 2020 12:51:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586029862; cv=none;
        d=google.com; s=arc-20160816;
        b=ypXqptGJg0yRzLfefdDsYuVBzOaFioc2MSIoLcwmH0r5fMszAntA1qsVJk/lbPm7od
         eWC+1e5pYo3bsAtquCSfbKkQCZXdB/W6DWVN5x3SWg2jud6JZ3sgZh12d2V9Xpnjq7VU
         jZb8WUPNgY3u1kBE+XWwQYQZlqpp6ydSYIhT0bME3ENv5fkvU3jHdo19FfNv+M4eWuTV
         H1hsDBCOSgQmKcjknGURfshAD/zFkdZHWfh193XSfq7QG96PHG38YPOrxQxuee7cJIVR
         FOIU2dCupCs+Fp6J6lKqQqG1EZqcgicJgiiZ7MsYKk+c7Ya7uteHW3vu/BbSSwZUy580
         2poA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=CYUe37Y2tUFGUawkQc7t8yMP/46o2drs/+6W9e6w9j4=;
        b=Q3f32dExsbpirVG8hFS0X/kj1mhponhO1J4b79J1TPn334XvV5PnkzsQZzkXkKdP8V
         TKk8YfRrZaBdrSBxPeirY/rBq3st9WKVL9/5NZdgyvXHWFaHlFGTNcXefL5aWJV/+oDU
         TphQZ31WT+0aT3i614rBUyIYK80WJcMN8PdsqTU2dmMbLr5/FEII1nCDVkXBpD4kyiCC
         xN8lO3Fx6U5H5bd4SF75kZNPUBoD41KwN+a6bYbLSnKGuj0rTI5S7MsCIfRbhybYe65R
         MwzmFVwWW5Ci1yVBVu1Qg6G160aETUvuWKKpaZ0B163femkMRIuE3j9L63yAImMIbNAR
         KBwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aXNgYVrW;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a21si306238lfr.4.2020.04.04.12.51.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Apr 2020 12:51:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aXNgYVrW;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id s8so10552488wrt.7
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Apr 2020 12:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=CYUe37Y2tUFGUawkQc7t8yMP/46o2drs/+6W9e6w9j4=;
        b=aXNgYVrWUEn9neLcsQggpG0miHDggSksHrdRqKsMjwMPOQ2EzAH5qxSl66F8HLmmum
         2thw7/KviWJ7uCxQj3MPk7YPHObZxXnhv0Sma92AWvQbAjXsacPZ7Syz5YDcuw59xPmE
         ++hsOQYW1DUUM5UJO2C9ktO3oKYJlF5eKTVreTiqW7PNCJeNKmSC4Nzci0l0FNoWr0eP
         Jp8U+rtnQp/Gk5YnHcNmlLggj1tddJtqoKpl0tm4lxGs1ccSNfbkuAjyhqfNpcWocxPy
         rW27Lvvjuhz8snRl+gwFp5EV0Tv0UaSPKLfNUWyhjDhbzXjXf082hnvVOOoAm76NmhXG
         QoGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=CYUe37Y2tUFGUawkQc7t8yMP/46o2drs/+6W9e6w9j4=;
        b=WEG7y+5fLgyiW22/2IxoTWKUN1WrXnM0zrFwAsFo79qZ7YaRHMyHJKWs21UnvMUYlp
         ebkagxq6DHd+of7UC9utj+CADokOyPTlEl/v6gzdZIOpScuUAPzHE+E4QQCrdYe6k+et
         PSNnrtsTQmDtBokf10i3MommGHJDYmsV1tybs0dUexUCMmI51K6vzWl+0HKQcxQoqkjv
         bhmoROVVZj1wH2PCIrTKLLS9tq0mFrvCn0Su55oKVgPuAbbZXPDSR+Szhtwp0LtZabEE
         FuQzO5rf5JiapujFVxMKFwdd3+TArLFOwpcBLryfAiYw6oVQu6ujb1JdeDoHZ9ahB7Mz
         tvuA==
X-Gm-Message-State: AGi0PuaU5TFxVy9Ker/N8BeipbuZHJUmGJj6U1k9cRdrH+x+BL9q1vm1
	9V7KOLYT+NJxe3aXv4PEh7Q=
X-Received: by 2002:adf:fb0a:: with SMTP id c10mr15303337wrr.272.1586029862396;
        Sat, 04 Apr 2020 12:51:02 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.214.63])
        by smtp.gmail.com with ESMTPSA id g128sm17362353wmf.27.2020.04.04.12.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Apr 2020 12:51:01 -0700 (PDT)
Message-ID: <ea44b3a27f9362b07f58c7c269d33be5590fa612.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: omap4iss: Use
 BIT() macro
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Stefano Brivio <sbrivio@redhat.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Date: Sat, 04 Apr 2020 15:50:59 -0400
In-Reply-To: <alpine.DEB.2.21.2004041451060.2354@hadrien>
References: <20200331225817.14834-1-jane.pnx9@gmail.com>
	  <20200401045531.5de93729@elisabeth>
	 <bace205763db970618b1d1541133826a874b1e21.camel@gmail.com>
	 <alpine.DEB.2.21.2004041451060.2354@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Sat, 2020-04-04 at 14:55 +0200, Julia Lawall wrote:
> > > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
> > > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
> > > > -#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
> > > > +#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			BIT(12)
> > > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)
> > >
> >
> > Hi Stefano,
> > honestly i'am confused about how is there a difference between BIT(x)
> > and (1 << x)
> 
> In the original code you have a bunch of things shifted to the left by 12
> bits.  3 0 1 and 2.  They all look the same, and one can think about a
> little region of bits some of which can be on and some of which can be off.
> If you put BIT(12) in one case you don't see that.
> 
> For example, if you had
> 
> 1 + 100
> 2 + 100
> 3 + 100
> 104
> 5 + 100
> 

Thank you Julia!
this is what i thought of with using the word _pattern_
now its easier to say in other words:

"we are manipulating a number of bits, if there happened to be an
operation where a single bit is set that doesn't kill the fact that _a
number of bits_ are being manipulated and that you could use BIT for
this instance" -> i mean i shouldn't use BIT here

on the other hand:
when there is a behaviour that involves manipulating a single bit only
for all operations, BIT() in functional and meaningful.

I think it's clear for me now ヽ(´▽`)/

> How easy is it to check that you have a sequence of 5 numbers?  It's really
> easy to add a single digit integer to 100, but probably you had to think
> just a little extra bit when you came to 104, because it's not following
> the same pattern.
> 
> julia

Thank You
Sam




X-GM-THRID: 6950672534035496960
X-Received: by 2002:a19:381a:: with SMTP id f26mr14742508lfa.433.1618382032729;
        Tue, 13 Apr 2021 23:33:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls1160218lfv.1.gmail; Tue,
 13 Apr 2021 23:33:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyzH3G5v5EhGHIkawxOhrFzDnThQwROUtd2W33mVPDF3WJjEpERRI7TGX9fOmhSzdd4Z9NN
X-Received: by 2002:a05:6512:238d:: with SMTP id c13mr24674181lfv.576.1618382030852;
        Tue, 13 Apr 2021 23:33:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618382030; cv=none;
        d=google.com; s=arc-20160816;
        b=xB7I30JXOCo42UBWYFg1OPooiI3gfNlpbcmccdnRPGdranpWQSPJFY92ObfqY96OJh
         L3w2p/TmNnSqYKMDGVQRZnUeYZveCn+7Nec3O0oZ0ZuDHMSNhaX2xebH6SCmJUKnU/JE
         VMkw6olFLSZCiBjXBdSZ5OQdtaxvcA+MLJOfFrz2fWjBwUpamn+DuvsPi3e4gRfpLtoS
         o0sxmtL9KTwkcP9PpyAINXIQYwEqnpcmmdTrACM+XdriqACkF99LCiLrIQ/45D4b6u60
         VwMy0M5Un85hvDP56QYKLutehKSq/IYAkiGhPJ319N+rb/iI2oZadeiWGKG9XaJ2iEEX
         TAIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lM9tE4YP45dEebvaB1mn9Fj0H0g1RisXEtTq0o0OVEg=;
        b=s9RtCiZCUwGSi1WGmOJy5FYkmxUbpYAI2Xi55CT7WP5QXLCISAo2R4pOu8w4DEsCcy
         cTK1SU/H3O7vhnRlSG1HLHW4EiJsUDGSaDuFsWDE//BJknKfAoBDE8a7igRHvoTqfBlu
         q3TFHN3T2zaNItsIRhIIniLglKLIa179bhHfLJmU/UfDfYYHMCXbHhV+SErF+MhhXqtv
         7OODSPTjwk7JF9tEvUirRWglAuL6EHsVZlF5kKcSZwwFjh6KY+TEZMYLhtL+GH+mGmQB
         tgTE2BJyV9/SiA7vqIbNL4KJj/2aDH587WRRZRfjkNjDemVxiPkjUgcN5L14pf5d+R8t
         cv0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CnRNwfJW;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com. [2a00:1450:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id q26si692545ljj.4.2021.04.13.23.33.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 23:33:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) client-ip=2a00:1450:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CnRNwfJW;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62e.google.com with SMTP id r9so29657066ejj.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 23:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lM9tE4YP45dEebvaB1mn9Fj0H0g1RisXEtTq0o0OVEg=;
        b=CnRNwfJWtnIxInVYy3BheuUuKlU/mLd0foWWQrwKR3EJVfzoxafwDXdLhuh2FT6ekj
         eRHZkZVCs+EaW9aO45cwqvr/LvEgoDS+nuGRokvGpLMWz2k4eqPNFM4QjZ0XUrblF6uj
         EVxPtJUFyp1xy1OqpazRyNeSWqQBRSyStD0FifqOsEt/dk6SuUlOAQf7ZwAtxFQsiASn
         4UYqdjcnEmg/DEePZwdLxh0CFQCayzUKQ2sVM2Cc27iHsgQNTffhZ0NaI9L5zCvaanZF
         imQt3KHAGDNpmGS9wjIeTgnTf0A86mG/GD9w2tmWB5TPFYcKiSeed67ueSVniba188/o
         xOXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lM9tE4YP45dEebvaB1mn9Fj0H0g1RisXEtTq0o0OVEg=;
        b=bz5SQy7q5bAatQhwfXTt+tHvgYBnFZWe5EZMlY1fZ0c1VlIftfY9IUpCshGzAFpdce
         wkjogPaWF++b98OGrkIBZv6Pl47cN/bet5zdz4azHZug+IeMhjvI49YAZ4cVAd2hEDX9
         /Kl8B/oYvt6IXt4FH3kypJzBpjKZKKqYQxQyjhO8MRSS+Y+MIrR1ZceVSlneeNgx0p8+
         x24sqDMHyrbyqHoKIptE0f3FdWzWqHUbXwwWJxlFDsiBqgqAZfaXZiJztMa6cCim0tpO
         wrrXkYe9i3qdt3DV2fa57Wbhz/Twy64houey9BWa7snG/uv0S+bu/cNSAroSZA0Z1+2+
         AaHQ==
X-Gm-Message-State: AOAM5317+lBQWuLidf6lHwAsiqZJ1GuCBqzUfy04OO48lBgWExCZGxrF
	8f7/n3nPQQNgSQqO1ei7v5E=
X-Received: by 2002:a17:906:f8d7:: with SMTP id lh23mr10907676ejb.77.1618382030493;
        Tue, 13 Apr 2021 23:33:50 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id u13sm9263724ejj.16.2021.04.13.23.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 23:33:49 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Matthew Wilcox <willy@infradead.org>, Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Wed, 14 Apr 2021 08:33:48 +0200
Message-ID: <2418632.vfNx7fMs9o@linux.local>
In-Reply-To: <20210414052150.GO6021@kadam>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com> <3505455.GpAHCVcAZI@linux.local> <20210414052150.GO6021@kadam>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, April 14, 2021 7:21:50 AM CEST Dan Carpenter wrote:
> On Tue, Apr 13, 2021 at 10:08:32PM +0200, Fabio M. De Francesco wrote:
> > On Tuesday, April 13, 2021 9:48:44 PM CEST Matthew Wilcox wrote:
> > > On Tue, Apr 13, 2021 at 09:45:03PM +0200, Fabio M. De Francesco 
wrote:
> > > > 1) The driver doesn't call that function from anywhere else than
> > > > the
> > > > macro. 2) You have explained that the macro add its symbol to a
> > > > slot
> > > > in an array that would shift all the subsequent elements down if
> > > > that
> > > > macro is not used exactly in the line where it is.
> > > > 3) Dan Carpenter said that that array is full of null functions (or
> > > > empty slots?).
> > > > 
> > > > Unless that function is called anonymously dereferencing its
> > > > address
> > > > from the position it occupies in the array, I'm not able to see
> > > > what
> > > > else means can any caller use.
> > > > 
> > > > I know I have much less experience than you with C: what can go
> > > > wrong?
> > > 
> > > Here's where the driver calls that function:
> > > 
> > > $ git grep wlancmds drivers/staging/rtl8723bs/
> > > drivers/staging/rtl8723bs/core/rtw_cmd.c:static struct cmd_hdl
> > > wlancmds[] = { drivers/staging/rtl8723bs/core/rtw_cmd.c:            
> > >   if
> > > (pcmd->cmdcode < ARRAY_SIZE(wlancmds)) {
> > > drivers/staging/rtl8723bs/core/rtw_cmd.c:                      
> > > cmd_hdl
> > > = wlancmds[pcmd->cmdcode].h2cfuns;
> > 
> > OK, I had imagined an anonymous call from its location in the array (as
> > I wrote in the last phrase of my message). However, I thought that it
> > could have been an improbable possibility, not a real one.
> > 
> > Linux uses a lot of interesting ideas that newcomers like me should
> > learn. Things here are trickier than they appear at first sight.
> 
> One trick would be to build the Smatch cross function database.
> 
> https://www.spinics.net/lists/smatch/msg00568.html
> 
> Then you could do:
> 
> $ ~/path/to/smatch_data/db/smdb.py led_blink_hdl
> file | caller | function | type | parameter | key | value |
> drivers/staging/rtl8723bs/core/rtw_cmd.c |       rtw_cmd_thread |
> rtw_cmd_thread ptr cmd_hdl |           INTERNAL | -1 |                 |
> uchar(*)(struct adapter*, uchar*)
> drivers/staging/rtl8188eu/core/rtw_cmd.c |       rtw_cmd_thread |
> rtw_cmd_thread ptr cmd_hdl |           INTERNAL | -1 |                 |
> uchar(*)(struct adapter*, uchar*)
> drivers/staging/rtl8188eu/core/rtw_cmd.c |       rtw_cmd_thread |
> rtw_cmd_thread ptr cmd_hdl |           BUF_SIZE |  1 |            pbuf |
> 1,4,6,8,12,14,16,19-20,23-24,48,740,884,892,900,960
> 
> 
> Which says that led_blink_hdl() is called as a function pointer called
> "cmd_hdl" from rtw_cmd_thread().
> 
> Hm...  It says it can be called from either rtw_cmd_thread() function
> (the rtl8723bs or rtl8188eu version) which is not ideal.  But also
> basically harmless so whatever...
> 
> regards,
> dan carpenter
>
Nice tool, thanks. I'll surely use it when it is needed to find out which  
callers use a function pointer.

However I cannot see how it can help in this context. That function *does* 
something, even if I cannot understand why someone needs a function to test 
the initialization of a pointer. Furthermore it is actually called by 
rtw_cmd_thread() (as you found out by using smatch) that expect one of the 
two possible values that led_blink_hdl() returns.

That said, what trick could I use for the purpose of getting rid of that 
function? At this point I'm not sure it could be made.

Regards,

Fabio
 








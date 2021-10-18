X-GM-THRID: 7020448359173324800
X-Received: by 2002:a7b:c926:: with SMTP id h6mr594356wml.133.1634582091323;
        Mon, 18 Oct 2021 11:34:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6b08:: with SMTP id v8ls9001606wrw.3.gmail; Mon, 18 Oct
 2021 11:34:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxGYOSAqPSCHQFfFCsxhFm5FsCmFrTMEPUAmcgz9oZtMZzaVsD92gdGMxk1slDahUmAyduW
X-Received: by 2002:a05:6000:1684:: with SMTP id y4mr37593661wrd.252.1634582089919;
        Mon, 18 Oct 2021 11:34:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634582089; cv=none;
        d=google.com; s=arc-20160816;
        b=FCNjC9O9bSo8BKC7yRnNFvgMp8J4L7riygoWmOnE1+rZ+ydv6mXNRjJKeS4SOThg7K
         7qTyo757A2XJQxlo/pRDsKKqOt9u6LY+ww0ekzDz8XoTP6vYcdO4CkpAUCIdDgIMJwRS
         dM35CdZoMkKFC7NaLUnIJGJ+RuMo0LZCzWiLNLGBF6G5Ch/xqQfwIB+cYC23QDHs4r1x
         19hjQ9fgQwVzJZUUo8sMnjcgUeEpP8VMoF8xR8oZWgg7ZRinwKYCZo/V3mNHJo2oktkl
         OyiR/H3F1D4gp0jTgrZbYtw0S0TKAQXhQxdiMj5yl0hSaZPb6Bf8SoUsNEYijZ0VYCj0
         G1Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dzoVXlZRk2hOplg1MpR9GjyrrWPbHCpohw/Hwz6JdjY=;
        b=T27i7Juv2L04iH573UTC/DxGq7K5vpkNGLm0yyBpJxRdqB7lB576v1UsbVqB5xvuTw
         KUt5pWEpiH88pbYFrWumF7arpEY/+uqB8i4rk8KmAAFTebHvmcrVZ923f/LIuJISP0ER
         wI1dreCJu9wJUmPnxNA36FiMTyeR5QJzcbfO+KbpgW0Aba4LHjEmw8FIvQ7AvbkG2Aa7
         IIIUjI2qrR+DBpSR+DyZewqxDCuIN/htlQHB56kC4u9hw4RaOLeJZLs2hf9KIyEzTZEE
         2xwSZNd11Lw3wcqp+JbiLVFUUU7j1Es62irKsC40AotXx7ar+ovba0yiSmH2kAJh87z1
         1Q7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=a0fd1spH;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id g2si44088wmc.4.2021.10.18.11.34.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 11:34:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=a0fd1spH;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52f.google.com with SMTP id i20so2727864edj.10
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Oct 2021 11:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dzoVXlZRk2hOplg1MpR9GjyrrWPbHCpohw/Hwz6JdjY=;
        b=a0fd1spH6ogaoDgSm206edOTKTuAXadvEJp6ekmhM7vCBODLTGa2MyjOGJwV/W3gcn
         /ygi61Z1yDW0/XL2DTcNtPa5gP2hvv4fwm0MEInAKCWrg5UksOysDRh+wbWdf7G3UK70
         +wlsb/JpmEIG5A9ty5HioNt40TqBzSbBEFL7zpmKAr29pPpGOhcciXW6evDuSnIVd0DM
         7Faz8WzVntKFdiA+Jy6kCF+97gQ5aaphvXFNcYQvwn+XheahgFqw/snNhvcXQeQ8IcJE
         moacxQXFVMC8EWdfMRd04nGYEX6Fxyn4G7MWN2JMenWe/zJIlntWJwOYEzrT+OBKBErQ
         9Kbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dzoVXlZRk2hOplg1MpR9GjyrrWPbHCpohw/Hwz6JdjY=;
        b=ETj0QaKIMlTdlM1EgYPGCPziAIL5F+54LCPPABC35TKZwxK+F6/Crn84O5T6+snBWR
         Qmtl2TW1dwd9HWHU+0ZXhTCUffMT6Vs1/oaqE3zECmfZ/w0/4UvgzA0EfRYdkw/6mKNN
         V+rZdqtWMjOvUlIancC3tWs4TTPQQqzofuQ3pkxjl5j/twtwUPpke6/5wjtv7TwPJJHU
         M9lJb7TDrSoyJDl9/eMyJicWyTamTnB6AO5jpInJNfUPG0GFjFVlbjYhW0qfWTZ1CAyB
         +Kjrvm8kuB9ymAjDOBGa56DTR2lqUd/lS3OW0bx73XJ1CgXNEDGSsRWxe+3G7OCr0oED
         yF+A==
X-Gm-Message-State: AOAM532+62ix9g8YYU9sxQnOj/tupRjCZDLzc8oS/VxWuUDw2hdHukn4
	g/es3qvd0cQLCHkoRNE76l0=
X-Received: by 2002:a50:9d83:: with SMTP id w3mr47883640ede.305.1634582087484;
        Mon, 18 Oct 2021 11:34:47 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-47-104-180.retail.telecomitalia.it. [79.47.104.180])
        by smtp.gmail.com with ESMTPSA id f20sm9950077edq.20.2021.10.18.11.34.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 11:34:47 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, Joe Perches <joe@perches.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, mike.rapoport@gmail.com, kushalkothari2850@gmail.com, Kushal Kothari <kushalkothari285@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: make pointers in array const
Date: Mon, 18 Oct 2021 20:34:45 +0200
Message-ID: <6124760.3TRdS1uSHU@localhost.localdomain>
In-Reply-To: <0f0eb2e6b72bc5188d5eca3aa49eba1d8db0effd.camel@perches.com>
References: <20211018164431.26462-1-kushalkothari285@gmail.com> <9033544.t7rfKEcqWj@localhost.localdomain> <0f0eb2e6b72bc5188d5eca3aa49eba1d8db0effd.camel@perches.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="ISO-8859-1"

On Monday, October 18, 2021 8:22:23 PM CEST Joe Perches wrote:
> On Mon, 2021-10-18 at 19:18 +0200, Fabio M. De Francesco wrote:
> > On Monday, October 18, 2021 7:01:42 PM CEST Julia Lawall wrote:
> > > 
> > > On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:
> > > 
> > > > On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:
> > > > > Change the parameters of functions from const char *g_fbmode[] to
> > > > > const char * const g_fbmode[]. This additional const is needed to
> > > > > allow us to fix  checkpatch warning, as well as being good
> > > > > programming practice.
> > > > > 
> > > > > For the checkpatch warnings, if we have a set of command line
> > > > > args that we want to check defined as:
> > > > > 	static const char * g_fbmode[] = {NULL, NULL};
> > > > > 
> > > > > checkpatch will complain:
> > > > > 	WARNING: static const char * array should probably be static 
> > const
> > > > char * const
> > > > > 
> > > > > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > > > > ---
> > > > > 
> > > > > [...]
> > > > > 
> > > > > -static const char *g_fbmode[] = {NULL, NULL};
> > > > > +static const char * const g_fbmode[] = {NULL, NULL};
> > > > 
> > > > You have introduced a logical change (g_fbmode[] entries cannot be 
> > assigned
> > > > any more) and a build error (because there is code somewhere that 
assigns
> > > > values to those slots).
> > > 
> > > I wonder if this warning makes much sense when the array elements are
> > > NULL.  I don't know if checkpatch could easily detect that.
> 
> No, it couldn't really.  It's a line by line parser and most frequently
> these are on separate lines.

Sorry but I don't get it. For sure I'm missing something...

I guess that checkpatch.pl warned Kushal because it detected that the array 
of pointers was assigned with something and so it output that "static const 
char * array should probably be static const".

What I cannot understand is why it _can_ detect that the array is assigned 
with some values but it _cannot_ check that those values are 'NULL' and so 
avoid to warn.

Thanks,

Fabio

> 
> > However, it should be an easy fix in whatever programming language: 
> > checkpatch should warn if and only if the array elements are assigned 
with 
> > non 'NULL' values, because it's pretty clear that somewhere else there 
must 
> > be some lines that assign values to them.
> 
> Don't take checkpatch warning too seriously and do compile
> and test any change you make _before_ you submit a patch.
> 
> 
> 






X-GM-THRID: 6389640527251243008
X-Received: by 10.46.69.136 with SMTP id s130mr3206788lja.29.1487759864943;
        Wed, 22 Feb 2017 02:37:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.196.15 with SMTP id u15ls2022328wmf.1.canary-gmail; Wed, 22
 Feb 2017 02:37:44 -0800 (PST)
X-Received: by 10.223.168.42 with SMTP id l39mr705837wrc.4.1487759864062;
        Wed, 22 Feb 2017 02:37:44 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id v70si94473wmf.0.2017.02.22.02.37.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 02:37:44 -0800 (PST)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-lf0-x244.google.com with SMTP id h67so656501lfg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 02:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tX6XrIefat0OOqtEBERAzMS1SH1MbOD85ycVRdt4QzY=;
        b=Jmx/JFA7ESuyxvZMChaRkn7f3xWxR9/Mx0/ZB7chDrCqje5zJ3XqMzaBQk1lqm6skA
         /7Vje7LQG7zTppH37AIXGCQCS5/ZPzvcKqokA49fFSmX0Dsv566q5llrFqA/wujYVaEr
         tNJzzFzSpV9OBFFNtCA3yL+fzL8Rvqi+YwB4qfmhzOsKFNq1NKqm2zrPkQuNn1Jer5fK
         9CwvNLZRsjnOK6i+8DSPwOz87UIkZWSzd7syEV4oW23q3B0eEoMwsAoeOn/sgIIZEAI3
         TGiHo1kqyjMXE9wkSwwTlQ3Zaq3jyIVChd18rYEEc+BG4hgZYnMtg6647g2APRe5bKIp
         GYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=tX6XrIefat0OOqtEBERAzMS1SH1MbOD85ycVRdt4QzY=;
        b=ifGFZIc3lvnVu1sauweL84V4EV+qlZIYRTO0OjH02GKYNKWnJxvdeXGiWSs+rnuzcs
         58c3lNlDReCU/nN/TYcuef6DjZH4aMpGIbtF8pPeflw4SoK3WUfO90D7Aj5M0tyl2u5T
         6GvtWI4D9JjooqQ6nMnpbZ/HCn1L7MOh3ncDIN1h71uI3sItgXCP1MToTl1itNffhAO2
         OWA+0BFF2tx8gNj8VAqzLQEv4kOivRQOTQcfhL5MPFiOv7aHkPUfVmaI8PRG4bcdqqht
         oBvqvnrnUXhTZGrTgn0gdoPjuwiXbVwUx0SDHVejAwsDmA+EyMUP9Na/mxbLrhTZnH5f
         qtdw==
X-Gm-Message-State: AMke39kVfaf6yp4yBetyEGZVAzn4SL5Cua8GTXvle27kZWmwxUXAYZ6I1LZCZIAey7Gw1g==
X-Received: by 10.25.157.65 with SMTP id g62mr4199607lfe.29.1487759863746;
        Wed, 22 Feb 2017 02:37:43 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra ([84.216.234.102])
        by smtp.gmail.com with ESMTPSA id x28sm6863085ljd.60.2017.02.22.02.37.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 02:37:42 -0800 (PST)
Sender: Johan Hovold <jhovold@gmail.com>
Received: from johan by xi.terra with local (Exim 4.88)
	(envelope-from <johan@kernel.org>)
	id 1cgUIq-0004gs-24; Wed, 22 Feb 2017 11:37:44 +0100
Date: Wed, 22 Feb 2017 11:37:44 +0100
From: Johan Hovold <johan@kernel.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: Johan Hovold <johan@kernel.org>, outreachy-kernel@googlegroups.com,
	Greg KH <gregkh@linuxfoundation.org>, elder@kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: greybus:
 loopback_test: fix device-name leak
Message-ID: <20170222103744.GI10245@localhost>
References: <1487703983-19655-1-git-send-email-gs051095@gmail.com>
 <20170221195059.GF10245@localhost>
 <CAOCi2DHkHpakjYezcnCXF35ViB5+LW174r_=AYMCt22OYg3X5g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOCi2DHkHpakjYezcnCXF35ViB5+LW174r_=AYMCt22OYg3X5g@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 22, 2017 at 03:45:43PM +0530, Gargi Sharma wrote:
> On Wed, Feb 22, 2017 at 1:20 AM, Johan Hovold <johan@kernel.org> wrote:
> >
> > On Wed, Feb 22, 2017 at 12:36:23AM +0530, Gargi Sharma wrote:
> > > Change array index from the loop bound variable to loop index.
> > > Memory leak was occuring whenever there was more than one
> > > loopback device. The pointer to dirent structures must be
> > > individually freed before freeing the pointer array.
> > >
> > > Coccinelle Script:
> > > @@
> > > expression arr,ex1,ex2;
> > > @@
> > >
> > > for(ex1 = 0; ex1 < ex2; ex1++) { <...
> > >   arr[
> > > - ex2
> > > + ex1
> > >   ]
> > >   ...> }
> > >
> > > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > > ---
> > > Changes in v2:
> > >       -Made the commit message clearer.
> > > ---
> > >  drivers/staging/greybus/tools/loopback_test.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/greybus/tools/loopback_test.c
> b/drivers/staging/greybus/tools/loopback_test.c
> > > index 18d7a3d..1c01833 100644
> > > --- a/drivers/staging/greybus/tools/loopback_test.c
> > > +++ b/drivers/staging/greybus/tools/loopback_test.c
> > > @@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
> > >       ret = 0;
> > >  done:
> > >       for (i = 0; i < n; i++)
> > > -             free(namelist[n]);
> > > +             free(namelist[i]);
> > >       free(namelist);
> > >  baddir:
> > >       return ret;

> > Oh, there's an illegal free here, which probably was what Julia was
> > referring to. Yeah, not sure why things haven't blown up, perhaps there
> > happens to be NULL pointer after?
> >
> > So we are in fact always leaking the device name here.
> 
> Um, should I assign null pointers to device names before freeing them? That
> should fix illegal free I believe.

No, your fix is fine as is, it's just a matter of describing the problem
accurately in the commit message.

> > No need to resend, unless you prefer. You can add my Reviewed-by tag if
> > so.
> Not sure what this means. I can send a v3 with the above suggested changes
> if they are correct.

Sorry if I was being unclear. I meant to say that your current commit
message is good enough, but perhaps it is indeed better if you do send a
v3 where you mention that we have been leaking all the device names
always (and not just when there have been more than one as I incorrectly
suggested).

You can also mention that you fix that illegal free of namelist[n],
which must so far have happened to be NULL (I verified that it is indeed
NULL here on my system too).

Thanks,
Johan


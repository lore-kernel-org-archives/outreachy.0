X-GM-THRID: 6389607750950715392
X-Received: by 10.46.87.27 with SMTP id l27mr2807738ljb.28.1487701191854;
        Tue, 21 Feb 2017 10:19:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.15 with SMTP id h15ls806188ljb.14.gmail; Tue, 21 Feb
 2017 10:19:51 -0800 (PST)
X-Received: by 10.25.79.23 with SMTP id d23mr2832091lfb.27.1487701191149;
        Tue, 21 Feb 2017 10:19:51 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id p185si1206789wme.1.2017.02.21.10.19.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 10:19:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-lf0-x242.google.com with SMTP id z127so9794488lfa.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 10:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WHnMRV0jnx3/odkIZ5RP0KWicUQipoZ7ww/LSsCkHLk=;
        b=T5SZPXE0M0WA8PWbQPOEhZ/sDkIDXx4sVepfT93nBg1X+KB2tCr9Nu/bRmpy14PweD
         syaQd/dqlkk2/HJkV4oKlA4mTUUXNIrOhYpUUUs8Dy8wePNMPpbMiAt+zYeuh5qnWYFH
         ojHC+o/OvZJwVLlAl/V+rWRKWbWdIZVSzqEiD+t5IVFYYgNIsG9GmpSge9mFZOE2mIMV
         6DRVn/HS2MI/Ke4uNo+YIb4K2KsVTo9dTQscV8h+w9gjN5n9XgYxbvP5tU5MX3FFIWaW
         DuOKPDZtWBkYKMoqrkwOWV3wA9nLbtd+LvRqhpBaHiuXE/+qanI5roOdXm9LUD7fQsCA
         ci9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=WHnMRV0jnx3/odkIZ5RP0KWicUQipoZ7ww/LSsCkHLk=;
        b=jgXRro1olNY1jncB6PH+3IbqWsR27wCs4bWZGFya6m42ox+JEOW4Cty8urTAhzeCk+
         xgXIyHr49kGSpNW/1K0kSXgobu46soTVVOV7XVbi8JzfEbgu7766Ah/dlE2n7c/i/tU+
         Wn8E/JDg9YYo/64zCK65VqwZYQMIz2ZyY6LwiUHzfUWSZwgi7t8Z/I/hQoiMPVQ2Bjq1
         udJqOM2zmHi8Jzn7dHZLCzgu2h1wiBXCSc7LEDDe/7rA5q0QbbFp2gu7DcUaDRupDeNI
         x+bL6satrvkhLhICtiY/x39YwX8fUQAceaOatu7/YStN2MBcEf3rTXywLHbJqkjWesdC
         YD6Q==
X-Gm-Message-State: AMke39nPKemmkU7UMtlVEBCk/DaZM66QT1wIe6KUjgCNLXxqVt21GKzQFJah4oPs+N2IVw==
X-Received: by 10.46.21.93 with SMTP id 29mr7297531ljv.11.1487701190841;
        Tue, 21 Feb 2017 10:19:50 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra ([84.216.234.102])
        by smtp.gmail.com with ESMTPSA id u126sm6404432lja.25.2017.02.21.10.19.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 10:19:50 -0800 (PST)
Sender: Johan Hovold <jhovold@gmail.com>
Received: from johan by xi.terra with local (Exim 4.88)
	(envelope-from <johan@kernel.org>)
	id 1cgF2U-0000x6-JT; Tue, 21 Feb 2017 19:19:51 +0100
Date: Tue, 21 Feb 2017 19:19:50 +0100
From: Johan Hovold <johan@kernel.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Gargi Sharma <gs051095@gmail.com>, outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org, johan@kernel.org, elder@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: loop variable to
 loop index
Message-ID: <20170221181950.GD10245@localhost>
References: <1487696353-11316-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1702211830560.3448@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1702211830560.3448@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 21, 2017 at 06:31:28PM +0100, Julia Lawall wrote:
> On Tue, 21 Feb 2017, Gargi Sharma wrote:
> 
> > Change array index from the loop bound variable to loop index.
> > Once all the loopback devices have been found, free the pointer
> > array containing the dirent structures. The pointer to dirent
> > structures must be individually freed before freeing the pointer
> > array.
> >
> > Coccinelle Script:
> > @@
> > expression arr,ex1,ex2;
> > @@
> >
> > for(ex1 = 0; ex1 < ex2; ex1++) { <...
> >   arr[
> > - ex2
> > + ex1
> >   ]
> >   ...> }

Another good catch, but you should change the patch summary to something
more descriptive (and less detailed) like:

	staging: greybus: loopback_test: fix device-name leak

and possibly also make it more clear from the commit message that we've
been leaking these strings whenever there have been more than one
loopback device. (The memory is returned once the test program exits,
but still).

Care to send a v2 with those changes?

> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/greybus/tools/loopback_test.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> > index 18d7a3d..1c01833 100644
> > --- a/drivers/staging/greybus/tools/loopback_test.c
> > +++ b/drivers/staging/greybus/tools/loopback_test.c
> > @@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
> >  	ret = 0;
> >  done:
> >  	for (i = 0; i < n; i++)
> > -		free(namelist[n]);
> > +		free(namelist[i]);
> 
> I guess this is a test, so no one ever tried running it :)

It is a test tool, but we've been using it quite a bit.

Thanks,
Johan


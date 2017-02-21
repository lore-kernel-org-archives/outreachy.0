X-GM-THRID: 6389607750950715392
X-Received: by 10.28.184.21 with SMTP id i21mr1325254wmf.21.1487706847154;
        Tue, 21 Feb 2017 11:54:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.17 with SMTP id 17ls803662ljh.32.gmail; Tue, 21 Feb 2017
 11:54:06 -0800 (PST)
X-Received: by 10.46.6.26 with SMTP id 26mr2965536ljg.31.1487706846452;
        Tue, 21 Feb 2017 11:54:06 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id h62si907604wme.2.2017.02.21.11.54.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 11:54:06 -0800 (PST)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-lf0-x241.google.com with SMTP id 86so5731246lfv.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 11:54:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=P08H2mzPYk3M/7qVxuAeEIDyJwFXcHlEkM995bLndgg=;
        b=LzQYWVkhoXqquqbsb4DhxRm0Iq6KV4wY40GK21bMAHka1gv1J+/gImlXO2gxq93LKU
         v+UfTf/48SVkmkLF2Ih3uRU+4iwYACohCXpqgR8emm/47LdF8IqRx3n5EFDCXnCVQYC6
         I20oSeDRsGzktiO605VaBxrFyF4LboxFggiuorjKKZu9/4HkMduHA/fjMj/mReUi5fOs
         bftnUBGkNNnqPqOwLL4z/tJxICugyNFyQ6Bk0ngIPdbLf6azw4yL8uZraodWiQFU0s5g
         LR44JZc+WINqJ3O0nJdcE1OyXmfK1mWGPZ8M/addZA1yJMF0XsAqMnaZC3WOFIUIe1Jw
         XzLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=P08H2mzPYk3M/7qVxuAeEIDyJwFXcHlEkM995bLndgg=;
        b=fQnJC28728CQvAfuUpBKHxTc4D/zKsT86TG8n/EIciS5hUpoQ3v2oskzC/PaHci7a8
         k05rEtI8Hvp/hd0OeVRtLyWpNCzX3VazzglhkZvgjKZYyKHE6lVCubjSjEAWwv75vA1H
         Og1VrDet4R2RqhdykWCOyEljHBwCLNYwr6L3cB2MifJpipofOvRZ71F7rNFkRq1KD9to
         sxAtcL+ifqOYoYu+hqHf92VLNelQXHGVnugR/bKzw9jD8+136WoKLA3acuNDIO1dhD2b
         12DbwoYUGJTys7xfVEOlXPZAbWv7XyNiHg8Pe/6MZoxN/7GVGfuvit0bh27JgvOq6kDq
         4SfA==
X-Gm-Message-State: AMke39mX4sIB75OJZmt4SBSRqG5MWaxT1fFwdXsQrDy5Qw6unHEnA/OpV2rKSheE+OfIaQ==
X-Received: by 10.25.201.74 with SMTP id z71mr1280480lff.108.1487706845929;
        Tue, 21 Feb 2017 11:54:05 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra ([84.216.234.102])
        by smtp.gmail.com with ESMTPSA id e18sm6438034lfg.22.2017.02.21.11.54.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 11:54:05 -0800 (PST)
Sender: Johan Hovold <jhovold@gmail.com>
Received: from johan by xi.terra with local (Exim 4.88)
	(envelope-from <johan@kernel.org>)
	id 1cgGVi-00017L-FK; Tue, 21 Feb 2017 20:54:06 +0100
Date: Tue, 21 Feb 2017 20:54:06 +0100
From: Johan Hovold <johan@kernel.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Johan Hovold <johan@kernel.org>, Gargi Sharma <gs051095@gmail.com>,
	outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	elder@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: loop variable to
 loop index
Message-ID: <20170221195406.GG10245@localhost>
References: <1487696353-11316-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1702211830560.3448@hadrien>
 <20170221181950.GD10245@localhost>
 <alpine.DEB.2.20.1702212049350.2117@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1702212049350.2117@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 21, 2017 at 08:50:33PM +0100, Julia Lawall wrote:
> On Tue, 21 Feb 2017, Johan Hovold wrote:
> > On Tue, Feb 21, 2017 at 06:31:28PM +0100, Julia Lawall wrote:
> > > On Tue, 21 Feb 2017, Gargi Sharma wrote:
> > >
> > > > Change array index from the loop bound variable to loop index.
> > > > Once all the loopback devices have been found, free the pointer
> > > > array containing the dirent structures. The pointer to dirent
> > > > structures must be individually freed before freeing the pointer
> > > > array.
> > > >
> > > > Coccinelle Script:
> > > > @@
> > > > expression arr,ex1,ex2;
> > > > @@
> > > >
> > > > for(ex1 = 0; ex1 < ex2; ex1++) { <...
> > > >   arr[
> > > > - ex2
> > > > + ex1
> > > >   ]
> > > >   ...> }
> >
> > Another good catch, but you should change the patch summary to something
> > more descriptive (and less detailed) like:
> >
> > 	staging: greybus: loopback_test: fix device-name leak
> >
> > and possibly also make it more clear from the commit message that we've
> > been leaking these strings whenever there have been more than one
> > loopback device. (The memory is returned once the test program exits,
> > but still).
> >
> > Care to send a v2 with those changes?
> >
> > > > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > > > ---
> > > >  drivers/staging/greybus/tools/loopback_test.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> > > > index 18d7a3d..1c01833 100644
> > > > --- a/drivers/staging/greybus/tools/loopback_test.c
> > > > +++ b/drivers/staging/greybus/tools/loopback_test.c
> > > > @@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
> > > >  	ret = 0;
> > > >  done:
> > > >  	for (i = 0; i < n; i++)
> > > > -		free(namelist[n]);
> > > > +		free(namelist[i]);
> > >
> > > I guess this is a test, so no one ever tried running it :)
> >
> > It is a test tool, but we've been using it quite a bit.
> 
> I guess I don't know what n is.  I would have expected that it would be an
> out of bounds array reference, at least sometimes.

No, you're absolutely right, I just noticed the potential illegal free
here too. Perhaps namelist[n] has just happened to be NULL so far.

Thanks,
Johan


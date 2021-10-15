X-GM-THRID: 7019053574676021248
X-Received: by 2002:aca:b142:: with SMTP id a63mr8855819oif.115.1634310701037;
        Fri, 15 Oct 2021 08:11:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:b687:: with SMTP id v7ls664792ooo.6.gmail; Fri, 15 Oct
 2021 08:11:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzklF3WvMlVlgxltFVLc0QiTTqmCyq6UKbQxkV30ztruuVGs+4gmz4aAjOKV4Brdqybx8NS
X-Received: by 2002:a4a:3859:: with SMTP id o25mr9224743oof.10.1634310700212;
        Fri, 15 Oct 2021 08:11:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634310700; cv=none;
        d=google.com; s=arc-20160816;
        b=di40BNLsy3/ezQERmN/X5IWUvRYfOjzmFdKdfGOuuhpXcP7nobiZVUT4AWdnMe4M9z
         OnLEGlJtujn0tODf5czK/4/Y8au81IocgriGbmo/6NBnL6kyXvkZ0BgFMVsLmryu6cF7
         Ox7BNzZpG0msPUAtUiTNnQWBrG4HzlVvgAdZkAv9rZ3ABT5MAfFFI3ib8tv0s/DOUClh
         XQi5X+LhZqZ4sPyuEYryFSVLyTEtkuSOpHxTimp+5eEWCQ3/AynIlh69yNrOUQhrX5FP
         3AFGuniiike4+LanWvlXHinVs9K6U+oTVRFlPxcQf8SMb6XbYyX52PsFUIWIX5RV6caJ
         5x5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=EtPtgEA1wO0PGYDwTdXg2CFwZ1rFh/341ZTjNgd7MPs=;
        b=WBJwAWV02lV2T79Rr+kX+ZWWpTxhA7bXbdiIqqyRTtNnZC+BcIg0mulXgulhqCxc3O
         J9r4AOOveyg4xedQz8zJKdwEBqDGptggubi7kmIiN05QLsygCf7soKXn6Uh2rMD+5KPQ
         ArruJit13q60ctnFU6kB/kl2DC/1kphWoLdlfRD8vlY80eyJnVLGd2yL3Tg8uba8K1jz
         mR4F4ut1/SGbow1Z0HLYTHZeWeDcNY71e+cy2fQcotIyeQQk64MqMTy+M/+2jiLL6JnV
         awX+Kc7T2e2T7jNyvbyp+EBQLT1qoesAPdJ5fqUE9/gztqzqji8o07qY1Za1A4xSUmDW
         HsEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=x5Ar95bK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m3si563539oif.3.2021.10.15.08.11.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Oct 2021 08:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=x5Ar95bK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id C800861211;
	Fri, 15 Oct 2021 15:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634310699;
	bh=huEttVeWOjrPDG1nEvDiFxyMsk1s2DLcpml71cA5+o8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=x5Ar95bK9QR2sZrvGhHW+VjT8KBu7fvOHMbvPDBslQdB+zYVLd2aiMnYyh6ES1EOm
	 Cb1qnhcuyyycYBirYegkf9D8gLkxTMRvXHfWEAeM0FffSMyG6XpLwjKJg5x5k2oiUc
	 Hn9t2/OxEzzLgVZ4zBHG0qo0jQCbivs2HOltl9b4=
Date: Fri, 15 Oct 2021 17:11:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Kushal Kothari <kushalkothari285@gmail.com>,
	mike.rapoport@gmail.com, mchehab@kernel.org,
	sakari.ailus@linux.intel.com
Subject: Re: [Outreachy kernel] [PATCH] staging : media : atomisp :
 input_system.c : fixes the error of control reaches end of non-void function
 [-Werror=return-type]
Message-ID: <YWmaKGa/DRnTcFF0@kroah.com>
References: <20211014223007.596789-1-kushalkothari285@gmail.com>
 <2125107.Dqu8hxrGLC@localhost.localdomain>
 <2247559.FlfiXgstMM@localhost.localdomain>
 <alpine.DEB.2.22.394.2110151648300.7123@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2110151648300.7123@hadrien>

On Fri, Oct 15, 2021 at 04:52:09PM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 15 Oct 2021, Fabio M. De Francesco wrote:
> 
> > On Friday, October 15, 2021 2:04:49 PM CEST Fabio M. De Francesco wrote:
> > > Hi Kushal,
> > >
> > > Aside from what Alison said about not accepting patches in this driver this
> > > round, please note that this is not the correct way to address that
> > compiler
> > > warning.
> > >
> > > Think about it: now, whatever "state" you get from set_source_type(), you
> > > always return it to the caller of input_system_configure_channel_sensor().
> > >
> > > By doing so, you change the logic of the function and get dead code. This
> > > change makes the rest of the function code unreachable and introduces a
> > huge
> > > bug.
> > >
> > > While the patch cannot be accepted for Outreachy, think of a better
> > solution
> > > as you may need to make similar changes in future patches.
> > >
> > > Thanks and welcome,
> > >
> > > Fabio M. De Francesco
> >
> > I'm sorry, but just now I saw the reply Kieran Bingham. I'm simply restating
> > what he wrote, so please disregard my email.
> >
> > I think that I didn't see his email because you forgot to CC linux-
> > staging@lists.linux.dev and linux-kernel@vger.kernel.org.
> >
> > Please read again the Outreachy rules. If I'm not wrong, you should always CC
> > the two mailing lists above.
> 
> The instructions say to use the following:
> 
>  perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --nogit-fallback --norolestats --nol -f {file}
> 
> Probably the --nol argument should not be there, because some staging
> drivers have mailing lists that should see the patches. I don't know if it
> is desirable for everything to go to linux-kernel@vger.kernel.org though.
> This part of the application process is meant to be highly newbie
> tolerant.
> 
> In any case, Alison can decide.

The patches HAVE to show up on the linux-staging@vger list at the very
least, otherwise I can not take them.

thanks,

greg k-h


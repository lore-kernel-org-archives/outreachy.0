X-GM-THRID: 6331784353650049024
X-Received: by 10.36.133.136 with SMTP id r130mr4007652itd.8.1476473237813;
        Fri, 14 Oct 2016 12:27:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.202 with SMTP id g193ls2999686ioe.37.gmail; Fri, 14
 Oct 2016 12:27:16 -0700 (PDT)
X-Received: by 10.36.225.75 with SMTP id n72mr4217822ith.3.1476473236204;
        Fri, 14 Oct 2016 12:27:16 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id co10si2755199pad.1.2016.10.14.12.27.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 12:27:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id s8so7770302pfj.2
        for <outreachy-kernel@googlegroups.com>; Fri, 14 Oct 2016 12:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+Hh39B79AiOTJkoHUa/a6ojcavF08riFf//KKvPVW50=;
        b=apFhmEV8nb7S7DlIpchIr3ZEPYjz799I0bDFhyquiADteRUMg8MIQnibdBSvm45+Pr
         VCK0QQze1lMQMLdqEEzfE/B5M6TjJz0M8NblyY3nLJxgcYVJR6Cqa7j5J/0B5fhadGda
         T7MUJdg4ixG9tYPQYapZ4DHpFdfn2zmFH2/vAUIQnWoPybOpufr0uxYR4wUJg5yDbIMA
         tNz1jxOXPfYNMtIF+cLpcBDpY68r2fQDK5GI8CyVqr3x0H8Ba358kn4k4SO9XGedFeaC
         qNLeYsB/ZH3XkdijOykz5d64/idZVblZdf8LB6IndkDZx4JOLfCHxWdS0XS3BRGpiH5K
         Bpjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+Hh39B79AiOTJkoHUa/a6ojcavF08riFf//KKvPVW50=;
        b=VMCsXelXSNI3wSpk1KV2V1Cr4IchNCN0JDB/xxp6Lcu20C+lka9mPMtRXwqPetiLiM
         hwErl83TfrakFjE7FsDxn+HdVDUd/g0S2yJCUJh72A24AIkLBQfc9Fjsh8oBLSjju9cN
         en5VcwllmM1ttQqozBMUOX3OcBJeC2YxqZi5BexIID9wVpRb/TldzkuuXfGOUO8udqSc
         JaxUFXNNA6Ea/fjksm+Ci2Ep0ROEizMsMOeIKGyUCbTzXKbI782St91Sch4tJZo6jrd3
         YcqojPpVaSp3ZLAQqDH0q9TElevQh47dY89+QbeVQK2/b+VWJPiT+5n3O1j/9WEx9wBZ
         +m9g==
X-Gm-Message-State: AA6/9RnD6nzsnBxxDlBW2dGW5eLU/tmYCyBjD02XxTFKqzCla8+oQ6xyICvnexMjiJyXqQ==
X-Received: by 10.98.9.147 with SMTP id 19mr20582960pfj.68.1476473235984;
        Fri, 14 Oct 2016 12:27:15 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id q63sm29313225pfg.74.2016.10.14.12.27.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 14 Oct 2016 12:27:15 -0700 (PDT)
Date: Fri, 14 Oct 2016 12:27:14 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel@googlegroups.com, knaack.h@gmx.de,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"Hennerich, Michael" <Michael.Hennerich@analog.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: trigger: Use devm
 functions
Message-ID: <20161014192713.GA2356@d830.WORKGROUP>
References: <1474233410-6932-1-git-send-email-bhumirks@gmail.com>
 <20160919054442.GB2699@d830.WORKGROUP>
 <CAOH+1jFsWGDVcifqDU0_9MPw=uEXQ+u0E8dg0hkimx+eJbWq1Q@mail.gmail.com>
 <alpine.DEB.2.10.1609191120270.3203@hadrien>
 <fc36bfeb-abae-f8ad-aca0-161cd6743137@kernel.org>
 <b02b84c9-0575-d10d-6b43-d95d167a2429@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b02b84c9-0575-d10d-6b43-d95d167a2429@metafoo.de>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Sep 19, 2016 at 10:06:08PM +0200, Lars-Peter Clausen wrote:
> On 09/19/2016 09:29 PM, Jonathan Cameron wrote:
> > On 19/09/16 10:21, Julia Lawall wrote:
> >>
> >>
> >> On Mon, 19 Sep 2016, Bhumika Goyal wrote:
> >>
> >>> On Mon, Sep 19, 2016 at 11:14 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> >>>> On Mon, Sep 19, 2016 at 02:46:50AM +0530, Bhumika Goyal wrote:
> >>>>> Use managed resource functions devm_iio_trigger_alloc and
> >>>>> devm_request_irq instead of iio_trigger_alloc and request_irq.
> >>>>> Remove corresponding calls to free_irq in the probe and remove
> >>>>> functions. Drop the now unnecessary goto labels and replace various
> >>>>> gotos with direct returns.
> >>>>> request_irq replacement done using coccinelle.
> >>>>
> >>>> Hi Bhumika,
> >>>> Thanks for the patch.  This seems like it's worthy of 2 separate
> >>>> patches.
> >>>>
> >>>> Also, I'm a bit confused with why I don't see an iio_trigger_free
> >>>> that is going away, when you switch to the devm_iio_trigger_alloc
> >>>> functions, but I realize there isn't one there to remove. hmm???
> >>>>
> >>>> alisons
> >>>>
> >>>
> >>> Hey Alison,
> >>> Ok, I will separate this in two patches. I will do
> >>> devm_iio_trigger_alloc in patch 1 and devm_request_irq in patch 2 as
> >>> devm_request_irq requires all previous memory allocations to be devms.
> >>> Regarding iio_trigger_free I didn't find any in either of the two
> >>> functions(probe and remove).
> >>> Thanks for the input.
> >>
> >> I think that normally people devmify everything at once.
> > I would as well.  It is 'kind of' one change...
> >>
> >> I dimly recollect that iio_trigger_unregister does the free.  Check
> >> whether this is the case, and whether it is devm safe.
> > Given it's referenced on the next line I certainly hope it doesn't ;)
> > There are quite a few reasons this one is in staging!
> 
> For some reason this driver uses iio_trigger_put() instead of
> iio_trigger_free(). Which is wrong, since iio_trigger_put() does an
> additional module_put() which would release a reference we've never gained.
> So the first fix should be to replace iio_trigger_put() with
> iio_trigger_free() (which is a patch for stable) and then switch to the devm
> version and remove the iio_trigger_free() (which is a patch for next).
> 
> This does not seem to be the only driver that gets this wrong,
> iio-trig-sysfs and iio-trig-interrupt are also affected. These would make a
> good target for further patches.
> 
> Bonus points if you can present a proof-of-concept that exploits this bug to
> run arbitrary code with kernel privileges.
> 
> There seems to be another bug regarding trigger reference counting in
> iio_trigger_write_current(). The reference to the trigger should be acquired
> in iio_trigger_find_by_name() while holding mutex. Otherwise we risk that
> the trigger is already freed before we grab the reference later in
> iio_trigger_write_current(). That's another opportunity for sending a good
> patch and also some opportunity for bonus points.
> 

Hi Bhumika,
I have interest in working this issue.  Let me know if it's ok for
me to run with.  
Thanks!
alisons


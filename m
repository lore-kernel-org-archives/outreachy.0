X-GM-THRID: 6465168256299696128
X-Received: by 10.46.67.12 with SMTP id q12mr1153352lja.35.1505365802007;
        Wed, 13 Sep 2017 22:10:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.83 with SMTP id i80ls1283410wmf.5.canary-gmail; Wed, 13
 Sep 2017 22:10:01 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCFlfkgHFIsQzqUW7rLbjrZPoeEjLAa2Ye4eSyE8XtH0+TJg0ADKIosjIf5K5ki6izvoue2
X-Received: by 10.28.21.65 with SMTP id 62mr75588wmv.22.1505365801089;
        Wed, 13 Sep 2017 22:10:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505365801; cv=none;
        d=google.com; s=arc-20160816;
        b=so5XaFpMgG1svd0NZvAE60wfWXSGBtbKG8olALTH9KdQHTjm5AFB/jI4EnfrccJZxs
         hawNOsIB3jXatgTE7v4VZaz8KHTjuaY57Mdx0qA8xITGUWdmgXUS3NTY4SI5d8WUWhrw
         kEpKg5jGpvTPF7bwp1hYPzRW+FRGEHSMa5rW+YF/jWt1GqAvT0aCC1jxbYHWJg+a1kEt
         I/Krpcm7rpL0AtpByAk2jPCKN0/Ozb1g1Uc7EdIJOkj3g7oGRqLTE+vAxIk2kLc78exf
         +VaVHrCiq8hrXKYsKgY7xySd5h8Scqx8MOwcn6d+5b8QuHS8NXjBudFtTIX/QnX7yagk
         V7Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=75kF/umga8y1aUAsebFDUnohuhb58s9yX2A4KmxqYUw=;
        b=b20k3JHy+Gnv5civ1Pd/igg8AUUugseg7H8AOve6cEOj+x3DdD/t/mtvujijso0n0v
         ZhIEhRh2/oPbEkW7qtgqkYPiRBFkcpQ57nN0PDLobcX3fObBIQ5Zqt6FfURx5yDD6ESd
         I2ciAQpJ85sxqi6J4pSSP4WO3YPukTVEwwzjpWP3v7OgN9yy8ofP9ORdIgiXohkvAwp6
         ryPKJ76/e43xRJyTFQvynCS6wbASPTSiOjFiTzGRs6YvHD4HltcvE+hfL/YnkA5vxdGY
         ZfxvT+hS7VOTimOmWLknKhQRq2/M1XyojL1JCnqeaNaTjsthGYUMGAuImQmVTL02LBlu
         8PeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 191si32624wmn.2.2017.09.13.22.10.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 22:10:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,391,1500933600"; 
   d="scan'208";a="290982513"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 07:10:00 +0200
Date: Thu, 14 Sep 2017 07:10:00 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Dan Carpenter <dan.carpenter@oracle.com>, 
    Greg KH <gregkh@linuxfoundation.org>, Lars-Peter Clausen <lars@metafoo.de>, 
    devel@driverdev.osuosl.org, daniel.baluta@gmail.com, 
    Himanshi Jain <himshijain.hj@gmail.com>, Michael.Hennerich@analog.com, 
    linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
    nick.desaulniers@gmail.com, outreachy-kernel@googlegroups.com, 
    pmeerw@pmeerw.net, knaack.h@gmx.de, Jonathan Cameron <jic23@kernel.org>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/2] include: linux: sysfs:
 Add __ATTR_NAMED macro
In-Reply-To: <1505339903.8969.20.camel@perches.com>
Message-ID: <alpine.DEB.2.20.1709140709450.2091@hadrien>
References: <cover.1505291907.git.himshijain.hj@gmail.com>  <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com>  <20170913180310.27cbf1b1@archlinux> <20170913185805.GB26390@kroah.com>  <5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de>
  <20170913212952.GD9288@kroah.com> <20170913214333.mcw4f24fkzndwh5k@mwanda> <1505339903.8969.20.camel@perches.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Joe Perches wrote:

> On Thu, 2017-09-14 at 00:43 +0300, Dan Carpenter wrote:
> > He was exagerating a bit to call it a "static checker" warning...
>
> Not really.
>
> False positives and false negatives exist in just about
> every static
> checker.
>
> > It's just checkpatch.pl complaining about adding spaces around the -
> > operator.
>
> checkpatch is a brain-damaged by design static checker.
> regexes can only be sensitive to patterns, not compiled code.
>
> > The sysfs file has a hyphen in the middle.
>
> Another option would be to use an underscore instead.

There are already underscores on either side.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505339903.8969.20.camel%40perches.com.
> For more options, visit https://groups.google.com/d/optout.
>


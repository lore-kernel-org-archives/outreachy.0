X-GM-THRID: 6951014444226838528
X-Received: by 2002:a5d:4acf:: with SMTP id y15mr32619949wrs.245.1618411163200;
        Wed, 14 Apr 2021 07:39:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6804:: with SMTP id w4ls3219594wru.2.gmail; Wed, 14 Apr
 2021 07:39:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwgBkr5uDXibBRbBivQdUA1PF29s5s2fzfyBddhwSG8dIHYBs2SqnUI7Q7hTAIYi3DgEHaN
X-Received: by 2002:a5d:4412:: with SMTP id z18mr751677wrq.28.1618411161729;
        Wed, 14 Apr 2021 07:39:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618411161; cv=none;
        d=google.com; s=arc-20160816;
        b=zBKDWyDqjhaYh0Ps4DVEsCj31gQXrXJZSAlHO3TNPftgpT0si23xeBz7K5JlAHebj6
         g2UY4oEh2NDrFenf1U6d2IikjEuH5j0zwUmIORb2wn7spe46d09qWaRlcdLO96N20Zgw
         lB+O0vuTipxv5DKLDy/lawMuknPnRpTCpRSrLbp/GMsq/AEG3LLjvO3TKQsKQKFz5TQL
         bNFOTbS3QFk5p9cHLDJOuLRn7O8RooRk2NTayp1hyE+PbYylgA9GcsQk5igmqqgzovF7
         y6in72Go8ppme3xqilC5HKv6MKMYUxdeP7mmYBkl05UhAYmBAer60vHPOgqn3bvbslcF
         Etsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=bEPztkZ2fJkbOWTamy8PODldOwsVda98z2PZ43TdNkE=;
        b=hQXH1bxT6omA8KItTudhSQwOJdaayu2M2LH10Ke8/M2qZcbveHvSdIxffaAdq0H/yU
         vvBNs5aRkMk7PsCIZPr/kkOzDpEYo2SgcsNyIS8qjKgznQmlcbgSBIEFwY3hB941cFnt
         fhejj4GeGV05KLMKICfmRAjdAcfJOm9RQ0kS//Oh5Xrm1qkvGATgdhAxmF73JeyQ1Ny6
         f9LgN07Aw78EK4COOdOCf0SCFqdZ6flqBZZZOn6yhyyGfs0LswJVo8EQ2ht3Hu7EVIRt
         vyN4Abscc2lVlVwn2csIfyc0V0ktYlnvqRs33vm/MnwZ8H6gYyHr6gANfhAhRHzCw0EX
         o8/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p65si329150wmp.0.2021.04.14.07.39.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 07:39:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AKyHtCaqWOi4LOXVnh17Oa/waV5rKeYIsi2QD?=
 =?us-ascii?q?101hICF9WMqeisyogbAnxQb54QxhPE0ItNicNMC7Kk/02oVy5eAqV4uKfA6jg2?=
 =?us-ascii?q?ewKZEn0I2K+VzdMgnf0sIY6qt6aah5D7TLfD1HpOL3+hOxHdpl4PTvysCVrNzT?=
 =?us-ascii?q?xXtsUg1mApsIhztRMQqVHlZ7QwNLH/MCZfmhz/BarDmtc2l/VKqGL0QCNtKum/?=
 =?us-ascii?q?T2jp78JTYJCxk7gTP+7w+A2frKVyKV2RoTSFp0rIsK+2KtqWPE2pk=3D?=
X-IronPort-AV: E=Sophos;i="5.82,222,1613430000"; 
   d="scan'208";a="378655164"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 16:39:20 +0200
Date: Wed, 14 Apr 2021 16:39:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dan Carpenter <dan.carpenter@oracle.com>
cc: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Sakari Ailus <sakari.ailus@linux.intel.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: media: atomisp: pci:
 Correct identation in block of conditional statements in file
 atomisp_v4l2.c
In-Reply-To: <20210414143011.GV6021@kadam>
Message-ID: <alpine.DEB.2.22.394.2104141638140.25259@hadrien>
References: <cover.1618409028.git.alinesantanacordeiro@gmail.com> <0ef18a36d6905628fa596fd5e0a32fdb9c6a8ada.1618409028.git.alinesantanacordeiro@gmail.com> <20210414143011.GV6021@kadam>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 14 Apr 2021, Dan Carpenter wrote:

> On Wed, Apr 14, 2021 at 11:06:02AM -0300, Aline Santana Cordeiro wrote:
> > Correct identation in block of conditional statements.
> > The function "v4l2_device_unregister_subdev()" depends on
> > the results of the macro function "list_for_each_entry_safe()".
> >
> > Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> > ---
> >  drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > index 0295e2e..6d853f4 100644
> > --- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > +++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > @@ -1178,7 +1178,7 @@ static void atomisp_unregister_entities(struct atomisp_device *isp)
> >  		atomisp_mipi_csi2_unregister_entities(&isp->csi2_port[i]);
> >
> >  	list_for_each_entry_safe(sd, next, &isp->v4l2_dev.subdevs, list)
> > -	v4l2_device_unregister_subdev(sd);
> > +		v4l2_device_unregister_subdev(sd);
> >
>
> It's really more common to use curly braces for list_for_each() one
> liners.
>
> 	list_for_each_entry_safe(sd, next, &isp->v4l2_dev.subdevs, list) {
> 		v4l2_device_unregister_subdev(sd);
> 	}

A quick test with grep shows 4000 lines containing list_for_each that
contain no {, out of 15000 lines containing list_for_each in all.

julia


>
> regards,
> dan carpenter
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210414143011.GV6021%40kadam.
>


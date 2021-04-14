X-GM-THRID: 6951014444226838528
X-Received: by 2002:a63:ee42:: with SMTP id n2mr37519665pgk.37.1618411868701;
        Wed, 14 Apr 2021 07:51:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b942:: with SMTP id h2ls1371821pls.8.gmail; Wed, 14
 Apr 2021 07:51:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyNhsBxjGQzX+IElE2rEieWqdCdTTNDeeinP/PjAyJ2+qbmygEfPesPgvi/L51bEkl+8oIv
X-Received: by 2002:a17:902:a587:b029:e7:347d:4872 with SMTP id az7-20020a170902a587b02900e7347d4872mr39501426plb.2.1618411867555;
        Wed, 14 Apr 2021 07:51:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618411867; cv=none;
        d=google.com; s=arc-20160816;
        b=PeCb55422jnO4h/OtX89ZkfmktioqmkavwLthFHfgAJdZZOmSIvRcUvxJh+wKg6q93
         lkaNSV11oMMbzX8ZS75MoqkGvTLMTdkIW26deZJcNtNhTWrYb0lw0I73qTnDgdRQyzyH
         Y1L0ITvIsIjb3uOXZ0XrUdzmal73RmNHcBiDbM+nZeGiA3mEdAeQXKOxI5ftaIA+X4ng
         lYVEjRmwn+YZeCBMSnl2xmVI4/2VbzF5sBJ+sALtFlNfAYMCpXeD74YWgH2c7Ctm2aIO
         WaYx23zY0S3uU3+gyL1brvCI3s/rAXxXsVq6pfcZwWPMa5FM3Xh3/FyGwQw2iR7RGjfo
         jtpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=hGtfqo5Bo6cc29ptmRB3Rcvg0AUrNYFdCJJIvwgoZk4=;
        b=WSwYF1g7aGdxW6vCuM0w10AbRfHhPmd1nogztmqQU8IHAFhX5PrHi2pCra7tSVwoHz
         SCESUb1+MSuo4z+Pj7mXU86iWVqb0/5QcJ3Xuir6iW4BQYVZUNEnPB65ulR/iEswk3zL
         4TB067zh/XJ54KdXb1ZmxE7QSd8X0X7OgZe0Coq1dt2i0xtYD7BifTmRke7Zkj4X+suK
         TDZdZ+9gIJ+1AEtfXqYWbE4hQUwAd68Sp3AQMxDj4PYQmuAekHKA8lFH8IrtZEfcKpaD
         UWJGFwGHrGrGhkDgMYZnk/yrQsqk612yDLsVgRV6ITc4teOHo1+O82Xn2OgX4R6/bHSr
         SZvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W+wbeZWb;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com. [2607:f8b0:4864:20::82a])
        by gmr-mx.google.com with ESMTPS id p18si779848pgi.3.2021.04.14.07.51.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 07:51:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) client-ip=2607:f8b0:4864:20::82a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W+wbeZWb;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82a.google.com with SMTP id 18so2210235qtz.6
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 07:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=hGtfqo5Bo6cc29ptmRB3Rcvg0AUrNYFdCJJIvwgoZk4=;
        b=W+wbeZWbrNkJ38iJZGGqvLcGCG5QfT2PDdv9szoQGjlZ/ht5i0k77xTd0wfuWKrnE/
         vsRJXOeXLzndtAMMkqApYdqssKzVxMCNE7v7tfVZmcESZ+e3IOk8lxHGQr8ZL6Fkt+wT
         CDHuURFLWlKMpEOVQ77UMNYx1O48RWV7C3DP3gBXyjcLiIchh0eiyVH0zRU7hMBYHwaF
         U3GA4SiW2Qz3tbK7hRAQj9G0N1Pz4OTqoH2C8JJKmEcxgXYqsgSXHvqhG8XYRA+V8zeP
         JiehTHXsjqiwCPNZwhNzjQ6LIgFoieaBa9ASFNv5cpRPaGP6rqOoH0oHQAsh5NcQCUzz
         R5fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=hGtfqo5Bo6cc29ptmRB3Rcvg0AUrNYFdCJJIvwgoZk4=;
        b=gi6owoyCwH/qBixblSLIHWQA/glFnxqFIzxVc4/+jOQ7mp59RbcqjALZ71RN5Z3Jv0
         uE7drN+8WO3NUZSo8FEP+oX0XXRlqGcvzWT2pzzKX3oRCtRSadwSlf+bTfZ/oNaHK0oM
         G/KneUx2Q/71mcBgUAU+NriOwt0Dc/E5zWbSzmcmYpc+lurjiSVOLf86puU9vi0+Lu47
         dwmmSkhY+CcfeeD8qJxGckC2VG1c014EZ1Upzc5UgCtJUfKCqyOmOnM/6z4XuGWXXgnn
         v7sJUY1BpqxKqhw99AwlYd8eAmCUphCX3awUhV68LYcMQRbG5CA0SNs34CPWBrs6veNO
         JDEQ==
X-Gm-Message-State: AOAM533+FaV3h8c016oG/oiR2Cm4lLHEMa975KyY3bTRs8VFeNPv2A/0
	tmalQJzuHNlXFKQH3ChainM=
X-Received: by 2002:a05:622a:2d2:: with SMTP id a18mr21067960qtx.146.1618411866781;
        Wed, 14 Apr 2021 07:51:06 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from ?IPv6:2001:1284:f016:a037:e514:d03b:27b2:153? ([2001:1284:f016:a037:e514:d03b:27b2:153])
        by smtp.gmail.com with ESMTPSA id p10sm8688096qtl.17.2021.04.14.07.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 07:51:06 -0700 (PDT)
Message-ID: <1ae81e5c2380cf928579d5c62360bdd03a6bbc67.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: media: atomisp:
 pci: Correct identation in block of conditional statements in file
 atomisp_v4l2.c
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Julia Lawall
	 <julia.lawall@inria.fr>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Date: Wed, 14 Apr 2021 11:51:02 -0300
In-Reply-To: <20210414144502.GW6021@kadam>
References: <cover.1618409028.git.alinesantanacordeiro@gmail.com>
	 <0ef18a36d6905628fa596fd5e0a32fdb9c6a8ada.1618409028.git.alinesantanacordeiro@gmail.com>
	 <20210414143011.GV6021@kadam>
	 <alpine.DEB.2.22.394.2104141638140.25259@hadrien>
	 <20210414144502.GW6021@kadam>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em qua, 2021-04-14 às 17:45 +0300, Dan Carpenter escreveu:
> On Wed, Apr 14, 2021 at 04:39:20PM +0200, Julia Lawall wrote:
> > 
> > 
> > On Wed, 14 Apr 2021, Dan Carpenter wrote:
> > 
> > > On Wed, Apr 14, 2021 at 11:06:02AM -0300, Aline Santana Cordeiro
> > > wrote:
> > > > Correct identation in block of conditional statements.
> > > > The function "v4l2_device_unregister_subdev()" depends on
> > > > the results of the macro function "list_for_each_entry_safe()".
> > > > 
> > > > Signed-off-by: Aline Santana Cordeiro <
> > > > alinesantanacordeiro@gmail.com>
> > > > ---
> > > >  drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > > > b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > > > index 0295e2e..6d853f4 100644
> > > > --- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > > > +++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > > > @@ -1178,7 +1178,7 @@ static void
> > > > atomisp_unregister_entities(struct atomisp_device *isp)
> > > >                 atomisp_mipi_csi2_unregister_entities(&isp-
> > > > >csi2_port[i]);
> > > > 
> > > >         list_for_each_entry_safe(sd, next, &isp-
> > > > >v4l2_dev.subdevs, list)
> > > > -       v4l2_device_unregister_subdev(sd);
> > > > +               v4l2_device_unregister_subdev(sd);
> > > > 
> > > 
> > > It's really more common to use curly braces for list_for_each()
> > > one
> > > liners.
> > > 
> > >         list_for_each_entry_safe(sd, next, &isp-
> > > >v4l2_dev.subdevs, list) {
> > >                 v4l2_device_unregister_subdev(sd);
> > >         }
> > 
> > A quick test with grep shows 4000 lines containing list_for_each
> > that
> > contain no {, out of 15000 lines containing list_for_each in all.
> > 
> 
> Huh...  You're right.  Never mind then.
> 
> regards,
> dan carpenter
> 

Ok then :)

Thank you all,

Aline



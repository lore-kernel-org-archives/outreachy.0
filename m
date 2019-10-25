X-GM-THRID: 6751743425868988416
X-Received: by 2002:a05:600c:2112:: with SMTP id u18mr4015346wml.177.1572018877552;
        Fri, 25 Oct 2019 08:54:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:efce:: with SMTP id i14ls6322064wrp.10.gmail; Fri, 25
 Oct 2019 08:54:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqySoFnsFoHso6tRFwkDLKZ78DnI2Hh2ORgk8CEE1w2LeEwdkTruL0DN84si9iuO+UXnJGje
X-Received: by 2002:adf:8289:: with SMTP id 9mr3974587wrc.0.1572018876520;
        Fri, 25 Oct 2019 08:54:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572018876; cv=none;
        d=google.com; s=arc-20160816;
        b=ItM9+eJFl6jiCRsLX3pfXZraqxo9+EX/Ry0ExZMJ6XOyydivOH3iuRxYq6xQ3MWuOA
         fFz0GE8dmlITXgzNXMCQFoqhUmnuqQa4OS0nxfHZDtPHg72qc6H9ginboUqG+o8KWwLw
         D9LfRSXclJ9kSK/h9QQ1F9VriJ8coHzzme0LcZ2d3/hvkNKwKFfcthDw1Pwf22Anwr5i
         4LkSdeAxDXhe2b6efzfxJU0PU+on/ITWjltbUKf89+huYQaOVyGsabJLPRn1bfsE9D77
         9vDLrJqiEWnYAvt4J4J/NRH2mFrDKxX+/oI6TrBjhsBLQQzD0r1lIwokZ9050gLA58X/
         BDrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=vPTNQD4AX8lTmmL+D+N6k92/vQBOIiCQQnPrOtwu8gw=;
        b=0q2YIc20UqtWAljLOBF/xUixft2g3qMEoJKzhxKMCNRP15oMIMUcE/q1EflP3J1xDZ
         4tm5AtP4x0GKJT7asGUfNoeulr/OJsydMsV9rNvcaLl/egWRtXwiRiVcJOwbtKsnQLlr
         eucnL0lcomkXxpmGiMin1loUiPAxZqwZkueVO7mwLLiquxGzkWzOfH/nzTs4ETw3cBpr
         IoJTLOvXE3rF7z9C8Q//IGQARD/i5dRqCZEXJDD7NeUwcv7Fn8wYWPbN1hSsD0Ug1mw7
         IyQ0NjLjtS79yVYIGfRWQb+5c4UEdVB2SNISFmiGTeWZtKLwjvxxWevKY94igLM6/wyz
         nq1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o185si421691wme.1.2019.10.25.08.54.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 08:54:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,229,1569276000"; 
   d="scan'208";a="408261982"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2019 17:54:03 +0200
Date: Fri, 25 Oct 2019 17:54:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
cc: CristianeNaves <cristianenavescardoso09@gmail.com>, 
    outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>, 
    Greg KH <gregkh@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>
Subject: Re: [RESEND PATCH] iommu : Remove var of return
In-Reply-To: <20191025154953.GA639799@lophozonia>
Message-ID: <alpine.DEB.2.21.1910251753220.3307@hadrien>
References: <20191025151912.GA30952@cristiane-Inspiron-5420> <20191025154953.GA639799@lophozonia>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 25 Oct 2019, Jean-Philippe Brucker wrote:

> Hi Cristiane,
>
> Thanks for the patch, the change looks fine.
>
> Just one note: the title of the patch should follow the naming convention
> of the IOMMU subsystem, and provide more context. You can generally find
> out which format is used by a subsystem by running "git log --oneline
> <file>", although virtio-iommu doesn't have many commit so it's not
> completely obvious. For IOMMU, the format is "iommu/<driver>: <Change
> something>", so the first line of this patch could be:
>
>     iommu/virtio: Remove unused variable
>
> Since this isn't in staging, I think the mailing lists given by
> scripts/get_maintainer.pl should also be on Cc
> (virtualization@lists.linux-foundation.org and
> iommu@lists.linux-foundation.org, but you can omit kernel@vger.kernel.org)

Cristiane, I don't think you have many patches accepted yet, so you should
stick to drivers/staging for the moment.

julia


>
> Thanks,
> Jean
>
> On Fri, Oct 25, 2019 at 12:19:12PM -0300, CristianeNaves wrote:
> > Remove the variable of return. Issue found by
> > coccicheck(scripts/coccinelle/misc/returnvar.cocci)
> >
> > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > ---
> >  drivers/iommu/virtio-iommu.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
> > index 3ea9d76..d8f29c8 100644
> > --- a/drivers/iommu/virtio-iommu.c
> > +++ b/drivers/iommu/virtio-iommu.c
> > @@ -153,7 +153,6 @@ static off_t viommu_get_write_desc_offset(struct viommu_dev *viommu,
> >   */
> >  static int __viommu_sync_req(struct viommu_dev *viommu)
> >  {
> > -	int ret = 0;
> >  	unsigned int len;
> >  	size_t write_len;
> >  	struct viommu_request *req;
> > @@ -182,7 +181,7 @@ static int __viommu_sync_req(struct viommu_dev *viommu)
> >  		kfree(req);
> >  	}
> >
> > -	return ret;
> > +	return 0;
> >  }
> >
> >  static int viommu_sync_req(struct viommu_dev *viommu)
> > --
> > 2.7.4
> >
>


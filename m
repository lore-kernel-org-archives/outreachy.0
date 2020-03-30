X-GM-THRID: 6807884729429262336
X-Received: by 2002:a05:6830:1046:: with SMTP id b6mr9907234otp.229.1585578589943;
        Mon, 30 Mar 2020 07:29:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:c4c5:: with SMTP id g5ls1713329ooq.5.gmail; Mon, 30 Mar
 2020 07:29:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu5D/vnrIj3n3jzvXc3BkvIZXJ1ER6WJV3NG1hz/yRcCnsm3e7D5HpXOHOhffHt+7ek7vtT
X-Received: by 2002:a4a:5747:: with SMTP id u68mr9682181ooa.32.1585578588795;
        Mon, 30 Mar 2020 07:29:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585578588; cv=none;
        d=google.com; s=arc-20160816;
        b=iIEdOYkgGjbK1szeMqWc/nhKb14DSr6pcsaIgVz6d1+sw035k/mstmYrnpe+tYOvBd
         zhQMGcOjb2qsrAu7/KtDojOZI/184aDygFn44t0Jq0n7uiuFeOarjpIJSWWLTPb+yPjw
         9nyiLaEV13TYbTbAUL8yAOjOudScNaz3rGGufsJsoxTqEBEUrCbjyM4IDFId9+lCrkH/
         q/Brv4gJPxFb7HJAYrW/oIw/oWA/wR6awfRIBtqX/WfbQeJSZ8eF6j7Op3DTSHNRA7Xl
         buCsF8gwmZBhbVRE6tahHyhZk86entimaflZDXOlJ8JNPDthbvnPxUcHHXPI8UKPlwQD
         /0pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=QtzSqnlhDXvkKwQ1M5XggE2FjLYGenGcYrgA8s5+ZF8=;
        b=MDGoV6K9RifTgEed8akm2FUwxKfh6HMXmaMyPHeh+KnOs1W7zl4bik8nmYGsATMOjD
         DEGm+HtHT0odxkdZHDAtAKUINDKbMUxGyHo6CdJZpKEPL2g0yDKI6NWhEkHzVogOtnbk
         diDwxXUYfh8JTB90g3BAdVT3DEcwaX9Wp+Hb0nhY1Eg0eLZTOakX44acU0vcDw/1ktcW
         2SCmzqc8/4jd43tQs8JENOmrNG1LHADKZs9cQo+VvMOebL7gtLRbBiaEy07jtUlrx31V
         UvXtDHCnclNkxJ3F6/J2/1wAQFuTEAxQp5r/2YzbxyBZmQE6+i7xXEPqi+Y1SmEN5Vce
         BTkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QLmXb3TD;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id m19si1199742otn.4.2020.03.30.07.29.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 07:29:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QLmXb3TD;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585578587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QtzSqnlhDXvkKwQ1M5XggE2FjLYGenGcYrgA8s5+ZF8=;
	b=QLmXb3TDoJrI5GSKdIox3N8CSTVMpJ7JgrPA+bJFGPISXa9QHhwqAgb2ngMOCZ9FzZn8rD
	LaJ96BUG7uI0Oid+8lARGlpYBN4kA6p0uGLcPS7wzYx/QL/nX/zIVTn0Spt5RqLUNdVd6h
	zLIIWcXpuyXOAfrs+k++fcJ1J0XOXcI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-NXaEtZQJP_m3cgEVDQ9Hsg-1; Mon, 30 Mar 2020 10:29:44 -0400
X-MC-Unique: NXaEtZQJP_m3cgEVDQ9Hsg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48355800EB6;
	Mon, 30 Mar 2020 14:29:43 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 889CB10002A9;
	Mon, 30 Mar 2020 14:29:41 +0000 (UTC)
Date: Mon, 30 Mar 2020 16:29:36 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Julia Lawall 
 <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] Staging: kpc2000: kpc_dma: Use
 spaces around operators.
Message-ID: <20200330162936.05c283a4@elisabeth>
In-Reply-To: <65ecf86be7e14f5c3fec03acb4ff51c86ab211ee.camel@gmail.com>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
	<d881bf9d5c442ae5a0d6669624355f7af73f5fac.1585082158.git.jane.pnx9@gmail.com>
	<alpine.DEB.2.21.2003242221390.3306@hadrien>
	<44ca99f66316430555a2da1379283ca846acb027.camel@gmail.com>
	<20200325123643.GA3454907@kroah.com>
	<633ff2c9781a296317fe5004e64ea6a6d3a08c80.camel@gmail.com>
	<20200330030244.5a906bdd@elisabeth>
	<65ecf86be7e14f5c3fec03acb4ff51c86ab211ee.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 30 Mar 2020 07:55:45 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> On Mon, 2020-03-30 at 03:02 +0200, Stefano Brivio wrote:
> > On Wed, 25 Mar 2020 08:57:30 -0400
> > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> >   
> > > On Wed, 2020-03-25 at 13:36 +0100, Greg Kroah-Hartman wrote:  
> > > > On Wed, Mar 25, 2020 at 04:00:36AM -0400, Sam Muhammed wrote:    
> > > > > On Tue, 2020-03-24 at 22:22 +0100, Julia Lawall wrote:    
> > > > > > 
> > > > > > On Tue, 24 Mar 2020, Sam Muhammed wrote:
> > > > > >     
> > > > > > > Cleanup Checkpatch.pl CHECKs about missing
> > > > > > > spaces around multiple operators.
> > > > > > >
> > > > > > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > > > > > ---
> > > > > > >  drivers/staging/kpc2000/kpc_dma/fileops.c | 12 ++++++------
> > > > > > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > > > > > >
> > > > > > > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > > > > index d93097ed781c..e599ae1bdfd0 100644
> > > > > > > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > > > > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > > > > @@ -19,7 +19,7 @@ static inline
> > > > > > >  unsigned int  count_pages(unsigned long iov_base, size_t iov_len)
> > > > > > >  {
> > > > > > >  	unsigned long first = (iov_base             & PAGE_MASK) >> PAGE_SHIFT;
> > > > > > > -	unsigned long last  = ((iov_base+iov_len-1) & PAGE_MASK) >> PAGE_SHIFT;
> > > > > > > +	unsigned long last  = ((iov_base + iov_len - 1) & PAGE_MASK) >> PAGE_SHIFT;    
> > > > > > 
> > > > > > It seems that the & operators were lined up before and that is not the
> > > > > > case any more.
> > > > > >     
> > > > > 
> > > > > Yes, why they were aligned anyways?     
> > > > 
> > > > Because it is easier to understand the code that way, don't you think?
> > > >     
> > > My bad, iam not used to see the patterns yes, so aligning the first
> > > statement to the second would be a different change? or since a change
> > > is made anyways they both would go together?   
> > 
> > I think yes, this should be a single patch, because:
> > 
> > 1. realigning the first line is needed only as you edit the second one,
> > 
> > 2. with two patches the alignment would be "broken" after the first one
> >    (this is especially a hard rule with build failures and warnings, but
> >    the concept usually applies to these cases as well)
> > 
> > ...however, why would you ask this question and anyway re-post the
> > series 89 minutes later? Mind that this is a good way to get your
> > patches ignored by some maintainers.
> >   
> 
> But reading through Julia's comment about it and re-considering the
> change, my question was already answered with Julia's comment as of 
> _if i make a change, i should keep the style and not break the
> alignment_
> 
> So i probably shouldn't ask the question from the first place and read
> Julia's comment more carefully. :)

Fine, I really don't mind that part... but it would be nice if you
could answer your question yourself on the list, so that:

1. other applicants benefit from it

2. nobody has to wonder if you're still waiting for an answer (my case
   here)

-- 
Stefano



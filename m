X-GM-THRID: 6807884729429262336
X-Received: by 2002:ac8:7288:: with SMTP id v8mr9495766qto.31.1585530179093;
        Sun, 29 Mar 2020 18:02:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:290d:: with SMTP id y13ls3936729qty.10.gmail; Sun, 29
 Mar 2020 18:02:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsibRZtUZ9YCL8BPyE73tYYQqdIAgTftesfKUGCsLrQAKx/xja6Y0yugDkbz4BjTUr+8Af2
X-Received: by 2002:ac8:76c4:: with SMTP id q4mr9805811qtr.375.1585530177973;
        Sun, 29 Mar 2020 18:02:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585530177; cv=none;
        d=google.com; s=arc-20160816;
        b=oawlBOZNQ8oY12QoWQVoYSKsbGKwfCFbDhYFn+S3rUM4grXTjBcgmqtJwsqGJu4WsU
         oje11SN5Mbj9PuUThZ4DkXOh/zGU31565lm+uZrh4MNKid2hPGYICwJyzDIfOCqscpzJ
         mnQIi8x+p0u/2pyW87q9H7LyHnnFwFRlR1oS8toge2DUaxjZGPcv+6wC8BtSBxxjBE6p
         87SDICd9mO6DrXnZTKv5kQQ0CUUGztisXs1CwZdWSn7nBPEnyBotOe4G0RMogDDqK1aY
         VxXwOFtrt4W7ND+R+KUDixicT7yHS3I88jQX84tam282oAsCwoN3YqzSIBreJ7Enighu
         8BXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=A00MA2znYDYyZSe5CU9EFJEgjZVU1bM3pjnnC4rTXTk=;
        b=lGYrHbfaq4rVr89urdODXMEkalWBblOy3kF4dGk2PTmvc/LWgPQB1bYzv1qjFj2qT+
         +eCQJ7KMkRzI+QKsx9vTEVyC8PiO1qySJXrCvjj6uj9SNUl7tmJOydvTDbiBvt2LEUvK
         5Zqihtv2jTy+/vTwKotxvjLsfkqJpuK3LwOPJG2iiBJv58IeDtW4Vz5OTdv1emrKEatD
         CvpGyNlzEheA8f5RdyTny72NGpxFxK0vw3b7ACaPsPc/grGh3khixuiDad7/8gNkoh4+
         oCuZ1SdPTfHoz1B9hdnRYlzzuNS4FNm6I4/m89urt1cGeVp1nmKwqxbSRmwfu1aO++PY
         T6Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JXejEUHm;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id t24si914650qtt.1.2020.03.29.18.02.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 18:02:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JXejEUHm;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585530177;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=A00MA2znYDYyZSe5CU9EFJEgjZVU1bM3pjnnC4rTXTk=;
	b=JXejEUHmm9Qclhot54nARoVYjUxcZhuFHI1t7nxyZyGMPpc03EhdndmsiWWJrlswcJvO0F
	j3N7Hc+5hB4B5hFJFEVPnWk5UJynBH459N6A7IqvZYKA2jbjESdIlrbKv6vb89xmOLpm/8
	uPis9mSypyLeJqeOjy+irH0aeIioitk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-J8s3TkvtNN-uUsqfR5nDkg-1; Sun, 29 Mar 2020 21:02:52 -0400
X-MC-Unique: J8s3TkvtNN-uUsqfR5nDkg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30C3F107ACCA;
	Mon, 30 Mar 2020 01:02:51 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3283F60FC1;
	Mon, 30 Mar 2020 01:02:48 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:02:44 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Julia Lawall
 <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] Staging: kpc2000: kpc_dma: Use
 spaces around operators.
Message-ID: <20200330030244.5a906bdd@elisabeth>
In-Reply-To: <633ff2c9781a296317fe5004e64ea6a6d3a08c80.camel@gmail.com>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
	<d881bf9d5c442ae5a0d6669624355f7af73f5fac.1585082158.git.jane.pnx9@gmail.com>
	<alpine.DEB.2.21.2003242221390.3306@hadrien>
	<44ca99f66316430555a2da1379283ca846acb027.camel@gmail.com>
	<20200325123643.GA3454907@kroah.com>
	<633ff2c9781a296317fe5004e64ea6a6d3a08c80.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 25 Mar 2020 08:57:30 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> On Wed, 2020-03-25 at 13:36 +0100, Greg Kroah-Hartman wrote:
> > On Wed, Mar 25, 2020 at 04:00:36AM -0400, Sam Muhammed wrote:  
> > > On Tue, 2020-03-24 at 22:22 +0100, Julia Lawall wrote:  
> > > > 
> > > > On Tue, 24 Mar 2020, Sam Muhammed wrote:
> > > >   
> > > > > Cleanup Checkpatch.pl CHECKs about missing
> > > > > spaces around multiple operators.
> > > > >
> > > > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > > > ---
> > > > >  drivers/staging/kpc2000/kpc_dma/fileops.c | 12 ++++++------
> > > > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > > index d93097ed781c..e599ae1bdfd0 100644
> > > > > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > > @@ -19,7 +19,7 @@ static inline
> > > > >  unsigned int  count_pages(unsigned long iov_base, size_t iov_len)
> > > > >  {
> > > > >  	unsigned long first = (iov_base             & PAGE_MASK) >> PAGE_SHIFT;
> > > > > -	unsigned long last  = ((iov_base+iov_len-1) & PAGE_MASK) >> PAGE_SHIFT;
> > > > > +	unsigned long last  = ((iov_base + iov_len - 1) & PAGE_MASK) >> PAGE_SHIFT;  
> > > > 
> > > > It seems that the & operators were lined up before and that is not the
> > > > case any more.
> > > >   
> > > 
> > > Yes, why they were aligned anyways?   
> > 
> > Because it is easier to understand the code that way, don't you think?
> >   
> My bad, iam not used to see the patterns yes, so aligning the first
> statement to the second would be a different change? or since a change
> is made anyways they both would go together? 

I think yes, this should be a single patch, because:

1. realigning the first line is needed only as you edit the second one,

2. with two patches the alignment would be "broken" after the first one
   (this is especially a hard rule with build failures and warnings, but
   the concept usually applies to these cases as well)

...however, why would you ask this question and anyway re-post the
series 89 minutes later? Mind that this is a good way to get your
patches ignored by some maintainers.

-- 
Stefano



X-GM-THRID: 6955401561206947840
X-Received: by 2002:adf:e0c8:: with SMTP id m8mr26150337wri.349.1619474614822;
        Mon, 26 Apr 2021 15:03:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls3372482wrx.3.gmail; Mon, 26
 Apr 2021 15:03:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw5rH8fLt2/NEoJLkJPzNUdLf+TlTUAbQhqV9px4kEg3ZshvAJGh4tcwu69R/oyO4YCoWO9
X-Received: by 2002:a5d:6352:: with SMTP id b18mr3964442wrw.76.1619474613552;
        Mon, 26 Apr 2021 15:03:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619474613; cv=none;
        d=google.com; s=arc-20160816;
        b=ReF5pOkbA2gDdNNdP10eEO0T9f/Ho0UBIYLLB21SGs4VfVBtSV+tpAiBrfO6d8B/f1
         dhO2vzjYp7zFrmSqsgoiy7OMotnNiogEaltMvvN7HKJMBmNzOU4zLwTrGVe7zGOyTHtG
         1E9FL9ondBtTiKSJRX7ccom1vhoi92Wuw7Cm9xTupSOI9jj+6jJNUzSMXa41Y/j4KslV
         fj6CmffFXDBldXVzrohOYCgVuX76a1jC7o5/S5gF3BGBgmRa7OzXFX4Klrgw3XCyrJT2
         KTAeh5Q+AwZQiopQFQajqKM01OzxzxCoYX7LY8wrHOoAcDDOWs+v4wsfhEKO/chxDQnz
         wV1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uQLYYr2tQMTLi+1p5HJHiiRrQ6/VqapV2NJisyQBKv0=;
        b=zrB3eNSrp9G5mqt0xdDhR0CGUUYPiK9b0dd1tiUArMOJFx9GQBhVkYLY1JyAL7Ry43
         s6exnCE7sr13KvOq55ga5Ha5vFy3ISL8pHJn46CvNphK90dwwXT+NabVQW+NgdaMPzcP
         0bO0H420zEKvbfaL2H9rDEowVXfygTnyG+yYiHZm2duYz7lV5145sdq7JGtUuuA0SU8S
         6BtpxFsWySTJHNeKO7ukB02nclKc3hi+qv4fY3QRFAuz5lZ+Si9jKfOB14zfYZXtad1k
         czXBKWPmJCWLf08G8d0mMVwdUKaLvQ95NMoIobTgN5bZYxZ6T21elOBytOUiUQEpNFGs
         cjMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=MadCHfvG;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id s141si101498wme.2.2021.04.26.15.03.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 15:03:33 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=MadCHfvG;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=uQLYYr2tQMTLi+1p5HJHiiRrQ6/VqapV2NJisyQBKv0=; b=MadCHfvGq7kKDKX/4If3veG0eF
	qB5PNuZ2Hc4sm7hmLD4n7DAGIuXbLZNWvWyjNmYk1UsmujYYWeq7Vjqu3DgDv11ShYQQDQ1ND2nBn
	9sIAmQJndesSMORlygBVI5dkNkMJUaIc5DOQ4zB8nbG5HSY4YLn4nEZ0hzidpv50/FHTafibOIi58
	jmW8a3dAIdcnQhvmVsAAwkMEM0/wBOvJHZTV6zQycK8GVqA7oXPD5Yhd5IOSujcqXtFaA+DCc4lWc
	csxSAebO8bv643PG1CTbbSFpksLgMHg3Hu841+qBhltg8BGYs/vDY/pl2vji0uidmlNp1PCM22ETA
	MGAnmn2A==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lb9KB-0069Pn-KL; Mon, 26 Apr 2021 22:03:31 +0000
Date: Mon, 26 Apr 2021 23:03:27 +0100
From: Matthew Wilcox <willy@infradead.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: unisys: visorhba: Convert
 module from IDR to XArray
Message-ID: <20210426220327.GT235567@casper.infradead.org>
References: <20210426184245.12269-1-fmdefrancesco@gmail.com>
 <20210426192101.GQ235567@casper.infradead.org>
 <107967147.Ip005GxVp3@linux.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <107967147.Ip005GxVp3@linux.local>

On Mon, Apr 26, 2021 at 11:15:40PM +0200, Fabio M. De Francesco wrote:
> On Monday, April 26, 2021 9:21:01 PM CEST Matthew Wilcox wrote:
> > On Mon, Apr 26, 2021 at 08:42:45PM +0200, Fabio M. De Francesco wrote:
> > > +static void setup_scsitaskmgmt_handles(struct xarray *xa, struct 
> uiscmdrsp *cmdrsp,
> > > 
> > >  				       wait_queue_head_t *event, 
> int *result)
> > >  
> > >  {
> > > 
> > > -	/* specify the event that has to be triggered when this */
> > > -	/* cmd is complete */
> > > -	cmdrsp->scsitaskmgmt.notify_handle =
> > > -		simple_idr_get(idrtable, event, lock);
> > > -	cmdrsp->scsitaskmgmt.notifyresult_handle =
> > > -		simple_idr_get(idrtable, result, lock);
> > > +	u32 id;
> > > +	int ret;
> > > +
> > > +	/* specify the event that has to be triggered when this cmd is 
> complete */
> > > +	id = (u32)cmdrsp->scsitaskmgmt.notify_handle;
> > > +	ret = xa_alloc_irq(xa, &id, event, XA_LIMIT(1, INT_MAX), 
> GFP_KERNEL);
> > 
> > OK, think this one through a bit.  When xa_alloc_irq() stores the ID that
> > it assigned into 'id', what happens to it next?
> >
> Oh, I overlooked that... The ID in 'id' is lost when the function exits and 
> the stack frame is unwound.
> 
> Now I have another problem: xa_alloc_irq() writes id u32* but I have an u64* 
> in 'id'. What happens if I cast 'id' to an u32* when passing it to 
> xa_alloc_irq()?
> 
> u64 *id;
> int ret;
> id = &cmdrsp->scsitaskmgmt.notify_handle;
> ret = xa_alloc_irq(xa, (u32 *)id, event, XA_LIMIT(1, INT_MAX), GFP_KERNEL);
> 
> Do I destroy the information stored in 'id' with that cast?

That is a great question!  That would be a really serious bug because
it behaves differently on big and little endian systems.  That is, on a
little endian system, a pointer to a u64 can be treated as a pointer to a
u32 and it will write to the bottom 32 bits of the u64.  On a big endian
system, treating a pointer to a u64 as if it's a pointer to a u32 means
you write to the _top_ 32 bits of the u64, and things go wrong from there!

Similarly, if you have a u16, you can't pass a pointer to it, because
the called function has no idea that it's only 16 bits, and will do a
32-bit store to it, overwriting the 16 bits after it.

So you need to pass a pointer to a u32 on the stack, and then copy the
id out of it afterwards.



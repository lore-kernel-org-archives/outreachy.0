X-GM-THRID: 6955401561206947840
X-Received: by 2002:a2e:9947:: with SMTP id r7mr3034538ljj.263.1620129280254;
        Tue, 04 May 2021 04:54:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:2129:: with SMTP id a41ls4068815ljq.5.gmail; Tue,
 04 May 2021 04:54:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzo3AXbxXQfBYsoK6XTAxV9KoxXPgcV6GZKfF0N5ON7S6hfj/wb4iOPcYDvwbHeWpJDgg7o
X-Received: by 2002:a05:651c:547:: with SMTP id q7mr16676331ljp.484.1620129278449;
        Tue, 04 May 2021 04:54:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620129278; cv=none;
        d=google.com; s=arc-20160816;
        b=d3zaeyn9KZMAQWEzkNr6IQ6B29tdvHbU72Z/T7coEomzZwByyDcvzpZwKvTJdPUvPt
         kgGZipQUTmZbwXMAmvUqnzRAz3b+Qa4qnm03CajtrMmd4/QIvZcdYrcey8JToehcxfdY
         wHL7fMmTBsx0hiepfJDz8TZVq2F/cISThpw9wnXyCUYmofbbwdDKW3VUHIKFcqE8bwLH
         3TZgFL3ZQsrH9YiKfbktR0aZPS4+uM+rdbACgPZnsHe8uqxnmFFIHgNMMXoy3R8aFlJV
         a+05kJWb0UrbFp7DONzs817pEOesxoC2gP3f1Tgh9e3LD1tVVbxX5VUaVU3ifSXmrotJ
         HITw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=h3EPt9T2mGUyus+ShdFHaeueBKd8gCSxTLbCM2fRUg0=;
        b=nJQxKI0J/07HWMLgNly/lAkRkngz840g/ptnmVbyJR1uCqLgNk+OjcUvg3vS7bed/y
         W/yW56dWbOSC11UL0AXDzz7M7icV2PuP2N01KtlB1Odoj07oPdHUVhNCTgwhRP1x6w7Y
         G2lTl6NB1G1MxL4OOp9P3U3BUuRp1E+OHK+inq+sKkgvEmtGIjgKwlj5FXNBzOcHuCBc
         Qk5zlBXY0fYmsuab1uE5B6ySpgag9Q0cC3Fpji3ot639kHpsg4zphicjSDr8j5Dnl4wv
         0BXDJ0yiW6r0D8MhATKWvMv5/VmQaLDOyIuf4Duq9eOmGsRQ+9orZ02OCj4uqjlm2cQx
         15jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=CIbcePIn;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id n10si130644lft.1.2021.05.04.04.54.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 04:54:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=CIbcePIn;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=h3EPt9T2mGUyus+ShdFHaeueBKd8gCSxTLbCM2fRUg0=; b=CIbcePInDC6f68d/cxjRFtAQQo
	IE3/xlBK6jc7Av0IY9x0Rul5piptd1cC55bPjSLTLfNaR5Y3Oc0mt1PQy+gUPh53MdqXBjSlAbK+c
	ayjeqDlqfudpYiXqnfEp7rOGVx/ZbsFoy/rrGfon8bwSYrckc2BPPJaxNl9CorVjfY/BPP/aFMNxH
	z0kYbuaMKjf5qm4YGwRp0Ux4dSc2jEKpC+KwQeIVSQt8oND1VKbTptiIhBNhrgWtqshwUknPr8XZt
	z6dDiRR2jJ7rfvky9QkBDzrTa0PITOW8sK58VKNgTq+AxU57Y79Hk0qR1AQqd/J4xi3aEm4XSyJRf
	dHN3Bcpw==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1ldtcx-00GWJm-6c; Tue, 04 May 2021 11:54:21 +0000
Date: Tue, 4 May 2021 12:54:11 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	outreachy-kernel@googlegroups.com,
	David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	sparmaintainer@unisys.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] Re: [PATCH v6] staging: unisys: visorhba:
 Convert module from IDR to XArray
Message-ID: <20210504115411.GF1847222@casper.infradead.org>
References: <20210504100744.28073-1-fmdefrancesco@gmail.com>
 <20210504110001.GV1981@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210504110001.GV1981@kadam>

On Tue, May 04, 2021 at 02:00:01PM +0300, Dan Carpenter wrote:
> On Tue, May 04, 2021 at 12:07:44PM +0200, Fabio M. De Francesco wrote:
> > -static void setup_scsitaskmgmt_handles(struct idr *idrtable, spinlock_t *lock,
> > -				       struct uiscmdrsp *cmdrsp,
> > +static int setup_scsitaskmgmt_handles(struct xarray *xa, struct uiscmdrsp *cmdrsp,
> >  				       wait_queue_head_t *event, int *result)
> >  {
> > -	/* specify the event that has to be triggered when this */
> > -	/* cmd is complete */
> > -	cmdrsp->scsitaskmgmt.notify_handle =
> > -		simple_idr_get(idrtable, event, lock);
> > -	cmdrsp->scsitaskmgmt.notifyresult_handle =
> > -		simple_idr_get(idrtable, result, lock);
> > +	int ret;
> > +	u32 id;
> > +
> > +	/* specify the event that has to be triggered when this cmd is complete */
> > +	ret = xa_alloc_irq(xa, &id, event, xa_limit_32b, GFP_KERNEL);
> > +	if (ret == 0)
> > +		cmdrsp->scsitaskmgmt.notify_handle = id;
> > +	else
> > +		return ret;
> 
> Reverse the condition.  Always do error handling, not success handling.
> Try keep the success path at one tab indent and the failure path at two
> tab indents.
> 
> 	ret = xa_alloc_irq(xa, &id, event, xa_limit_32b, GFP_KERNEL);
> 	if (ret)
> 		return ret;
> 	cmdrsp->scsitaskmgmt.notify_handle = id;
> 
> 	ret = xa_alloc_irq(xa, &id, result, xa_limit_32b, GFP_KERNEL);
> 	if (ret) {
> 		xa_erase(xa, cmdrsp->scsitaskmgmt.notify_handle);

umm.  When you put these things right next to each other, it's obvious
that should be xa_erase_irq().

> > -static void cleanup_scsitaskmgmt_handles(struct idr *idrtable,
> > +static void cleanup_scsitaskmgmt_handles(struct xarray *xa,
> >  					 struct uiscmdrsp *cmdrsp)
> >  {
> > -	if (cmdrsp->scsitaskmgmt.notify_handle)
> > -		idr_remove(idrtable, cmdrsp->scsitaskmgmt.notify_handle);
> > -	if (cmdrsp->scsitaskmgmt.notifyresult_handle)
> > -		idr_remove(idrtable, cmdrsp->scsitaskmgmt.notifyresult_handle);
> > +	xa_erase(xa, cmdrsp->scsitaskmgmt.notify_handle);
> > +	xa_erase(xa, cmdrsp->scsitaskmgmt.notifyresult_handle);

If this code were even run, assuming the appropriate lockdep options
were enabled, xarray would point out that you were taking a lock with
interrupts enabled that was previously taken with interrupts disabled.
That's a good thing!  Because before, this code was deleting entries
from the IDR with _no_ locking.

So these should both be xa_erase_irq().

> > @@ -1096,8 +1085,6 @@ static void visorhba_remove(struct visor_device *dev)
> >  	scsi_remove_host(scsihost);
> >  	scsi_host_put(scsihost);
> >  
> > -	idr_destroy(&devdata->idr);
> 
> Do we not have to call xa_destroy()?

Correct.  We covered this in earlier iterations of this series and I
don't feel like typing out the explanation again.



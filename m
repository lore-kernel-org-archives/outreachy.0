X-GM-THRID: 6955401561206947840
X-Received: by 2002:a05:6512:a95:: with SMTP id m21mr6388125lfu.295.1619443775945;
        Mon, 26 Apr 2021 06:29:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a785:: with SMTP id c5ls5747241ljf.8.gmail; Mon, 26 Apr
 2021 06:29:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzjecpDmGcg6EiP/LKU26rVQf9+gm1MyPTUcLs6KKek9llz4fB5qgxqE3Z/wo8Z3Keqc9T2
X-Received: by 2002:a2e:b013:: with SMTP id y19mr13222683ljk.428.1619443774252;
        Mon, 26 Apr 2021 06:29:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619443774; cv=none;
        d=google.com; s=arc-20160816;
        b=XmMR/UHTdxsswk8Iz0uxEK+XpNCd0LwMbO3wabnFkwhFXZrN1HKBBWaf3w6ku2ZDLp
         eiZKH0DW0ZbSYp3loOkx4nXSK9zsrG62ZBpSjWbHcTUjEq0J9DteWu3mK5+vryoyafU5
         3EkponLViobl4yJXl8BMa0by+8w0ATqmU8e6m665gYULGiUtIE0hy7L6vCWzKxzgKdRm
         l291beUN6tHTUQTBd2g60+lyw1RHZVRbKgsD3xjhHIfkrGNi2TTgO46ubjK9AewURKup
         VWjbp/qacWdt6nyCkxMeYrK3WB7XtoghQ08BD+dj9CPFyCZhPyZLTmYmcLuqgdRBOAa1
         Az0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hPisMVH8gfXHgWng4qXBnIRMDi/jAWhIm5sJAtRK0W4=;
        b=rVB0j0BAcFvjSfgPA2lGjrdsS8XjRFCu8ZjHFSyJwwLdZ6UVrhlXFvDPkSHpMCaJxq
         V267tXWau4n9Cl9O8XGxlbLM9GJ2vtDaPXQ/kB627HBQImUZSoDLZJSFNRd4GiRi7y8e
         tctkaVVpZFwRvgwBI7bRi7V9gRFOd+BMnYafV8qjk7Ogd5Rh06iM0P8SW7M/NZ0Ch5Wy
         N3Q+xFH6vUpFWE6nKzIuwa5pyfIZqjoZgMSSHnyn5QkQxmGQDKxtwJY3SQjxNIosYMpf
         /Co0ir9RI+zgVYKmcFZwkpGEoc793pRuTasl6E5/F0pUht20pau+hA/bEiwI1zzCjUSc
         JqCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=VSK1NBc2;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id b39si460821ljr.1.2021.04.26.06.29.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 06:29:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=VSK1NBc2;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=hPisMVH8gfXHgWng4qXBnIRMDi/jAWhIm5sJAtRK0W4=; b=VSK1NBc2TFzoP2NEfsMcpRIwU9
	FzZlMsPEbApabA4uPbVdjh/adudAYxpGdpMlT4zQOsqHhLxboJhEeEsmmi0L5411BJF8pIHjjELKc
	MoiQetait6zn8nCdT48UVfSERi4S1v7owmRevnn1M50qLqE/lAAx+ulu66uHgkwlXB4aVwo/YalTa
	ngM3lyZmLwFTPnF5ARk0ZtvPozt1ZGwMSvHgb279/0qwq0na9Y366iFWtDmSCTd+MA/s6i+Z7fWne
	5HLJA+5X8hJp/w88U9zFIGnRvi7fX7XFsKWun2B5DPffRn1QND0qrTX8IXYixACBqY/reJnrBjIUA
	Q36hfRqA==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lb1Im-005ezZ-T1; Mon, 26 Apr 2021 13:29:30 +0000
Date: Mon, 26 Apr 2021 14:29:28 +0100
From: Matthew Wilcox <willy@infradead.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [RFC PATCH] staging: unisys: visorhba:
 Convert module from IDR to XArray
Message-ID: <20210426132928.GL235567@casper.infradead.org>
References: <20210426095015.18556-1-fmdefrancesco@gmail.com>
 <20210426114902.GI235567@casper.infradead.org>
 <2833559.jtDpNxbUmt@linux.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2833559.jtDpNxbUmt@linux.local>

On Mon, Apr 26, 2021 at 03:14:42PM +0200, Fabio M. De Francesco wrote:
> > > -	int id;
> > > -	unsigned long flags;
> > > 
> > > -	idr_preload(GFP_KERNEL);
> > > -	spin_lock_irqsave(lock, flags);
> > > -	id = idr_alloc(idrtable, p, 1, INT_MAX, GFP_NOWAIT);
> > > -	spin_unlock_irqrestore(lock, flags);
> > > -	idr_preload_end();
> > > -	/* failure */
> > > -	if (id < 0)
> > > -		return 0;
> > > -	/* idr_alloc() guarantees > 0 */
> > > -	return (unsigned int)(id);
> >
> > And it shouldn't be using GFP_NOWAIT, but GFP_KERNEL, like the IDR code
> > used to do.
> I'm not sure to understand why idr_preload() uses GFP_KERNEL and instead  
> idr_alloc() uses GFP_NOWAIT. I'd better read anew the documentation of the 
> above-mentioned functions  

If you're holding a spinlock, you can't do a GFP_KERNEL allocation,
because it can sleep, and sleeping while holding a spinlock isn't allowed.

The IDR and radix tree have an approach where you first preallocate
memory using GFP_KERNEL and then use GFP_NOWAIT or GFP_ATOMIC after
you've taken the spinlock.  XArray doesn't do that; it takes the spinlock
and does a GFP_NOWAIT allocation.  If it fails, it drops the spinlock,
allocates the memory using GFP_KERNEL, and retries.

> This will not be anymore a problem when I'll restore the use of one namespace 
> per HBA. It's correct?

true ...

> > More generally, the IDR required you call idr_destroy() to avoid leaking
> > preallocated memory.  I changed that, but there are still many drivers
> > that have unnecessary calls to idr_destroy().  It's good form to just
> > delete them and not turn them into calls to xa_destroy().
> >
> This one is a bit obscure to me. I have to look into it more carefully. Maybe 
> I'll ask for some further help.

The IDR used to have a per-idr preallocation, so you had to destroy it
in order to make sure they were freed.  I got rid of that about five
years ago because most IDR users weren't calling idr_destroy().


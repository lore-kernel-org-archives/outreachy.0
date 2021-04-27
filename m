X-GM-THRID: 6955401561206947840
X-Received: by 2002:a17:906:494d:: with SMTP id f13mr5471419ejt.490.1619524749056;
        Tue, 27 Apr 2021 04:59:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:a194:: with SMTP id s20ls2640557ejy.9.gmail; Tue, 27
 Apr 2021 04:59:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJym5JXM5t9y1rQel3tqqsOZPWvMNPvEkSKgf5DKVXjT3NrdCa5WhQMHT9PceImYD4R4JBPO
X-Received: by 2002:a17:906:494d:: with SMTP id f13mr5471329ejt.490.1619524747567;
        Tue, 27 Apr 2021 04:59:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619524747; cv=none;
        d=google.com; s=arc-20160816;
        b=L0HkVy/SE84rwNXUO41/9nZXsONMZPx7ucYpC4UxqZp1uJ/9BLfCzBPqFTZPU1pkOc
         5p5KiGjS3GQf8P4DidTtB+6rHQ2nBOqnXQfK9xkY9/q7K7uCEbN87Aq5pKSIH3HCX/WC
         WvS+Itmid5KmKNx1OgN2hi5UvLw8h9H80R3rKfERjz0gXcouEu2HBdNirruZBMtyCge5
         4kqXuaG7FYUke42OC7Zapf9hd3FLU5lp0UgPUT0YaGZAgSelqSAQfXP7K9UZ7lLTWxe5
         S8sqh779UC3/nO9yRZZ5PE0h2k+x624+cQZgNdahfKJGABsWqg7mnLT8DAQ95zCxynGQ
         9LLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=z8m8em6nxLodDrYPSG/Gs5MYAM2kwAYCaYB3DrEVfIg=;
        b=RDklCVm31KWA7pPrAuEHUVxLU5Rbo7eBSUWHjB+WHwdWWilcgDvgetSiC+2vJmUAOo
         8wzGBuRccD5tYy+7OwnC8ueNUfI/eXjH9OapZB8mM716PniP0XvdRIEsPcWjHNahp1Lw
         +5L5Z98QGA2QmLumXXPs4LzeZyoaAVTbl1SFQDAvVIM19CxszYj1Ih+qZL4/FhUWceWH
         3PM1EPJTKV06cYzIeO7fAl2oGb8qI42uixAiC2xSiNKcvcrBy3u6+Cg5qD23pLmUBKCS
         iZEgkqcvIwm8atbhLgcz00S6tP76KMudHJpE5brQGsjXoxsrNNO7Ura3KI2AHSUmRJ5F
         DoCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Zw/itsC0";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id y16si1758312edq.2.2021.04.27.04.59.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 04:59:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Zw/itsC0";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x532.google.com with SMTP id q6so10327860edr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 04:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z8m8em6nxLodDrYPSG/Gs5MYAM2kwAYCaYB3DrEVfIg=;
        b=Zw/itsC0IjGyghTlzOBWrKgLxqfbtcabyqvh7qYnGHVV4ekpTdK2Pl8j/7DYHVRUYW
         Mi5Sf0ZB5RfrXQA53rjcAS5OwpJeTmTeO5tWiaZNnYpE/gzUDjRyqQUAu/5c63p1cHaW
         sTL4HbtRl0esrnOfOpYM1IXoMhgkKOiutuBpidnpePAVTFMSw/n1vQarO+VYK0KB/WFs
         ddiwyklNITaTqHriSVT/NwEgdYWb3atnhaJ/ZqNDVt9PRMXWXAcGo6TfrNy2qgD5AZAF
         Y8WRyvH62gDcXsJ/xwl3Of1TlRXWB+ULI3ShDAUJiTGWOI0mQkdlHitjN4GiZ6Rqogp/
         m8XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z8m8em6nxLodDrYPSG/Gs5MYAM2kwAYCaYB3DrEVfIg=;
        b=MMulXzPtaClHRaoB5fwr6a6zQQjN+aBwmmakjUaBiiyCvniZpziJIfvfMOASSSvjqI
         /PJRy9jGZcTVK2GkOniPcjs7F+gAmR185tOiLJ6gxlzZB9hclawKEP6aBIAeH8Waf8aL
         h6E8I6RotbnTGiahdJ2OJHxJTWIM7jzwc2E25lxRi1IwZjrsTIHf2fauRKVTBiY8rGsI
         Lw3tQY1L9FVAEcp54A/tQhRbSMZLMtZ1yI+65/hlRhHoE3/+IwuA8kVjxxJrvY4MRIyI
         Z0pSjCNcT7CwYBbpXGVING9lRqLPPht0+FXRIGXyUQsHXXiQqa6LE00SvXQjoDVbOS8i
         Ay/w==
X-Gm-Message-State: AOAM5334icC+TIKmEWZYaGuPoV5b0XEVjr4AOXyg/yeYWONo7cMXj3FW
	SKKWLbdxUAbPkhget4RkifY=
X-Received: by 2002:aa7:cc94:: with SMTP id p20mr3901758edt.353.1619524747377;
        Tue, 27 Apr 2021 04:59:07 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id v5sm2246530edx.87.2021.04.27.04.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 04:59:06 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, David Kershner <david.kershner@unisys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: unisys: visorhba: Convert module from IDR to XArray
Date: Tue, 27 Apr 2021 13:59:05 +0200
Message-ID: <9700190.zQFrKL04sV@linux.local>
In-Reply-To: <20210426220327.GT235567@casper.infradead.org>
References: <20210426184245.12269-1-fmdefrancesco@gmail.com> <107967147.Ip005GxVp3@linux.local> <20210426220327.GT235567@casper.infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, April 27, 2021 12:03:27 AM CEST Matthew Wilcox wrote:
> On Mon, Apr 26, 2021 at 11:15:40PM +0200, Fabio M. De Francesco wrote:
> > On Monday, April 26, 2021 9:21:01 PM CEST Matthew Wilcox wrote:
> > > On Mon, Apr 26, 2021 at 08:42:45PM +0200, Fabio M. De Francesco wrote:
> > > > +static void setup_scsitaskmgmt_handles(struct xarray *xa, struct
> > 
> > uiscmdrsp *cmdrsp,
> > 
> > > >  				       wait_queue_head_t *event,
> > 
> > int *result)
> > 
> > > >  {
> > > > 
> > > > -	/* specify the event that has to be triggered when this */
> > > > -	/* cmd is complete */
> > > > -	cmdrsp->scsitaskmgmt.notify_handle =
> > > > -		simple_idr_get(idrtable, event, lock);
> > > > -	cmdrsp->scsitaskmgmt.notifyresult_handle =
> > > > -		simple_idr_get(idrtable, result, lock);
> > > > +	u32 id;
> > > > +	int ret;
> > > > +
> > > > +	/* specify the event that has to be triggered when this cmd is
> > 
> > complete */
> > 
> > > > +	id = (u32)cmdrsp->scsitaskmgmt.notify_handle;
> > > > +	ret = xa_alloc_irq(xa, &id, event, XA_LIMIT(1, INT_MAX),
> > 
> > GFP_KERNEL);
> > 
> > > OK, think this one through a bit.  When xa_alloc_irq() stores the ID 
that
> > > it assigned into 'id', what happens to it next?
> > 
> > Oh, I overlooked that... The ID in 'id' is lost when the function exits 
and
> > the stack frame is unwound.
> > 
> > Now I have another problem: xa_alloc_irq() writes id u32* but I have an 
u64*
> > in 'id'. What happens if I cast 'id' to an u32* when passing it to
> > xa_alloc_irq()?
> > 
> > u64 *id;
> > int ret;
> > id = &cmdrsp->scsitaskmgmt.notify_handle;
> > ret = xa_alloc_irq(xa, (u32 *)id, event, XA_LIMIT(1, INT_MAX), 
GFP_KERNEL);
> > 
> > Do I destroy the information stored in 'id' with that cast?
> 
> That is a great question!  That would be a really serious bug because
> it behaves differently on big and little endian systems.  That is, on a
> little endian system, a pointer to a u64 can be treated as a pointer to a
> u32 and it will write to the bottom 32 bits of the u64.  On a big endian
> system, treating a pointer to a u64 as if it's a pointer to a u32 means
> you write to the _top_ 32 bits of the u64, and things go wrong from there!
> 
> Similarly, if you have a u16, you can't pass a pointer to it, because
> the called function has no idea that it's only 16 bits, and will do a
> 32-bit store to it, overwriting the 16 bits after it.
> 
> So you need to pass a pointer to a u32 on the stack, and then copy the
> id out of it afterwards.
>
As far as I understand, in setup_scsitaskmgmt_handles(), the task of  
xa_alloc_irq() is: find two empty entries in 'xa', store the indexes into the 
'id'  pointer (before the first call this is set to &cmdrsp-
>scsitaskmgmt.notify_handle, and before the second call it is changed to 
&cmdrsp->scsitaskmgmt.notifyresult_handle), then store the entries at their 
respective indexes.

Indexes that xa_alloc_* set are of type u32*, so why not just change the type 
of notify_handle and notifyresult_handle from u64 to u32?

Furthermore, I cannot understand why those indexes should be passed in and out 
as arguments of the function . It seems that they are not needed anywhere else 
in that file. Are they?

Maybe that I'm still missing something...

Thanks,

Fabio






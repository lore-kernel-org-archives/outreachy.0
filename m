X-GM-THRID: 6955401561206947840
X-Received: by 2002:a05:6512:398e:: with SMTP id j14mr2981821lfu.235.1619471744843;
        Mon, 26 Apr 2021 14:15:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9b88:: with SMTP id z8ls6075055lji.2.gmail; Mon, 26 Apr
 2021 14:15:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzoak9XUNl0j3UFldi0zCxTUl1CetvvJRIq+2b4yGTKUx1AaOa1L/pVGJZ0RrRqRqDAs6Pq
X-Received: by 2002:a05:651c:383:: with SMTP id e3mr14728735ljp.242.1619471743017;
        Mon, 26 Apr 2021 14:15:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619471743; cv=none;
        d=google.com; s=arc-20160816;
        b=NXG3PA8NgeLvHlavleQde4HphCNebAfDoeKU7NkHpHnKUpgg+fnBwZi4TXxRBHHOfM
         3Vj/DdzQtptRRL7BbthJ5cPLGM1LicnxnrJmxqK7eQgSQhItTkAavD7mWQB7qPiHoh5Q
         /eP5T4ZSzCNk1iGR9/44HtUy6fdz4KanNrIQ/GLk9aiBDNkFvIsiHIhDmIlckI2WvGXX
         ko3/kov39uUI+GSNJNpz8TII56N99zAr8RoWPJHuVPBYuitZGLf7nZu6meQWCLsEotpw
         /vM0x5vEnHfvQxe/UUDdRP1lcPbBH+YzImILaO33UbyN0J8+aYFz9Hzp7XLfMjLFpesu
         pXoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JZFlhpygn8M9EkNHixa9n8+YKO0Uh75M+mziq2r4Nds=;
        b=gLxKtWFQP8gqK2akt1zub/qePhNcE7JI717w0NbNqZFE0SNpWt3gIEtAseeowjMasF
         6WhPdj4l3TCx4EtOqXKVDDWeOXShmzE4bswo4VbYnueEEKmqC0uKiLy19TgoY3vZ7E8o
         z9pGpJ+1Cfdw/Vg6GauB6+LzgliyaCKuOjwWm5gh9iS6THKhYkOSgImw8v8pOffP7vHv
         76dIRqToTfwGwTU8ZOBiEqIVUYAXTSnuleIfmAWnudxytDU5gaXPK0FiY7rY7EXW6MIR
         0kiM5vPv1/aQLDM6HaS7uWwFnbTGZ/VUDKTqupjZJuVAg7sClhtpSy4+IiyhnKPWln8u
         k7Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fWgz6f4y;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id q13si1148089lfm.5.2021.04.26.14.15.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 14:15:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fWgz6f4y;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x629.google.com with SMTP id w3so86582871ejc.4
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Apr 2021 14:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JZFlhpygn8M9EkNHixa9n8+YKO0Uh75M+mziq2r4Nds=;
        b=fWgz6f4yosjxvhK4oBJWUk//RGRkA5YzgIO8cuEHztdUjOnp1b8XsIYsoB/pCBJJjY
         Jlyafl1sV6eNHsZabINsp8uAb2fEpHvEqNurFqdHiujovezcXHGhm/LLnVR/LTjeRnCH
         7xKFou6fU45nCDikjE5XRopc4GayoCnWNGECAVKL+DQAHUkTOSFDaPi2qZJr8RCehjUm
         E8arJ3jNbv8LzH9WCPlo2pu8FD0pMB9cIB6wXnCi2rplaaADuazTLt4B5+5e9lL02tF4
         8BR2p3GONx4jeFsBPgveLcp8LdU8gqchxyfQzCJtS/DAVxjymBAZyxMENgnZyGwx/aRq
         LP5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JZFlhpygn8M9EkNHixa9n8+YKO0Uh75M+mziq2r4Nds=;
        b=HhQRRtWnAJe7vKoHeXfSj1kjHt85Mj6876sPjY0c3fKVHhwKgvhyeYTJEhNDqqik0z
         stMP7fWF8SqLN1Dx+8WKM3ukLyHIDml0tu9l1zUvvYJTXQMN2jkN2YxaLS0iRJCy58P1
         8Qy32uquMhvTlPSepsJeGksbSl21lapRHU6bRpX9CfTUrfCuHmKkADDxUHj0ZNBIvnhI
         3fpmNYpjxTCDrHgv67mjbA1zDBMmdRUmSEfP1Zpq/WcuwWoKKUz+CUw3aJwLVZkXmEeM
         yXqt+BgpWHTQYqPFkue83gGGiyXDfqjZXNisKr1cbFItzBhSfPVvq0MwZP9RwebaCEh+
         MDKA==
X-Gm-Message-State: AOAM531wvf0kPVeZX6LdaMiAN3QBRBzAvwhUy4blnDJpvPm1rcxTAfv4
	qSvAepO17em4X4LvWjyCNXA=
X-Received: by 2002:a17:906:e105:: with SMTP id gj5mr8964318ejb.388.1619471742561;
        Mon, 26 Apr 2021 14:15:42 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id sb20sm1390477ejb.100.2021.04.26.14.15.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 14:15:41 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, David Kershner <david.kershner@unisys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: unisys: visorhba: Convert module from IDR to XArray
Date: Mon, 26 Apr 2021 23:15:40 +0200
Message-ID: <107967147.Ip005GxVp3@linux.local>
In-Reply-To: <20210426192101.GQ235567@casper.infradead.org>
References: <20210426184245.12269-1-fmdefrancesco@gmail.com> <20210426192101.GQ235567@casper.infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, April 26, 2021 9:21:01 PM CEST Matthew Wilcox wrote:
> On Mon, Apr 26, 2021 at 08:42:45PM +0200, Fabio M. De Francesco wrote:
> > +static void setup_scsitaskmgmt_handles(struct xarray *xa, struct 
uiscmdrsp *cmdrsp,
> > 
> >  				       wait_queue_head_t *event, 
int *result)
> >  
> >  {
> > 
> > -	/* specify the event that has to be triggered when this */
> > -	/* cmd is complete */
> > -	cmdrsp->scsitaskmgmt.notify_handle =
> > -		simple_idr_get(idrtable, event, lock);
> > -	cmdrsp->scsitaskmgmt.notifyresult_handle =
> > -		simple_idr_get(idrtable, result, lock);
> > +	u32 id;
> > +	int ret;
> > +
> > +	/* specify the event that has to be triggered when this cmd is 
complete */
> > +	id = (u32)cmdrsp->scsitaskmgmt.notify_handle;
> > +	ret = xa_alloc_irq(xa, &id, event, XA_LIMIT(1, INT_MAX), 
GFP_KERNEL);
> 
> OK, think this one through a bit.  When xa_alloc_irq() stores the ID that
> it assigned into 'id', what happens to it next?
>
Oh, I overlooked that... The ID in 'id' is lost when the function exits and 
the stack frame is unwound.

Now I have another problem: xa_alloc_irq() writes id u32* but I have an u64* 
in 'id'. What happens if I cast 'id' to an u32* when passing it to 
xa_alloc_irq()?

u64 *id;
int ret;
id = &cmdrsp->scsitaskmgmt.notify_handle;
ret = xa_alloc_irq(xa, (u32 *)id, event, XA_LIMIT(1, INT_MAX), GFP_KERNEL);

Do I destroy the information stored in 'id' with that cast?
> 
> > +	id = (u32)cmdrsp->scsitaskmgmt.notifyresult_handle;
> > +	ret = xa_alloc_irq(xa, &id, result, XA_LIMIT(1, INT_MAX), 
GFP_KERNEL);
> > 
> >  }
> > 
> > @@ -1053,8 +1018,6 @@ static int visorhba_probe(struct visor_device *dev)
> > 
> >  	if (err)
> >  	
> >  		goto err_debugfs_info;
> > 
> > -	idr_init(&devdata->idr);
> 
> You still need to initialise the XArray, either with xa_init() or by
> using DEFINE_XARRAY.  Since it's dynamically allocated, the former is
> correct.
>
I had read that XArray must be initialized with xa_init(). However, when I 
deleted the line with the initialization of the IDR, I forgot to replace it 
with a statement that uses xa_init().

Thanks,

Fabio






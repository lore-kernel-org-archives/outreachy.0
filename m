X-GM-THRID: 6955401561206947840
X-Received: by 2002:a7b:cc15:: with SMTP id f21mr3483698wmh.86.1620136686351;
        Tue, 04 May 2021 06:58:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f68b:: with SMTP id v11ls1443482wrp.2.gmail; Tue, 04 May
 2021 06:58:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy9S0FEKZaZzjIEZv302eoTjdv50TMWWWeI5VwLLq81ZxCX0POWy94PpVTsAx1hR2J1nCTh
X-Received: by 2002:adf:d1e1:: with SMTP id g1mr32285938wrd.401.1620136685100;
        Tue, 04 May 2021 06:58:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620136685; cv=none;
        d=google.com; s=arc-20160816;
        b=RqV0lIugcBOuwxHtw9CA3hNAnaHimHoQC745j50yL6DNBK0Wgo1g/EsCJyJV3Mdsl8
         RdD75Hqo2uS5OQSLF1R6bySC9bZYD2qlGQKehWubmMAM1V5ecvZF8f0e3PD0/ITxEFsX
         OOLXFBqOK1SKg445cRrBeIrmwBVc6zih8GNqnClrfVnmKomxnfPJ4joka+y302XXH5mx
         JOwnRnQtGkWs6fNsyNaPglkD8Y16fKjNinGHb0TdoEHo/ZB5brHQhNiHb8pww2h9wv4s
         Be3n9I/Zu8m9Tr/9omOAdG1rFJSlR/yuNX/KEhA8KplMZmTF6QcNElz6vVSUQkYOAwJ5
         KKnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fwhQbFqmk3lGr4XFNKHkxvHEa1774F/8rEnc43My0lw=;
        b=GpxvaEtlSEmc3ZjGn1WpLFSqzk8k77oxQeH9DRMOgJklqN89uetxQ51L0oDoV+Gn0f
         OGn10KICWgwvfVjcJZz8lDODy30MHIzssbI9iJROhklxTfJdRZAFSt7pEA/MzvyORFld
         zDk0/FXjmjGGclGfyUGVfIUHxSSNCZZQo5z656ipOjoIthzRms4Dna5y92//yUPO1Jhp
         ifC+lCvmNWz2BvH8GmlJXzBjVc0w1qb9qweBWVMssyTxW0eAhey95535R0JqhCfTfmXS
         uykf3lKqti3hk3vx0Cs2uDG6xzw1JFVUD5pDV5VxREwRh3xGLLb+eO4q29vLFCRbBpY9
         Awzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l4alpUtc;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id c9si212696wml.2.2021.05.04.06.58.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 06:58:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l4alpUtc;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x531.google.com with SMTP id h10so10502307edt.13
        for <outreachy-kernel@googlegroups.com>; Tue, 04 May 2021 06:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fwhQbFqmk3lGr4XFNKHkxvHEa1774F/8rEnc43My0lw=;
        b=l4alpUtcZ2FPG8XNALaolgcUfpOQZtD6nyB1KmQEaTc4SIXWb/EXgEBzgRUUlX3QAO
         ZrOhjBky2CATDeUlFVZ2uNk3cb2UZisZoPjwfk5rDo6GgATaNxptToO1eRuDWe9r21T2
         DoDTAcaGGB40o2wQm/3C8NABH3QcuhApN+IWyYGHrND6zQ/Z7ZfNgzbdqAoScpkIWftt
         gZhARdZm6Wfh38UQC4wRvreBypxOByMtwExtk2khgt6Kx0YYl3e2EFlCR+PDHz3gQKuv
         wjovykxIiiikT2RmT8vofSV1VX0fmq1X0+lQBT8ovX/tMXgjO1RGPo10SaTqBq8G2qou
         LwEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fwhQbFqmk3lGr4XFNKHkxvHEa1774F/8rEnc43My0lw=;
        b=O80hNXKUL30B9yMACdQiJbfwEhlfyKnaL7+MGqiQ/2Sa/JfCKSm2cZdB3a5rgOl75u
         gydJFrb6NjDVta0aD+bpsUy0hifFrDtx1CA+2zOCjfMKOONMIAw566C0AFA71QS3Zzpp
         lHNHfzGSw6xqd6h1Ia1NRk6HPvH9kn82szLNx+6xEwnGIm60kkuZ1+1TeAxgWC8tY74a
         Jkw/JsU4IKpxvMhm2BvCIxLkUYy7WYkh1W0L6yRv0tqpWgbwWTtVYmT09GCUJrMof/q5
         T7jInu2kzhVHZbESD/ntcYym6gSVk+6bsxKvuBU6KSpti7HNXpqDWLrnGfyAzzwp4Bp7
         UE0Q==
X-Gm-Message-State: AOAM5311JvCzQvIv4VEhkNuJd9SZav5e1BWVBcuaiOZ5U6ZzctqecRMj
	HeAkE+vbsJTiq2YVsi+oJK8=
X-Received: by 2002:a50:fe03:: with SMTP id f3mr25813980edt.92.1620136684873;
        Tue, 04 May 2021 06:58:04 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id d18sm1462220eja.71.2021.05.04.06.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 06:58:04 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: outreachy-kernel@googlegroups.com, David Kershner <david.kershner@unisys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, sparmaintainer@unisys.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v7] staging: unisys: visorhba: Convert module from IDR to XArray
Date: Tue, 04 May 2021 15:58:02 +0200
Message-ID: <3550993.e1xmc6yJDa@linux.local>
In-Reply-To: <20210504134216.GG1847222@casper.infradead.org>
References: <20210504133253.32269-1-fmdefrancesco@gmail.com> <20210504134216.GG1847222@casper.infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, May 4, 2021 3:42:16 PM CEST Matthew Wilcox wrote:
> On Tue, May 04, 2021 at 03:32:53PM +0200, Fabio M. De Francesco wrote:
> > Changes from v6; Added a call to xa_destroy() that I had forgotten.
> 
> What?  No!  Go back and re-read what I wrote about this previously.
>
I remember that explanation you gave me some days ago for not using it. But I 
was mislead by a comment ("Do we not have to call xa_destroy()?") by Dan and 
your "Correct" soon after the above comment. So I thought that I had 
misunderstand and the put back that call to xa_destroy(). I lost something in 
following the flow of the reviews, I suppose.
> 
> > +static int setup_scsitaskmgmt_handles(struct xarray *xa, struct uiscmdrsp 
*cmdrsp,
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
> > +	int ret;
> > +	u32 id;
> > +
> > +	/* specify the event that has to be triggered when this cmd is 
complete */
> > +	ret = xa_alloc_irq(xa, &id, event, xa_limit_32b, GFP_KERNEL);
> > +	if (ret)
> > +		return ret;
> > +	else
> > +		cmdrsp->scsitaskmgmt.notify_handle = id;
> 
> This 'else' is actively confusing.
>
Unnecessary and redundant, yes.
> 
> > +	ret = xa_alloc_irq(xa, &id, result, xa_limit_32b, GFP_KERNEL);
> > +	if (ret) {
> > +		xa_erase_irq(xa, cmdrsp->scsitaskmgmt.notify_handle);
> > +		return ret;
> > +	} else
> > +		cmdrsp->scsitaskmgmt.notifyresult_handle = id;
> 
> Ditto.
>
Redundant, again.

Thanks,

Fabio






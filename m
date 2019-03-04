X-GM-THRID: 6663863789016842240
X-Received: by 2002:a1f:94c6:: with SMTP id w189mr13465315vkd.6.1551716881779;
        Mon, 04 Mar 2019 08:28:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls3599357vsc.3.gmail; Mon, 04 Mar
 2019 08:28:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqwO/H1s/0N8BTM85owTOMs3/KlQDRRjYpeUgYR6wJa/85hwWHKfUSL9MfyHEo0VpTCzdNrL
X-Received: by 2002:a67:fa8e:: with SMTP id f14mr13009016vsq.28.1551716879977;
        Mon, 04 Mar 2019 08:27:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551716879; cv=none;
        d=google.com; s=arc-20160816;
        b=TFVZAkogSXAR4qY1A57vZcosy5f7L4+UcFscTbGuiP5OkjngL1zIZTIuvOQlvmGKJH
         jkcT/stk2qvQDMqoB+zSvO/q8JnkBjDud9Y6SuzeDfX0FrHsQpT1rTGC7o3Lq7D02V+R
         GJMSI9FX+0Bb0pm9zz55X+VFu6a7P3sbCvf4aOEmY9Rh/twQcqwahd4sBwD87OUGwyrO
         EJE/cWTEuyJiGubl6cfmVMH6wYW55GUXbgHjExA9bbJSP0Hzc5Q9hYRi7U1S/dTL5rcC
         hD4498JpeA6XBqcOTY8E/W/pZLv3j0plnSZfMi0Y70rnK1pccjLEPo087MoG5zmHufig
         BP/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sbIdzEF3V2W3FZv4d5B/dtdjWhJfxnHVz72ZnhxFCPA=;
        b=Hp+7ggZ0JKrESWnpwLVevSQ+z20zpjs8LNikSJrtd9fg9yO5y2omlnCUikJ+a6jTdq
         Caf42hR7A52LRwQRoQOE9ESb3kIUksT572GvJfcXU4Sk1vXwcT0jSypZJHGKVAU1qw/o
         OmniMyEBbRk3cP2+n+bdzh2iwQxo2eBIuvr0bzt6zZAjIuWbQzKWjYxAUa+C8L8W7zhY
         aq7+RUVBhyEE+O+0W8XMhOapFcCi1FhvtCKrGoRbweYvIpwVHB3DktLEOrnPo6fhniwb
         0cak97IXpcSFJ/MEXWhzNTEWw1mkrrDBZAb59gN+OTjJ6DUz7GsZ8PgfRMMorqYGLZZz
         kUhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MNMuEq8B;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c15si324146vsp.2.2019.03.04.08.27.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 08:27:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MNMuEq8B;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4A317206B8;
	Mon,  4 Mar 2019 16:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551716878;
	bh=Y0r+hqjWw9fRpzWbcL0vnc7VQcKJ2w22FYHor97SfCk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MNMuEq8B3v4nwzSzbeRzuEmmTerBYhdTEAIQfdrVSgLtIbbDZNtQ1TlQ9CA2vA+at
	 qha1szStjn1vTWGLoh9CzsrBx+r2U4ulJF92WiELXtbMzAO9BWRBHoToC4Vctvjc6t
	 /ADa7rvAb/jZ70gIRJgCi0+bLdwwlHGkwXSUkq8M=
Date: Mon, 4 Mar 2019 17:27:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: vt6655: Fix line over 80
 characters
Message-ID: <20190304162756.GB2301@kroah.com>
References: <20190304011949.17148-1-madhumithabiw@gmail.com>
 <20190304074530.GB22711@kroah.com>
 <20190304160001.GA20855@madhuleo>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304160001.GA20855@madhuleo>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 10:00:02AM -0600, Madhumthia Prabakaran wrote:
> On Mon, Mar 04, 2019 at 08:45:30AM +0100, Greg KH wrote:
> > On Sun, Mar 03, 2019 at 07:19:49PM -0600, Madhumitha Prabakaran wrote:
> > > Fix the warning issued by checkpatch.pl
> > > WARNING: line over 80 characters
> > > 
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/vt6655/card.h | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > You sent multiple patches with the same subject line, and no hint as to
> > what order they need to be applied in.
> > 
> > 
> > I have now removed all of your pending patches from my "to review"
> > queue, please fix them up and resend them properly.
> > 
> > thanks,
> > 
> > greg k-h
> 
> I will resend all the patches.
> I only have 2 patches with same subject lines, other three patches have different subject line.
> So do you want me to include v2 in the patches or I can send it as same, as it is removed from your "to review" queue.

I need them all resent, as one single patch series, in the proper
format.  As I said, I have dropped all of your pending patches at that
point in time.

thanks,

greg k-h


X-GM-THRID: 6755712048500310016
X-Received: by 2002:a63:1c06:: with SMTP id c6mr34955735pgc.417.1572939359522;
        Mon, 04 Nov 2019 23:35:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:2144:: with SMTP id a62ls590798pje.5.canary-gmail;
 Mon, 04 Nov 2019 23:35:58 -0800 (PST)
X-Google-Smtp-Source: APXvYqwHjwktg+EOi9sg01fnuG6ZdmLaHMkvdAoZUmbRuasnEgqXT4KUPatzf85EnBUi/PocgF8K
X-Received: by 2002:a17:902:4a:: with SMTP id 68mr32190263pla.158.1572939358346;
        Mon, 04 Nov 2019 23:35:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572939358; cv=none;
        d=google.com; s=arc-20160816;
        b=JN91GVOcdDLbtE5k36wTID3JW2Eba44sa31AYsWBft4TwGbUkcCP7pxie7GrvLRo+L
         l9WD+US5ItrB9Rsm/Fi+CnCakQ2lH1SI10rOLHPcMQGAbJIXB93mFG0505vskkvm9BZ/
         8HukXzlWwzKbSWgRLU3wvcSYY+FkqYN22VOgZHHQQNw0n1F690REc+0zbcdRAHt3PobH
         2zoH82rJcdlcbELNwt5TMrsc0mc4aZxgE21qrwhAsgDnBA314gCRDzxz6hPeeyyD7eyo
         2XkHAkXTsWQ4VGi3bCxj5oWU+mOzkfV3gpaJ+OJdYWxIJMXsWuavbpx106vBQhe6bb85
         480w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=a2Apf4m12XOG6iGp54Ryg/RCh6G45u8rKa0gbldjo6Q=;
        b=rbG2c58V39x6+Ony058ykW3+l4DCd8y3NyxJF2wpEi5d9NPFGE9nsmoM6L0uBcx5dM
         jzlrOVAfl5uliPjIr2QN/taVPBrl3DUx1YlxVrQQD0Jxon/Pxgcw00aPrG7GNiteW25A
         2WJHZDXnARK1scpU//xW90iHM9RQVHPSQojJcEhT2ePJV7+i2YBJz1diwDxo7dkeqTxB
         4YHh0CDLb7nM56VPWKnF3hCV9wuWjZiQhWcVdE8VRc9OBnJDzoCeypmTUEJ8RV7V1lge
         U4qW9coidbmxzC/PBftaOErFl/s3grlZ14NxTL4pMHt9h3T3C0y6mgjii+gHTWZ/ziC+
         aaEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YME8IZXa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q196si1106679pfc.0.2019.11.04.23.35.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 23:35:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YME8IZXa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (host6-102.lan-isdn.imaginet.fr [195.68.6.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7FDF0217F4;
	Tue,  5 Nov 2019 07:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572939358;
	bh=a2Apf4m12XOG6iGp54Ryg/RCh6G45u8rKa0gbldjo6Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YME8IZXabAbwSVPZI0/UzBMb2LD7ec9PzvSmrk9jtAng1tWC1jD1yd9TQ8UtCZh9E
	 g26lmTUJXkuKuejcc8Uo4mbN9q5Z0DyxucDY+5mrOLkg9T3kEiEaFZtLpMYU1Z8+DN
	 ZcyyPMcgU27aBBzZjmyohoeUMrFQwbds//tw8suI=
Date: Tue, 5 Nov 2019 08:35:55 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nachammai Karuppiah <nachukannan@gmail.com>
Cc: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: wfx: Modify return statement.
Message-ID: <20191105073555.GA2588994@kroah.com>
References: <1572936777-105285-1-git-send-email-nachukannan@gmail.com>
 <20191105072024.GA2587462@kroah.com>
 <CAMOCsdsYwL2jf3+K+W+LiKkg5bpsfQc093paHsTENe3cx51COg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMOCsdsYwL2jf3+K+W+LiKkg5bpsfQc093paHsTENe3cx51COg@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Tue, Nov 05, 2019 at 02:23:39AM -0500, Nachammai Karuppiah wrote:
> On Tue, Nov 5, 2019 at 2:20 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Mon, Nov 04, 2019 at 10:52:57PM -0800, Nachammai Karuppiah wrote:
> > > Remove return variable and return the expression. Issue found using
> > > coccinelle.
> >
> > This says _what_ the patch does, but not _why_ you want to do this.
> >
> > Also the subject is very odd...
> >
> Sure. Will resend the email for this patch. Should I just add resend
> in subject line or make it V2?

It has to be v2 as you are going to change something, right?

thanks,

greg k-h


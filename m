X-GM-THRID: 6884588339702267904
X-Received: by 2002:aca:750c:: with SMTP id q12mr6010396oic.174.1602943461340;
        Sat, 17 Oct 2020 07:04:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:60a:: with SMTP id w10ls1308121oti.0.gmail; Sat, 17
 Oct 2020 07:04:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwDBxwqE6sJfaJ3AT+HguMz4LFI/u81LLlRzoHXqzum/DbmyHscveM0Yb5q0AnHXlj3M8KK
X-Received: by 2002:a9d:6c4f:: with SMTP id g15mr6236719otq.277.1602943460012;
        Sat, 17 Oct 2020 07:04:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602943460; cv=none;
        d=google.com; s=arc-20160816;
        b=ACvGXzY+VweFdqW21d3l9pqzsZiC12ltt0FAZbI1DEjntsAv7rCNZkPP36wWwuIqre
         y2Zasxe+Sir9tcQK38xUpwEz6DMpQD+YsfV5k3DyAmrCp4PJkOiekvHYVeXTo4YFV3AC
         a7Np2c85yArf1qO3HaddB5HFZrKDe2vyyBjkLahu3IqX6Gh90mn39qYaSPDk5b0I1q2r
         j8DyWlMWpQHrf867tsfUhkG9H6AQxNL/KaZORbKcLzhfErJqr3JCq8cHRA68wZ63ZH/+
         vRFX7mZQpIFx54tTN5y+8TLfoDcUo4XiQYG7Ho5WHl/dPfk9TDomJLlfQ41IO9f7MQnJ
         N0eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=AAy4ViRCtYwbQEVt6HZhoyQw/UxI24rtwjrGLHM0UzY=;
        b=HUenisX5XIwYHmSz1XhzAExDj+LN5ZI+HOfjA09h3bTd6hC0sftzsG/pn7QJzg6vWm
         iA2iz6FA/ccb2SVoaraCtNq6/T6OCdlBbBWeoz2/9eHHR0hLeYCFDYV2HuWP9KCG1cF8
         ROxqNW88rdMrOsSwT2cAo94hmE+s+McZL+EnpvDTbcBkQKcgLjZPOQ7eh2jpmg8yE8Jb
         gPXUL+FHUcGY2vKAj3ksEaFmqhDrKvy8C8Ajv2B9Da4gLR/eWlaRI2cKxYxfa1Z5330H
         eoIN3pNlhawY/oemKcw5QvX7OVpZTKLqMPX6EcnB00pDQR619jUtdmMYBzBRPef81FZc
         uxlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fajUTfwY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f16si508734otc.0.2020.10.17.07.04.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2020 07:04:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fajUTfwY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7EBCA2072C;
	Sat, 17 Oct 2020 14:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1602943459;
	bh=Pj7KNbJULRoQQr4fWAWD+2ObGiWgikKSeWYNbJhl8yg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fajUTfwYal8gLyHtkwupBTfJDmVJbjll5XH1D9r3cuSkt0lzJlFMtwRuOaz9owUTy
	 MgUhtWc5oH4eWUCMA1sJaZPJgbUHgCgyNBNSPGW0DDbrCGufuE72Fu+sSC0OJWMGhD
	 rpjCEjariEIkpXU84XKEayi2RNQ0Ft1ZKHMNnGFQ=
Date: Sat, 17 Oct 2020 16:05:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: leonf08 <leonf008@gmail.com>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 3/3] media: staging: atomisp:
 Corrected error handling in function
Message-ID: <20201017140508.GA3003212@kroah.com>
References: <20201006202903.GA8346@linux>
 <CAN+ihrq_v6OFbOrZUhHZPRTjsUO5nrnr7Kj3AHQJYSD7+oXe5g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAN+ihrq_v6OFbOrZUhHZPRTjsUO5nrnr7Kj3AHQJYSD7+oXe5g@mail.gmail.com>

On Sat, Oct 17, 2020 at 03:58:41PM +0200, leonf08 wrote:
> Hello. I‘ve sent recently my first two patches and haven’t received any
> feedback. Can I expect it. I’m a newbie in kernel contribution process, so
> don’t know all the details.
> Thanks.
> 
> вт, 6 окт. 2020 г. в 22:29, Leonid Kushnir <leonf008@gmail.com>:
> 
> > This patch fixes check of a result of 'power_up()' function call in
> > function 'gc0310_s_power()' to do "error handling" instead of "success
> > handling" as Dan Carpenter noted in his comment on the previous patch.
> > Lines 'return gc0310_init(sd)' and 'return ret' are swapped, and direct
> > value of 'ret' is checked in IF statement now.
> >
> > Signed-off-by: Leonid Kushnir <leonf008@gmail.com>
> > ---
> >  drivers/staging/media/atomisp/i2c/atomisp-gc0310.c | 7 ++++---

As the instructions say, for patches in drivers/staging/media/*, there
is no guaranteed response time, and so it is not good to do work in
there for the outreachy application process.

Please pick some other directory under drivers/staging/ that is not the
media/ subdir.

Again, the instructions should already say that, I recommend reading it
again fully.

thanks,

greg k-h


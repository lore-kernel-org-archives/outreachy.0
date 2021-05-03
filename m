X-GM-THRID: 6955401561206947840
X-Received: by 2002:a05:6808:148b:: with SMTP id e11mr14865480oiw.108.1620059484565;
        Mon, 03 May 2021 09:31:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:926:: with SMTP id v38ls3953240ott.5.gmail; Mon, 03
 May 2021 09:31:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwXaEZKgtv+v/SubTlcKd0GVkzT8mX6CtA8PHk1/4MrupgfXxx1IpXvacihvn2SFIdI8uGH
X-Received: by 2002:a05:6830:1150:: with SMTP id x16mr16048827otq.294.1620059483764;
        Mon, 03 May 2021 09:31:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620059483; cv=none;
        d=google.com; s=arc-20160816;
        b=FDTLsgG/sfG73bmDoUjgYFoQN19pnxqggM4SFanAsQSN03nKlQkg1dSzsTGqatLoJH
         TzyI0bydKkkRdzIJsKsZVkyGtSWGMdrLmlMiNGAKQ9KdH7rNsbeoWfDj6mrxYPFdHLIF
         x+R0WGo1RmMHkI/mE8aPdaMy7An/ehOk1wgnwQfyGejfy6yj0Ru5a0/2oNnQdN+JaD1A
         TInpbMwPAwLrBC7XgJK8c7F9Gm7Lglo3DXPJj9awDe6V1J/82FzdDEexXeoXW024AE+J
         69PrPf5y2RwysOIvjGdNeKxjR5k7aDL0IL8Liv8WLkl4udK8rZxFpQL49nq5qsYF2eKN
         muYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1fPJCR4+ZH8ePNHERcYZgNQvKEqZ1nRY9pSzh2KTnJs=;
        b=i1f343avuNLp83lDbRPF4n64zXl/soSVIM2gcIUAvmPFHTIYZwkC0Zpu3OoHUuV+8j
         6mzmnAlrFkcYMW6kiEHwJGAl6+d8m2j8oj0QMvg0dIrIoQLJhnLEMFZjsBcjPastPcz8
         GtPa++UgEuvNl6cman4noB7NjleU7rPIvC7B/E1H1TJk6HyC0E9lj4aVrHIjTxusqtq2
         JxZmsSVr351s/qrJWWGjFJdRNDP0sytWaK2pi/Dnp0RaolT+HcHGeS8kpqtcU8klcXvz
         pQwizUlcloeMrOGvmeVF3Cf2cmZ+8vabWPA+He1tCkoZt4UkD6HovIo6uLw+L1JD5gjx
         CZrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Qbe8Am5l;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w8si8480oic.1.2021.05.03.09.31.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 09:31:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Qbe8Am5l;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 43E1861166;
	Mon,  3 May 2021 16:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1620059482;
	bh=1fPJCR4+ZH8ePNHERcYZgNQvKEqZ1nRY9pSzh2KTnJs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qbe8Am5l+ixtc+C3MF1ygCkEZ5ujn4HLGP0thqb9VBFrt7qkymu4N6zPSSzBc1Zr2
	 M0ZvpzSgGhbE9HLIZtmUNkjHwNe7dj8qXXWfyZNklaWKcXvPNWzBF/7ICbOerAMn9q
	 bqJ3iDMsZ+G61sGihrKeqsUMNUzWVne5B/2NEgwc=
Date: Mon, 3 May 2021 18:31:20 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	David Kershner <david.kershner@unisys.com>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	Daniel Vetter <daniel@ffwll.ch>,
	Matthew Wilcox <willy@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH v5] staging: unisys: visorhba: Convert
 module from IDR to XArray
Message-ID: <YJAlWJXDnK9KLg2H@kroah.com>
References: <20210427150719.30841-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210427150719.30841-1-fmdefrancesco@gmail.com>

On Tue, Apr 27, 2021 at 05:07:19PM +0200, Fabio M. De Francesco wrote:
> Converted visorhba from IDR to XArray. The abstract data type XArray is
> more memory-efficient, parallelisable and cache friendly. It takes
> advantage of RCU to perform lookups without locking.

And does any of that affect the runtime of this driver?

I would need this to be tested by the maintainer before I could do
anything, and a review from willy@ would be also appreciated as I'm
guessing he asked you to do this?

thanks,

greg k-h


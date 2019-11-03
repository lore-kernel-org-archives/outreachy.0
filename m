X-GM-THRID: 6754760383787958272
X-Received: by 2002:a17:902:d687:: with SMTP id v7mr16615676ply.195.1572785009283;
        Sun, 03 Nov 2019 04:43:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:2144:: with SMTP id a62ls325280pje.5.canary-gmail;
 Sun, 03 Nov 2019 04:43:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqy/XcRedWXikYZWDOHqeJUlH3S/oBwroIlTLzad605/en2SuCW2Cwfqct3d3eE3pM9NY41x
X-Received: by 2002:a17:90a:3807:: with SMTP id w7mr13272648pjb.33.1572785008088;
        Sun, 03 Nov 2019 04:43:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572785008; cv=none;
        d=google.com; s=arc-20160816;
        b=tryqHlQNeLcsMx9fF2MLf4EExnOW79emQoP90iUooo7MjTRSufdRtgUB8TU1OkCOIV
         FIUBpPhEHxgL4x8/oCppF4ZiFFDBETLMNYP3+qfC3ncicdjzTz3I9TJhW/q+aZ9kSqLJ
         1hgnAHQc32rWuP+q8p4t8Eq0CDZtqs3D5iM/xAuVIQrfITlVktySY1oydLjKFZ1olMF8
         NlJLNna0dAaF6O5YEiBu56HFNu1Tu6WoaPkxRsbMk0XzGsqHT0jtw1BEGDvTOhoqIj+6
         EouxhLQvbtPB9MB/CQ+ZEcS4YMuc1B1XpOEWTDnqs4IWDxcbJvSbR7pgUVVw18utX6ok
         BV2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YuJ8Y7sZPud+T7u+nW2kAsxfNPVXIYAOFXVpArggxO4=;
        b=lwNQrb7JoSTsvpl1Vxdo4UCj4lPHa2Ln077rRwsklreeVXueCdn4EKFG1kTlyI5EjQ
         Dedx/ZCo3PmSW1BQC8WacQMdXbhygG8gtCHRl8IASijkqrMWHe84WuB2Ud1nWb/ycl3G
         /s6QzxFABq5IYuj+KvVaEMLE6n3LhRYlrAn5QrzJAdWO4vxmgQtAkhdUShtSsU+oRnam
         xof6v+S1ZSrjwiCXpRF5nf9oaMU3WBLaLxxRn1PJ5WHsgNOMLsbJ84yKvxLiHNtO9eh3
         yXHaWwy74uXimHQLBH6yBn/wGiqG08OWd8r3o+guBcDBP9/Z8/5ljkK0M53ZT3qSvqy1
         Zldw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SZ+9ji3H;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l7si136718pjy.0.2019.11.03.04.43.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 04:43:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SZ+9ji3H;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4D34A2080F;
	Sun,  3 Nov 2019 12:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572785007;
	bh=23GAmmycQ2uZoxZTx3mkVyJt0fCZa579tf2E9q9PjSo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SZ+9ji3HKYBD05MozUjTQZrsZzanDhvgM+qK9DlJky21QDhAIl2njLnI8NxnDtQ+N
	 pE+MXmOI8XRMgziK4vXLsC/RXgm4hRvYQq7Lhvw6jt5B49sze9BbhNx6H9PigSPKUa
	 cpZ9ZVdkBOZQyFg6A53jJ5LZIpm/SAuG4z7yPzdw=
Date: Sun, 3 Nov 2019 13:43:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com, jerome.pouiller@silabs.com
Subject: Re: [PATCH v3 1/2] staging: wfx: replace 0 by NULL as the return
 value of a pointer-returning function
Message-ID: <20191103124325.GB619424@kroah.com>
References: <20191103001911.10066-1-jbi.octave@gmail.com>
 <20191103001911.10066-2-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191103001911.10066-2-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Nov 03, 2019 at 12:19:10AM +0000, Jules Irenge wrote:
> Replace 0 by NULL as the return value of a pointer-returning function.
> Issue detected by sparse tool.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/wfx/queue.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

What changed from v1 and v2?

Always put that below the --- line.

Please fix up and send a v4 series.

thanks,

greg k-h


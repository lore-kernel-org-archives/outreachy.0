X-GM-THRID: 6758464167600979968
X-Received: by 2002:a17:902:744b:: with SMTP id e11mr33142706plt.208.1573590833897;
        Tue, 12 Nov 2019 12:33:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:cb0f:: with SMTP id p15ls952881pgg.1.gmail; Tue, 12 Nov
 2019 12:33:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqzULNd690dgaalvzOk5cOBqOLmLvdCKjgdiCK92miv2gjpHgK1D1jHbu2R8/z39W5nhdQVX
X-Received: by 2002:a63:e90f:: with SMTP id i15mr14450804pgh.9.1573590832361;
        Tue, 12 Nov 2019 12:33:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573590832; cv=none;
        d=google.com; s=arc-20160816;
        b=yrotDuBvKQtMs5rrvuk2I6Fp9aKYhsDumHtQLxzeskXATg0pG1p6NQoup93SLjz39Y
         mEd1r5qbKzOna23k5739L2yaIrUVSL13Qt/8nC6jpZcD0SCDQPIAQ72O0SLxr/HsZdIc
         HsehWasF/Mndd6oxknBNJjMB+Lqrm3ah3Do0EzTsKX9ZME8hqPO/34Snb3cneDuR7KH4
         IfpU+t+x/LCaW8JAGmKT2AujarrmoqWvz0Wn5tXmscSWdbH4DB2XuM8xCvQCogPCw/NR
         yHWmhNPwd5sflbgeWMpJbDKAnlyuDcZ77VoE1IOgNivDOB8ygGTjBhFusTPEoPb89JNm
         zJgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=W6WcVPeP6jVYq8LoV36ELafRLgsi/5lD8HzoV1Pzyks=;
        b=f8IV1FB0SZIIqS+HmZujJQCpF+eazpzUZmhKKxDNUYkf23zD/g/djJEPTM/aUWRd1t
         g03dPYZR6Lfmpy0W+tF3jDL6fU9+yACGaIXvqF0I+Kbyzbpi5tQvqmBCWIDfJiG2vDO/
         lAYTsIYlxgJt2vPubKu2PE5ZoC8+DkR0QNLLQUT1/vd1sCbk+Z9hvM3ddYSPBzoYAUXQ
         2Ze/jCdZqcVGLQOq1gst89KA2SgMGzdyynDai8IgqJZ7sty+cxPirtmhGjmo0sU2L6/F
         p7gAa4H5oSUdTJ/N/X5QyDxYY3TqpMotUcrvFb33Ph8kb5z+lcxiliT/TV6BD0Yni/a3
         3U/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RQzt25Hx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 102si419877plb.3.2019.11.12.12.33.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 12:33:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RQzt25Hx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [8.46.76.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 43D24206A3;
	Tue, 12 Nov 2019 20:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1573590832;
	bh=Mnvf0QMRCj4tI0M1jvvA/Cd6q+zg1D2YAk4ccvhV8aQ=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=RQzt25HxE4MPL9H3xgO0Hu7OIaUSat5u0D+HttH0Y3AqB+W2OS+1h3ieDUKhQFeC6
	 tqu9JeoGJ29UjtkkjWFu7WY3BrTov29jq6zd4Ckf4wvqRhQyW51lpfIzlhppixl28x
	 j+dc4iv0RB7wxAfv7IbOMh2quB9XMD4C3HIiz1Pw=
Date: Tue, 12 Nov 2019 21:33:43 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 7/9] staging: rtl8723bs: Fix incorrect type in argument
 warnings
Message-ID: <20191112203343.GA1833645@kroah.com>
References: <cover.1573577309.git.jarias.linux@gmail.com>
 <637726782ce6c6ed3d68b5e595481857916bbc56.1573577309.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <637726782ce6c6ed3d68b5e595481857916bbc56.1573577309.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Tue, Nov 12, 2019 at 11:55:27AM -0500, Javier F. Arias wrote:
> Fix incorrect type in declarations to solve the 'incorrect
> type in argument 3' warnings in the rtw_get_ie function calls.
> Issue found by Sparse.
> 
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index db6528a01229..bb63295e8d4e 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -83,7 +83,7 @@ static char *translate_scan(struct adapter *padapter,
>  {
>  	struct iw_event iwe;
>  	u16 cap;
> -	u32 ht_ielen = 0;
> +	sint ht_ielen = 0;

sint?  Ick, try fixing up the function call itself please.

thanks,

greg k-h


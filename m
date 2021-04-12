X-GM-THRID: 6949956774560530432
X-Received: by 2002:a05:6a00:2303:b029:249:b91e:72f0 with SMTP id h3-20020a056a002303b0290249b91e72f0mr9112954pfh.80.1618219867835;
        Mon, 12 Apr 2021 02:31:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bc47:: with SMTP id t7ls2961556plz.3.gmail; Mon, 12
 Apr 2021 02:31:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyptW6Mnh7EmKrXHu8DvEfgzr1GYwu+5P/c6ClYO51Bl9Krq/2BlMIZTSm9WTcHikiGDORx
X-Received: by 2002:a17:90a:540c:: with SMTP id z12mr26831549pjh.163.1618219866711;
        Mon, 12 Apr 2021 02:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618219866; cv=none;
        d=google.com; s=arc-20160816;
        b=SG8LIOvU3Y7aCGnh4NkVajkeBXCqmmg9gNtf8afkwTFvckE87RUQIX2HgNdXB4zDvX
         FLI7BM8DoSwjM9whBo9GJFe3QSD6ZJYzYee4YpEbALz3JBqOfyhtCy34CqY6tihRzDSw
         6XIbgxyEVTX0vhS9bcS/IirKRPSvKGVIczjf5FbOEbXZObORyItfbg//xqiPQXN/UR+q
         yPARSWz+s/H1mdVPuuwb4QjiigKlL/FWVLKdFXsPaC1+6VjMOT/fchaROQyU93Th95LJ
         VwlHb2m6w+PsuOlPniSjZtezPxOVpL1chci+FSClVhm1szoIbcMMjaWjfCx0N2kwKbzf
         bcvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lKnNt7aIV4dtOhJK3vy1mnltOf5jC57izo8pPRGKhD0=;
        b=jQX6bd6t7y7CwKgt3/9veZJThdVCywxtOev50v0mjL2SrsH5JAC8UAxqTBjfdwaxoB
         tNfHHeBNtmj30UH7It7qPKiH9pj9ymerAfJPuLSdTh7OixxdL8gg/0F8xHFxKRkjkLMb
         gOHNGH9JJMN66Z99uu2ETDyhlvEFnQBD6uj24d/8p0vTQNRkd2jjfmuLnpzhYqHJwlpi
         Hub+7Fuv+l9sKw9rc/6ytIu6GZDMlXg16JY5ud8eNA7fNzP0uvqC7N46WSJxkoPlckLY
         dao/ak6NEjMUmFDT5zHRgS0fDnWhAWzB3JzwBWlHtHVkfUb4lpo4Puu6psiCBoN0eMI4
         oKwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Y0wESZK0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q5si61759pfs.5.2021.04.12.02.31.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:31:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Y0wESZK0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id E11896121D;
	Mon, 12 Apr 2021 09:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618219866;
	bh=AitILzDXOaPxQJDyb5VWuU+H9qTa5Vx2vTYtd7yvvbQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y0wESZK06EOMBoGHqMcawB5gEZBUbdp/KQ0p40iIbYOMmgTp5GEWWdLFEcog5OTQM
	 k1quQMahCaEACeCd/qN9Jk6XhbgpV2DMFAvZIfGcrc/1DHAG4u1a7zEo77oIceu4Gw
	 pn/A/W7z7ZiqSBT1xwYuU9m53thBxU5l+TBZIDis=
Date: Mon, 12 Apr 2021 11:31:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove variable
 set but not used
Message-ID: <YHQTVwx+S82CAJyb@kroah.com>
References: <20210411174143.31618-1-fmdefrancesco@gmail.com>
 <alpine.DEB.2.22.394.2104111943230.11703@hadrien>
 <2836382.q67jgZTtOx@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2836382.q67jgZTtOx@localhost.localdomain>

On Sun, Apr 11, 2021 at 08:12:05PM +0200, Fabio M. De Francesco wrote:
> On Sunday, April 11, 2021 7:43:57 PM CEST Julia Lawall wrote:
> > On Sun, 11 Apr 2021, Fabio M. De Francesco wrote:
> > > Remove variable "int ret" which is instantiated but not used.
> > 
> > instantiated -> declared?  I thought instantiated could mean initialized,
> > but that doesn't seem to be the case.
> > 
> > julia
> Please, help me to remind...
> 
> If a local variable is declared but not set to any value, does it take 
> space on the stack?

Maybe, maybe not, doesn't matter either way.

> If I understand your message, it does not. Therefore it is only declared 
> but no memory is allocated for it (i.e., it is not instantiated). Right?
> 
> If you confirm I've understood this topic, I can send a v2 patch.

That's not the issue here at all...

confused,

greg k-h


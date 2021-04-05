X-GM-THRID: 6947438561526284288
X-Received: by 2002:a17:90a:d256:: with SMTP id o22mr12819066pjw.22.1617617406554;
        Mon, 05 Apr 2021 03:10:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:ab81:: with SMTP id n1ls9190470pjq.3.gmail; Mon, 05
 Apr 2021 03:10:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzXDUu1FKUm/V1wa6GVyskb1eri7hf/RUgEh49J5PYhI8RNL2xg29nK39Fev8kNsSgA8iAp
X-Received: by 2002:a17:90a:d311:: with SMTP id p17mr25971281pju.43.1617617405476;
        Mon, 05 Apr 2021 03:10:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617617405; cv=none;
        d=google.com; s=arc-20160816;
        b=wPiz5hnhL6LBJCbYY94Fbr/Csjg5f5gnrtKDSJdUxyP0eslpDc0QdmM5WdYEkps/xh
         LIJnXWIUuDqz4nhPtI80NY+/3jm96gzI2p5G80RWPgAB0dwHPNa1qXnEwiImTrQ4A+3t
         UEnBBMruCEpWUn+Xd1uQpCZNRL9of9KNu/SiQeBRWCfWM8LoqSCG7jc9zFna4OeyB2Nq
         lcsbcyN9+9iEJvIXUO+KB92B2oRwi+QqS4LZJnyZHLE7UNcswFjhXp9vstdA8vEH1I/N
         40/TSNPLu4k2kfiD458TyaKdQiPxKqgKoIUp+xqB5BQrC0WTHV4M0xZgiYjHlcgrq8L1
         GmHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=gkSV1/u6IoyLhAg1zUEDgoUIjQxAUgAVGfNnla6UniY=;
        b=sjI7aL5vyt8PCEhIaA4397Cm3GSlAOiZBanA1djTuIt7VyiiIsBxWmDkKsIFpR6CxV
         gmG7x2DfZYt7hn6OX5FuV4X7kBnHNLXIhqjr47MwmfZ0vvTdsvj3Qnc15TTS9ho3V8pI
         l3RHgFzommhvvRF9HtgAsnie/RYTQ90XihmNaXEFD3EakbwZa0Syv9XeN6JfmEJn4U+R
         5qNo6yXctX3QW+uahICfT+77pgMLNOQG3l96ZYQefnGodClOPTUGf5/B67ISBftbjNyq
         rFDV+1bF+wjnmX2MVgLCehyN1TCqJPE8bZlSQj+zzXg9L3GoGmyPmzVs14jnIRuU5fkD
         n6mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=F9FTALqj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bj7si358631plb.5.2021.04.05.03.10.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:10:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=F9FTALqj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 91E1E61278;
	Mon,  5 Apr 2021 10:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617617405;
	bh=Je/iwEPKGmWwfpx6j9nU8e8Cx0cbV02FGR+9cImDvtU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F9FTALqjBFbtV7oQpMRcYa2WpyX4RL+k+DoVQsoXjFO+qSHpnXlFc1YIro5ohuikj
	 0EgGr4bYUBdrCigV1+t4BXBLDRKiBrY75DTptvrBqSlGKT6w8ShM4LqfsDUeKwbW7k
	 mhk/Kbnxf4/G29RZajcgxDFBdqZnDRpJOA8alYWo=
Date: Mon, 5 Apr 2021 12:10:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: David Villasana =?iso-8859-1?Q?Jim=E9nez?= <davidvillasana14@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] kpc2000: kpc2000: Removed extra blank line
Message-ID: <YGrh+jxGDczfqoeB@kroah.com>
References: <YGpCij8SVkJwO9AN@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YGpCij8SVkJwO9AN@fedora>

On Sun, Apr 04, 2021 at 05:49:46PM -0500, David Villasana Jim�nez wrote:
> Fix checkpatch warning:
> CHECK: Please don't use multiple blank lines
> 
> Signed-off-by: David Villasana Jim�nez <davidvillasana14@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc2000/pcie.h | 1 -
>  1 file changed, 1 deletion(-)

Shouldn't the subject line something like:
	[PATCH] staging: kpc2000: pcie.h: Remove extra blank line

?

Please fix up and try again.

thanks,

greg k-h


X-GM-THRID: 6673855780112826368
X-Received: by 2002:a81:2ecf:: with SMTP id u198mr3919888ywu.10.1553885658784;
        Fri, 29 Mar 2019 11:54:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:b807:: with SMTP id v7ls745721ybj.7.gmail; Fri, 29 Mar
 2019 11:54:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzhQrukBdMxc0dU/5vdxas8KgmauAl+fuCZu3TYwHP+bc05Fj5j16ig0mdRsh37lnfh89vI
X-Received: by 2002:a25:3f41:: with SMTP id m62mr3318963yba.72.1553885657882;
        Fri, 29 Mar 2019 11:54:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553885657; cv=none;
        d=google.com; s=arc-20160816;
        b=et8q2CTYOCylw5D+955hcrrEaZvwa7UB1kAPr3cb9+v+SK1otr1pWKdrIWtUP2tkMK
         oXjbsRduE+noXukImJngyQugUbo3eD9pCoa/XM9drMpiAxdUIejahWYn88Ikz9E7zUwL
         Cvm9/qxa+CgQ2szvKn/612MZ7sWKprpUc+U1tjq4dy4YEYdGn0NwOpExlJe8Z73n87b6
         T4seYHyPzeGPSCOSRKOmrrATxP6TCAZ/FH+e4a7x/IoRrRuk5U+/xht48roDH7pKX+zk
         Lmn/uFKwno4GgrzefOfv4czH5kBtutURgK6vlY72FeGweiMenFuqxvSifhrnuIG3xPl8
         UxOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SEqFOOlBTwTaAFJkocRhzN2vyEUcGh55UZVKX7WNPpA=;
        b=B2UqfRYpzfx/YyorAiPC0L2GFi551sthj3gaIg0RS6lo7oQ61bediMA0Vr2wcfCJjY
         rZcOwc0HJYG32QjJSsyWmWxt17DuBzoEUrchTBkvV6XBoUMMs13fUepfaMCMS9ahm6/T
         b21P3rVvvZ5vHuiaAw8h+vDBhh1TIVsbAmD7TCnk/xI3OszU20GeNklrEOXsf5sYIGyv
         fSlAQv8OG4f06RvAVI43cJFPgJIkEK4Euj+A6glYdxedqOBeb8u2BGRcaCW5Aw1SvMWe
         r7G+9+5Y7AzzSBF/9lnJ0R56eyvcGKZLWRlLijuDOFYZFHSQO4y9U3Lhu+szzaFMwHSG
         cIzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FU0LsqT7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 204si176961ywd.4.2019.03.29.11.54.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 11:54:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FU0LsqT7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 58DF22184D;
	Fri, 29 Mar 2019 18:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553885656;
	bh=6P7T2jb6aWRLBCQFSxPNUPs8JO0D8spulhWDoFzKaW0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FU0LsqT7W8rdw2RR923qV1oT5rGUcE9wRRNEcz3HTyLuXXLHQrzqhzeOINMyJ/8Zz
	 pQOzIB2jxocXj/VO2QaWuNGMAK159biY2NI8lxd/YIrJRTYnXpBZ0Klce29FL7drxv
	 988G90OO1dKeU6vNJIEYNHFBF/QgtFOztAJqDScs=
Date: Fri, 29 Mar 2019 19:54:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: media: davinci_vpfe: Convert macro
 'IPIPE_S12Q8' into inline
Message-ID: <20190329185414.GA19184@kroah.com>
References: <20190329164851.7230-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190329164851.7230-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 11:48:51AM -0500, Madhumitha Prabakaran wrote:
> Convert macro 'IPIPE_S12Q8' into an inline function to maintain Linux
> kernel coding style based on which inline function is preferable to
> macro resembling function.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> 
> ---
> Change in v2
> - Resent patch

Why did you resend this?  You don't have to say this, you need to
describe the changes made.

greg k-h


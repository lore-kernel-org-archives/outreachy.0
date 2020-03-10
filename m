X-GM-THRID: 6801918498465382400
X-Received: by 2002:a81:5cc2:: with SMTP id q185mr19442604ywb.108.1583831314621;
        Tue, 10 Mar 2020 02:08:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:883:: with SMTP id e3ls1257323ybq.11.gmail; Tue, 10 Mar
 2020 02:08:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsXE2qnwtfI7vu77CBXHZCtCKjbl43qt8bK7Bjvj893luXvaLpqOj00e5NBuLn7mO2jL8J2
X-Received: by 2002:a25:add1:: with SMTP id d17mr23240239ybe.191.1583831313135;
        Tue, 10 Mar 2020 02:08:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583831313; cv=none;
        d=google.com; s=arc-20160816;
        b=HDy5v14Kw51bjKkcLnZ2sN6MlRTW0pQz9dAq85kQOah0jFVpQNklbA4OxGJnbGTxyb
         9oi9WvpC5aU0v61Z89p5/QIS4a9+l7rVx2BrK/gjmr8AO7/Z2BlGrpPJNqKztWtLgQNq
         lZWSmDp8QDJXZAYn80jfI57LxV0HXz+SlGCLgMSeQe+DAcMdNDZYmKWaI/inKDKHIqe9
         9RMit2XxkJUOKcICv3Sig9pBgDyjdxX1VsucpfXcNQWYhQoYkEJd0dVvbO42DgXPtezc
         9ea0MYwDG4UDof0ZXeochP+r/5SfCjzSbv98ugg0lEfG1ZmU3VfCM/0dPMGVygXrtzX+
         oDbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TL4BqKot2EhWLnJpTDLUYRa5I95HfI6/gZ4nibkAztk=;
        b=dfQXmY1yCo5ilaI0Dh33u5PhPjgImPuwflbDoYjxpN1Mgr/7/qvbltFTUzeJ3JUjlG
         rF7jt579ks5StNEvirpPre7hF42tWEXAi6vldircMSiZ+0ym03B2ywNjSqrYkUzds7Q0
         VRZpR0I1LdzRNlgWAUcMNOycF5JpFGRGWzTYl36db2CqQ2d8vKniijAqk0G5Xezwmb41
         nV7zSlHO5g3GpVBzA7Psyp2BLzuoqLnefOY9NRNpW5wXClp1K21uGRa/TlnV0UTbYGgA
         mekefsDfT7fCuy7LOIBoLm0PLgoFAfpNeumVNfMhXrD0U8fiABxxbzoGAtikZUvWeooo
         1M5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ujkDxJpG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x13si1043105ybs.4.2020.03.10.02.08.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 02:08:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ujkDxJpG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A2EAF20674;
	Tue, 10 Mar 2020 09:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583831312;
	bh=ijqZGGg8VmaNm5zlT+d5EW+k+z1+H8Xv/1DBPqNfFBk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ujkDxJpG6V50jjASuBKaYebTHniTWGRoOSx8lYI3h6Hy5/XgfPUKe5O5hjaNzZuLi
	 GXBEc36tTFMK2gsJZV6agNLBHYe73t6rp7cjeD5VpFa2No9OR/1XX6Q0QXZzYskCjr
	 VsyS1T+YZ5zQ7DJXldyHGRW9iYZIS/3wjtfq0Img=
Date: Tue, 10 Mar 2020 10:08:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] [Outreachy kernel] staging: vt6655: remove line over
 80 characters
Message-ID: <20200310090829.GB2479270@kroah.com>
References: <20200310082329.3274-1-payalskshirsagar1234@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310082329.3274-1-payalskshirsagar1234@gmail.com>

On Tue, Mar 10, 2020 at 01:53:29PM +0530, Payal Kshirsagar wrote:
> Remove line over 80 characters.

That's the same thing that the subject says :(

And you did not remove it, you reformatted the code to not have any
lines over 80 characters.  Writing the changelog text properly is almost
always harder than the actual code change itself.

> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
> Change in patch description from "Fix" to "Remove".

This should read:
 v2: Change in patch description from "Fix" to "Remove".

Can you do a v3 please?

thanks,

greg k-h


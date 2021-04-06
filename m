X-GM-THRID: 6946280249577439232
X-Received: by 2002:a05:6602:722:: with SMTP id g2mr24933071iox.1.1617737778074;
        Tue, 06 Apr 2021 12:36:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:2811:: with SMTP id l17ls1813582ilf.2.gmail; Tue, 06 Apr
 2021 12:36:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxv/yYB+S16Ch+Sf1i4BgH81BbyTRLOc4zYqBAPV/WmeZON9SqU0zM9oxRHHqkuHzqtBOHW
X-Received: by 2002:a92:c241:: with SMTP id k1mr21835071ilo.119.1617737777200;
        Tue, 06 Apr 2021 12:36:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617737777; cv=none;
        d=google.com; s=arc-20160816;
        b=wfT9VqIZdCL/a/KKOCdLDMbhot188w9N9CgtPGe4iWoBh++kxjyvXq68I5soPjfac/
         BmXG4QVUs6Xqht5+dF10INdvLcCX5zZ1fu5kzOJQZ8umqi1nKszTjJZWcKmUz5qQ/d3m
         sC8yu9tO806E+Zp+DtH9YhUcfTwb+jVlInwwi+Msn2MY3GAUdd0ANSwP9pYClZuuY2Rr
         1rBWzWFyZVJx5Ug6bneslsQhDHKKIcrtnxzQV2Mc4KkKIpFx75xqEI5aFj31CKz1803u
         CafEmp5PTxp4VrGK7+zpwN1B0LpsU4lcV+TQ7QL+MdlFSLyVKYJhJK0XNcn1t0sat/Wo
         WHbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8YImkJ5UUfAsWVSWQff3Ob98hWvLX+hpgde094pf5sE=;
        b=HhLhHqbZ9ht7YwcNKq7K2b2VsPHWxnk0r8lgi23y9hQwIPcfZ6gK+l+DmfjfRdvYEy
         nx0ZTar7P3pcYa5F74gxlykfj7kP++syjGgyzcSihijo7LrDrv3OOevBFGvncCtxct5r
         L8zI59ID+zeURYULUMOAxMrtzvATMojtEIN3Lhjhf4Y7uq11lfqsROuHgEiBtqC78aJ/
         YbbcEyGD9hXczKj8vhBPq8wAdA/6C+p8g8X9VRxe8lRnU5ICUJ759Md0QXBXd5Ipus3K
         mmnq3tYm8tIUtY75fgAQ61nug5rXPcI7ug340WmYiYY6l/FAX+xTNjcpnH6faw7iZQ/q
         TD0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=qQs+DIBu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w1si1238327ilh.2.2021.04.06.12.36.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 12:36:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=qQs+DIBu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id A6777613A9;
	Tue,  6 Apr 2021 19:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617737776;
	bh=MJKZMQKHJHY6Vc9TMSOIgqmLg1at+USHkUd5zXJWp4M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qQs+DIBu7bc3HH4i/wM6Vq+v8ecI711FauSPxZYFbEyoIyieRBKlyQdgfdDaKRM41
	 IH83oRKcpoNg2QSYNHPuukF9fc+R+G5W6JMzk+NDoXtCaKDEi3WFV9XAOAyuAmcDSp
	 ALvjCkvqdRVKKi/wHvvxSPbOj/owZqQVZYhE7GJA=
Date: Tue, 6 Apr 2021 21:36:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH] staging: emxx_udc: Ending line with argument
Message-ID: <YGy4LXHBrBb/r3dk@kroah.com>
References: <20210406193409.96428-1-martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210406193409.96428-1-martinsdecarvalhobeatriz@gmail.com>

On Tue, Apr 06, 2021 at 08:34:09PM +0100, Beatriz Martins de Carvalho wrote:
> Cleans up check of "Lines should not end with a '('"
> with argument present in next line in file emxx_udc.c
> 
> Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)

Why is this a [RESEND] ?

What happened to the first version?

Also, your subject is odd, please look at the documentation for how to
write good subject lines for patches.

thanks,

greg k-h


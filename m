X-GM-THRID: 6805399652543758336
X-Received: by 2002:ac8:fe9:: with SMTP id f38mr2854186qtk.130.1584511209436;
        Tue, 17 Mar 2020 23:00:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:d44d:: with SMTP id r13ls3823380qvh.7.gmail; Tue, 17 Mar
 2020 23:00:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuMhWaSwtGTCiFKaHPmhy9H6rnDi4XD4GdspknKcC7mmTlzOUjIHNAqqSnZZ+Y+QVhOPuJA
X-Received: by 2002:a05:6214:1552:: with SMTP id t18mr2444017qvw.113.1584511208013;
        Tue, 17 Mar 2020 23:00:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584511208; cv=none;
        d=google.com; s=arc-20160816;
        b=N01jIk4l/rckvJGfCfY+jtsvGXURbmQ3zJvN3ylBzcGp8NsB0kpAY9ZIrPVvwjPRx1
         Y4c660ysxOltdWLla27QtXl3TkG1jCK6WyG1mzvvUHbXLpqveQVlwws0puel8ezruB9B
         8dPTmgKKOpUJFK2mi/41QM4Gqvl4/Uo7XbbooA7p/r6wRDelW7JS/v5B1MMDR6BEOT/z
         1Elg8HmewvYLx+CHLhNZuTnRUOwl9/JqhJCjiyBiJCDwD6ah+DJQTOy7p2n3XfABgpFd
         73UliiWKShOU+iVNihkW/QTsRohZDQDVza+VouVzv7eS9iZeaxFVipKEhYnnXi74XGSY
         yjjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Yk1MeTM8F4h31Av58qsnWNsCx4F3BEeh8SWH7vN6qLs=;
        b=nRiwhnBUZLwSxiD2rowwXzcjG1WyXyQsuGKoPkmpiFPD3Jc2jXMCiTWWj4Q+IUMlE5
         jYvDDkDRwDXYM/w3pDxGShR9pKdg27lUmdP0YyuCoUr3KLmzsPJZbjzI5jFUkSCVfyag
         Wf2lk216QEEqSH+r/aUpgRqwLccPm+L+nwT6l3dzWRK2aDk0TGnX2VKf6Jp1JSVG7hG+
         nuADCXcSgn4CmkliTBg3VbW1VYnX5Eo5rPL+qXzI5NCBOJLemeRE0fKXAW4mZDKPbG8o
         hDq032VqH0B6VR5ShMXOcOTY+1qKbkpqxhSULFfG8gQ/hqHTsUJox3KwR2wqRQbrg+zV
         O7kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=stAnY+Cs;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r14si253097qtc.5.2020.03.17.23.00.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 23:00:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=stAnY+Cs;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6142820663;
	Wed, 18 Mar 2020 06:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584511206;
	bh=LiiC0hJRBqCby/UhdJHICZhXIqqhTkN7s3GPqfZIqgs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=stAnY+Cs1wUIw0on4u4WWcgBEcrn19jZyu11TFasGSR6zeZWRsPTbZytON+f+8bsg
	 pZ+TnhvpOcxxVxVX/XcakqTJBU1Xd6MeHma/koZ6UO9wwhKLMJlNopNavB8T8JdsBs
	 H6kKZpOheMBNlC+VOOlo5R68W9QpnjtV6hkZQxl4=
Date: Wed, 18 Mar 2020 07:00:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, stefan.popa@analog.com,
	jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH 1/2] staging: iio: adc: ad7192: Reformat lines crossing
 80 columns
Message-ID: <20200318060004.GA1594471@kroah.com>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <50419988d636c90511a07da256c91aa3b3e33bff.1584505215.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50419988d636c90511a07da256c91aa3b3e33bff.1584505215.git.mh12gx2825@gmail.com>

On Wed, Mar 18, 2020 at 09:56:59AM +0530, Deepak R Varma wrote:
> Macro arguments are computed at the time of macro invocation. This makes
> the lines cross 80 column width. Add variables to perform the
> calculations before hand and use these new variable in the macro calls
> instead.
> 
> Also re-indent enum members to address checkpatch warning / check messages.

When you say "also" in a changelog description, that's a huge hint the
patch needs to be broken up.

And that is what needs to happen here.

> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index bf3e2a9cc07f..0265f6607d75 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -156,8 +156,8 @@
>   */
>  
>  enum {
> -   AD7192_SYSCALIB_ZERO_SCALE,
> -   AD7192_SYSCALIB_FULL_SCALE,
> +	AD7192_SYSCALIB_ZERO_SCALE,
> +	AD7192_SYSCALIB_FULL_SCALE,

Because this has nothing to do with the subject, please make it a
separate patch.

thanks,

greg k-h


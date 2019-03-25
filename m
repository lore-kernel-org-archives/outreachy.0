X-GM-THRID: 6672416062585176064
X-Received: by 2002:ac8:30d1:: with SMTP id w17mr23250295qta.4.1553547075823;
        Mon, 25 Mar 2019 13:51:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b742:: with SMTP id h63ls3420111qkf.2.gmail; Mon, 25 Mar
 2019 13:51:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyaKS33AxsCj1iz+eBnHieVTh7cQ5+bWkkiFTEkOJYoUirsCxN8i1pyvAbUJtjzQkFUQzfz
X-Received: by 2002:a37:6983:: with SMTP id e125mr21586004qkc.80.1553547075280;
        Mon, 25 Mar 2019 13:51:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553547075; cv=none;
        d=google.com; s=arc-20160816;
        b=TzKgnBfREyukMT65BbM9dLwTHw9xZ3k/DYPExadBEUdJs73i9O5O/9jfQQUVCPkyDa
         EqiCGPpeTVcVGwauGoVzK5txtBHjAW2DBcFcBTxmBaedFojAqgAF+e2wQW6aChvsX62W
         oT249VjFjdv2jU2NLvshz3WoKXmpse55L6/r1tUCuEWK+tJgTVR0SgUCjE2qwnR/gGgT
         ZFSWNalfvSwGH0GgFKFbOOb7rWiiAmAyjGP9FMCiZyLgjvABh62MvQgy7NbW6daZOxsn
         XVIuuGyYV0UMFpCjWBrxWoUwXerWaK++It0os3NR+7otJQWpzSmsTJQ3QMMVe5hmkzP3
         WyoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ms/a28aNsF4z3ngHmKEazpjfs4bemD8lQXXuwtegQCY=;
        b=wmAYCR0ATr4T28h7lcfb2KTyqNOy2vA1uyLZyN555Tc8Lsu17UZY9TiZafVtiwv4k9
         Q7xnHi22QKxmexEaysp2A3poyc2bQxGEeYscsslcBx3tAHD+sBgVXE1mN7GJbyhwokPZ
         lQC3kDWay35MNKfh/AahOZPZ6ivD8RzGPJUY8KvWOSxTRnMZFYgWwN4zWy8BroB2SXRE
         GaX3zaStoJx/T69WwTxcv11aA739gBVkq9hDp/+xjihXSUdcke+aKGhL+WvLrLiyDQ4k
         8V7/p6wYthC6m/xZ1prwhNS0jA3nnbrZ9RSoQhMwy3BFrIM/VMIAZc1Wk2yK1Z8xmi8v
         PMxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rfDCZrMF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q58si332489qtf.5.2019.03.25.13.51.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 13:51:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rfDCZrMF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [218.237.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E3AD020651;
	Mon, 25 Mar 2019 20:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553547074;
	bh=CHFYNNOZ8HgkAFd33qLBiTvvSDGb/4O7fjU7QkbzdTw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rfDCZrMFVOKmSH/oY36K/DaO95RYXe7pQq+lq7WfEAYe/G9NMNQjXJemJlZ9cRAR0
	 qK1FnvwjY+u7CX4tAAEtseFS98F6Ic7EImx7aY6cETEqVyEJ+OBfhw5qgedbmXQiOr
	 Qqpz4wvYB9s+b9n6td/PQtTFvKTMZvxVyNXtz7Z4=
Date: Tue, 26 Mar 2019 05:51:12 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: vboxvideo: realign code line to fix line should
 not end with open bracket checkpatch warning
Message-ID: <20190325205112.GA16200@kroah.com>
References: <20190325194157.22474-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190325194157.22474-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 25, 2019 at 07:41:57PM +0000, Jules Irenge wrote:
> Realign lines to fix line should not end with open bracket,
> issue reported by checkpatch.pl.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/vboxvideo/vbox_mode.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

This patch does not apply to my tree at all :(


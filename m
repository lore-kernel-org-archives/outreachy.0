X-GM-THRID: 6807276568426053632
X-Received: by 2002:a25:c244:: with SMTP id s65mr32635828ybf.284.1584959872340;
        Mon, 23 Mar 2020 03:37:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:b9c9:: with SMTP id y9ls4972922ybj.8.gmail; Mon, 23 Mar
 2020 03:37:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsYt9XEun0ket5oXu7Wuw1MFtOFd4w1XcM0i67VdqKRFOmKHbQa0H6BGvNfD3dSZkR3Nev0
X-Received: by 2002:a25:b5c2:: with SMTP id d2mr32742868ybg.186.1584959871193;
        Mon, 23 Mar 2020 03:37:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584959871; cv=none;
        d=google.com; s=arc-20160816;
        b=tUn+OVywQtkpiyb0Di+H7oBRvvIEAQpTc27oRWcO0Owrkw5i9H/RGYvcx4n5cGZD9i
         zWrilli/5Wqh229L+lJtGGzdYkuRRE1xt3MB4ykx5aXMytatx7oEfggmmKpjV7JsVw1j
         WpoZzoauvr9lgEq9z9QaVrRy2Rc6JJ01S2hwGUHY/y0kqJGnDlCZcgAiNnR6Vfu7rVFv
         ZJzkcz+pT6uLch1LWaJEyexaM/0rNba8YeGjAhN3/Og4ym9Qx4RRtReJ3jShtlkXT2pP
         86MOYyeU4hsSIf7yozOTVVKbZCQWmF3sp+Na7A1g11PqPBr+niiKe9HvFwwx5zX7Swkb
         uWCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=olhQIkzXhLh8BoNhTjPAQOHkv26h1Nd/lEFAOwMeQCw=;
        b=u6RpXs0ANPQRCy2umqG+WCfbCCl0XnIhyKHxO0upAd4V0TUX8klFSdel/KnSeJFO1m
         eQxxVAAJG3LgNwVPI7SfeYrHLYYNqRxxz9y3fArf3TyZ0H+KiyFbL31YPw39z3SDc4OE
         IMbpuhi7/IEOeifmAURs6K8q1f60wckZxuXBNxLb7qMnnYvy5kM0iUyAddQj1cXHBfR1
         0DdF553q2FzkvUA4HV9kTnVt2rtCJOvPWOO9s834HVgXXyMbknySSW8gGB6NvS8miRbj
         eD37IMNinuQpmQbYQNqQ5pwxfQ+BlZ9kk1JZ4PSxWclEo3PTfi31FYHNKa58QtfMx4Sc
         EwRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GzUOzUFb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 207si722691ybe.5.2020.03.23.03.37.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 03:37:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GzUOzUFb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C4CE120722;
	Mon, 23 Mar 2020 10:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584959870;
	bh=olhQIkzXhLh8BoNhTjPAQOHkv26h1Nd/lEFAOwMeQCw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GzUOzUFbuPPE9iP7TgGA3Q/kwlbG+jBsCU9/qk0syQnEzrk49z72C2cdBfilljk2Q
	 yEXSRmbBNYx9rvt0/eKPD3IROlunXqbQcmBwN0yRlkUE1TNDMC5jOLmUl5IDTMcOUA
	 bxV2jyzXyBj8mWQUowjO+5u+4D4zbPj/rvi8lW5Y=
Date: Mon, 23 Mar 2020 11:37:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, perex@perex.cz
Subject: Re: [PATCH 3/3] staging: hp100: Remove uneccessary blank lines and
 resolve indentation issues
Message-ID: <20200323103747.GD452208@kroah.com>
References: <20200323054836.48816-1-debsoumyajit100@gmail.com>
 <20200323054836.48816-4-debsoumyajit100@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200323054836.48816-4-debsoumyajit100@gmail.com>

On Mon, Mar 23, 2020 at 11:18:36AM +0530, Soumyajit Deb wrote:
> Remove uneccessary blank lines which are flagged by checkpatch.pl as
> warning. Remove space between function name and ( . Add space after ,
> and remove space between ( and next character in the if statement.
> Reported by checkpatch.pl
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>

You need a blank line before the signed-off-by line :(

Also, when you say "and" in a patch, that's a huge hint you need to
break it up into two patches, like you should do here.

Remember, each patch only does one "logical" thing.

thanks,

greg k-h


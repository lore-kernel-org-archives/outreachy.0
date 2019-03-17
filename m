X-GM-THRID: 6669270077430300672
X-Received: by 2002:aca:aa94:: with SMTP id t142mr7530146oie.17.1552817486676;
        Sun, 17 Mar 2019 03:11:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4255:: with SMTP id p82ls1990019oia.4.gmail; Sun, 17 Mar
 2019 03:11:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqziEWN9DMiTVcqWpobo62EDoKiIxYm5ZrpBdkJ3VlL4smplCnAI/LAGBa5rgfc/5K6URqaz
X-Received: by 2002:aca:c4ca:: with SMTP id u193mr7617500oif.51.1552817485928;
        Sun, 17 Mar 2019 03:11:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552817485; cv=none;
        d=google.com; s=arc-20160816;
        b=WblxY7b4gnjnxVz3SwMZUkCyg/AwN+9uJ+RzdugHbTp1tmk4ObMa2HreHs73S4iIhx
         8rLMsezywSbC4jgdz6ADYfCWKBSqiB+Jbnk15Is+xAwVy6oYcff5W03C5uQHBmrHgn7+
         dm7F8lThs6GrZeLh8b8DH94PLwP/LNyFCj7KnBta0bI5hc7+ayjMcamkL4+887DPFvQl
         jpvCHnVFh5svWRWSfMM0FONjKEwbPX0tJpDAnAMboEBqElRi1u/URNFivZlRzmpzljD6
         GM3/IVoXzslSAnCj9I0Z0p5Xjgo5yUrVLklkpPRh5j95AlYBl3rQVxYVVaVcGLU6H9cu
         qfvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=S3cLDChEeHLSh1EcvDKzK7b+amF68Z7Jk+T50KkrdFU=;
        b=McdapDpKq8enkh6Zn7ecrMW2Kyf2VgMpp1yH8hEdeJdS1NQ9PUrRPO+PW9qOUl+YD6
         ZAoMd/f4vpd3WT4bO3PTu74zb6h4qnoZdT6nQAYL2HB09BIw66viTPXfaFO0hnfT02f7
         jK/KIcd3krKfPAREQABHPvxTqb5GiW2MC4ZqKeip9sdBFzaUfIh0XVLBahvcKYkkJXjl
         f8ZmR053zCmdwDEuIsUlxobP8trsa9bIdfhlFF3LS/muQOw+Kvg+Y0lPUbsMYxqMft3/
         mc7DChMwjdol+Ym6YyIexOMsQDRvIqPXXdnwi2wtTM9F5f7bafFVkWNrdrW2r/7gLeej
         kETw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gm67ZKaI;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l92si161896otc.4.2019.03.17.03.11.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:11:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gm67ZKaI;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8502021738;
	Sun, 17 Mar 2019 10:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552817485;
	bh=FYUI2N6BuWapEPdrEsshOpTrasri0UgGpk7/776NOFk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gm67ZKaIrh+QeTc2D7PI+0/MdkUjxcmaZj5JOaufXjW7Rgnr3U3TRR77Dh6pmjcSc
	 NH2urKDAot6wLQc/Lp22Bed/2fEl5WgfvUkm9fmla++ngVPYTIIPE+U4SJS2ys27U2
	 M7uXHENibr4JPRKYk3zw5F1FGLnaCTQeByySsGHw=
Date: Sun, 17 Mar 2019 11:11:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: sound: drivers: aloop.c: fix a open brace '{'
 error.
Message-ID: <20190317101122.GB26906@kroah.com>
References: <20190317081353.2999-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190317081353.2999-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 01:43:53PM +0530, Sanjana Sanikommu wrote:
> fix open brace '{' issue to be placed in previous line.Issue reported by checkpatch.pl semantic patch results for
> aloop.c.
> 
> ERROR: open brace '{' should be in previous line.
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  sound/drivers/aloop.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Again, not part of drivers/staging/*  :(


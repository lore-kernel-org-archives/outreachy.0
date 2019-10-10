X-GM-THRID: 6745802643639107584
X-Received: by 2002:a05:6830:22e6:: with SMTP id t6mr6959841otc.65.1570697745416;
        Thu, 10 Oct 2019 01:55:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1383:: with SMTP id d3ls610715otq.0.gmail; Thu, 10
 Oct 2019 01:55:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzlCdw1vyphmgGzdr00qGYl+b3isQRuLlYfPd7ZYfpqE0dkuHBGlBQiGuNr3t1/U73+azRF
X-Received: by 2002:a9d:7dc7:: with SMTP id k7mr6930667otn.172.1570697744527;
        Thu, 10 Oct 2019 01:55:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570697744; cv=none;
        d=google.com; s=arc-20160816;
        b=a7xmCRYBbAvuYUyMQc6J35cROhc75V8c6lVicWbGTyf1X8CCXBQLaFnemAWY6uZ5HM
         YB540/Giv0v3KW88zhfIct/tphJwyZXwb+qGuY9hvyC8c4YaRXYKnca6SC3ugClVYQ/8
         pp5J5ACIKPA1sFhyr6VacRzkyP62tWZNZoTu8C2Cx3vJYfsUUpYf4a4cXFdfZZ9W3zfp
         H7+Im6CCV5zkFHhEGMf1mJLHNZYLyDy9uExUNQzpg65sj8baH135N1mOyzYkqwr7ReG0
         2Zr/lTC1hvMe01fL3LAJU9akkusAriZ2lztksHaRbG0AObwH7J+2UqLg7uHdeKvSBmvA
         o7IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=R3T0YT/LBuRAtNmTZzTkqEO3GgiHGitELIF/z7Iewy4=;
        b=A3q0fPHdmJ/ftV1YDr7wTG2lBpedTe1cduPG5T+CksUlAwyOqFTxT5mSrEePGON4Kw
         v6QjuyRHvSU7ftD0YWR9nLe4XPdkWn5K+37HfqTvzxB/BFPhWUSyV+/JzfuD9VrvHFwH
         RSWKfxZi8OMDmfk/6JT7Yhw/s1g/QCfhVRQNOfXqMreheYqCJlYXynIo9wpJUS/uewg+
         lv+vDOO399oa3Nsy09WdxbgvXIny9TBThf10cmi37C2FvH+vmN0xES/E4s8ioKR3ELyL
         R7td03nFGChCY+wu3GcAJGmYgB2HxW/CWfZwk12MeQ1f11rAC3+Zsedj668i6ZP6mnpl
         myzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Tqrbyxx7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c67si137658oig.1.2019.10.10.01.55.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Oct 2019 01:55:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Tqrbyxx7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 31C682190F;
	Thu, 10 Oct 2019 08:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570697743;
	bh=fWJjbXpmFkxTYN182RrS0pGcx/QVyeR2dPDwnS/HsTs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tqrbyxx7vQRb3pTZ4yaY7TfY+WhmKqOi6eLilR4NrlcMSSP0IWAve36knAdr3v+Xw
	 vT6fVwb9maoaNVWLfj1OJaTMKtnXDY7OA7///Oti93WxRXDfYyv6FCyV2qPH/NZb1O
	 Aa5/gG8zcshCE1q4zUMY9p7RqYR4afqPec9QQyQY=
Date: Thu, 10 Oct 2019 10:49:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: qlge: fix "alignment should match open
 parenthesis" check
Message-ID: <20191010084912.GA394561@kroah.com>
References: <20191009135909.19474-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191009135909.19474-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Wed, Oct 09, 2019 at 02:59:09PM +0100, Jules Irenge wrote:
> Fix "alignment should match open parenthesis" check
>  issued by checkpatch.pl tool:
> "CHECK: Alignment should match open parenthesis".
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Hi,

You sent 8 patches for the same driver, some patches with almost
identical subject lines, and some a bit different.  None of these gave
me any hint as to which ones superseed which, and which order to apply
any of these in.

Please resend all of the latest versions, in a patch series properly
numbered, so that I have a chance to apply them correctly.

thanks,

greg k-h


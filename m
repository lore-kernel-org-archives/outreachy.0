X-GM-THRID: 6619835502508900352
X-Received: by 2002:a02:3b58:: with SMTP id i24-v6mr18487575jaf.25.1541426088758;
        Mon, 05 Nov 2018 05:54:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6756:: with SMTP id u83-v6ls2183096itc.5.gmail; Mon, 05
 Nov 2018 05:54:48 -0800 (PST)
X-Google-Smtp-Source: AJdET5c6s1I1qz20z4a5pK4CwoqcuHCrSatUt9XrJHxbVPXunrvMLNEM5RH+RFg9XtavdsfjVoJn
X-Received: by 2002:a24:7b10:: with SMTP id q16-v6mr6338166itc.1.1541426088043;
        Mon, 05 Nov 2018 05:54:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541426088; cv=none;
        d=google.com; s=arc-20160816;
        b=jvLVR+QylpbSWv4nFuy59TOwodKbKAQU2DwVNbP5eNzfRKfi8l7Ty6fdGcnFxauG5q
         zb/DOZX9qezsH1J65+uJ3m6iWt/zupB3WYtZnVhUfgjxwBGRF5ZJfa+T4Q+AeUek6BdZ
         iyBZyyvcBtzZcCavohzLaVTwUJwVViQxlFdxD3LW8XKqYyyUQyqZOeesZoP9F5bqDsdu
         zqXYwHkHkDKBfL4KyvcqXhn2QC19ZgcxMruuvKAWBzYABHkR7KL8NnQUk6mciHcRKB0u
         bUPuAC1GsHXQQoBAYqrOvTnv+nluuGL4jrhIFwhvqA9gdsLBPgnGaSEep3IOF0bs8UMD
         I9sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qiHa6pzw7wQkvueKZTpv/chhki7wYkK8uMRAjZYAQB8=;
        b=LcQNzILuUygkc7kogR0DzNknOZQirUsCl6WerwoZCACr8OaVhB3kFbwG8bDzGqlOW1
         p7m16LtAxL5ZmKBAzlrmh2SOx3huNUprriwTEs6A+tjYA7Ni/3aR/tmKOWTLsujLFRn+
         XYGfoeNGNelt15PnjW5KglU1hnKz+ZRPF0xROmHj1g1b48UdC3B8t0Q2RdQxptkpvsdH
         9+9vK0RmAvxfvHCJdB1P30v3Jho0MmvNGjtXWq0zHAm0WS2c9E4Vvn/5rrQB4O/nFa2Q
         6pwdq51qs3oDhRziMrsyjgrON8ZnbUwG4MaxdLSWGmMryJxVedSvbYLfHAy5alcZQC5S
         NLLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CNUcg24l;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b133-v6si385311itc.3.2018.11.05.05.54.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 05:54:47 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CNUcg24l;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BDA4F20827;
	Mon,  5 Nov 2018 13:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541426087;
	bh=UJEI3n69u8GVn4leeEFtJQoEqwfl3h9elESGwr2saak=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CNUcg24lr+OgNFBeBRHeuZW+37g5RLZlMfDu12UHLUgwagueiqfbtjeJQWHEV1Qgd
	 4454oXVDVxCTOPl8mWJtU12COBPuGjo5p/f7OeNegC7KOy3iL7MzmgrB9dXWZ8H8eh
	 dpftnfWMLm72Ch0xClPTzZNNk/LWw1MuKTdBuSis=
Date: Mon, 5 Nov 2018 14:54:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: zoran: remove unnecessary braces
Message-ID: <20181105135438.GA13489@kroah.com>
References: <cover.1541300498.git.code@wizofe.uk>
 <7a011559cd164a16c8656ca19e4c11306c891ddc.1541300498.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7a011559cd164a16c8656ca19e4c11306c891ddc.1541300498.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sun, Nov 04, 2018 at 03:03:00AM +0000, Ioannis Valasakis wrote:
> Braces are not necessary for single statement blocks therefore there
> were removed. Reported by checkpatch.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/media/zoran/zoran_device.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

This patch does not apply to my tree at all :(

Please rebase and resend it.

thanks,

greg k-h


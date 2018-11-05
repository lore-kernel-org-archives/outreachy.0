X-GM-THRID: 6620120308618625024
X-Received: by 2002:a5e:8213:: with SMTP id l19-v6mr1875770iom.3.1541425358385;
        Mon, 05 Nov 2018 05:42:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:c301:: with SMTP id t1-v6ls7958965iof.8.gmail; Mon, 05
 Nov 2018 05:42:37 -0800 (PST)
X-Google-Smtp-Source: AJdET5eHcTgivJLHuHX/Nz0k9aqWXFhpgEsZTH9US2fgmk8eeaFGoXaWglShuHMZOUAZhdFXEVZ3
X-Received: by 2002:a6b:e00c:: with SMTP id z12-v6mr4796718iog.32.1541425357199;
        Mon, 05 Nov 2018 05:42:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541425357; cv=none;
        d=google.com; s=arc-20160816;
        b=fDswgYN0776iFWrShIPFSl5zVymEVQz27rzeZMrzZHorFd+GzLj4Cw/xLqxM/OSo2R
         1OJdGBDNafBC79ntS3ryLA/08Pn9qWxSJ3IE64mdPwG+2f7zLOY3jaT9TW0OP8KfbcSZ
         WRHvgu1U2O+QKCLAxwyv+tpn9QnhfUHPY21XIb+FF3PA+KwhQrxP8ckan25iwYuoGu54
         zF9OgxocYKNsbIXcrqd/GILDutIeplnvue+PJbbYIyrgEoq6RjfYu06fC6Qp3AhuKe71
         G8NWw5dtt2mNwb45vhPnmnSzXCBW9uXiadlN0HXX9MGwItVvbE1XNYY13w8DtxT49ZpC
         OgMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FnieqfrhN7I9nhgEa/iFVXsFLsi0AsRwla2h77ZTqN4=;
        b=T9p0PY0e1XVzA4uNILN5InGMBk9EIXT+Q5KDFCkK4ocxi/GeoEuvbp08/LtFOr1qdQ
         /C/BCSixdF3dzu0vJQQSD38NNDUP5AoVxOM0tWxy0seKso6yl2L9uZ95SCBiTmOyKC7R
         XxmS9nREyaJ84FqnJiw4wR/rlOZVRX20QFqkHpzfUXZEjyIPJ8BQ5jnWVBcwoR3tTmzI
         aWEshM5PtD1adr62jBpdNlJyHPoiuBbiqY1htx1e4poTuIK0iYT5WgZeqmU+KUcv4vUe
         X72q5WxN20uXfC8Z89jxjrYXLcBSjUmtjC0yp/BESqfc3m7fZQ6Qp7mCycp+96w4bn9L
         HL2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I7RV6s1b;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v20-v6si1051705iob.4.2018.11.05.05.42.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 05:42:37 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I7RV6s1b;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C4C0B2085A;
	Mon,  5 Nov 2018 13:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541425356;
	bh=RScG8pRXm5yvnR8zbzf+MDJq9Vg9TFiUadNNyDdgNrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I7RV6s1bTUZAAyYtU9p5vvv/Cg3vpJb4oKkcAG2C22H3nsFpGnR3I+nAnJdWIE3kw
	 YMbyaxDwOKC7+b9cYsM9prNVRqZLury7ttba5Xw1oekljZOas2z7J777pVMOPbIuU2
	 TGZOodfH8UPSb2X+8pVyYVCVuvhNxLyidNFyFHuI=
Date: Mon, 5 Nov 2018 14:42:33 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/2] staging: greybus: fix styling and bool comparison
Message-ID: <20181105134233.GA8389@kroah.com>
References: <cover.1541366816.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541366816.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sun, Nov 04, 2018 at 09:27:47PM +0000, Ioannis Valasakis wrote:
> Fix styling and bool comparison per coccinelle warnings.
> 
> Ioannis Valasakis (2):
>   staging: greybus: remove comparison to BOOL
>   staging: graybus: match open parentheses
> 
>  drivers/staging/greybus/es2.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Why isn't this part of the previous patch series?

And I only see 1 patch here, not 2.

There's way too many changes floating around from you for these drivers
for me to be able to easily figure out what is going on.
Can you resend the latest version of all of your patches for the greybus
drivers, as one single patch series, with the latest "version" number on
them, so I know what to review and hopefully apply to the tree?

thanks,

greg k-h


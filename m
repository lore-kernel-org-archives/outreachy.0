X-GM-THRID: 6673502133906571264
X-Received: by 2002:a05:6830:146:: with SMTP id j6mr3733215otp.23.1553875790454;
        Fri, 29 Mar 2019 09:09:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:2dc1:: with SMTP id t184ls194394oit.2.gmail; Fri, 29 Mar
 2019 09:09:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyiscimGPlT1kFF3iAVYBsTkYVk8l9IKiD0QcPZxm3X4VK3OECP5sLWEkEsCQwsBEVzkCTE
X-Received: by 2002:aca:c44c:: with SMTP id u73mr3850190oif.17.1553875789506;
        Fri, 29 Mar 2019 09:09:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553875789; cv=none;
        d=google.com; s=arc-20160816;
        b=SUqXV69Jx0bSBiyxKII/iSqqf2V8HureqyiGmoji62hHMzCFDjD3qUkWLIBCBubpWb
         CMZTvUDYfrEBbIUuLAj+hBsmIluVGU0ZohRrzG4MtLq2fyZ8tiFrs9uR4qJSqvVpmlYj
         a6wCgKl5vJI3BCGwYWQ3UrXV/lOjTnvjaAg7TqF9b5Y3+5jgK3h3org8m7B8CTCfOSmy
         j+T62wELeaAmH8ivt+zt3rJh1twRLVz+FkLxgeY1opC0NqyIgeDDeGKcGPqbiQtqJrUs
         Twsp8L4kPdjsbAk4+6B/Do2JIuiT6JHxzXNVdvVpriEmC+C4cHRsrhzetmkReIu7iyDI
         Zx1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Gyx7JH5T1ZSMfNiOrFrhIid8QSKdswYuhZAhW8/A7Es=;
        b=wT1rK0pTpWrUlEB1KIot6A5Z48ea6+F9vEqQBhRmlgihaoy53UT7Vt58Zzvy6fb4JT
         TWzCaSLe0dyJHCIyNxyAJvdBJqzNm7c8zv02eiQYMrbHxbqK5Xd7bM+KmJL6w3j9nOb0
         A03waDOlSbPx3aKwzbIR49TtyAPIgs961mHsqaWtWfQQyrW6EASyzOg37COqXouloEBq
         zB7bWG48EFDJBFPdSalth4ATh3drQ1JDLlxPpomeqU8B07Th/SRqmy+RyLaSgTt5BK3i
         DGO3ZcOXYuHLyDq54Xln8wBjQpe8T5Ffd02TkkWXKcNAlvcZZz1YkKDJmYu6/pfB2Kd5
         0vRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c7VXuUmZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t14si232732oth.0.2019.03.29.09.09.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:09:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c7VXuUmZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 378B12070B;
	Fri, 29 Mar 2019 16:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553875788;
	bh=cVQH7s2srr672/mr6cYBUqlQ9WqNw9Wgo1sncLfjxFQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c7VXuUmZ+3W/bAFeqVAYbnKF/tBbGNZdiblciNWdEoftMpOMg/i9gZR6ECY/kPt7m
	 Dv+grHqcm2x/6dCGGlQ491LLRaHW/LJyFj2LUKJQFJCGu5yKK5MZ4Rx9to2s5gqy3S
	 d1fy72LVuLyTj5DXjALx9J1r2aB032n3tqXHzqes=
Date: Fri, 29 Mar 2019 17:09:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: wilc1000: host_interface.c: Modify return
 statement.
Message-ID: <20190329160945.GC6197@kroah.com>
References: <20190329060238.15688-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190329060238.15688-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 11:32:38AM +0530, Sanjana Sanikommu wrote:
> Challenge suggested by coccinelle.
> Remove return variable and directly return the value
> Issue found using ret.cocci
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
> Changes in v2:
> Adjust spaces for last argument in return statement.
>  drivers/staging/wilc1000/host_interface.c | 31 +++++++----------------
>  1 file changed, 9 insertions(+), 22 deletions(-)

You sent 3 different patches with the same subject line, so I have no
idea what is going on here.  Please make this a patch series of all
remaining patches for this driver, so I have a chance to be able to
review it properly.

thanks,

greg k-h


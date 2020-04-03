X-GM-THRID: 6810632543470092288
X-Received: by 2002:aed:3be8:: with SMTP id s37mr6862881qte.129.1585898535538;
        Fri, 03 Apr 2020 00:22:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:f1d:: with SMTP id e29ls3529283qtk.2.gmail; Fri, 03 Apr
 2020 00:22:14 -0700 (PDT)
X-Google-Smtp-Source: APiQypL18iBmi9oZjgcp81O12yUgsfAU41PXOpHUo1GEYpFxNiybGNp21tYUW5MMEt+Irh6kG/ee
X-Received: by 2002:aed:2591:: with SMTP id x17mr6837709qtc.380.1585898534399;
        Fri, 03 Apr 2020 00:22:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585898534; cv=none;
        d=google.com; s=arc-20160816;
        b=VdEBUI0gwfGZKbA65yKzRLrB9isuHj5eo2XlYmZAJkfVBRi7AJ9p/1HailY7DsSmxS
         MXVD+C0oXsIVwdIT+2IiEasGfM480kvc0bY/ZlFmnDRWkQxN9aU+yoxZfd9AJri7fPib
         /tO4m4Hc2U113AzhtLVoKndC1OYkL6h+0qodgt+RRKnl/RBadMzY4ayeWs4I5+sqpjdp
         I48utyg7Hj5QrnxEG1RWDTCgECNOJpsu5wWvVpUqPZNeXs1nP//cDzEEVauE1aUSvONC
         8H0FtgaElRJXdi6OmUhoHnoPNS8YTvj9n5pdi5v7Zo/P19hdsrk6I7H0v+oH58TrOvKB
         xpyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UD5h1Cc7EtTn/7Rv12N5XgOryftIZ9yrN9nBJ0uls7Y=;
        b=g9aRlYyJ9nHsCBLD5THLOe6mzXw3Ry8fQFYa680BUFgwqbLUZ5Jjo5pRwks75uYJ/W
         aoHRwIjjri5KHlBDtEjeVq1ri5YynF3EHCHmoMEE1Q0nm/CHx9BtBioEpT9VhC3fyeah
         F2sRv9Qf9CAvH2wBrGpgVqcT0/tt+diihNrUgAhGQG36zJ/deh0u2E81lMzUvDRuxN7t
         FLxcETQKIu0g2/c9Zmz/EBfZtSpt7xW3ioZaT7IEkNnffzvVKnSxxEB8voc2C49qSlQ3
         55bq0xmKMKitamCJMQulmVjWbSQNfPQT3MV8r4QJnam41sTu+BnO4GhvoudJ/a05A/1X
         1Jtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yGysUL7K;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x11si515046qka.4.2020.04.03.00.22.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 00:22:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yGysUL7K;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CB455206F8;
	Fri,  3 Apr 2020 07:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585898533;
	bh=CImiAxQVdxOyvsswjmnxIwT91V7j4U+gFeNUG1GPHSQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yGysUL7KH1b5drEAY6JdUgUKjZmd32EN/0Chi6e3L6H0JqXVG+XX4D5xmgCdMDHCu
	 8tw5Qq4AW1cOhwK147qDr4c/fKFOzNrm4NhUHSe/RdTpmyeJA/C+vYjJ8NBFbU7QKH
	 ihuSRQHD6d5CIpLIz+Hktd+7ys8z5LmXmLOqLq7Y=
Date: Fri, 3 Apr 2020 09:22:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, manishc@marvell.com,
	sbrivio@redhat.com, GR-Linux-NIC-Dev@marvell.com
Subject: Re: [Outreachy] [PATCH 0/2] staging: qlge: Resolve various warnings
 reported by checkpatch.pl
Message-ID: <20200403072209.GB3405737@kroah.com>
References: <20200401065120.17459-1-debsoumyajit100@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200401065120.17459-1-debsoumyajit100@gmail.com>

On Wed, Apr 01, 2020 at 12:21:18PM +0530, Soumyajit Deb wrote:
> This patchset resolves coding style and indentation issues reported by
> checkpatch.pl
> This patchset removes unnecessary blank lines and properly indents the
> multiline comments by shifting the end of multiline comments "*/" to the
> next line to improve code readability and adhere to the uniform coding
> style, all for the same file qlge_mpi.c present under
> drivers/staging/qlge directory.
> 
> Soumyajit Deb (2):
>   staging: qlge: Remove extra blank lines
>   staging: qlge: Properly indent the multiline comments

The subject lines for this patch set are the same as your subject lines
for your other patch set, making it impossible for me to tell which one
to apply and which to ignore.

It seems like you want me to apply both, but with identical subjects,
and the patches doing different things, that feels really odd.

I've dropped all of the patches for this driver now from my review
queue, please make a single patch series for this driver with these
patches, and change the subject lines to be unique.

thanks,

greg k-h


X-GM-THRID: 6392198468546330624
X-Received: by 10.237.53.2 with SMTP id a2mr952220qte.16.1488300570994;
        Tue, 28 Feb 2017 08:49:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls537018itj.3.gmail; Tue, 28 Feb 2017
 08:49:28 -0800 (PST)
X-Received: by 10.99.117.10 with SMTP id q10mr1102849pgc.59.1488300568275;
        Tue, 28 Feb 2017 08:49:28 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id u12si54865pfd.3.2017.02.28.08.49.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 08:49:28 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id s67so2198503pgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 08:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=U2YoivH8S7YEdfcujGpaQZLcWLwsjCiNOoulJ3EXxGg=;
        b=oM4IqHYfcXMkkagHc/r6o45kn77Cba4XPZfBNfjdx4YpWFfXt0JOp2NIisVQgBkPZP
         eAF5nHncR2biQcdn9kNzJCe5LnQB9oRXn64HhnHsgPJQ9dL8/A+luigHe7O5QhvouKWE
         /QsoID1F/56X4PA8ildZgsHFmrTxxNEhcFgZQxRnLextShXMXW4bko6GfD1TosmQGT2E
         REMA27/CyWp5X7/TnCOOfI2h9kERPbcOFHjkaEajz66egTBIwUkKJeXhghLSacNL2Ecc
         UfMtRl6CF7uhDVpmGkKBXpLaRXDFdn2Li894Lp7Yq6P2uEGhySoSPeNAcJOrsDHGL/5n
         +gqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=U2YoivH8S7YEdfcujGpaQZLcWLwsjCiNOoulJ3EXxGg=;
        b=bQyc2kZCaMk/57qdXZIZVtQ8/cQLZ8exEHDycv53EsYzluot9RhtsyCcquzUvTEZMU
         z/LSuGP+3XGl8MbxIA2z1n7c7QZcR2lsxuf2T2m7LthSxrfEy+AOlDsI3Gh4bmumvrVz
         Ps97VMHbEXkQ/NORtd2h80+j1pk6koFQB4vO9pZ6ovLbbAQoIuzCu3WFxJoRla+2EBTb
         mN+PmOpns47flk7jRLhMlIAPsllrgVWHk0g1qJsABbyIDx+vAd8/VpZZrxHzFPWZpH23
         hZp7y1UcKA6EZioccRt1HpaJwVyHtUzXLGJcHmmnNXN1viVBJpw18fx7/XNzypOL47Bh
         t5mw==
X-Gm-Message-State: AMke39kB/eFpaBx+43J2JlNa5zjPe49zlSLQqEAxdA7fzVZJa0/tny2nw13ZN3toRKJHJQ==
X-Received: by 10.84.232.198 with SMTP id x6mr4187874plm.74.1488300568038;
        Tue, 28 Feb 2017 08:49:28 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id s64sm5336015pfe.27.2017.02.28.08.49.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 08:49:27 -0800 (PST)
Date: Tue, 28 Feb 2017 08:49:26 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Deleted TODO file which
 contained redundant information
Message-ID: <20170228164926.GA15033@d830.WORKGROUP>
References: <1488299669-22372-1-git-send-email-narcisaanamaria12@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1488299669-22372-1-git-send-email-narcisaanamaria12@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 28, 2017 at 06:34:29PM +0200, Narcisa Ana Maria Vasile wrote:
> The TODO file contained redundant information which can be obtained
> using ./scripts/get_maintainer.pl.

Hi Narcisa,
I think we want to leave the TODO file even though it is fairly sparse
at this time.  It's content will grow & shrink with actual todo items,
and of course, it's nice to have the git log for reference.
alisons

> 
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/iio/TODO | 8 --------
>  1 file changed, 8 deletions(-)
>  delete mode 100644 drivers/staging/iio/TODO
> 
> diff --git a/drivers/staging/iio/TODO b/drivers/staging/iio/TODO
> deleted file mode 100644
> index 4922402..0000000
> --- a/drivers/staging/iio/TODO
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -2016 10/09
> -
> -ADI Drivers:
> -CC the device-drivers-devel@blackfin.uclinux.org mailing list when
> -e-mailing the normal IIO list (see below).
> -
> -Contact: Jonathan Cameron <jic23@kernel.org>.
> -Mailing list: linux-iio@vger.kernel.org
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488299669-22372-1-git-send-email-narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.


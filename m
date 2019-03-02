X-GM-THRID: 6663442013681090560
X-Received: by 2002:ab0:778d:: with SMTP id x13mr5653190uar.7.1551512749218;
        Fri, 01 Mar 2019 23:45:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c47:: with SMTP id j68ls1908501vka.2.gmail; Fri, 01 Mar
 2019 23:45:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqzkLeWSFGQ9CKLm7oT0Ob0tbwAGcUzwLBS3qoxpXotNTxueOWf6O1ZHa/XUo3j3+XodzeYw
X-Received: by 2002:a1f:9750:: with SMTP id z77mr5919839vkd.5.1551512748684;
        Fri, 01 Mar 2019 23:45:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551512748; cv=none;
        d=google.com; s=arc-20160816;
        b=oHZz5Kt0LvxqVeNuhrQgC62nJhVdgRRu8dmvDqOdS4Bnq/POZ0ziE4Pekoq6o2hZJF
         WCFobOJh2ckF9yK6/6VFmuGf6eKzZFLfDq1nzH8VaI2wwsbPw/1iKPv28joYtOmI8i5S
         5E2G9k67qw0/FcBJ6+dGkTkpV7RJ3xy35YNAFUwIzoXHJ46x1i+ertnOV6n688a79RAn
         ZiJG40++m4awPii92PXEgQ+M7r7Ds98CZrPRjRfHy3FvnDXCSbpRwdXou/us0iP/uzBa
         WqDpqZfCKnR8t2XDR9ZwH3YLqbA8zeAMFRwPubfz2FnwWO1qjkJnEHXCNgoRvKJ0v5qi
         kRmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Gok6LVONhwHBD9T3TWfberCi+NwiYS08X/OtJ0VkKBM=;
        b=CY3AhDGBO744z0USGHTn/+i87w+UbZBIuIgmkbKWwdK6CCxyoSkn7U1MnJPnDIzht/
         TnuTk75BtklxoaIYA1Nmq20ha3iEFoWuq+67Ldqk/iFBewDhItY1dtfIxabDiCMlXDW/
         X41Qx+HqvsDKfWWfIS2+XvJ12n2E/9G2sGb8dHWXsNOT7jCieDFnX2XPxPZ5H7OhFwjv
         Tz2+jzKPaC3LWMCiDgD4aEvH7VgCLcy2KYsorHTWNqlj9n8vnZNxK8gS9kXcHhMTvIRM
         dfayi0BRtuEolaEmJYUHYsSy3VYCyB2tNiGN01lFjUOG+ohcJve8W1rCROIi5c908GJ2
         hY6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wXQ4YC1o;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e17si13215vke.0.2019.03.01.23.45.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 23:45:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wXQ4YC1o;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C9AC72083D;
	Sat,  2 Mar 2019 07:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551512747;
	bh=AVfYPiSkFvd/CRCGxnSmt7K7/CZlYzkOal3cBQAt0YQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=wXQ4YC1owCH2sguDQGGtIACQe1JeKu7moafNst/AL8CctZK7WQm2vbyF4WswDrT3d
	 hALB8reMpJ1lfnIez9umxHgA2lmG5945kAqIPtss0yN9h/6SgD2nDdnNB27Hb4bSFb
	 LgNyJl0dO0QU5bff6YoABYH33S9OytRL7vJOlG44=
Date: Sat, 2 Mar 2019 08:45:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/2] staging: mt7621-dma: add SPDX GPL-2.0+ license
 identifier
Message-ID: <20190302074544.GA16379@kroah.com>
References: <20190302001115.20477-1-jbi.octave@gmail.com>
 <20190302001115.20477-2-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190302001115.20477-2-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Mar 02, 2019 at 12:11:14AM +0000, Jules Irenge wrote:
> Add SPDX GPL-2.0+ to fix missing SPDX warning
>  reported by checkpatch.pl.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index d67a2504adb1..7d69586f23c0 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later

Are you sure you changed the identifer to match what said above in your
changelog?  :(



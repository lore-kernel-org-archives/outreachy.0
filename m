X-GM-THRID: 6398485501253255168
X-Received: by 10.99.102.68 with SMTP id a65mr8572891pgc.68.1489770699998;
        Fri, 17 Mar 2017 10:11:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.8 with SMTP id 8ls2405394ion.18.gmail; Fri, 17 Mar 2017
 10:11:39 -0700 (PDT)
X-Received: by 10.99.53.12 with SMTP id c12mr7863774pga.11.1489770699086;
        Fri, 17 Mar 2017 10:11:39 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y90si1518921pfa.6.2017.03.17.10.11.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 10:11:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so2750256pgh.3
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Mar 2017 10:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Nsg8gPBEmwFsB4mHypC4eod6TRALYQZtq6U9YJCf6vs=;
        b=oZMHXcpWfVu/CPJqhSiNri8loTdkPAZOcwmz/K5bBoCQNPk8DtbuGtZlbugZmC/CXD
         nUuzuDP7ByTeUd5K8ayqLA/xEq9v4b3WcugCaZ71/vFtf1brR93X7iA6tb2DTVBKvHFS
         AgLvXo9wKHj3/t/ln8e1puzXYnfSh/iXIeCep1r84xvt+3UbOraiTVsxhd4eXXIySSjG
         i5wQTeeBnJe0z7K/tHVzq2IKNH8XYRqkmfSXQ3CGJc+/c1+POPaAONSx+dcEKVzdtGH3
         s1CLPwQ3jHyb5nvVqqJk/lzXx4/n2fGZ9j2Rh2N23RyTLqn9iTjN5dkEMlgIhaOwXZaq
         wSQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Nsg8gPBEmwFsB4mHypC4eod6TRALYQZtq6U9YJCf6vs=;
        b=aBuewrjFst0ECU9NVnlKIkMjwlTBBYEZ7GhwApBFk2v6z5xGZpJYr20N/ZD/1BYLTt
         sGY5uu0RZLs8+G2VmBc1/Wh/SFb6eW6pbPA9QCwNdgKLdt0YshRfVssKH2n3xmjDRam3
         JXXyYS7898mt7xUyA8VC9M6UdUp5EDMHE1CBiQiQBvvFH+pw3A5FBfV0ejrzgPZYti3+
         qTsTpmFXe9RPP2mvd90yfQr6JOfnI6SUanAfgJ76Rmb5psxFTbveRosMa+n/Y3w/rvpS
         AySOi59oexBAmNnuZqjhgBYJDqerc+qDrX1NH5ciaH3zyKvq33hCrQ8uiJuOTgYhZX5f
         KOmA==
X-Gm-Message-State: AFeK/H3v10upNfIbYayh0AlR83U+gloaR2AzmeJFGbkRV3hSR4BOXtm0nRXA1L4Ye7uvtg==
X-Received: by 10.98.60.199 with SMTP id b68mr18039345pfk.102.1489770698875;
        Fri, 17 Mar 2017 10:11:38 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id g78sm17959757pfe.5.2017.03.17.10.11.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Mar 2017 10:11:38 -0700 (PDT)
Date: Fri, 17 Mar 2017 10:11:37 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: meter: ade7758_core:
 Replace mlock with driver's private lock
Message-ID: <20170317171136.GA19487@d830.WORKGROUP>
References: <20170317151110.GA26848@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170317151110.GA26848@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 17, 2017 at 08:41:11PM +0530, sayli karnik wrote:
> iio_dev->mlock should be used by the IIO core only for protecting
> device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
> INDIO_BUFFER_* modes.
> Replace mlock with a lock in the device's global data to protect
> hardware state changes.

Hi Sayli, 

There are nested locks here, hence deadlock.  I'm wondering if we can grab
the lock once at the top layers (read/write_raw functions) and hold it. 
Seems like that's a pattern in IIO drivers.  Let's see what the reviewers
suggest on this one.

alisons

> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/iio/meter/ade7758_core.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> index 99c89e6..1723eb8 100644
> --- a/drivers/staging/iio/meter/ade7758_core.c
> +++ b/drivers/staging/iio/meter/ade7758_core.c
> @@ -522,13 +522,14 @@ static int ade7758_read_raw(struct iio_dev *indio_dev,
>  			    int *val2,
>  			    long mask)
>  {
> +	struct ade7758_state *st = iio_priv(indio_dev);
>  	int ret;
>  
>  	switch (mask) {
>  	case IIO_CHAN_INFO_SAMP_FREQ:
> -		mutex_lock(&indio_dev->mlock);
> +		mutex_lock(&st->buf_lock);
>  		ret = ade7758_read_samp_freq(&indio_dev->dev, val);
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&st->buf_lock);
>  		return ret;
>  	default:
>  		return -EINVAL;
> @@ -541,15 +542,16 @@ static int ade7758_write_raw(struct iio_dev *indio_dev,
>  			     struct iio_chan_spec const *chan,
>  			     int val, int val2, long mask)
>  {
> +	struct ade7758_state *st = iio_priv(indio_dev);
>  	int ret;
>  
>  	switch (mask) {
>  	case IIO_CHAN_INFO_SAMP_FREQ:
>  		if (val2)
>  			return -EINVAL;
> -		mutex_lock(&indio_dev->mlock);
> +		mutex_lock(&st->buf_lock);
>  		ret = ade7758_write_samp_freq(&indio_dev->dev, val);
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&st->buf_lock);
>  		return ret;
>  	default:
>  		return -EINVAL;
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170317151110.GA26848%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.


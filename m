X-GM-THRID: 6399483181164134400
X-Received: by 10.99.192.17 with SMTP id h17mr18668456pgg.56.1490112919814;
        Tue, 21 Mar 2017 09:15:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.69.193 with SMTP id c62ls2990358itd.17.gmail; Tue, 21 Mar
 2017 09:15:18 -0700 (PDT)
X-Received: by 10.99.112.18 with SMTP id l18mr10668478pgc.109.1490112918848;
        Tue, 21 Mar 2017 09:15:18 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si3371838pfz.1.2017.03.21.09.15.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 09:15:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n11so11304659pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 09:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aFZGZMFQ6HQJLVitS9w13wSy0tT2opXeuDzLwX97ekE=;
        b=n2MIckKy7YBUjl3amLmJCu+Prt4kDhD6HRY77GAt6LzSh3yFdCCmwAu7fDYj53hRE4
         QMMmR6Yy5SJFKaoRjAZkPrJnQrw69GmiJ7iBxhn04cCOiv2U1UO+F37YxNdVK7vuhgzV
         tiwLPcMA5H1WJ1ZtXmzCXai7Wcn2Jtg/WJY2f4sLw3kVk8upJvb74x52+u0HRmivmgBC
         rFMSStiUzOQ52MnfyYTWEtz6Pu4d7kZQ72xszEcpQ5ECHhVfSUB/+6fB6wq+zC0IaDR/
         FOlVqNKRlcJzIXqvqeNMQN7nkl3Ssyuk2ahQeU3YgINffUEQXfjjEFSEnqWheAJOsndP
         lZpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aFZGZMFQ6HQJLVitS9w13wSy0tT2opXeuDzLwX97ekE=;
        b=V75pJL6hcGyF7ap/HRwKUaedImitrmFP2YYTSRAGhhFCXXYqJU2dqPQVMKZ8CKS1In
         3hIwKuOmL4rFbTd1TiLfFIY3xRCAN4aJqfecINDmlyqxZxgzfUcqfgUXDkXa8v1wg+U1
         Yk9zhwcKTxrcehFS4pXRdWKn41CRjEMqyCnL+vgW3Lxa61cBKuSBdmQ5RSxKfPkm16r6
         DxJHm4T1LSNnvIPaaMkVPTYhEGFc+SzSvrfiQDxfTegSwV86nEFmAGVGxWU261OWMAJa
         gQP+Efzmm0bbrkem0Jw/E3LzhveGgAbtxCiXELZJShfx5Z1Z2Vh/l+19RTW9n971bvUs
         pVDA==
X-Gm-Message-State: AFeK/H18LiNSrFURS7DGgQr9gzmH/zCxU7lrvp0qAqucftoujvwSAXm9m7igkCgsEj76hQ==
X-Received: by 10.99.125.68 with SMTP id m4mr39272102pgn.13.1490112918612;
        Tue, 21 Mar 2017 09:15:18 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id a90sm40522471pfg.78.2017.03.21.09.15.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 09:15:18 -0700 (PDT)
Date: Tue, 21 Mar 2017 09:15:17 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org,
	lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: ade7754: Replace
 mlock with buf_lock and refactor code
Message-ID: <20170321161516.GC1859@d830.WORKGROUP>
References: <1490112101-30192-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1490112101-30192-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 21, 2017 at 09:31:41PM +0530, Gargi Sharma wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> 
> In this driver, mlock was being used to protect hardware state
> changes. Replace it with buf_lock in the devices global data.
> 
> As buf_lock already protects operations in ade7754_write_frequency,
> there isn't a need to acquire the lock inside ade7754_spi_write_reg_8
> when writing to the register.
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Just sent yesterday.  Why the RESEND?

> ---
>  drivers/staging/iio/meter/ade7754.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
> index 024463a..eb03469 100644
> --- a/drivers/staging/iio/meter/ade7754.c
> +++ b/drivers/staging/iio/meter/ade7754.c
> @@ -29,6 +29,15 @@ static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ade7754_state *st = iio_priv(indio_dev);
>  
> +	if (reg_address == ADE7754_WAVMODE) {
> +		st->tx[0] = ADE7754_WRITE_REG(reg_address);
> +		st->tx[1] = val;
> +
> +		ret = spi_write(st->us, st->tx, 2);
> +
> +		return ret;
> +	}
> +
>  	mutex_lock(&st->buf_lock);
>  	st->tx[0] = ADE7754_WRITE_REG(reg_address);
>  	st->tx[1] = val;
> @@ -430,7 +439,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>  	if (!val)
>  		return -EINVAL;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->buf_lock);
>  
>  	t = 26000 / val;
>  	if (t > 0)
> @@ -451,7 +460,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>  	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
>  
>  out:
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->buf_lock);
>  
>  	return ret ? ret : len;
>  }
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1490112101-30192-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.


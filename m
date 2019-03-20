X-GM-THRID: 6670195041552564224
X-Received: by 2002:a2e:909a:: with SMTP id l26mr1698974ljg.1.1553071845022;
        Wed, 20 Mar 2019 01:50:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:429a:: with SMTP id m26ls159440lfh.10.gmail; Wed, 20 Mar
 2019 01:50:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyr+oTti+QSIrKxQxRLOqia9wU4trCE0kaglcGYL6/Pi4Gc8bPVKzea19n8t8I+rVoCkCc6
X-Received: by 2002:ac2:419a:: with SMTP id z26mr1512337lfh.2.1553071844108;
        Wed, 20 Mar 2019 01:50:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553071844; cv=none;
        d=google.com; s=arc-20160816;
        b=xo7kh1ltVLud98NyjXx6Kqkz8yI74wgvY57n1KzOw8ESKwAnYsWUS6YzcpDwW+g6Ll
         m8ht6u9Wv9JM6Pa1A6w7MOK9BmucI/yWNR5Gq2G9EAQOdhxv7OGpvnMrhpbrZ8TiHEr3
         p4/J74y7ZYpbtugr8VCrDp+Czv2oqfTnU2YJuuP11wuS5xm4NDNEwgprJ/RwFo7R6BJW
         TmFo81ppaiC0T+KkE4OGYOd2UfD3+ntjpb3pupvFK2C+Bf67N4FzH0W0YV1Hr5JCOZz5
         zG/lK1Am92z5Nm2kfQm9AKKi7/m4qd1nL5qUpAZGtAt4xdoe0uycAPv6kbNlkTVWk/2K
         zfRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ntBzwNZc5gFR2fIZnkzl35sDm9SFS6iCuW0c4qDTSfg=;
        b=yZhpu1zLqZEy5RAJYWc3ISJDhC8b+6ohkLaYA7NL3cByDZJGKGMSEVB3/q81zNE5oD
         faxX2yAOOnVpD5ZdaLfXT3GIzWbn+vvWYFuc7Vi0zjhvcELXt4i0tUGd/LoPwel6EudI
         2UHcAfFbjUF5gi2lWBLwAug3UKK2vEPxVWHQvcdMnmiHWUgmeDUhLbMTzZRrEAWWPneb
         SKO5n7zxpaAlttZX4GaJQ/tW480T+7Nls7Wp7jJBBiyo2cfoUFvt8tJCPFp6LbgkEfY4
         P18QwClfHcGMlUKT4w6E8qxC5RaAgKOgSmffnsuxIlPE+L+HIhh3k4WfEhkcvfoz5rYe
         XWWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.208.193 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <jhovold@gmail.com>
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com. [209.85.208.193])
        by gmr-mx.google.com with ESMTPS id 19si44458lje.4.2019.03.20.01.50.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 01:50:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 209.85.208.193 as permitted sender) client-ip=209.85.208.193;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.208.193 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: by mail-lj1-f193.google.com with SMTP id v13so1517460ljk.4
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 01:50:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ntBzwNZc5gFR2fIZnkzl35sDm9SFS6iCuW0c4qDTSfg=;
        b=lXkkH5yVbpsyyYXNeTUiCJEwDazrboceQKeYEsv0dWTBl3K3WkmVHbDf/TuwoeXd+A
         eGlp7w8pU4svQHpZ+UfbxcUlDXbMI/RO97iqQpd0QM35bD73I5wGudMq9AgUV3v/lWOt
         ncnPm/9LVOvSRAjKnEOsDF4ahP9zlkuA9xjXxE8N/fUO8cxwO34eIKJGHULaThwcIqhF
         /2S2M+TxpNPCZXvKM8j89vDngi/jBpt2yZOI5MCdhWA4YERB0/8vJDQhu4reio42mXVU
         GP4Cv0+VfAnGuY6rVor8mLo6rJ0ubWaUQaWGoNoICcNqQtmg+leFSNTMdc7Uy0Tr5Gjx
         FK4w==
X-Gm-Message-State: APjAAAWE37JCwoc18ymqX0QmYPygLK0RUy4/Ghy7NG0AUuADIkjz7qar
	4shbH/KGcorkMdyj+pCgBJY=
X-Received: by 2002:a2e:8585:: with SMTP id b5mr16385553lji.125.1553071843905;
        Wed, 20 Mar 2019 01:50:43 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra (c-74bee655.07-184-6d6c6d4.bbcust.telenor.se. [85.230.190.116])
        by smtp.gmail.com with ESMTPSA id x189sm165361lfd.64.2019.03.20.01.50.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 01:50:43 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.91)
	(envelope-from <johan@kernel.org>)
	id 1h6Wvm-0005l7-Vz; Wed, 20 Mar 2019 09:50:39 +0100
Date: Wed, 20 Mar 2019 09:50:38 +0100
From: Johan Hovold <johan@kernel.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: greybus: Remove parentheses around variable
Message-ID: <20190320085038.GC15782@localhost>
References: <20190319200308.10710-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190319200308.10710-1-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Wed, Mar 20, 2019 at 01:33:08AM +0530, Nishka Dasgupta wrote:
> Remove parentheses around variable.

Perhaps 

	Remove unnecessary parentheses around expression.

would be more accurate.

> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>

But no need to resend unless you want to. If you do, you can add my ack
before your SoB-tag:

Acked-by: Johan Hovold <johan@kernel.org>

> ---
>  drivers/staging/greybus/bundle.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/bundle.c b/drivers/staging/greybus/bundle.c
> index 376ca53f0d83..3f702db9e098 100644
> --- a/drivers/staging/greybus/bundle.c
> +++ b/drivers/staging/greybus/bundle.c
> @@ -32,7 +32,7 @@ static ssize_t state_show(struct device *dev, struct device_attribute *attr,
>  {
>  	struct gb_bundle *bundle = to_gb_bundle(dev);
>  
> -	if (!(bundle->state))
> +	if (!bundle->state)
>  		return sprintf(buf, "\n");
>  
>  	return sprintf(buf, "%s\n", bundle->state);

Thanks,
Johan


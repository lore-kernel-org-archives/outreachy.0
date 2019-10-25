X-GM-THRID: 6751257049994100736
X-Received: by 2002:a17:902:6b06:: with SMTP id o6mr887521plk.154.1571967352014;
        Thu, 24 Oct 2019 18:35:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:108:: with SMTP id b8ls103550pjb.1.canary-gmail;
 Thu, 24 Oct 2019 18:35:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw2KecZqZsI5wyRzGSnC2nX0imieEyCM6zfCd7o7eESdRyvRGtbTn7d7AiRAcl816LiDdj5
X-Received: by 2002:a17:90a:2506:: with SMTP id j6mr727881pje.131.1571967351013;
        Thu, 24 Oct 2019 18:35:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571967351; cv=none;
        d=google.com; s=arc-20160816;
        b=oKXwtrGUNoL7ABgEB+2fig3Q8BnPEcFjTCpURjndY7XNg/uTDAvwM0pikVs/GbNypB
         3XR7R2+1HhmZH4C3ACmadL1ry+5PLg7R4CdWD8/5E7ZPrIpITw/mpNEFGDH/mgkcjfqX
         EmuUgJl2379IrQie1Qz7ojAQIyNwIjALzLdvXG1FUUqI0VQRFwa4kQgQCFmHWf7rlO3s
         9UsLzsXhjTpF9PPYnDvoQqCn7qmjQ28Dnot9YixN73+X6iD5+lHLu2aDN1PUsZv5NL45
         mV4jriU8qqc0OWcHDFuIdIgwTLQrdaSMBDD6h+1XyfHdyUiLNT4jzkPSR3sRqO89UG9F
         7kdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HsgVa67HLXVyspdp5s3fyRr3BYTIA90EaHcqCpIhgfk=;
        b=GK5AQoWRHC0FyoI4wuXOvUgTg6psX4I4LjC8nhY9j6sUJoOytW4flsS2/h9Xtv7gRX
         5KlLKWEn4bzQ/Ktqo5g3kExY6oIVo4EKSuHYqm68xX9aYbiIUuRFZ3hPfDL/awNio4pS
         BZP1lqWwP8SFN/Bie7/028fVKneEzVQlabMqAbYHwFvCz0xb4VOV0cHZ1mnR9Tlq4ZTt
         F6eYdRV2Ob0RkWNL91SzybZU6KHzWqwVLQorSW+aNRdaQqjyALJJiPIeZabWhIsQvV80
         VUr4FjDE4mZWGvSfETzpinhXqTIIIi+dVA2qszk0rVhEv8pJgKXJ73JMtjReZ0fSyzwr
         I6DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AX8IApPo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d5si26316pls.5.2019.10.24.18.35.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 18:35:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AX8IApPo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.98.37.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6288E2064A;
	Fri, 25 Oct 2019 01:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571967350;
	bh=bbeY+oenmrSriBqJir64+qlMYgr6z8tgr5Hj1xLb5GY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AX8IApPoIlj+viYKiK9sBY/IYOnQFngetp9aDG6abN7qQObn6D4xmsnAV1oBkzKuE
	 AdRMhVEPBW+fAHx76Rtv4vTpH5FcZQhcKXDWfVOsfr6wRk5Bc70kD0BqBbZEpifeIq
	 40d3s/rOYbGWG1e9qWzPO75HwGq57E1335gQl8Wo=
Date: Thu, 24 Oct 2019 21:26:48 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/2] staging: kpc2000: kpc_i2c: Fix lines over 80 chars
Message-ID: <20191025012648.GA265361@kroah.com>
References: <cover.1571948876.git.jamal.k.shareef@gmail.com>
 <e9fce17736dbd3219b4ad5c18b3436ae34299dcd.1571948876.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e9fce17736dbd3219b4ad5c18b3436ae34299dcd.1571948876.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 24, 2019 at 01:35:19PM -0700, Jamal Shareef wrote:
> Fix lines over 80 characters warnings.
> issue found by checkpatch.
> 
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc2000_i2c.c | 203 ++++++++++++++++++--------
>  1 file changed, 139 insertions(+), 64 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
> index bc02534d8dc3..69128fd7fd5e 100644
> --- a/drivers/staging/kpc2000/kpc2000_i2c.c
> +++ b/drivers/staging/kpc2000/kpc2000_i2c.c
> @@ -99,7 +99,8 @@ struct i2c_device {
>  #define SMBHSTSTS_INTR          0x02
>  #define SMBHSTSTS_HOST_BUSY     0x01
>  
> -#define STATUS_FLAGS        (SMBHSTSTS_BYTE_DONE | SMBHSTSTS_FAILED | SMBHSTSTS_BUS_ERR | SMBHSTSTS_DEV_ERR | SMBHSTSTS_INTR)
> +#define STATUS_FLAGS        (SMBHSTSTS_BYTE_DONE | SMBHSTSTS_FAILED | \

Shouldn't you use a tab in this line?

> +		SMBHSTSTS_BUS_ERR | SMBHSTSTS_DEV_ERR | SMBHSTSTS_INTR)

That does not line up very well, it looks worse now :(


>  
>  /* Older devices have their ID defined in <linux/pci_ids.h> */
>  #define PCI_DEVICE_ID_INTEL_COUGARPOINT_SMBUS       0x1c22
> @@ -136,7 +137,9 @@ static int i801_check_pre(struct i2c_device *priv)
>  
>  	status = inb_p(SMBHSTSTS(priv));
>  	if (status & SMBHSTSTS_HOST_BUSY) {
> -		dev_err(&priv->adapter.dev, "SMBus is busy, can't use it! (status=%x)\n", status);
> +		dev_err(&priv->adapter.dev,
> +			"SMBus is busy, can't use it! (status=%x)\n",
> +			status);

Why did you put status on a new line?

>  		return -EBUSY;
>  	}
>  
> @@ -146,7 +149,9 @@ static int i801_check_pre(struct i2c_device *priv)
>  		outb_p(status, SMBHSTSTS(priv));
>  		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
>  		if (status) {
> -			dev_err(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
> +			dev_err(&priv->adapter.dev,
> +				"Failed clearing status flags (%02x)\n",
> +				status);

Same here, why this last line change?



>  			return -EBUSY;
>  		}
>  	}
> @@ -162,15 +167,20 @@ static int i801_check_post(struct i2c_device *priv, int status, int timeout)
>  	if (timeout) {
>  		dev_err(&priv->adapter.dev, "Transaction timeout\n");
>  		/* try to stop the current command */
> -		dev_dbg(&priv->adapter.dev, "Terminating the current operation\n");
> -		outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL, SMBHSTCNT(priv));
> +		dev_dbg(&priv->adapter.dev,
> +			"Terminating the current operation\n");
> +		outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL,
> +		       SMBHSTCNT(priv));

SHouldn't this line up a bit differently?

You might want to use a text editor that handles this properly when
adding indentation.  I know vim does it, and I imagine that emacs does
as well.

thanks,

greg k-h


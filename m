X-GM-THRID: 6747765295374401536
X-Received: by 2002:a62:1bd3:: with SMTP id b202mr36176946pfb.50.1571112583063;
        Mon, 14 Oct 2019 21:09:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:2766:: with SMTP id o93ls5257383pje.4.gmail; Mon, 14
 Oct 2019 21:09:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzNTyZZRSPUmaa30ugeTuQ+mafRNZUNDkYhwy/F2lwbCQ2S3vGc5iTUuLytlGbRP7QEOwuw
X-Received: by 2002:a17:90b:313:: with SMTP id ay19mr39330383pjb.25.1571112582086;
        Mon, 14 Oct 2019 21:09:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571112582; cv=none;
        d=google.com; s=arc-20160816;
        b=EFmsta7/0Bc0+/UK6oniJpb3P+0OvKvKt8kMRuGaHoK8EKSPcj4OvEanP6law8EILU
         63bZBXIDWbYdog0EBNSoWp7+SbFoJx2wHHvvSLJCyG7JqYSpNoImxH7dvbca1BDRF5pW
         /SX9uvyE9TgXd59FIY2EjVgZtuX3cjeE1d08tM9MCXTP/43CjBIZsgp0fHzxFTH4frYB
         NqlNJrtLhN7pcH0n+uNgaJPaw7zN+9UvTSU77DcamwdX+ApbiEv+NiI7RfS6S6EVj+Jc
         Q8WdRjGuIwGKDAY79zy27Y2FyT7kS6T/x1d+FESJBmK28bEGB5psllvNsx+mNVYu9NiI
         /eBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VCws3EIECiQSWDyLORhyGmrsCtBIi/RCPxl+vKG0/mY=;
        b=DFOttbVqCjPIhdpis257hGXmcsd9NqvHIKsSECrMD4VYUyvPdQ1Q3EZL7NLL9clu53
         5giPJ5OHx+x/KS09CfJkwBLrwa23oozJVOQbO/Uv5dmJ3E7qmjCSLIGRDJT2qqplTR7f
         E6yFLIkQxoCXp8o+NvYAHiWIJv7vz8jLgb24JqjktpyA7qBrWYbSqABbFJwgjY6qUR8q
         6BkXoogIO9Zkw0CZvrwVbq4YToJhq+HBKEcjUUhGkaOxnh7yqFftacZOnJnAXml8Ypqd
         Bt0YH5eMCCRRTyTwBMryrM87fK/aZ4rB6NtmVfzWrkMfYGvyyNmSynM5YhF/MvpIetes
         xYMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yseyImRB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 124si1258195pgd.4.2019.10.14.21.09.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Oct 2019 21:09:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yseyImRB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3D7E0217D9;
	Tue, 15 Oct 2019 04:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571112581;
	bh=6NN+mzbd4oGXrDn+dCFphMTfM4Xx4uuIFwyI3z6G4ow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yseyImRBEqfy26ZmNYUNBFuAkEvW4hJQ7y7IvNRYS2sZzSj66yISACm/KfU++NKCH
	 An83cp6oEETdl5nk2cvbNEhdOD0cBDeXQstk1txrO+svkGFw+Oe5DeYrVqel9Zeuwu
	 eKo99VpsTCdz91W4BUT9LYpvZFF2hklmw49Xfm8U=
Date: Tue, 15 Oct 2019 06:09:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: boqun.feng@microsoft.com, andrea.parri@microsoft.com,
	vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
	elder@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: greybus: Fix quote string split across lines
Message-ID: <20191015040938.GC804807@kroah.com>
References: <20191014205529.919-1-jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191014205529.919-1-jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Mon, Oct 14, 2019 at 01:55:29PM -0700, Jamal Shareef wrote:
> Fix quoted string split across multiple lines.
> Issue found by checkpatch.
> 
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/staging/greybus/audio_manager_sysfs.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
> index ab882cc49b41..54b0caf22b5a 100644
> --- a/drivers/staging/greybus/audio_manager_sysfs.c
> +++ b/drivers/staging/greybus/audio_manager_sysfs.c
> @@ -17,11 +17,11 @@ static ssize_t manager_sysfs_add_store(struct kobject *kobj,
>  {
>  	struct gb_audio_manager_module_descriptor desc = { {0} };
>  
> -	int num = sscanf(buf,
> -			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s "
> -			"vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
> -			desc.name, &desc.vid, &desc.pid, &desc.intf_id,
> -			&desc.ip_devices, &desc.op_devices);
> +	int num =
> +	sscanf(buf, "name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s "

First off, this type of indent isn't ok :(

> +	       "vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
> +	       desc.name, &desc.vid, &desc.pid, &desc.intf_id,
> +	       &desc.ip_devices, &desc.op_devices);

Secondly, as Julia points out, you didn't actually change anything here
with regards to the string.

As the code is, it looks about as good as it can get, I would just leave
this as-is.

thanks,

greg k-h


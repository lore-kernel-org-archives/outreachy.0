X-GM-THRID: 6747765295374401536
X-Received: by 2002:a1c:7c0a:: with SMTP id x10mr16717831wmc.48.1571087432504;
        Mon, 14 Oct 2019 14:10:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:54cc:: with SMTP id x12ls5959087wrv.0.gmail; Mon, 14 Oct
 2019 14:10:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxwZcMaZw6e9kBASnJmfmJKlRo5+MbWp74RHNUJqY0lU3CTmd1x48AJyn6GzHapEoppGnsB
X-Received: by 2002:adf:ec84:: with SMTP id z4mr27518804wrn.254.1571087431616;
        Mon, 14 Oct 2019 14:10:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571087431; cv=none;
        d=google.com; s=arc-20160816;
        b=b1eTsVkkK7/kzCo470Sao29Ib2hSNT72ZGbq95mM7gE0QPqpkReKrlJ/pdfBbXhRM9
         Ap8fsWWTaKHjYnvmsv5u86hym4Nz3Dz105hqN32sk4PuT831weF3aUoIgtLnEqHn1+aX
         3LLi6N39zW8C0qivPxozqNdI2izmjkafOGdTxhNhS1Im5ZJOuyeVb7z1K+ctcPTpYMlW
         wgl+ZLu3hbnokQMMorYwxOo6QtRrj30DMOqWn3Sw6lcXC4Tx6QjUgjTTGKsTGBMWRKvd
         PkOYyENkogJz6UcJtjbjNFbq4NU1v6qrEFJIZx6KzXrZ9hVVEeZTz5FhjmNVyoj63AMa
         uHTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Ox43CM9Vo6Yh4+wMCsa5sMf/GHORs4OCvKE0ukJ8gvw=;
        b=YMwEIhf8GN+e+I+nvYq+ldtNRoa3KaHEgpQjpdUkgDUOx1k/8Dc7/n4amz7xyXpOIK
         bF1QxwtTq8+qopdHZWVz5y/Oeb/VL31VrDpaKC6n79cwK+f8Ano0QzrrlLXfuI3wMd8o
         LEhD8p1WFNlcYLKIM00EMMYkPMWY6Vp6BJgtYKkyL9oyoq/zrNFZ92J32NqPp8YyhS+K
         tpuwMIvCIAqw9J+azY1Eql5cc2+CseOyZTlZ6/4WBmWgmXM5zkhiBPSTTP3sDCsvL36c
         HhZCSSKu2xX4d6YVQIPVAG2YhZbsjMjiWrGPSD1B6bNbUdOp4huqDZNcF4OSjQtDtlao
         LHUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o10si1576760wrm.5.2019.10.14.14.10.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Oct 2019 14:10:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,296,1566856800"; 
   d="scan'208";a="406143072"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2019 23:10:31 +0200
Date: Mon, 14 Oct 2019 23:10:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: boqun.feng@microsoft.com, andrea.parri@microsoft.com, vaibhav.sr@gmail.com, 
    mgreer@animalcreek.com, johan@kernel.org, elder@kernel.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: Fix quote string
 split across lines
In-Reply-To: <20191014205529.919-1-jamal.k.shareef@gmail.com>
Message-ID: <alpine.DEB.2.21.1910142308280.2631@hadrien>
References: <20191014205529.919-1-jamal.k.shareef@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 14 Oct 2019, Jamal Shareef wrote:

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
> +	       "vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",

It still seems to be split over multiple lines.  The point of the message
is that you can exceed 80 columns if doing so puts the whole string on one
line, making it easier to grep for.  On the other hand, the use of the
macro already makes part of the string impossible to grep for.  So the
macro could be on a different line from the rest of the string, reducing a
bit the overall width.

julia

> +	       desc.name, &desc.vid, &desc.pid, &desc.intf_id,
> +	       &desc.ip_devices, &desc.op_devices);
>
>  	if (num != 7)
>  		return -EINVAL;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191014205529.919-1-jamal.k.shareef%40gmail.com.
>


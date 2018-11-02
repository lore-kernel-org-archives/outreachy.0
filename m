X-GM-THRID: 6619077441472167936
X-Received: by 2002:a17:902:10d:: with SMTP id 13-v6mr271752plb.46.1541134384851;
        Thu, 01 Nov 2018 21:53:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5cc4:: with SMTP id b4-v6ls5638287pgt.6.gmail; Thu, 01
 Nov 2018 21:53:04 -0700 (PDT)
X-Google-Smtp-Source: AJdET5c18BAn22LWkMtiYsYPBSUGwcXjEUWlwLeDiXRlK+QLm2quaoFowtZBmzNvKsSl4ogC20Mi
X-Received: by 2002:a62:e017:: with SMTP id f23-v6mr3382482pfh.147.1541134383979;
        Thu, 01 Nov 2018 21:53:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541134383; cv=none;
        d=google.com; s=arc-20160816;
        b=sXG8cxBE0bhjQw3ARE9FYliHL1uRkuIWhoJQSxOtpCJICa7rPW25bXk2tzEjbaY2ge
         UMxDEX3P5h56w2OfkRI6AIt0ehnATDTokqcoRLy9PuEPq7MoiB2mFXQaCLVfG5xRevxo
         aYNLKZ6PqIO1zFvxCIQz3kzFvfPIG3Go7qpES8LYsA3aje3a1WL8vFcTRdlKyN4bJ15D
         yoOH9h9yiCYJqib0Jl9KYTXMvGwF9x3jdt7UrjxUNOt0ySmLjHG2mK9iIgh2N6449nIh
         xJF97oWld/EybihYkvZYZ1y8boNAJs9Qz2Hze2xrlTPsuEI2IYiJ362vKRxGFyaw0eg2
         lDIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cwrn6WVvSXqrSGR4XpyL3vY98jd56HSXQOSPodL/wV0=;
        b=p6/xd6TW1yWo6cXh+c3Ul6V8HFn69d4rhfVA1nYkGKkUD/y5V7dXxMcG2f/Hkm9Y2j
         iU7OP+q9POUA9QHSagt36SMNuG6B7UMn1Lp7/KiDYrBL1WRNuyDAY2yRxnOuYsqA505m
         weUvGhqAc5AOwDItU36k3hSzEyKGKPizTvMEnucDuL+GsUO27XgAWVq3X7yEMJu4Wcr0
         +NNZaUk4x425PdGFjSC5T/fSxe+0omJbp1g/FvffW8eVLaf6/4Hy/XrQIyZTxDzgVgkj
         emQ3GMvvKZ+Q2cjJgsVzASF10V0eUHcv47A9ACVW8LXD2/IvxufAtewna5OotrXm/LYm
         srrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lZF1yH7f;
       spf=pass (google.com: domain of srs0=l4il=nn=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=l4Il=NN=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=l4Il=NN=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s138-v6si1745940pgs.1.2018.11.01.21.53.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 21:53:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=l4il=nn=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lZF1yH7f;
       spf=pass (google.com: domain of srs0=l4il=nn=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=l4Il=NN=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E5CE82081B;
	Fri,  2 Nov 2018 04:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541134383;
	bh=NibkvgC6sa2LmXwdXg5ZaYzmXF3BftIpuh3XDYdTK0U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lZF1yH7fiziXHCGJz5P819xWK9p+9k5LzOplvpw27vkySI6vTnluv1LdzqA/21Mu0
	 W8aIjpSsoDAdwvXayKR0y4LCqFQrR3A4BhvaJPjblc4VsOrjbmUYkS53RKwZuprCOn
	 Fq/xxaifhBoBHA5vAwQx5SKeFWDEVK6wj4thGP2I=
Date: Fri, 2 Nov 2018 05:53:00 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/5] staging: greybus Match with open parentheses
Message-ID: <20181102045300.GA11843@kroah.com>
References: <cover.1541123999.git.code@wizofe.uk>
 <202cacec28435d2bb33fa9873f8fef9e451dada7.1541123999.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202cacec28435d2bb33fa9873f8fef9e451dada7.1541123999.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Nov 02, 2018 at 02:04:49AM +0000, Ioannis Valasakis wrote:
> Fix the arguments by open parentheses
> Reported by checkpatch.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/control.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
> index 9c453e0b1b33..08a51c652a10 100644
> --- a/drivers/staging/greybus/control.h
> +++ b/drivers/staging/greybus/control.h
> @@ -41,7 +41,7 @@ int gb_control_get_bundle_versions(struct gb_control *control);
>  int gb_control_connected_operation(struct gb_control *control, u16 cport_id);
>  int gb_control_disconnected_operation(struct gb_control *control, u16 cport_id);
>  int gb_control_disconnecting_operation(struct gb_control *control,
> -					u16 cport_id);
> +				       u17 cport_id);

I don't think you built this code :(



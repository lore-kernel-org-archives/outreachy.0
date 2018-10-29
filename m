X-GM-THRID: 6617780359505379328
X-Received: by 2002:ab0:6513:: with SMTP id w19mr13213433uam.23.1540823473080;
        Mon, 29 Oct 2018 07:31:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:b403:: with SMTP id x3ls1383994vsl.5.gmail; Mon, 29 Oct
 2018 07:31:12 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cxxwZbB7EvOhXR46jRsPiB8ba+2LYLvOr0ihqLQPOcQp2dT+Jo0eaoCA/6O5AIJA2Y5gQV
X-Received: by 2002:a67:505:: with SMTP id 5mr6783506vsf.41.1540823472427;
        Mon, 29 Oct 2018 07:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540823472; cv=none;
        d=google.com; s=arc-20160816;
        b=dkPuCdreU2rRqF6X4oU0lF7FkkcFcHvbMjGo4P7vJyicwNIXpsERHxYUxBDnfY0YUf
         qWFXelRZ4gGNPM+k+AHOtZAumHaXO6gI4ZRGtCISgNNbUXRoqRcgxLREX4IQGOmzDDiO
         0hIt4S2CmYdglj7kuahU8J5MZ6/2K3ZwICjUFdREI+wyGNQIffa1xsEmLUvq6iY1+Faz
         +u6nuaea86MwBmJLIZxuGw1STg3qnoUTnKE5rXicOP581OroGZAM5jszzLGTuMC7buHx
         7sqB3y1YFoUHUaspiGew3pwSqN8TfC/wlLBjD++cUzqfRjwnnNS/c+wiRuMdcrvlLOAs
         xoXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LS43gbOKUrs5/Q+hJk/YEePLQ9BbZOMCJou/zn2T4mU=;
        b=qrBpWjuJUsnrRhOEj9p3YLl9+1T8KxuTjnD/XKpplmtO51XECS8ADquoQs7A6F0g5h
         6llQ9Hsd9kqhlCx3rZ2yntd9Eb9Lv4WezaTq4iMbOB/sd0r+VgyOwUW6sWM4G1ebZQHs
         Yu3XdX8bxDjM/knatpjcvBFwl1x6j+R0Ot1LAA+BXIVQ5KjRhhMu9X3vjfaCyqihhEdI
         ERLxtYlPThIbWOBeJbwBc3BKNuGBZ7YMAtv1npltnpGGXIVLKwlUVX0uT5tl35p17rRz
         QwTBpztEgGixr6UpqrEMZYO21e9MMEzCJXS6CLJ7iGoC7IUiBmMQFZl5KJyYHJXTpKrt
         TK+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H4lPkc9F;
       spf=pass (google.com: domain of srs0=m2bn=nj=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=M2bn=NJ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=M2bn=NJ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r19si185720vso.1.2018.10.29.07.31.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 07:31:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=m2bn=nj=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H4lPkc9F;
       spf=pass (google.com: domain of srs0=m2bn=nj=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=M2bn=NJ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C1FF520657;
	Mon, 29 Oct 2018 14:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540823471;
	bh=VEDjsa28CHdCNrstI4cHXaK1yz29dB3J6lcDZz71fCU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H4lPkc9Fuo0AXaobEQU6/Z2PlrJn7I6nKrxSVzJPAdC7pDDHeo+Y7a32A/ql9g8Tb
	 /lCdBtyyYjTdZ3kA38vVcVGNlpRvwwWbCaFleJuHlauzCa48g7FKdt4okpvQo7Wham
	 n0kcyRS10qyDL7qr4h87YTADJPCHpQleF/Fx6Ri4=
Date: Mon, 29 Oct 2018 15:31:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com, rspringer@google.com
Subject: Re: [PATCH] staging: gasket Create a memory allocation path
Message-ID: <20181029143116.GA558@kroah.com>
References: <20181029140731.GA18826@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181029140731.GA18826@kvasir.local>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Oct 29, 2018 at 02:07:31PM +0000, Ioannis Valasakis wrote:
> +err_alloc:
> +	kfree(interrupt_data);
> +	kfree(interrupt_data->msix_entries);
> +	kfree(interrupt_data->eventfd_ctxs);

Think about the three lines here, and try to find the bug :)

This is not going to work at all, sorry, please look up what kfree()
does.

thanks,

greg k-h


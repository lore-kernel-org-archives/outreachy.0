X-GM-THRID: 6610740255626625024
X-Received: by 2002:a63:7408:: with SMTP id p8-v6mr14028586pgc.46.1539196333879;
        Wed, 10 Oct 2018 11:32:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:ca54:: with SMTP id n81-v6ls4013255pfg.9.gmail; Wed, 10
 Oct 2018 11:32:13 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62Thq4pn1JPn2B+vFBV5NoN7s5z7JqT+5Z3g4yzBO5g2c8Kyb/luqBVAfwaXUJE1bcC1cMc
X-Received: by 2002:a65:534a:: with SMTP id w10-v6mr14090798pgr.6.1539196333198;
        Wed, 10 Oct 2018 11:32:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539196333; cv=none;
        d=google.com; s=arc-20160816;
        b=Rkbs/vWVh2QG7YsMuffXawWGZIzcUT3m7UU96c93B8tv8eyJvl/CC61zSFULEwmKCs
         jVAYg3hDW18YX2U8Ozk8CXgtBMwJkSbO6dhoSuT+oRGli6CBwj4QtKVj2+N00/HLOvb7
         l/wPp+9+Tq90i4XaopsoEitiO1EgBMb1ncB7K62g5Y9HvUhDNLLZHheTnmkvdoVf6uGO
         BbADyvteSHfDC3tU+/iR94KjYmw627gWinJcj4YXRXrpn3eeoUe00eXBVeksevRzyUnn
         yhJlxY8XkjdM0VMuXKf6iWxlFiB/B3jttUB0ao+KVa4N/eiXq+j15qOkEOMBVfIF2Zv/
         2Rhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Rb0XcLjeuKYqvMOgtMz0J86loZ48Ze6O6mcJ71Hp9eI=;
        b=xK+DSikI5j3eCP78iEq95zqJo5En2BuHP8nZWI1N6I/IhpEcykWdZXAD33J3sON91o
         EgTrUFDYa+sCqQ0OhfYQvK/qZN7gR5k7PEXSXTFgk7YE1Nf3ewQlFwNHDKgdxeVKl55m
         1zPPcs1Wx31goy9Sp0CItRqLLCOUtrPZmtMXBqZIDdxcnHEx/LU6CmhlLOwuDGGF5+GK
         Q7PqhnkOkJjl75TBa0EKjCsR96eP0q7SmMZIfC3dqplGk8Mo5EK/uUrz7e/rb/0M0+cr
         9K1nd3Rui6k05ffYWn+AidOsCe6FTkEHScao0oXZSSVoITB/en+VUah6mcmMQfvoBP6m
         tuDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xmnCu6jL;
       spf=pass (google.com: domain of srs0=ahpx=mw=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AHPx=MW=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AHPx=MW=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f87-v6si1088067pfe.4.2018.10.10.11.32.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 11:32:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ahpx=mw=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xmnCu6jL;
       spf=pass (google.com: domain of srs0=ahpx=mw=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AHPx=MW=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6315F2075B;
	Wed, 10 Oct 2018 18:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1539196332;
	bh=ErYCAvqRYKL+H7cQiVrxgtRtlGkG1+VC2Ro0IVe4eV8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xmnCu6jL02EvNaoMQAlTfI0ZDMqXNhoR3vtg9x/nWSE/O3d0H7cAVgBoL6C/65iKf
	 R6MWCsV1r/QHH7U8ulC0RIYuOBsU2oo1rWVNk/EV8CfKiwN61rfS1N1EAHDQUc01is
	 PlLFa0HcP4H+Q2AHmWWoPatF4RDItKq/H6ytGL/s=
Date: Wed, 10 Oct 2018 20:32:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com
Subject: Re: [PATCH 3/3] staging: wilc1000: Change struct members from bool
 to u8
Message-ID: <20181010183210.GA24096@kroah.com>
References: <cover.1539182155.git.code@wizofe.uk>
 <e409baf10c6cc043344f1a63712d661611953973.1539182155.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e409baf10c6cc043344f1a63712d661611953973.1539182155.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Oct 10, 2018 at 03:48:21PM +0100, Ioannis Valasakis wrote:
> Recent versions of checkpatch have a new warning based on a documented
> preference of Linus to not use bool in structures due to wasted space and
> the size of bool is implementation dependent.  For more information, see
> the email thread at https://lkml.org/lkml/2017/11/21/384.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h   |  4 ++--
>  drivers/staging/wilc1000/host_interface.h     |  8 ++++----
>  drivers/staging/wilc1000/wilc_wfi_netdevice.h | 10 +++++-----
>  3 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index b62acb447383..dbea5144395e 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -30,7 +30,7 @@
>  #define MAKE_WORD32(lsw, msw) ((((u32)(msw) << 16) & 0xFFFF0000) | (lsw))
>  
>  struct rssi_history_buffer {
> -	bool full;
> +	u8 full;

No, this reduces the information about the field.  There's no wasted
space here at all, the end result is the same.  The issue is, as
Himanshu points out, when using bool instead of a bitfield.

So this patch isn't needed, sorry.

greg k-h


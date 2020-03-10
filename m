X-GM-THRID: 6802508842899865600
X-Received: by 2002:a62:16d0:: with SMTP id 199mr20178731pfw.238.1583833595086;
        Tue, 10 Mar 2020 02:46:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:df41:: with SMTP id h1ls4747279pgj.8.gmail; Tue, 10 Mar
 2020 02:46:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvua7Qw9pKPl/tp4KKtWeb3J7oAxwhA1TFOpzTrlKYeycpkgiHks5wbpeUf6NnqQCLlt92+
X-Received: by 2002:aa7:864e:: with SMTP id a14mr20706406pfo.240.1583833593215;
        Tue, 10 Mar 2020 02:46:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583833593; cv=none;
        d=google.com; s=arc-20160816;
        b=NGTSJrc9yJ7biBVqq1J0OI2xiEM+pA3sT9MTWux1VNMXeKn66+9CzXywCUJJWKzvWV
         zBhxQm31mJetWuZ7T7+2BsBiLaN7/WznZdey0inhfBAT/fe8L8U5TV2n0LIAAw2RLcCg
         T5v9m/IHcfdiC9v3Ie9P3ch5wIIrGfFRtK8qSyFyvlc7D2M7KFr+CwBshQOavHI0kzz9
         5tnHEWbxkUbt5IUkZ0BOCQqYdMu1mLbIWJmmomrQr4gljrsID+eW3yqrvAQaZoUarquF
         BfNpiWol76T+sM7LwXN8CLyrYLqt6JAGCHjFcPmBJKxC1oc5q4So1HWpnUJ4RFA439nL
         PmhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UEAIvzQ4M0a8GttJvRyB655B4+Mf5NOvAocD4fPhxC8=;
        b=SVUKZ2a7r5w0fFMQ0ChNN+7ei5luo+17AulHYq16T+mPXxcqx6kTp83hroEZZWOrgr
         aNTOLq2NwZNuUdFoa+qize0HKwIbkMThPhAMpuIDxsl4NTNrWwjH8BQZLrxw8yVFic1X
         i16e1V3AUrrxCOemCB+wyfvQqLrNmniM9TpCRQgCZLbE+Kmk+V91vUhGDEU7cH4uuWl0
         2MrqSPkTgGINmPntmSGBGdGRREYHZL7S8RlpxVzcgx5led7mOU/aPO0Ufp/j3Efht68l
         W3zreA0qHrGfRXgD1tFi5ZD7x4Gtikx4MKsNIVc4NLkYhhQuzhWzPAnop+2HYeEYsX6X
         Y7Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qXGdJim4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x128si784527pgx.2.2020.03.10.02.46.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 02:46:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qXGdJim4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7CD242467D;
	Tue, 10 Mar 2020 09:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583833592;
	bh=shQN70ftxVLtGhfvHE52kdCV8kiju2jW8eEEpXpAmL0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qXGdJim4pQ6ACE4ZxEZ9Bwx6Ygs3ACfAQ+NwSHMaXccyqJpXAGNrlzflk5mjlvPhP
	 qktVUEGN9mGp8sOKJGIuzNcVpTam4HKLgSsAebI5BJF2abYtd4xKe1qnaoWdOan/ij
	 myq9+9kFFAiVG7JkFRbT1KckKX+z0vtg3h3QxxjM=
Date: Tue, 10 Mar 2020 10:46:30 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, adham.abozaeid@microchip.com,
	ajay.kathat@microchip.com, daniel.baluta@gmail.com
Subject: Re: [PATCH] wilc1000 : rearrange line exceeding 80 characters
Message-ID: <20200310094630.GA2514761@kroah.com>
References: <20200310092819.GA20959@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310092819.GA20959@deeUbuntu>

On Tue, Mar 10, 2020 at 02:58:24PM +0530, Deepak R Varma wrote:
> A long if condition exceeding 80 characters that makes evaluation
> appear confusing. Rearranging the condition makes it easier to understand.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/wilc1000/netdev.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

You forgot "staging:" in your subject line.

> 
> diff --git a/drivers/staging/wilc1000/netdev.c b/drivers/staging/wilc1000/netdev.c
> index 045f5cdfdca0..d7a632c92a76 100644
> --- a/drivers/staging/wilc1000/netdev.c
> +++ b/drivers/staging/wilc1000/netdev.c
> @@ -802,8 +802,10 @@ void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size)
>  		u16 type = le16_to_cpup((__le16 *)buff);
>  
>  		if (vif->priv.p2p_listen_state &&
> -		    ((type == vif->frame_reg[0].type && vif->frame_reg[0].reg) ||
> -		     (type == vif->frame_reg[1].type && vif->frame_reg[1].reg)))
> +		    ((type == vif->frame_reg[0].type &&
> +			vif->frame_reg[0].reg) ||
> +		     (type == vif->frame_reg[1].type &&
> +			vif->frame_reg[1].reg)))

The original code is really easier to follow than your change, so I
would just leave it as-is please.

thanks,

greg k-h


X-GM-THRID: 6661007874148270080
X-Received: by 2002:a24:4105:: with SMTP id x5mr1361000ita.33.1550907878597;
        Fri, 22 Feb 2019 23:44:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6c09:: with SMTP id w9ls2419234itb.2.gmail; Fri, 22 Feb
 2019 23:44:37 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaBx9A5fIPCulsBkoPStbogbCmpLPzX4gjF+CT0RvE/9N0dW3MERyD1TLLEiGDCnedFX1Dv
X-Received: by 2002:a24:4746:: with SMTP id t67mr1531440itb.1.1550907877924;
        Fri, 22 Feb 2019 23:44:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550907877; cv=none;
        d=google.com; s=arc-20160816;
        b=0im4iDuCowHvy9jKjN7b0FTVGaHqy6ZgdZI5fpr1oMt2bI4j2zYqMpafNrO+6ywgl8
         6O0zlfnQK04wTOQ0G2U4EJmzk5O4dfMbEbzgrjRsbMdydXP0GuJDc1jZ2tiHLLCAvC9Q
         /8KMPSuoVwaBD1daf1ZMfwJow5uU1t5+nkQmDnrroFG/KsK+Tzvk++/EqpRtZJzgdmzL
         MQ0PSJI84d+BvaaDYkZDKnd3WBPuy2wbxMNX76L3tfrmGCFubJNLo1KqNm6Xc4Am1oIQ
         5RPKT+OzLjnwCeN2s4C8we02e1StLxwbS3PLQv/5gaAum5g64Y0BpGDn3YBOt6Xpl9Hx
         HXVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yqICnHTMi12iZB9kMAnE1p8ydMTGxIQNZ1kJyrNSkUE=;
        b=voyeQd7jGuHzeXoRj1hpD7MdnIG3eMiQPxZD/UE8YoS9g2VmzjRFPSBwYrba14v9r5
         ULmgM9QFiG5lwedMOxkd9nVsC6YMOO4CWUq2NptctNFy4csVP/MmIOy7hh/THnEle9rl
         G2w3qxSJ7H1aNe+6P4CRAsAUeujBYOP6KJ3vyruxjbWR9ubU70NpLDqcsh4Yq1SN9IwY
         LizqVkzy+L96Ie+aJqcTdpM7wVuAXi4RuqVf6FCSvon/x8g6h2UpiJnXtJQt1u1qvnJI
         yhTt/o9jlaOpFXDzbFwApPEEYmbcq+S5Oi3zBVg9Y66a+iWdlskUaaeqAXEV4TGapnx/
         44Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="J8/cB45C";
       spf=pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b80si154534itc.2.2019.02.22.23.44.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:44:37 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="J8/cB45C";
       spf=pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8FF0C206A3;
	Sat, 23 Feb 2019 07:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550907877;
	bh=YZnQ9YnwGh+MYJYSS/FSkP5iwyw5PB7ji6U7lCP5uio=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J8/cB45CLB/4L5U/dqLJ2LnHmJkPwzlWtZXBBlwd5XMoKC/DP8Qbzl03ddPmEVzzC
	 ZD3sAKaKxQL4qek64yL7n2hU64yTKVkANJ9I0PdLb7+ovjFRN7f7SpvUdwB01QA5J+
	 kFU8X/MNEpugii1WLTAra3UN2ZzOZxpGXGpoV/lU=
Date: Sat, 23 Feb 2019 08:44:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Fix missing blank
 line
Message-ID: <20190223074434.GB921@kroah.com>
References: <20190223015223.3282-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190223015223.3282-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Feb 22, 2019 at 07:52:23PM -0600, Madhumitha Prabakaran wrote:
> This patch fix a warning
> WARNING: Missing a blank line after declarations.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_accel.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
> index 242fc29e5738..67f1d9cd566e 100644
> --- a/drivers/staging/sm750fb/sm750_accel.c
> +++ b/drivers/staging/sm750fb/sm750_accel.c
> @@ -302,7 +302,7 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
>  		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
>  		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
>  		 u32 rop2)     /* ROP value */
> -		 
> +

Shouldn't you just delete this line entirely?



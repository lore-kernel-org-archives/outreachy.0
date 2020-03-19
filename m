X-GM-THRID: 6805857060632133632
X-Received: by 2002:a37:b084:: with SMTP id z126mr3174455qke.497.1584627085908;
        Thu, 19 Mar 2020 07:11:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:7358:: with SMTP id q24ls1118275qtp.4.gmail; Thu, 19 Mar
 2020 07:11:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtmzVCt3oI3qUiPKePZ87XoAFClhE7i0a1H/n0ZrgiEETsTUlnNju4hjZJbqp4+BZFdjCot
X-Received: by 2002:ac8:6957:: with SMTP id n23mr3136177qtr.79.1584627084493;
        Thu, 19 Mar 2020 07:11:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584627084; cv=none;
        d=google.com; s=arc-20160816;
        b=erILTNsSQ+IYZW/zAZXkCexQ10vCPnqW8nuar28mmUriapwq20WqYz1WLPaeIsdi5Y
         cjLnKB3XWHRtJfXmmn21LRLt9X3O2QIFjBQO05PjWKeZBoRH3h/DCykMrTG+UcMLAlhB
         +6ea+/U6aWmO8DzEGUlDpLPxs8MVA/h3wdsbRrFTxRuotCieRPtlPF5JjjButZUPdZqH
         p5pdiVqzgNL3MENBW1PCujm3vSCJzNJxI7osrl6uLok62IKXxx4OLeySoy7ni0zMz46F
         qvTQI4/niFajG2w+gWwc7UulJb7KHUzawJsJ/dnOKB6VmSZhk50Vd97D1GTQP5P6qGtx
         TU8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eHiw0V10Ghu/X/k7n0xHSTb8lzB5CvRnef3/m112Djg=;
        b=STAckI+AImgdPcMn9vdpBSbCaBmid+7+21DEVVWFC3+f0cZazsb/KGKgIfwvs4h8gG
         NvPd5wjxqEeV7FWSRxNequfw+RHUDPxcUKhO7p7yHGPr+NK9lF5crB7M+BMMrtIslt4z
         2u7TMkdzpyOQ4NllJrjhoV0Yb1uozfVdEYnRzpPZf58LbHWfb9WNDb166lMPSp8aON3A
         wzcF4Q9xk4DK++wWxKz+VfrN38p5WvQMbJlR3kf7HmBcHCf4XL2OKQeg0aldjpH2ZhmB
         Vi9mJzA4BiD4TSZWg20+ro4YD19u4rmT2/Rbzb2tDqPxPSVVh/eA3TbYFVcBmy67C/lS
         Y5SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zIgBgP+Y;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j7si122869qkm.3.2020.03.19.07.11.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 07:11:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zIgBgP+Y;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0772F214DB;
	Thu, 19 Mar 2020 14:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584627083;
	bh=4btzR0tS/MvqgP6qgV9FSm+tCaiScJ87myCCXBZBcoQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zIgBgP+Yxvw5t7ngikmyrV4MSYR72DbS4BYFhd+czejonaP3ib9rzCNLngZnB8V3k
	 kZhW2W6Le54stoPo/qtubAgM4GZXSvxNU6ZpfO4HMB06+41tF/jw5XAQ0wTadQruZM
	 QS3kDSCmiQpJSxh/900uBM7AHj83kz7j5dZch6/4=
Date: Thu, 19 Mar 2020 15:11:21 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] staging: vc04_services: interface: vchi: Correct long
 lines and style of comments
Message-ID: <20200319141121.GB24885@kroah.com>
References: <20200319100059.GA3310@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319100059.GA3310@tulip.local>

On Thu, Mar 19, 2020 at 03:31:10PM +0530, R Veera Kumar wrote:
> Correct long lines of comments to respect
> 80 character line limit.
> Change the comments to C89 style.
> Found using checkpatch.pl.
> 
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
> Changes in v2:
>  - Change the comments to C89 style
> ---
>  .../interface/vchi/vchi_common.h              | 90 +++++++++++--------
>  1 file changed, 52 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> index 141af16ce031..29fbe4505223 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> @@ -4,70 +4,80 @@
>  #ifndef VCHI_COMMON_H_
>  #define VCHI_COMMON_H_
>  
> -//flags used when sending messages (must be bitmapped)
> +/* flags used when sending messages (must be bitmapped) */

There is nothing wrong with the // comment used here, or in this file,
why are you changing them?

>  enum vchi_flags {
>  	VCHI_FLAGS_NONE                      = 0x0,
> -	VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE   = 0x1,   // waits for message to be received, or sent (NB. not the same as being seen on other side)
> -	VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE = 0x2,   // run a callback when message sent
> -	VCHI_FLAGS_BLOCK_UNTIL_QUEUED        = 0x4,   // return once the transfer is in a queue ready to go
> +	VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE   = 0x1, /* waits for message to be
> + received, or sent (NB. not the same as being seen on other side) */

Does that look readable?

Please be more careful.

greg k-h


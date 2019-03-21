X-GM-THRID: 6670815133562830848
X-Received: by 2002:aca:e350:: with SMTP id a77mr684049oih.82.1553195563067;
        Thu, 21 Mar 2019 12:12:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3189:: with SMTP id x131ls340435oix.2.gmail; Thu, 21 Mar
 2019 12:12:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw8MjxTqYUTe22tVfEB/XQZTXTl+BSjnFLWL/tw/wX60FIHL7kfDh1S7BwQH+CzCCbUODf+
X-Received: by 2002:a05:6808:101:: with SMTP id b1mr687546oie.18.1553195562213;
        Thu, 21 Mar 2019 12:12:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553195562; cv=none;
        d=google.com; s=arc-20160816;
        b=dZu3oQ0jMJQ3HB6ZoLcO+oQzvMaomzi+8ARQmwZdEPuO/1x0oV84ouUjogmEvprka7
         yaMXQHk5jo/v02fizllzOLPOY2Z6Gj233R5B2VXu43HPd9BpIDl3moso1++P85HqzstM
         eVdehTj1PA0y+ZUjEVIw63vfAdWR86apIJUnquSt/lJepfOatucSMweAsb/dBGgt85lT
         y1pnVRSB0Q7aGbhBoddcQIeBdnEzEOLF2+M8e2+rfqx8P/kq049lgaGlLh5myKXENHnt
         I38iOmn9hG1m+kmw4RbyCmOXeSUuuZyskoh+mUk4x7MchTBeCinMRLBZQbQA/mpPx4KI
         o4bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EDFodmI4PjoiN2Q+/KosayhTJjGfLaseZlJnMrHi/bs=;
        b=jGgRt8bEtaFcEg0i3W3QHNHlGjZGn8fXqkcAL3JH8m5BLmgYvIm7o4xbUdYiPKmL3i
         IpM9SWr9Ew0ZCrrYzMcj27f6dLwePhvq51z46n39d5soI7ShdbwYmmVC1VFE829AWU1h
         M9SLXSbuJ0fsMSzYz69A8jLMaFiO9qnMudQBYVVWqlcs6f5DeyyEGxfwz/xtqmh2QMJl
         K8oSAKKrIS5DkGc+LVp6X/d0hrrq/2DXPWMo02fCOTMvQ2uChORtWHrQy1OTJ99HgSTM
         gRZad5CgE1tXrkawPlNMLGrzkCJ1k2qaa3wIL8YWCJHnkfz60qwKZDi+TpSEX24o3/Ia
         N1TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bgKrmRmB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z22si144088otp.5.2019.03.21.12.12.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:12:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bgKrmRmB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EC19620643;
	Thu, 21 Mar 2019 19:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553195561;
	bh=KkHTBm3Nz7+2rg4LmGEjPENReZyzGJy4ftdP6bqH0S8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bgKrmRmB/xAM09dPyX5VM6/0DcSgQqBidqaYkZWfDtsoiIWEQEI8HbMJiBKnF4YeL
	 8b8YQy16ovLD64MHvQfOQOdA0pr52D3nVi7ld/JngCsXS41x+mEYu23PDAcdj3ClLY
	 EmgNk5vP70d4HVdET4qcSYfmN2rfQ+KoTgAQE1rA=
Date: Thu, 21 Mar 2019 20:12:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 0/5] staging: rtl8723bs: include: remove typedef of
Message-ID: <20190321191239.GA6092@kroah.com>
References: <20190321181405.6219-1-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190321181405.6219-1-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 11:44:00PM +0530, Himadri Pandya wrote:
> This patchset removes typedef from various structures defined in
> /staging/rtl8723bs/include/rtw_pwrctl.h as
> the linux kernel coding style guidelines discourage the use of typedef
> for struct types.
> 
> V2:
> - Remove extra whitespaces

Nice work, all now applied.


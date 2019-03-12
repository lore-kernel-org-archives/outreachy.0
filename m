X-GM-THRID: 6666450306579038208
X-Received: by 2002:aa7:8b09:: with SMTP id f9mr2567412pfd.86.1552419489861;
        Tue, 12 Mar 2019 12:38:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:430a:: with SMTP id j10ls6535679pgq.0.gmail; Tue, 12 Mar
 2019 12:38:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzWmjtfIYgp+QoyOM/A6GIVpPQruWMB7IhlYpdwq8jjVwdbZ02BRzLp/CanuXBi9/3CBytJ
X-Received: by 2002:a63:ea49:: with SMTP id l9mr15222614pgk.10.1552419489172;
        Tue, 12 Mar 2019 12:38:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552419489; cv=none;
        d=google.com; s=arc-20160816;
        b=MCUx9qTtqvq4iyQG5MRGI/Z1Ad+VRtuuoCpSTlbZvGGP3lSUDbEOvD0/Z2ol1NMG8h
         6lnCYVeyma722VAWhqp0sGosMW4ZEsN+DFNzbvT8XMTv7DMPag58flCquKuVpcYKnrNV
         R3azq3k5vVn7KbJhYlr+DEl8nnH1bBqfWjvkq2OiYhwSe3lMOrrkoeBnk/pPJdcOVbWR
         oyVC3Ep9t545X04BdY2SUJidUuzNrC6+pas5FdIL1V2+/S7h64oxGio9Eib2gi+U2XM7
         suF/qnzlyM4l5DNFXmgw3+Lpvnw0ARDRyp3gPnaVz+84fQz+mD8wqtPqa90YyvcprV2F
         AcIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3vcA7QStVnW+owGu0dwMFDr+5S+zV6fsx7/3vcJSCj8=;
        b=wqNlOkk48ZjzRi1WfI7qADMSntUMUe+dnxXmfTD0dxAn43hCgM/dly3f5cOMmKvZ8p
         ewyXKBbyYrx/ZVvrYzXoI7U8BJxIIoy2OHBopcVGB68sWUNaGQr58WSAQHdZ6VNoKIY9
         l2HP72y8sI4sZGXrLvfxZ0VONpNZuqQddppCpsujSt2vdLEoeKIdhcvAPKDNNTrKl6yj
         SH5m6qmMQVasgGxZhhefqKrDSdHZa1dgTK83QxZEmKhB8Tlh1hf4zz+rjRcaNpL8xDH7
         oVTf7V7vX4XmBSOIA1tj1JSWXeXbDTLbGQNKcBrufVmbGxalVcVK037Oup3YOeSZfBrc
         VqzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1WSpE5bN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q140si622722pgq.2.2019.03.12.12.38.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 12:38:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1WSpE5bN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D3A3C214AF;
	Tue, 12 Mar 2019 19:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552419488;
	bh=8+1MDJ/lI9Zr0Ns8vxNxIKDboJpr9Kf323yiv2AL4kE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1WSpE5bNEcO6kXyau9BQ7Byfn0TDt4sc51ZbES9UGEzPv8k7W3+T2YQa8ibTVHp1m
	 x7B0Kz9hlY3x28+p5OME0kO52pAD9XMCKsxfs5Z5YFbXHyOTwD1Yn5iZolsoY+cIsu
	 LvSTpPCLbHtaKz4phZODvfeGOHRM+mw832w8lNSc=
Date: Tue, 12 Mar 2019 12:38:08 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v4] staging: rtl8712: Comparison to NULL.
Message-ID: <20190312193808.GA15406@kroah.com>
References: <1552417864-28724-1-git-send-email-digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1552417864-28724-1-git-send-email-digholebhagyashri@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 13, 2019 at 12:41:04AM +0530, Bhagyashri Dighole wrote:
> Replace NULL comparison with '!' operator which is indicated
> by checkpatch.pl.
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---

This patch does not apply to my latest staging-testing branch as part of
these changes have already been done there :(

Please rebase and resend, after testing to verify you didn't break
anything :)

thanks,

greg k-h


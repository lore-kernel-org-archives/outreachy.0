X-GM-THRID: 6673442126229929984
X-Received: by 2002:a25:c681:: with SMTP id k123mr3509977ybf.44.1553974792129;
        Sat, 30 Mar 2019 12:39:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:38cb:: with SMTP id f194ls1722136yba.6.gmail; Sat, 30
 Mar 2019 12:39:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx8jfPpHcX+fUe5HAxvSY3W1mijtAIHdcM0G7BoxcYy1zlE+5B0NZHmy/PQsdciFrhlV+Dt
X-Received: by 2002:a25:50c8:: with SMTP id e191mr4074660ybb.20.1553974791519;
        Sat, 30 Mar 2019 12:39:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974791; cv=none;
        d=google.com; s=arc-20160816;
        b=vLd9ehGK1FXSCjCgZGU25K4MJkvGzp/0EFpeozr8vo9ihkaK/P0AvLk4IZfhNvjPkM
         t655F2oe92nE+BFosrDg+iyb9PEvx5bbEXaKYLwjDbfOZqByqEM/DKKMNWzjCH2XfQuT
         zliaZ1nDAGjN/Gx0yaByMg2btH/8EPp7ri1+z0VLWHna6nbVhv0fAwyMxwvrDPdqIhiI
         QMZnFuQc45jMQahLGsghq7wdenJnoPpoQ0ndyhKCFkK2Q3tL1a2ccNL5NLbPVfMw2fBp
         Jpdnt8rXb64d6P2RGtoAljDBksFAzMdsdKfPEvIRp9cuESUZOBdB6kDEvj6g9ACBPkWK
         AenQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=T6qSkgVIZ7yvfZBAHMV0HC6J/9dgV/rHw8FuoEZ3k0M=;
        b=XIv1PWsajFnBA9v4z63uPiki7c20q/7DSFFULRmMQc0Jd3rBQgu/YyXhhN9soplIoE
         JTf4hfMwwBOfEsKzO1roZAlHgo8GV7L906HcnWYRBqmMRNzTt9aPOM32KnN3vlh2DAsq
         bm4WxastmXV6wef4ypxAqh/Jy6iGrkCId7qJRbUeh8U0jA7012JE2jCOUGX/WUkgVQMe
         qtjjrPaD+5ncsL3BAQf4wfNJolr1aisfH3Hu1OV8F0HyEJCm3dAjVknBqGsDEULkVHXl
         MMoVT3fvJbZ+7i9Y15PY5GB0xoQr4CmmunwuoLsVF1wJFBWze0riYMAiP2cL/TvsiQ2G
         NdlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=mstDOyxs;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=5z3yiWK3;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com. [66.111.4.28])
        by gmr-mx.google.com with ESMTPS id r83si40256ywg.5.2019.03.30.12.39.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:39:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) client-ip=66.111.4.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=mstDOyxs;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=5z3yiWK3;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id EC45920DDF;
	Sat, 30 Mar 2019 15:39:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Sat, 30 Mar 2019 15:39:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=T6qSkgVIZ7yvfZBAHMV0HC6J/9d
	gV/rHw8FuoEZ3k0M=; b=mstDOyxsmCnfjHhUKc6Swk+pEl5qkluq4ay2ROsqFh4
	1bjUusKfYE47u/Wb4FxPth3TzHbIEZrdhrXAkueFnl2UiOKtFeyd9V8SR0nSHelk
	1clzN5mtC0GMEK98r2Q/rP2aPQLG0LTu6/Xr4p2L4WQqRlJd3qbW99GsKD8xRqeZ
	3XguN7vAJjlyFVAJUeFcY/g7wE6nu7M6j8V2uT2HsFBcBhUITxF38HDlyGpK8NPh
	08y0pFii2ZvblhMII3C3TIrx0cgtxKVEpN6zJa5qv8vd/BHA5sUh0xm4ZGcNjCuk
	6g+nnjMcnKrH54N7iXqC71vL5Vy8wxBrxKZRbHgsepQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=T6qSkg
	VIZ7yvfZBAHMV0HC6J/9dgV/rHw8FuoEZ3k0M=; b=5z3yiWK3vt9X4MDchriB+7
	KN4VRyLgDw+9g0octgkYyBSk0HDP3ZxZAyDDJcgyywg/se3Ii9FkDabNz+L/Eb9+
	BOOVNv2dYiAVtzdhcLzLUY7J1mL3YWmhZBsnhvbr0DY7sq5m9plcffzPHr01MeZ1
	UpOqBXoUhVyxXCGtUlNLVCnptmcwqr8MJ6uZf5DXUGkmsx5HJJAz9IhCeTHz+N3t
	ln5GVpl9Rz7MiQkObxk0E5gX5B0010eWF3F6mW3o4RdKFzyD4vsFhnpYTttnF5Qx
	i8ff/OqRKw/elbT0/VMNJcn3rpHS9w3fp7vfvEWKetS7I8QrkVIi8eY34vWsg66w
	==
X-ME-Sender: <xms:BsafXAgZrEedwTG2WijqpHBs5HLwhXvAgJHhTJIW4BltqfLGx0ORBw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrkeelgdduvdekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeeivddrudduledrudeiie
    drleenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
    vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:BsafXJK4K5Sec9qKyJRF1CTYcP8T3Dp8761gu7OD5K9HnginA8MNiw>
    <xmx:BsafXF4g3xukK7hTH4QbOjDfnYo1wxZXLMxcqUsGvmyeOGeESex4xA>
    <xmx:BsafXFh7skM7O27rEEpY_ELKXQUREtESJefy-qYxbi3P5PVJiK9VDA>
    <xmx:BsafXEHnZ5A70OH9GPD5kDzt9hX4uJQdoefDRX8Kq-ODTC6hsfNidw>
Received: from localhost (unknown [62.119.166.9])
	by mail.messagingengine.com (Postfix) with ESMTPA id 2786D1030F;
	Sat, 30 Mar 2019 15:39:49 -0400 (EDT)
Date: Sat, 30 Mar 2019 20:39:21 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 0/9] staging: rtl8723bs: Remove
 unnecessary parentheses
Message-ID: <20190330193921.GA19505@kroah.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 30, 2019 at 10:41:47PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle
> This patchset does following tasks:
> 	-Remove unnecessary parentheses while returning a value by evaluating an expression.
> 	-Fix indentation issues by removing spaces and adding tabs.

None of the patches in this patchset applied at all to my
staging-testing branch.

Please rebase your development branch on my latest branch and then
resend the updated patches.

thanks,

greg k-h


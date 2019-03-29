X-GM-THRID: 6673371713277788160
X-Received: by 2002:a62:9a12:: with SMTP id o18mr631343pfe.114.1553876333292;
        Fri, 29 Mar 2019 09:18:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:65c9:: with SMTP id y9ls1165828pgv.4.gmail; Fri, 29 Mar
 2019 09:18:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyQO9suqXSHZKgzY1eLwmvHipt6waX9WeMkqA764c0tOHav25RwN/L3WfVfhh3VDHIeATKq
X-Received: by 2002:a63:201d:: with SMTP id g29mr485787pgg.59.1553876332471;
        Fri, 29 Mar 2019 09:18:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553876332; cv=none;
        d=google.com; s=arc-20160816;
        b=TWfkT2f2FlprzwRSjf0bO4TXmLqgQb/zW7iOIi/49PceciTfaG3H3zkkeU+8vxcaKD
         ZhiFYAsOjtbxTEeBH7EUJQ0ehgA+g6OzqpJZeXBpdRjYHCvtdIuFa0OiD1d+s/Qhaebl
         FcXf8GQ61cydFHTbgoMPp9O60J6gRVt0NXc9OgkxbjFvwtoHXdCE3iLylxnXyjOw7ouq
         BrTf+jYgxhngmmWYYwsy7jVaWknlfpi8YdzKYHreaA6J/JoPGB/zsXxU8Kh+pKInQh0F
         qRmVNYSfheddd28qGCqe6eg9ONkSKBw06eDgw+H04TGkyHIDKZKoLFdALBX+4EtXqg6I
         pLXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=ezHdJHAhrXJv+hWx1xmUVjwEdZZ2JFHjtpNBh6/jHpw=;
        b=xDQVoocg85LLT1DSC/uShjP0EFq1fofsVhVj9IZHoxBTyCuqisbZHM7dYm+WKKuTnz
         99caWmKOwnA06KetQnypiuL9n7Gy7zLCENZqBgSDBXHlhe1bvjVbQ48OTzCjLKpFD2+Y
         RJxurnMvnQjdxj2xzhMtSGtotwxvM31QIN9RrblDLVN+P7P2jTKIgG4anSCvzA8V0rOa
         Fe6RPQE+8bxEmKeSnENCQPa7rio8+wZL33MWx3CJ5Tf+LPODiLOOUbD670gxnQSTHmO5
         F1b/Lghez21u9cBFpCQyyvLk9UTUvTqQ+Pb5/Y4HP3h1jjdX0PdMa/loiJA7pUT2JYwJ
         434Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=qa4B6ADw;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="DeMK/9lh";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id h2si246297plk.2.2019.03.29.09.18.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:18:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=qa4B6ADw;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="DeMK/9lh";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id DF57821CE7;
	Fri, 29 Mar 2019 12:18:50 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 29 Mar 2019 12:18:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=ezHdJHAhrXJv+hWx1xmUVjwEdZZ
	2JFHjtpNBh6/jHpw=; b=qa4B6ADwfsAtiwwhZ0M+Phjscpa4wbRzukyRMVNKSVi
	xP3B88p0nDA3v5Tew7dZsxE0JRSevhI2XEBwlQ3Vdfukac2fnSMEpuajUWha+zlE
	lG2OzS/ro06tseWbKygIACzQ8lz1c3VGQn9x9jh4lm/juQ9D905OrqWBJYykZ3EI
	dj4FjTbj2tWDmLAdDEj15nCrhaoIRCSrEW8+cmMADjqu0LV3H4fYeEzAaGjswiR5
	3b3L8y6J0SrCFAFUCRCIq06joE4LY2Y0E4hdLUHzg1F1fp+aA6vn7tBf+mP2fuHr
	OFN1OoHsL3BdogvJJ7PTuBtzrxwtGYyMblbYtpwIHCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ezHdJH
	AhrXJv+hWx1xmUVjwEdZZ2JFHjtpNBh6/jHpw=; b=DeMK/9lhxYz44CEvCcdq6+
	bmbro5FwJaFDnLy/7cky9fD99HDMlS3u9ki+9c6Jj/JvX6SsI9/3DaCh8W8wQxdq
	/jBv30lz/OG1Ehn8en3KoR9VvT/3fpQiRdvDG/2+oSjP6Dj1jkVrkwZaoeuHmvdm
	0ozRCblA86mjRxK3dUIblfZTzUe9qqNEw0WZcb6ZEW2bzi5EaFdYiH+XCWfEvO5A
	jCWaPdI/03wCgSZzdiUxldbMAEURDg0/XCiGI8lNyERSrBJEJYXG3Rk6HuPsacuB
	k32eQYNIqIs0R54PV+9FUoaDZLx4ibXBTx0h1RBov4pt2U7YYtoeYYzTThxoevjQ
	==
X-ME-Sender: <xms:akWeXLOOuQ7wcu9XzDB915WgmEtKC1UlXFobWMihq4vvNWR_PFO-hw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrkeejgdeitdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucffohhmrghinhepphhhhidrtgdqqd
    dqrgenucfkphepkeefrdekiedrkeelrddutdejnecurfgrrhgrmhepmhgrihhlfhhrohhm
    pehgrhgvgheskhhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:akWeXKOJX2MKNZbfflHBkitdTUl-6kmcTJYxO2j4c49a7FHB2tURIw>
    <xmx:akWeXFT5RCOlxM5efFD0KYcY0nOc-GWiCEoiAf2D7SfPnWTQmtGN3g>
    <xmx:akWeXECqzryVZTkE09s8j7x5Hi8iv3cLYcJmrAVd38dqjukapg7nFw>
    <xmx:akWeXOavENQ_0wZ11TXB1khYKouuZ1IP3aKIg_NWSBsygfA8x3dqJQ>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 331D7E408B;
	Fri, 29 Mar 2019 12:18:50 -0400 (EDT)
Date: Fri, 29 Mar 2019 17:18:48 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: Compress two lines into
 one line
Message-ID: <20190329161848.GA26815@kroah.com>
References: <1553873733-8667-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553873733-8667-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 09:05:33PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle.
> 
> This patch compress two lines into one line and add a space to merge the return statement.
> This patch does this using following semantic patch:
> 
> @@
> local idexpression ret;
> expression e;
> @@
> 
> -ret = e;
> +return e;
> -return ret;
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
> Changes in v2:
> 	-Semantic patch to merge the return statement.
> diff -u -p a/rtlwifi/rtl8822be/phy.c b/rtlwifi/rtl8822be/phy.c
> --- a/rtlwifi/rtl8822be/phy.c
> +++ b/rtlwifi/rtl8822be/phy.c

This patch does not apply at all, for the obvious reason :(



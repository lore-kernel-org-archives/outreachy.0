X-GM-THRID: 6673827435643928576
X-Received: by 2002:a24:2584:: with SMTP id g126mr1971798itg.23.1553876374619;
        Fri, 29 Mar 2019 09:19:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:33ca:: with SMTP id k193ls830781itk.3.canary-gmail; Fri,
 29 Mar 2019 09:19:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwDfCf3fEOg3rnptDuiMsD5eNLUW3yi8JmU/Rb/Hf70Rg/cWCP1YYrrSUFrEJvauVqRn3a9
X-Received: by 2002:a24:c1:: with SMTP id 184mr1875903ita.21.1553876373116;
        Fri, 29 Mar 2019 09:19:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553876373; cv=none;
        d=google.com; s=arc-20160816;
        b=KKUMFdu9ROU71Bcch04SR0mhdzeroN4w39+UkRg1TtpZKmFpblIey6njLfpe5Szhqc
         qjW8gD1cYxxzpV9yx5KmsNFpKw9NVORv+v3E1M/5MNAgrkfW9uHy42WQKujWYNxLZDJ9
         yGdYEScu6V+NZvUqCy1FWDE+D2Fwfr/1Mv+VgMDTkyJWVSIMF0B5fVV2ZygYwCuhJUoy
         t/ZhFSLCNC/v+hXNy/w/4hKkrdbYzu7HkTppWufwyA9iF/ZyoPiUvbyVoqzkoSQ4VsXt
         FrzFBNAjP91kSFRMjeHmQ8B9yuOoc9bCIHEMmeD357nqNZz2aUYg6bqXcCe3VyBtiuA9
         iSNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=44znIOzNpxfwFHqh5Yrg0ryccleXz/1al+rkrilkB7o=;
        b=rXCcXhopKuzjwkleTXfHzhS/y8LwEag7msGhXDQONj1P6fOM0S/rosMQ0mW/nll4/E
         bVF9UNRzyBqr00mHgBIf+FfiWKOQDYuhG6Gg0CGv6MsXZN/78rbQmWBhO6ED+iaEOAYv
         oVmOReWp88bUtEZh7UkdKOcvcR+Hgca/19wZCaCpqc+LbyHu/ERy0gN3UTwgU1MgBmyW
         XS/sYe+7MQS9bOyjIy9yWWRc8XbIUDh9fo6iH8sAfrM3+mvYeO8/Htq+UcKim91CiV4+
         2MYM1oiOp/tY7bRYjwZvjYCHMUzJCBbSfjDPyO/kB009GCOo7d9Mkj4dhBmzX8/8QB3f
         NvJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=RamAzcje;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=1S3eF9eQ;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id r17si735357itb.4.2019.03.29.09.19.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:19:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=RamAzcje;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=1S3eF9eQ;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 4A2DC21B62;
	Fri, 29 Mar 2019 12:19:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 29 Mar 2019 12:19:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=44znIOzNpxfwFHqh5Yrg0ryccle
	Xz/1al+rkrilkB7o=; b=RamAzcjeLY+R/5e1ZdU5fC7+fjrxeG858g5rkqOnSXY
	UbuzalnmF5qiEHSmRzUGHf96EQ2hdWVEpFZ2cLsKEtpx2tkoRunw+F/kiKy+sDKB
	yWUqZDRxKcrvxqHGj/or3jvs/OsgIO9nLr6fL1UKrL8nHQCoO9LpqN32lP4N0WNn
	vOmhsrHd4ZcPQmFAzkygx3cOAJ/NQMXTMqCYqkd9frCC2apD7doCEzWm0jba6KXQ
	vSnAKPPv3vu7c+O7iTefe1Xp0k/h8wCzZ7oGs5byvxu2Hylw7gK3iPHCn6wJf53B
	RBNOGUz+hIA6gxhi1TwK+0lf5TyqqCr3fp8Y+cSo/+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=44znIO
	zNpxfwFHqh5Yrg0ryccleXz/1al+rkrilkB7o=; b=1S3eF9eQtKFj0Ky76z2+Dn
	vQXEhz5DfbxT9b+Y7G3kILWFeuxAGv6NUOiHqP8jbP/tis+THhiswbfwwnEZY+03
	q58SLttXLefJDp9Ez1T1DjyItvMDiZzZ0M2+1/I2JMvkIPbXCMTz+/Wkc8VBtRt8
	Rr8/skw8SDxsLi+KZ9RWZ03CwCOOt0G1oKyLfrn+c9SNGP0JtqczWYuztiqrnu+7
	g2Qp/YCI3+QjKGTkjXC5Lq6WSNnZ7jEtVIPwQni6CfuLpF0lMOcA6MlW/4nq9TJ0
	UO0LXWYCMy7Kr2rEHCMfxUOiw/ZW3G/+EV6VOkYeZEhBBLi0l73AbrJCnV2YvaRQ
	==
X-ME-Sender: <xms:lEWeXGC7m7TXAgp5ROEjx2I5p4zbzMllzWwGSdRWvACctWBlC7oCYg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrkeejgdeitdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucffohhmrghinhepphhhhidrtgdqqd
    dqrgenucfkphepkeefrdekiedrkeelrddutdejnecurfgrrhgrmhepmhgrihhlfhhrohhm
    pehgrhgvgheskhhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:lEWeXGAnxhe80RSdP3YY7P8tNBnBvFfWUxSV58Kd1w7qDVBWPPytnQ>
    <xmx:lEWeXB6bWRU_1CeB7KKscLo5SFc-X1Gi4IN-edbYNXOWMmgXt3bFWA>
    <xmx:lEWeXC2_4jfhDXeNF8TRouekbf8-8CmdDEAZYmn3THz7rnfcSzE3Nw>
    <xmx:lEWeXDNPjGekJP5eNg8mPMuooXlACJTT8oWLpRXV-9bQHTUyFeSN3Q>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id AD6421030F;
	Fri, 29 Mar 2019 12:19:31 -0400 (EDT)
Date: Fri, 29 Mar 2019 17:19:30 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: rtl8822be: compress
 two lines into one
Message-ID: <20190329161930.GB26815@kroah.com>
References: <1553871519-8008-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553871519-8008-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 08:28:39PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle.
> 
> Returning something from a function need not to be stored in a variable, 
> can be return directly.
> 
> This patch compress two lines into one using following semantic patch:
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
> diff -u -p a/phy.c b/phy.c
> --- a/phy.c
> +++ b/phy.c

Um, have you tried applying this?  Your patches have to be able to be
applied at the "root" of the kernel source tree, not buried in some
random subdirectory :)

thanks,

greg k-h


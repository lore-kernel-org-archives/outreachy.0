X-GM-THRID: 6669728292045586432
X-Received: by 2002:a62:168d:: with SMTP id 135mr7044634pfw.83.1552931501050;
        Mon, 18 Mar 2019 10:51:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4554:: with SMTP id s81ls7594369pfa.3.gmail; Mon, 18 Mar
 2019 10:51:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzL3k1LZIQw38g4uwyhK1k12fOxhKu+gpzPL1dIYyPgnJ8mSAbXIuhakkmUUt2WdUorUk5z
X-Received: by 2002:a63:e753:: with SMTP id j19mr7040552pgk.118.1552931500152;
        Mon, 18 Mar 2019 10:51:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552931500; cv=none;
        d=google.com; s=arc-20160816;
        b=HiJn5lyim+18Kaf4BxDH5HDfnYc2dxyjn4bT3MVrp2Ruk11dvR4TOkE4z4DA0lGDGg
         yaI+r8mM/n9Punj54Ett2LgM0xDuva9P2M0gEXOQekilTi2jtk4GQr3Tk8T2FdLGvLX1
         FTMu5sEg4SKURMl4EADPwH3R16tZKaYnXNkJ17Cz7A5x3QlF1A74gJBC++3AisI9DyGD
         kZcrK/M6vOeCq4xibi3DasV+1PkPevVVe3XPAcFrYz7NZUSum+tCOPwveLlSbV7gKmWf
         W4bLhABlo9T6YOyrgmiSBE5rZIIyYE1fY3oASfCXGQ82Yxk/BaFF5XT4JH7z+A9I+JQG
         Kr0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=vl/kjG2xzgB98EE8kFIzVqQu/fNZGyeOOiUbOGaOjCs=;
        b=K9Fr3Fp6sImZj+4fqeBM4WvftozS+lazPOkBmzGNRGOsqtGYfOWyVaH1WbIwPEmSMd
         gBSnBUB2cjTd2XkY8o673o6TUxzt9NVtTZ1JpeGavPKd8IPDcw80Db4Ah8OMwlvJr9tP
         dG3cDRm6LJAeZHS3yL6bJSosoWmaNgQU45MTrVP5YG8bGHkewPbacsg0Ito070yCqi4G
         G4ZEzdlJ0XSNCp9XgebI6rJnJGOCOWOMRZcjRU+GESL57YlE/qSvJXIZZm8IAoYBEp1h
         5vkXD8Zf1c5/LH5J2c8yiR2YjYKJPyqupnpR7ODuCmxWtfaf8LlYy4UfkPQRic+C3EdK
         sdEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=R7a49zRV;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=rl7MhlcX;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com. [64.147.123.24])
        by gmr-mx.google.com with ESMTPS id i126si501713pfc.4.2019.03.18.10.51.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:51:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) client-ip=64.147.123.24;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=R7a49zRV;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=rl7MhlcX;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 4FA4D33D9;
	Mon, 18 Mar 2019 13:51:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 18 Mar 2019 13:51:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=vl/kjG2xzgB98EE8kFIzVqQu/fN
	ZGyeOOiUbOGaOjCs=; b=R7a49zRVqAqw7SCglfVDjjXRiqYzNUqVrgnsA79FlJO
	NNJpTuFLSf+jbFs9F4BhFMAGDNxw7lmA+DAkQdLVPaEn/KFGL7X4q6cbd4NpDNUi
	TJYruSVLvMcnJupxuCdiHHMm0ht35QcS2LhZyJJXjuwescowGdyOFKzLzs7qgUlX
	jS7S8E6ZgbEtxVW2vlQeYMNgydtXpLm3AsHeN6886HTt4IMpudu+bnfv9nuHn4SM
	5gI061VCIdH2udInD6ysWNKXVFQ4YMzHM6kuGdBeePHJRV0oczCkzo7xpCoS2v3g
	G6+JjSz0ZqS4j+ld9dQHnBRA5ayhh8vDcfYP2jHlDgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=vl/kjG
	2xzgB98EE8kFIzVqQu/fNZGyeOOiUbOGaOjCs=; b=rl7MhlcX29rHgyCYc29u3e
	8X9qrvqwu7eDV2kMIrJMeThEPgHRAYHGuyma3DAN8jxIs9+QQWd1KohZIfDnxWph
	W0sq9zkATRdaSpRdt9YHWMLlUvbl9ItHNQu07ZtemY82P3jlEkvJjUxrVDvCaAqg
	meZIkN7mjEVWBIpa8/c6D+2tHoAmCI4CJposV6hTFFmdhx3Kk6gRKyudpGYdCaK+
	FtKKvPZn0QaEWyuLwB+SjaUKIr/Z/ZgmJ2WqQ1v4e8dbFDixUsOFAHwfehN773kn
	ri/3iGeI+MAuzLYgOS1Im6ORs73SgO9KYiarIkAu/awjHx/GPDq/BKlAFe3/VCAg
	==
X-ME-Sender: <xms:qdqPXL9NvG-N7w6ZfVnmSyasSx1p_2olG4ULVjRKrgHDzLSIETH27w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddriedugddutdeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuffhomhgrihhnpehkvghrnhgvlh
    drohhrghenucfkphepkeefrdekiedrkeelrddutdejnecurfgrrhgrmhepmhgrihhlfhhr
    ohhmpehgrhgvgheskhhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:qdqPXGszIuUBq_yvG5Pl5Zf1hWucKAIWk4L3paBO0N5JJoQsLS-AtQ>
    <xmx:qdqPXJLmwSPxzrIcsI3cB6CJwp8OSL3bD3seT1drEo1v1boEmvRbZA>
    <xmx:qdqPXJ0_3QeZu4PSZXek1SUHW38qwpGzUXEOr_lAWfMawmUJBxmB4g>
    <xmx:qdqPXFH6kSezYMjMP-_mvFhz4mu9U92JrplgDgL7RNU-JVdsPEkVLw>
Received: from localhost (5356596b.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 1C43110320;
	Mon, 18 Mar 2019 13:51:36 -0400 (EDT)
Date: Mon, 18 Mar 2019 18:51:35 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: gasket: replace symbolic
 permissions
Message-ID: <20190318175135.GA23850@kroah.com>
References: <1552917114-7936-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1552917114-7936-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 18, 2019 at 07:21:54PM +0530, Payal Kshirsagar wrote:
> Symbolic permissions 'S_IRUGO' are replaced by octal permissions '0444'
> in file
> drivers/staging/gasket/gasket_sysfs.h at line no 43 and 78.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> index 151e8ed..60590ea 100644
> --- a/drivers/staging/gasket/gasket_sysfs.h
> +++ b/drivers/staging/gasket/gasket_sysfs.h
> @@ -40,7 +40,7 @@
>   */
>  #define GASKET_END_OF_ATTR_ARRAY                                               \
>  	{                                                                      \
> -		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
> +		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),   \
>  		.data.attr_type = 0,                                           \
>  	}
>  
> @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
>  
>  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
>  	{                                                                      \
> -		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> +		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
>  		.data.attr_type = _attr_type                                   \
>  	}
>  

This patch does not apply at all, as others have made changes in this
portion of the kernel.  Be sure you are working against the latest
staging tree, it is staging.git on git.kernel.org and use the
staging-testing branch.

thanks,

greg k-h


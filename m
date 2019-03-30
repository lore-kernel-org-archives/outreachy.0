X-GM-THRID: 6673442126229929984
X-Received: by 2002:a67:ed05:: with SMTP id l5mr5554701vsp.23.1553974789370;
        Sat, 30 Mar 2019 12:39:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6805:: with SMTP id d5ls1199303vsc.4.gmail; Sat, 30 Mar
 2019 12:39:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyE01S279In1SvblWwFyGRJur2hcLhWdYeUTg+9RMPYGBlQCKJTv/feVAqU/PTdp/3JYV3a
X-Received: by 2002:a67:8d46:: with SMTP id p67mr4732053vsd.35.1553974788695;
        Sat, 30 Mar 2019 12:39:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974788; cv=none;
        d=google.com; s=arc-20160816;
        b=yWimcRY/DnW29B9bqfE3fRiQeAbEPiQMb6l3JIDRKqZoAsGUh96xB9kIrMRCZsgAwk
         8ZacCVlE0TLcVfN3QiMGNnwI1u6WapxeQvo5IC0OQvBO1m4WLV5YX+rXt/jM+TwL1hV6
         HBLhxZNLEbji3Q3ANa7PRvi4iSG/WHpVNTOqX7RkF6+TNHYcI6NegCLAv9zVjzat65b4
         DqAUPKeKH5ArOdWQS8Bfxj1CAgzGdYL+/+vPPMiwPc7kX6x4aXIzQXg/9NhA1OthCuXD
         sy3dqUibOZf+lKE8A0EhsBImjppLUPyd9VpUY+I2YfrObU3c3fsiMbRk728tsjd/uUK1
         GAIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=OrMwKXP1J3EnrWObqaie9wFPLdZNerxu3x4+4yrQgYA=;
        b=vTbzsw8WB4Nv6pewK4ky4rnjhyW+AwUjV8o4Xynl36/nYfgAR5bPvzOdQSs1qBcOWz
         Tuvj2C0eZcuK3qMqoILxXhfR5hk/Cq6GD/kdZhgtHpgyZpcidEOheipbDdHJhFhRNKGJ
         2wNe+goZNoQNl1Y/R4Ck0SPKNxc4ZcqPScbS3LNDWSpEo68Tv2qcPbJ96TLltQLOA0OT
         iPXGoIdxusoyRNoxSMJoGMKoQ9ezYMG4ZFuT6RyrgaqJGLsal8ZAzQyQt3u1Xr/j3V3V
         YrL/YfQEzxfHWmTT5tnaGFlVbnhqiFMjnKu0KKruv8HjAWnxNwXutfeMd0O+JqwEBX+B
         HpmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=blNDagE6;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=5anWhmKW;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com. [66.111.4.28])
        by gmr-mx.google.com with ESMTPS id n74si447492vke.2.2019.03.30.12.39.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:39:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) client-ip=66.111.4.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=blNDagE6;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=5anWhmKW;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 11CB52013C;
	Sat, 30 Mar 2019 15:39:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Sat, 30 Mar 2019 15:39:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=OrMwKXP1J3EnrWObqaie9wFPLdZ
	Nerxu3x4+4yrQgYA=; b=blNDagE6WFobbUSR5AYJbI/gk+01WUcdqsUSdmFphwW
	GsMvrYZXIq6w4jdYf0cOT5G09yPDBXTr2XjokqY48690/3hB+48DaffRpUskXI8A
	u5BijdXBUzq48JS+oWhw5IesxWIczsHV02N1RWqthy7F/LYwMBZ5lJe7SQrCzJv5
	/ms0KZRlEzYM/s9hvc6EiGeZJHAXrx2rPBZ1JkCLsdXkvSOJK37fIW6HhCDja9cW
	ikjIqR9rgh+/YH+khkWF1USoC0DqZK/txqv7XvOBA2DZ7PPDVyb1vCrpLo7Kq36X
	Ez72bxXypSLxcNlXBJ+Xcgd4GvX2PeOkLRK6sa1hrUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=OrMwKX
	P1J3EnrWObqaie9wFPLdZNerxu3x4+4yrQgYA=; b=5anWhmKWPywxT767H261+I
	sdqHRVvYU7lSullCEPChBoxFz7sIXlCZOk150ihCQdcrLVADUnRYI9XYQfchj9ii
	U0zy11Rwt6QeZb45A+2YMl6A1KiM2zMOOIbH0vuZg07vn/1EJ7vbUazgTwXBYpoR
	GS9KwXbLCG+4KPzgfdrUMP8C3XkSYtpHVf1Od91Y9v0Eyp/RBBxJNkENTy0VsJMl
	ZS9GpMgulkqA1d2iwqy2HphRleqBVZdDXm0XaxVzD0NfnmAm7Ilt67p2Es7Cn1Ey
	IBssITaMqYTOfDRivc2DHbF8bfganhQm1eZDsgDhSNW+YqLoZ9LgtjINfL5oV1yQ
	==
X-ME-Sender: <xms:A8afXH-miVFWHX4y1y9M3YQRsnBtWvKesfBcSJkXbIkRh6S737k5Ug>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrkeelgdduvdekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeeivddrudduledrudeiie
    drleenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
    vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:A8afXDQ9ZKDZV6x4rA5dg8qrgdtB5ZGfuXInzceRPeT7W1Uotp8PEA>
    <xmx:A8afXJVaFsBqbfGiX0n0s-VnPXQY3jq26hqbnjCzK2cqOE4wUeUDjg>
    <xmx:A8afXF_vItcwlIJlKBKiKsR5i1TFm51Ypd15c53Oh2FrOXT0b2hclQ>
    <xmx:BMafXEq4ASW8ckTogcoZ3D5xY1IQLlY8hgQCm7cPouDDzROuE8-IAg>
Received: from localhost (unknown [62.119.166.9])
	by mail.messagingengine.com (Postfix) with ESMTPA id 06ED7E498E;
	Sat, 30 Mar 2019 15:39:46 -0400 (EDT)
Date: Sat, 30 Mar 2019 20:38:20 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 9/9] staging: rtl8723bs: Fix
 indentation issue.
Message-ID: <20190330193820.GA9615@kroah.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
 <54ed2f9b66b51437d6285c614a3399cb1f7f1b14.1553964404.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54ed2f9b66b51437d6285c614a3399cb1f7f1b14.1553964404.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 30, 2019 at 10:41:56PM +0530, Payal Kshirsagar wrote:
> To fix the indentation issue remove spaces and add tabs.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 68fac89..ec336a5 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -961,9 +961,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>          if (pPMK->cmd == IW_PMKSA_ADD) {
>                  DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
>                  if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
> -                    return intReturn;
> +			return intReturn;
>                  else
> -                    intReturn = true;
> +			intReturn = true;
>  
>  		blInserted = false;
>  

Please just fix up all of the formatting in this function.  The spaces
all need to be turned into tabs.

thanks,

greg k-h


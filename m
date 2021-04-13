X-GM-THRID: 6950658650787545088
X-Received: by 2002:aa7:db9a:: with SMTP id u26mr35035933edt.292.1618326980327;
        Tue, 13 Apr 2021 08:16:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls3980823edw.2.gmail; Tue, 13
 Apr 2021 08:16:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw/3Zwb2nRB+vS6/a1DKH6F0Todv4FBLMcl1qycB/UZI7zW4k8AJlsO5ZbIepqSLxMMifxo
X-Received: by 2002:aa7:da0e:: with SMTP id r14mr30139977eds.375.1618326978605;
        Tue, 13 Apr 2021 08:16:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618326978; cv=none;
        d=google.com; s=arc-20160816;
        b=towXT+qKcelbxwZ7gMdsyJ+3aOSeyP2puzcpTImF07G8LLXEEfI6g6vzvHSJImFwiG
         m7ZbJdkMWuo2YaoAsHpuqu/FAWJO1qACwbn+96Decuhb1DZ38W5HCQCBdJv+CBsF0vFi
         Jx9oM17faCX9ztpjDbbNYPN4ypXdgNdqkzTnTYxcBW4CBZisPGYdayio25mQCCUHizpP
         qyTNy0nkyXMJHi+X4XbVQkMQO3NDy4Y2zgdzkZ2W1e1TS3VMfRjVZpHJi8Ypu+Fgr4+r
         1KpHa3mKml4BXKI8M0ZCOlqGmn0cridaou5bD37yYNk7eGjvdBV2X+OcaZwB0ffxr/Uk
         A/Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=3LJdnxknfv9gGliiSgUzTz+ixEfSTiXTLy/yqB/2IfI=;
        b=PNwFZhMcd7qml1+7Sa5Z9Kowp0VKN14JE0M9kGxFHC84TVNEbshygPMayxXlwkBdKC
         q7054GKgSvCRyz/n10I1lUTAfX1oaBW7Oa6BcLXMsb00FCqUdmB5iWdVlSpLPNWv6LtH
         iNIH9Sj74GBywktstkmKY6E970E2632DrxC3y4oun263YWltIhW6fUMYmWL7rZaTNGZZ
         wThvGkf1Kiw7TgQEqgHYEqOE4f2icToyFE/6WpnQGRwb4zNq8KceJBiVtVT39zZ79so3
         yG3V68EXMrGdHEBQm68MCamhQeR7DAEcbFpxYKZzOupCunOlX6Y3y8l2dRefpj+MfbwP
         eSkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id df6si1113876edb.3.2021.04.13.08.16.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:16:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Ad3T76KCOq5atsSjlHei9sceALOonbusQ8zAX?=
 =?us-ascii?q?/mp2TgFYddHdqtC2kJ0gpGLJoRsyeFVlo9CPP6GcXWjRnKQf3aA9NaqvNTOGhE?=
 =?us-ascii?q?KGII1u5oPpwXnBNkTFh4hg/Ih6dawWMrHNJH17l9u/wCTQKadY/PCj8Lq0wdvY?=
 =?us-ascii?q?1WtnVwtwa6pthj0JcTqzN01tWU17AoAkH4CX/cpNq36Yf24LB/7LfEUte8jmi5?=
 =?us-ascii?q?n1mIn9YRgAbiRXlDWmqT+z8rb1H1y5834lMw9n+rsp/WjbnwGR3MzK2c2T8RPE?=
 =?us-ascii?q?0n+W0pI+orTc4+FeD8+BgNV9EFjRozuvDb4OZ5Sy+Bg+quey70s2gMDByi1QR/?=
 =?us-ascii?q?hb2jf6dmWtqRvi3GDboVQTwk6n7XXdvWHuuqXCNVUHIvsEoYpYdxfDgnBQ3+1U?=
 =?us-ascii?q?4eZx03uerIcSJRjdhiiV3amtazha0kC9pWMrkeAVj3E3a/p6VINs?=
X-IronPort-AV: E=Sophos;i="5.82,219,1613430000"; 
   d="scan'208";a="503037566"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 17:16:18 +0200
Date: Tue, 13 Apr 2021 17:16:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: core: Remove
 unused but set variable
In-Reply-To: <20210413150517.12533-1-fmdefrancesco@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104131715560.8430@hadrien>
References: <20210413150517.12533-1-fmdefrancesco@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:

> Removed "ledBlink_param" because it was set to the value of "pbuf" but was
> never reused. This set was made by direct assignment (no helper had been
> called), therefore it had no side effect to the location pointed by "pbuf".
>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index f19a15a3924b..440e22922106 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -6191,12 +6191,10 @@ u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf)
>
>  u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf)
>  {
> -	struct LedBlink_param *ledBlink_param;
>
>  	if (!pbuf)
>  		return H2C_PARAMETERS_ERROR;
>
> -	ledBlink_param = (struct LedBlink_param *)pbuf;
>  	return	H2C_SUCCESS;
>  }

Is this function actually useful?

julia


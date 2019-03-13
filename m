X-GM-THRID: 6667838029140328448
X-Received: by 2002:a19:c502:: with SMTP id w2mr2585201lfe.15.1552479323772;
        Wed, 13 Mar 2019 05:15:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:800a:: with SMTP id j10ls244933ljg.8.gmail; Wed, 13 Mar
 2019 05:15:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz2Cqx23D0GNYzTLY4OsX2EFtcg5SMFWeJ6dJAPY7X1zl6wvbRaHArGWxo8ldY4nDmIdt8L
X-Received: by 2002:a2e:974d:: with SMTP id f13mr2549124ljj.14.1552479322741;
        Wed, 13 Mar 2019 05:15:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552479322; cv=none;
        d=google.com; s=arc-20160816;
        b=pziIoZTJLo0cXMrNRar5JB156ZChu4orhdSPo0I/UPUi5eosWeht6wcUoMl526HVQ4
         DTx/Q8c3IYjUlvhIHx7ZTALoEjQsfoELWdp98bCo5DYe4hIx0eOZKFq9qKL8yZUaS2ZY
         LkZqsQIgUFmMPYuR98eL5VSDUQ+8e8fcLtjE4IZCjU4HTXfBmfjeKI0PEpa+/tHh5xVN
         Ww3UEkl2sTHwnjWZdalOWSLokLBxR1NE2Xi0jtX+7IgZGS72zZXAVOKksoY4lp+5I8Hg
         QQyzRl3/1HNPcTFBok0NmHo//RTWZhEoMPCa3/iEy5Jnne8AyVJkOvbYqicel44DAMKt
         28rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=L4nZXDv3rusTHPZHP3ujhsYLSkFaLhMMM/M9qK2xZ94=;
        b=CuF6B3z82kzJwAXOfCe15mi8oM5bZlDYFuaLCBEekD72C6Wb5MrkRipk3SNESBsRJg
         S7HDsAbLF4mxZlOa/xWipZmT8H00KwmY4YLSTq7Tade6w3o2eNoT8lWwmhXeHBhCV9nQ
         EMnkRhE9Cae/J1Gw4OzHm2vXid4DgyeQdDAzf7HrIfoVkLreRVcdlFBOjHq+TCG/UHUS
         +teRb+5l9YWR5hLLONFISWjdn7FR16c0EWW1IODISiD0tchYyD3Q6V8Swc7NpvBQxlF7
         ITc6IbY3LV3tz9AAuv7IwjXUWB+AxsK+Ugj7lIyFK3We2ePoKaL9HU+sXrfYflX5eqNl
         NLGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m16si490599lfl.0.2019.03.13.05.15.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 05:15:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,474,1544482800"; 
   d="scan'208";a="373222697"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2019 13:15:21 +0100
Date: Wed, 13 Mar 2019 13:15:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: rtl8192e: remove
 boilerplate license text
In-Reply-To: <20190313113353.13024-2-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.20.1903131314400.3938@hadrien>
References: <20190313113353.13024-1-jbi.octave@gmail.com> <20190313113353.13024-2-jbi.octave@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Mar 2019, Jules Irenge wrote:

> remove boilerplate license text."

The log message should be a proper sentence, ie start with a capital
letter.  The stray " should also be removed.

julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/rtl8192e/dot11d.c | 8 --------
>  1 file changed, 8 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
> index 6d57abedaa34..82c11caeee7a 100644
> --- a/drivers/staging/rtl8192e/dot11d.c
> +++ b/drivers/staging/rtl8192e/dot11d.c
> @@ -2,14 +2,6 @@
>  /******************************************************************************
>   * Copyright(c) 2008 - 2010 Realtek Corporation. All rights reserved.
>   *
> - * This program is distributed in the hope that it will be useful, but WITHOUT
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> - * more details.
> - *
> - * The full GNU General Public License is included in this distribution in the
> - * file called LICENSE.
> - *
>   * Contact Information:
>   * wlanfae <wlanfae@realtek.com>
>   ******************************************************************************/
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190313113353.13024-2-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


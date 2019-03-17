X-GM-THRID: 6669413684549255168
X-Received: by 2002:a1c:f514:: with SMTP id t20mr785830wmh.25.1552847057079;
        Sun, 17 Mar 2019 11:24:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f106:: with SMTP id p6ls1753458wmh.6.gmail; Sun, 17 Mar
 2019 11:24:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxwQaszAKW3Qau6Dc7dwm+i3vggABBM6Yizo7SlbJP+YubHi5QOqHEfPfR1sP+7CsG0LkG+
X-Received: by 2002:a1c:9e0c:: with SMTP id h12mr552510wme.3.1552847056091;
        Sun, 17 Mar 2019 11:24:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552847056; cv=none;
        d=google.com; s=arc-20160816;
        b=Ln15PyxHBmDbyrpV8FYDwlswZhWbB0kqK6ymIlZZpFQRmM0+brjtyhvq9RS37XvVBB
         eWU5mVh29BQgl27dQSt4MajFC7WQks7+1PJIIBk4MQWMTa9oI7d2cY0lFEwAO/IEIS1v
         GQdX67UM8d1hEcJ8t3cwH/vzmv1O1hui9i6+id/LbARy6D3Xre1X4C3opt7CCbNl0t7X
         r9Zk540etyYeJ4pR/rnKobbTcHBiKlnD45NBq2dbEnOlal3x0+ad6Zy6jJY0hgWXNpVH
         iga5tt5fDY6nRU05jx6kKuPsF3nsNGjMlS2BNxKJg7VIz0MtiFYK8SGv7qnpZ5EGe3J6
         ua/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3gXSRg2eEL8eTqzieFdd1MW7fYwwJYUUDW+AFBStDxk=;
        b=0yErEFv3KgAsefQIWleOUxRE++X+gTUqi2cwlzjXko3/jyb0/C1jwM+rdUzrFkoomc
         DVKitdm2lCJq1N0WjJeKhBI4jtvzMOHWsaUsLkcEN7sbo0IiLwkoXfcem16WE2yLNavK
         V81AcCVs01PqoK/R8ktZndO97i/LuFEEshVa9CdBvAGQKn23rYNCVY/xgqFy3qyR9vPm
         WeqJCxH+8DQIjFnckWtXp4t9Vf2it2q1LQ+Mfvqt/3ac+KqbIv1r34suCVmMM/o7V6FY
         UsdRy1mM+H1r1nQgb6mybk96nKUs9wW67WGjGCF/PDoiprgvBqxJPrmPu/VMBH8jlLbH
         zWig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r18si250429wmc.2.2019.03.17.11.24.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 11:24:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,490,1544482800"; 
   d="scan'208";a="374406750"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 19:24:15 +0100
Date: Sun, 17 Mar 2019 19:24:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: gasket: gasket_interuppt.c:
 Fix string split issue.
In-Reply-To: <20190317181328.4707-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903171922590.2434@hadrien>
References: <20190317181328.4707-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Sanjana Sanikommu wrote:

> Remove string " across the line.
> Issue found by checkpatch.pl semantic patch results for rtw_ap.c
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
> Changes in v2:

It is confusing to send the same patch twice.  If you need to fix
something, even forgetting to give the message about what changed since
the previous version, it would be better to increase the version number.
Then one can see immediately what is the most recent version, and ignore
the others.

julia

> Fix the string in a single line within quotes.
>  drivers/staging/gasket/gasket_interrupt.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> index ff61b782df30..2d6195f7300e 100644
> --- a/drivers/staging/gasket/gasket_interrupt.c
> +++ b/drivers/staging/gasket/gasket_interrupt.c
> @@ -97,8 +97,7 @@ static void gasket_interrupt_setup(struct gasket_dev *gasket_dev)
>  		 * modify-write and shift based on the packing index.
>  		 */
>  		dev_dbg(gasket_dev->dev,
> -			"Setting up interrupt index %d with index 0x%llx and "
> -			"packing %d\n",
> +			"Setting up interrupt index %d with index 0x%llx and packing %d\n",
>  			interrupt_data->interrupts[i].index,
>  			interrupt_data->interrupts[i].reg,
>  			interrupt_data->interrupts[i].packing);
> @@ -120,8 +119,7 @@ static void gasket_interrupt_setup(struct gasket_dev *gasket_dev)
>  				break;
>  			default:
>  				dev_dbg(gasket_dev->dev,
> -					"Found interrupt description with "
> -					"unknown enum %d\n",
> +					"Found interrupt description with unknown enum %d\n",
>  					interrupt_data->interrupts[i].packing);
>  				return;
>  			}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190317181328.4707-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


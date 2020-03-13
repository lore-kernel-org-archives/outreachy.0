X-GM-THRID: 6802694026822680576
X-Received: by 2002:a2e:95c8:: with SMTP id y8mr7421762ljh.153.1584083087650;
        Fri, 13 Mar 2020 00:04:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a58b:: with SMTP id m11ls1648904ljp.0.gmail; Fri, 13 Mar
 2020 00:04:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuFQ00q/Uy3rpwW6q0O6ILFG5RilXWegeV9TuAdw4/DB/urLMWzTKlD0rCDDnJSnNBcViTd
X-Received: by 2002:a2e:9a01:: with SMTP id o1mr7448796lji.247.1584083085965;
        Fri, 13 Mar 2020 00:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584083085; cv=none;
        d=google.com; s=arc-20160816;
        b=BNSCjkTjhVIC20GA4FR7yV+2IQKln9vDPZqEESNWcIMmje+QcqLsrc8YsWHDzgQgZ9
         0PEaFqX/Iw/00hEo+zJ/mDHo3m+h+lnVgebR4QeoVfTtohk6yHfPaO1hUsGHVJDbF+1S
         FLl0QPE6ai+ttY53KK0mdCasa6NHAud99nlw0hxfGivIZRsVdTfClg6uF9iUKddikaKi
         OM77tGMk/Nz66CZsUng0kXsZiTFjTRczwx8Tb/HPp/vsaJpKi01VPZ4/lNOKUzUKK9cx
         8tSWusfJP0fsCutMlfVjZ7dwgF7fIAs+BnJQjcnqhrn+gt7kFwHjnMHjJL2lYwj4bJE3
         Rrmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=eHJj1faS9q1LLKtj9Q4NgQAwY3ZA/T+3ffnmNCBGSQ8=;
        b=x8ZkLE1OpWRsvnKAiIoPPHPiv+q59vnYrFmxmPgXGeoHuZ7expOkPMMiqPEarWboYg
         fWG7thwk8UuZuLpcrGvN05D+a3eBEHdT7UIt+MubCJzw/xgdFFUkEsL9axGdfKwnzXRL
         SRPhsKF1RUulI6A4xhXI1OSaS7AfaGILPzXBBV68LUKz4knHGjaAhxY5sfQF+kuMNm1Z
         t0kzVXqb87q42X1+AeVC10YjKeYZ32xolUSMG7+bPw+KBB15dBXd11ks1EhmsGxqsFeZ
         BTsWte14b9gnRiyZwpCMesQNzO8mRw7v/urX099i8utgLUl3Y6RBM5PZ4M3R+oKm6ykm
         WlsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w6si376683lfa.1.2020.03.13.00.04.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 00:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,547,1574118000"; 
   d="scan'208";a="342221792"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2020 08:04:44 +0100
Date: Fri, 13 Mar 2020 08:04:44 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v5] staging: rtl8192u: r8192U_wx: use
 netdev_warn() instead of printk()
In-Reply-To: <20200312210540.9381-1-lu@pplo.net>
Message-ID: <alpine.DEB.2.21.2003130803300.2355@hadrien>
References: <20200312210540.9381-1-lu@pplo.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 12 Mar 2020, Lourdes Pedrajas wrote:

> printk() is deprecated, use netdev_warn() instead, which is a message printing
> function specific for network devices defined in include/linux/netdevice.h.

I still don't think that "defined in include/linux/netdevice.h" is
necessary.  It's a well known function, and anyway if I don't know what it
is, then grep or elixir is sufficient to find the definition.

julia

> Issue found by checkpatch.
>
> Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
> Changes since v4:
> - Log message correction.
>
>  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> index 0118edb0b9ab..100532598781 100644
> --- a/drivers/staging/rtl8192u/r8192U_wx.c
> +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> @@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
>  				hwkey);                 /* KeyContent */
>
>  		} else {
> -			printk("wrong type in WEP, not WEP40 and WEP104\n");
> +			netdev_warn(dev, "wrong type in WEP, not WEP40 and WEP104\n");
>  		}
>
>  	}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200312210540.9381-1-lu%40pplo.net.
>


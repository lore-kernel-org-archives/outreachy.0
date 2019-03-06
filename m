X-GM-THRID: 6665097919314526208
X-Received: by 2002:a2e:2c1a:: with SMTP id s26mr147695ljs.12.1551856254905;
        Tue, 05 Mar 2019 23:10:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:a9cb:: with SMTP id s194ls93029lfe.4.gmail; Tue, 05 Mar
 2019 23:10:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqzF/fGBO/DpF0V5w4XYGlO1dNitxhFOa0ZmgEHuNkIZJhPTB4Wf24GUwIkwkN/TGB3AfvUe
X-Received: by 2002:ac2:548b:: with SMTP id t11mr332120lfk.9.1551856253957;
        Tue, 05 Mar 2019 23:10:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551856253; cv=none;
        d=google.com; s=arc-20160816;
        b=kI+H9qAWgHRgcTSzb3WBaTCobWWP3gAaVdDPl6f6dRN/27mvpAAuYSyZwQQm3OLbBC
         gD9fSWDK5Gkvm/iLYR/Y9Ka987K0hnJL3eHTAlYo99dQGTY4CbrlUmafeyNURtmx7R1v
         UekJpN3NYIkHyYRaKhNntEmzoKyHdkUPdzMkwfsG4gYiX9Nbk5bc8ci2/SG+fm9gk+7k
         SKqi/NHrvkX7ew3kCrBYcNSWD2/n2k2bTletdwttK4Fkl1Puw6C6OneEL02QIg/oIhXW
         lYLJGm8EhgXLukmhspomS1ypTp9pmSzkwKUJZSkt0hkTinHTvJKOQ3WF6NuGEVvuaBLx
         WMGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=wllKjcg7zs2IZt9Z8uQt7IxyCOCgj03da8P012lOyLU=;
        b=gkx0XBF5dXOKZcWoXsKM0sTndj7FBrgGlKJ08342p2dxjNW9fkqFLdVHWpo3GJWFcu
         XvU2iRojiil+63ASdruJDt4cKFiWu4JOL3/Ly/cFrmKEFOEHl/0VV1Ds64f3f46HqVFq
         mdwmGek7uG3IE0phqkB0IGVvhw4Uvp2VOjjZksjYhiV1d6fywaA6BrO35pAf72Mjq1Gm
         pfb8dbrLUJ+G6ITNoJcEhsYR0PxXb8+30dcRfXxVaZ8OpXozJ1JMqOm86pKILMrUk70A
         gqkm+QqzM75tkAqAOkLm60NxsoKbNdpKBENs+s11ImPNZ8ZxKlgT10w2T7U7PsPY5VfH
         wLOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h11si39506lfm.3.2019.03.05.23.10.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 23:10:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,446,1544482800"; 
   d="scan'208";a="298262283"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 08:10:53 +0100
Date: Wed, 6 Mar 2019 08:10:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wentao Cai <etsai042@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: usb: Change '--help--'
 to 'help' in Kconfig
In-Reply-To: <20190306022129.4485-1-etsai042@gmail.com>
Message-ID: <alpine.DEB.2.21.1903060809420.2706@hadrien>
References: <20190306022129.4485-1-etsai042@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 5 Mar 2019, Wentao Cai wrote:

> This patch change '--help--' in Kconfig file to silence checkpatch.pl warning:
> WARNING: prefer 'help' over '---help---' for new help texts

The log message should be in the imperative.  So it should start with
Change, rather than This patch.  Actually, "This patch" should be avoided
in general.  It doesn't add any information, because it is clear that the
only thing you would be talking about in a patch log message is the patch.

julia

>
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/most/usb/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/most/usb/Kconfig b/drivers/staging/most/usb/Kconfig
> index ebbdb573a9a6..539b38fb3d88 100644
> --- a/drivers/staging/most/usb/Kconfig
> +++ b/drivers/staging/most/usb/Kconfig
> @@ -5,7 +5,7 @@
>  config MOST_USB
>  	tristate "USB"
>  	depends on USB && NET
> -	---help---
> +	help
>  	  Say Y here if you want to connect via USB to network tranceiver.
>  	  This device driver depends on the networking AIM.
>
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190306022129.4485-1-etsai042%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6754202983704035328
X-Received: by 2002:a05:600c:2212:: with SMTP id z18mr9588932wml.154.1572593341761;
        Fri, 01 Nov 2019 00:29:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4645:: with SMTP id j5ls49689wrs.0.gmail; Fri, 01 Nov
 2019 00:29:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwVlEOL5vLtAlv8oeQij828AkkwULGQoSalcOW/IaDN2oIUQ0Ifw2wm3Tsof4VRyC6BXU2k
X-Received: by 2002:a5d:4f91:: with SMTP id d17mr9655043wru.184.1572593340349;
        Fri, 01 Nov 2019 00:29:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572593340; cv=none;
        d=google.com; s=arc-20160816;
        b=dqAoWB8Mj5g9WWozWspsW2Nu17+Ux1JqoEYGyL/vuwdYW8vxRWz6dHJKa/q9I8IKrP
         f9ykXWng0pDJ4aSDVS+qFjwO95f5XpSh/r6uLyDHhppmNL45eIJF08hN2Ij45LnQAq7m
         QIfpSzDLYU8Qw07E0gGdHvXqfZYO9UTTHhNqwttzLyLEzmHrCPVtmaqSyx28lNxv78cC
         aIkO/StYsWZtrSWsogUd1fNOqO+NGUJvHRZvOVDW011X7P0ckyXh+AFNq0ZO3ce5Bt8w
         KwUxD6+h53qx+HMoQbSMqbTsfCdLjUrnCoBh4rO95lccWYXS9j+pwtqdD3hzdhybXyCn
         iD8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=LAAPDbMBE1g5hf16nFguTkVkI3MPONes6m1FdN0rHB0=;
        b=lCoUhWVgbv+UL1HaDnPspro47YyYTQjYbMlr4DTSlalO4SoGusGj3QAyD1z8Vhmz5J
         +47+PDnEcduka+4cUi7DAtvnVKBsoebOSa8QSPAwqlNXrIxHfzDEq5NBv1tRXJBg8iue
         k+I/pCLp6ZOwBxMgs3K3VxG8s1dMjZkbY0M/qMrxJqT2mhRjKLFlaIZTzcCDlzlWxxTd
         GfhryOFT0kOrz0eY3U5rqvLeDURigwc21P7I1+yzqso/5qWZn8+hzJOJTT8DmDzyu+he
         /ZyZfjBivpNOO6C34PZHJv4i7M0gNbUVaEJDhWR+q93q06l88b8jGDkXYX0O2CER1goc
         Ng8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q3si424953wrp.5.2019.11.01.00.29.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Nov 2019 00:29:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,254,1569276000"; 
   d="scan'208";a="325305721"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Nov 2019 08:28:59 +0100
Date: Fri, 1 Nov 2019 08:28:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Fix preceding lock
 warning
In-Reply-To: <20191101051701.c3wly47ld6jg6hgn@gmail.com>
Message-ID: <alpine.DEB.2.21.1911010827190.2883@hadrien>
References: <20191101051701.c3wly47ld6jg6hgn@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 1 Nov 2019, Javier F. Arias wrote:

> This patch fixes a "preceding lock" warning by removing a return
> before the unlock operation. Also removes an unnecessary goto and
> adds a else if condition that archives the same behavior.
> Issue found by Coccinelle.
>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_softmac_wx.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtllib_softmac_wx.c b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
> index f89799d43b1b..42f599b20168 100644
> --- a/drivers/staging/rtl8192e/rtllib_softmac_wx.c
> +++ b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
> @@ -422,16 +422,11 @@ int rtllib_wx_set_scan(struct rtllib_device *ieee, struct iw_request_info *a,
>
>  	if (ieee->iw_mode == IW_MODE_MONITOR || !(ieee->proto_started)) {
>  		ret = -1;
> -		goto out;
> -	}
> -
> -	if (ieee->state == RTLLIB_LINKED) {
> +	} else if (ieee->state == RTLLIB_LINKED) {
>  		schedule_work(&ieee->wx_sync_scan_wq);
>  		/* intentionally forget to up sem */
> -		return 0;

The change does not seem likely to be correct, given the comment in the
code.  Coccinelle only knows about the structure of the code in the given
file.  Here the developer clearly believes that there are some other
issues that have to be taken into account.

julia

>  	}
>
> -out:
>  	mutex_unlock(&ieee->wx_mutex);
>  	return ret;
>  }
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191101051701.c3wly47ld6jg6hgn%40gmail.com.
>


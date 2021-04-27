X-GM-THRID: 6955860329873014784
X-Received: by 2002:a05:6512:3a8c:: with SMTP id q12mr17935255lfu.129.1619546511879;
        Tue, 27 Apr 2021 11:01:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:f815:: with SMTP id a21ls4581089lff.1.gmail; Tue, 27 Apr
 2021 11:01:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx4KNLOBBnWClHgXY+xgZQ+5LOwVk6GC+zALme6I+Ne11FiLRkwMnRSH/ETKKZgO6HNNRq6
X-Received: by 2002:a19:c30b:: with SMTP id t11mr4694348lff.421.1619546510032;
        Tue, 27 Apr 2021 11:01:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619546510; cv=none;
        d=google.com; s=arc-20160816;
        b=u6pUh0ZmOYIXcJmZooGn+fQ8FyB/YWZVsuuO2AyYz9TC/sFvQDpkEHk6c90xZ2Z1jl
         Mf+CvutHgLwt6+jsw8v09Pyc/5C5loVZfayeC6PNVeEoFn7t3Ec9OWrsCiGzco5v9wVJ
         Z+/tc8VMPhCCKHiq1POni9/WfkpEx8RZEhdgJnM06kTSDuePBdxsgMR+BfizOTDnw4eG
         pEWn6DYen9dJPGzuRwPT6Xxh/00ZoZaWRrc3Y8q4RHDA4NG5sRsNE8NkJxpzXeLilanY
         p3q+m/joglOsbfWWt7cn6IyDgHOKX3ciKEb47DjQU+3o4y9aXo6CJjH7+TkdDJnTzqi4
         fI2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=C85GFCYsoebPRTlh6+IPSZzYXJNtVj4sxrlLyXFYbzs=;
        b=HFdxHW82z2LLyHEc8degIz62QtcxIBjhEtCQThr48zkwNzg/5Ttl3iBjbRluuBoxPu
         C/u3hJToseBhXpENoFI63wCX4N0AlfelRxJTYNjEwKgEpav+R8Y0iXgTKNSPrtzDXkuJ
         DjHoUN8O12qIXquT+TQMxtMIMTvtONpkICktdG3AFaMzT5JmM1p1laP0kXSu30UTcCTg
         yvz8I9RJXpcakjXr3wJAMMBdwdasKTf0uI0KZek3eT1wyWqP9HfXB+SnL4kcq36DFDU0
         DyF/8WDaN7klKjjldnvDtvKydEU+8cS72pTyBK6E60ZGV+azfJgXAZ3xI45hF4vev0Mc
         kLuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l11si1179061lfg.13.2021.04.27.11.01.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 11:01:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AzcDWjqvbr2JaP79xuH35enG17skDztV00zAX?=
 =?us-ascii?q?/kB9WHVpW+afkN2jm+le8BfyhioYVn1Io6HkBICrR3TA+ZlppbQAJLvKZniFhE?=
 =?us-ascii?q?KEJJxvhLGN/xTOACv7n9Qw6Y5BdOxEBMT0HRxGi6/BkWqFOvIB5PXCz6yyn+fZ?=
 =?us-ascii?q?yB5WLT1CT6179Q92BkK6PyRNKzVuPpYyGJqC6scvnVPJRV0tYsu2HXUDVeTYzu?=
 =?us-ascii?q?enqLvdfRUECxQ7gTPksRqU7tfBeSSw4g0TSHdmz7sk7AH+8jDR1+GKtOy61R/G?=
 =?us-ascii?q?y3W71eUzpPLRjvNFGcySitMIMHHXlw60eJ4JYczkgAwI?=
X-IronPort-AV: E=Sophos;i="5.82,255,1613430000"; 
   d="scan'208";a="505346855"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Apr 2021 20:01:49 +0200
Date: Tue, 27 Apr 2021 20:01:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Tawah Peggy <tawahpeggy98@gmail.com>
cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: greybus: Add () around
 gcam macro.
In-Reply-To: <20210427175922.GA24978@peggy-Lenovo-V130-15IKB>
Message-ID: <alpine.DEB.2.22.394.2104272001190.9668@hadrien>
References: <20210427175922.GA24978@peggy-Lenovo-V130-15IKB>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 27 Apr 2021, Tawah Peggy wrote:

> checkpatch.pl suggest addition of parenthesis around the gcam macro.
>
> Signed-off-by: Tawah Peggy <tawahpeggy98@gmail.com>
>
> ---
>  drivers/staging/greybus/camera.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> index 324a26430f71..ae49e37a87e9 100644
> --- a/drivers/staging/greybus/camera.c
> +++ b/drivers/staging/greybus/camera.c
> @@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
>
>  #define GB_CAMERA_MAX_SETTINGS_SIZE	8192
>
> -#define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
> -#define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
> -#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)

This patch seems to be based on your original patch.  It should be based
on the code as Greg has it.

julia

> +#define gcam_dbg(gcam, format...)	dev_dbg(&(gcam)->bundle->dev, format)
> +#define gcam_info(gcam, format...)	dev_info(&(gcam)->bundle->dev, format)
> +#define gcam_err(gcam, format...)	dev_err(&(gcam)->bundle->dev, format)
>
>  static int gb_camera_operation_sync_flags(struct gb_connection *connection,
>  					  int type, unsigned int flags,
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210427175922.GA24978%40peggy-Lenovo-V130-15IKB.
>


X-GM-THRID: 6536479698699943936
X-Received: by 10.28.211.129 with SMTP id k123mr1333615wmg.17.1521902999834;
        Sat, 24 Mar 2018 07:49:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.93.130 with SMTP id r124ls74042wmb.0.gmail; Sat, 24 Mar
 2018 07:49:58 -0700 (PDT)
X-Google-Smtp-Source: AG47ELu+f37GpjAKGG24/IoGQd44fFma7bRjTNO04xZbeiP5MNRI2g+6MnHmCLC9tJbkqaM05eCc
X-Received: by 10.28.237.15 with SMTP id l15mr1557223wmh.1.1521902998858;
        Sat, 24 Mar 2018 07:49:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521902998; cv=none;
        d=google.com; s=arc-20160816;
        b=wc9QEPhPOgOgiNMosLh/sTZ4US/uyhPY3hcRW4H5JPcUwGcdXlAYAjyBH2Fg9ZI9Ol
         Sfee7wKCAoSemCcvryvPCsnEhIqlBTwcxn2/F4zYLsLSFAc+Thixvo1b0HiLiCa+Q9Yt
         AYFdEzyGG59UPNzT1gEJ4o9ZADQFIEhVut9E9VA44LjlIbF7iNQzfMZOBCm5I0ovUp52
         rOPgidgafh6WDBnG2xRuvYQUsxUvPnPmnEby2ICaXGOLVOlgl0ddZ+CWW6O29AR/XyTB
         q7xPHm6L88TMqtSu7d5kcKUn40mp674AZBaGZmqEn6OFSFV1PIRWNS+x5P83LD7yvxDB
         ITcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=eOKTEgRQ0BU9nycT6S8CzoeBtXH8qqy1A8rViiH6L64=;
        b=kGyuIQdAwUyamZRqjT5bxPY9GNcW0awtlMpLW90GOOy/wV4pxJ+AcjzF/Q6lY4CQPh
         UZTBpOH/2FC1QJ+jBy7yZUv44AZ4uiwDcEbnVTGNyGbYw0daUyCEw1CiOGCRdAmCErX0
         tQwUqGGJzTptIXLHaiDrDK4lRWqQY+BP+4zayY0lOB/ugy1z+iU9q3tjlNUy6zX81gKg
         tsX8dNBLOAxVv8GBrAgM7HxqAuKWzQ3FF0f/2OeWLc8Z1/+8sG05fHKndj6U4KjAv6gM
         x+vOuzRQiSseK5dS6P6x3SAnBvWuLHeRmpDzBAw/Sx/3XFVee4yOQ+GwGA+cai6ph0sM
         sOBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l124si359524wmd.0.2018.03.24.07.49.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 07:49:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,355,1517871600"; 
   d="scan'208";a="259667063"
Received: from unknown (HELO [10.71.3.76]) ([209.118.33.125])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2018 15:49:57 +0100
Date: Sat, 24 Mar 2018 10:49:55 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 4/5] staging: vt6655: Delete unused
 typedef enum _chip_type
In-Reply-To: <1521892758-27981-4-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803241049330.6044@hadrien>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <1521892758-27981-4-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Mar 2018, Nishka Dasgupta wrote:

> Delete unused typedef enum _chip_type.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
> Changes in v3:
>  - Delete the typedef.
>
>  drivers/staging/vt6655/device_cfg.h | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
> index b81f9dd..6b41c74 100644
> --- a/drivers/staging/vt6655/device_cfg.h
> +++ b/drivers/staging/vt6655/device_cfg.h
> @@ -45,8 +45,4 @@
>
>  #define PKT_BUF_SZ          2390
>
> -typedef enum  _chip_type {
> -	VT3253 = 1
> -} CHIP_TYPE, *PCHIP_TYPE;
> -
>  #endif
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521892758-27981-4-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>


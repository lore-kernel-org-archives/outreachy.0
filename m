X-GM-THRID: 6464629174501900288
X-Received: by 10.25.163.210 with SMTP id m201mr1081147lfe.42.1505203055674;
        Tue, 12 Sep 2017 00:57:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.66 with SMTP id 2ls50380ljv.54.gmail; Tue, 12 Sep 2017
 00:57:35 -0700 (PDT)
X-Received: by 10.25.195.206 with SMTP id t197mr563337lff.40.1505203055178;
        Tue, 12 Sep 2017 00:57:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505203055; cv=none;
        d=google.com; s=arc-20160816;
        b=c48IbL3GE+csccsbSSa5zy01YMBgdnVSojWPpSr+ACQrahzBXsZFTdgvTTPpLnE+bO
         7D6+xHcCunvmC/3kLSZRMCDZlaSlY5cvPR/HZyz0pTcgINTagwAMqSCfkeZvGcoPeH2x
         O9hPJY3yBkT402n2gxIBflNQj8q5hZxkmrul91YmCzpME/JYFr9jA6s5zrUb8WTYoIa/
         PEeNnZTMDEUYDxRtB406fZnIBeRjSb/Xn+UOemF9A/da//gLhVsV96j3h0nrt/MUQTyM
         natu+KgjQItaMZi1uR4hteE9VBUDQHA9NnszB8erUONpC1+8n0/MH7N6nN+KeLZI9qLH
         1Ckg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=MgiqwYztJxrCUkbKCQS+6Nr9a94xECxjVVhjX7SEHPA=;
        b=aCen+GIjcpD3EPRO8mhJQfI5s7fQA5nyiyPpGyStTW5T7Qb0th16KgkkbLHgfOkqbV
         VjwXS3ZqgCKPxqvCA+uWUoeG0bVuygq86pq9dmf1GRIIJoLTUdpFWBGKJ47UhdAjv/mb
         Svc1SvlQugDU1h1jnKpyr2dVAkPLB89zf3ghHWrvndHp/dlUphVA17agrHIMmFyFVvzK
         xN0SEoGJ4wQw8CQxM6wOpbJ8GUkmlMi3miIDUwrWuhoroEy4Vadfqkd3bYhIG6xN9o+m
         IfKFjziUZ9x7Va2mfEnMs2ebq479/z6DB1UPViMlkJmNkStVRa+CL+oyIhTbOZufKLBA
         pYow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BBxPM9Nl;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id 74si799585wmf.8.2017.09.12.00.57.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 00:57:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BBxPM9Nl;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id p17so8665994wmd.3
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 00:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=MgiqwYztJxrCUkbKCQS+6Nr9a94xECxjVVhjX7SEHPA=;
        b=BBxPM9NlzmgS93b4OSCcvg+eFPdHDUcn6AzRYIreMOiKdQWcZMgxlFd3MwBdlly5Lq
         NfYYoP/9A815aN0TEvYvwUCbzk5GVzNn5X6+suaOlr0xO6Pi41WoJkJA2bovUEFyG+64
         olCafUUtrVgrOWPtQHIjxCfd1Wtc0lwBNiGSZrrae1HvY1exFK+Ia/TxhVouxRjuqkA2
         sxoX5CmkJa40udWatlAuJEmS+dDKPiF9ly6jB2N827NmEBRQ2XvK+zCoRSEmRbXth894
         OaZCmh4Kbo4w+e+ggGlwNqbtXAZQG8HgfDjazFZKfTVkZmeoh5x0LLsljr9b0MkXGFW7
         qjSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=MgiqwYztJxrCUkbKCQS+6Nr9a94xECxjVVhjX7SEHPA=;
        b=DQrZVN20NgadHcgTP+MiH6donf5H/baWOomKyZ7vzL5GQMpkCdY1phuC1yUH1gTRJy
         FpGybD6HAXmgMEKEIYaSwP09zaSgpOGYAX6KUZvEy5badbE90eiqzwFHAqP/O+p9z7rT
         Ldhe3TLCsINcLG5KO5vRoCmVJR1l53QNqUKX7bY1ExObbtmd5phixnNcsC8e+9ABGQsk
         ncW3Ci8/aaqYdW/GZl62vONk5D9VaQ3QVHdh3jtVInUbVk9huRBxWQ6nK/oscNct86wM
         TPquSdhvfDcEp2ueXm1DUoc38y4E65gWFcHXr5GPjEy/jhDWfV1ILlLN/Mvn5at+UQO4
         iv7g==
X-Gm-Message-State: AHPjjUjFElwrXnnAXIFuWdzaBQYaGDn0YYqEwAIpvCp4cZQi8bJBnmKV
	UTuYiuHp99P2doTcKHJX1XVpzeWCug==
X-Google-Smtp-Source: ADKCNb5MDkrkT3cg62tVY02thw7KwlS4MizVP5LJs3P1QRsq+Z/sPMrPk5LX7ML79spvR3tT8e4/tHFRelsibwUY4Mk=
X-Received: by 10.80.165.23 with SMTP id y23mr3854692edb.155.1505203054833;
 Tue, 12 Sep 2017 00:57:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.149.152 with HTTP; Tue, 12 Sep 2017 00:57:34 -0700 (PDT)
In-Reply-To: <20170912061225.GA6547@meghana-HP-Pavilion-Notebook>
References: <20170912061225.GA6547@meghana-HP-Pavilion-Notebook>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 12 Sep 2017 10:57:34 +0300
Message-ID: <CAEnQRZBV+QZ856MGZCJzEY2FT1VQsjVo5qHev_WMqL1T1ZjYng@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: vc04_services: Remove
 typedef VCHI_CONNECTION_API_T
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Hi Meghana,

On Tue, Sep 12, 2017 at 9:12 AM, Meghana Madhyastha
<meghana.madhyastha@gmail.com> wrote:
> Removes the typedef in order to make the code more readable.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v2:
>  -Fix the 80 column problem.
>  -Remove the code in comments.

Code in comments should be definitely dropped but please make a
separate patch for it. You can
send this as a patchseries because it is related to the same file.

>
>  drivers/staging/vc04_services/interface/vchi/vchi.h | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
> index 7e14532..ad8f542 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
> @@ -159,8 +159,9 @@ typedef struct service_info_tag {
>  extern "C" {
>  #endif
>
> -extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( const struct opaque_vchi_connection_api * function_table,
> -                                                   const VCHI_MESSAGE_DRIVER_T * low_level);
> +extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection(
> +       const struct opaque_vchi_connection_api * function_table,
> +       const VCHI_MESSAGE_DRIVER_T * low_level);
>
>
>  // Routine used to initialise the vchi on both local + remote connections

Here its worth replacing c++ style comments // with c style comments
/* */, but of course in a separate patch.

> @@ -342,8 +343,6 @@ extern int32_t vchi_bulk_queue_transmit( VCHI_SERVICE_HANDLE_T handle,
>
>  // function prototypes for the different mid layers (the state info gives the different physical connections)
>  extern const struct opaque_vchi_connection_api *single_get_func_table( void );
> -//extern const struct opaque_vchi_connection_api *local_server_get_func_table( void );
> -//extern const struct opaque_vchi_connection_api *local_client_get_func_table( void );
>
>  // declare all message drivers here
>  const VCHI_MESSAGE_DRIVER_T *vchi_mphi_message_driver_func_table( void );


thanks,
Daniel.


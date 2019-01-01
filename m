X-GM-THRID: 6641541425255153664
X-Received: by 2002:a2e:6c0c:: with SMTP id h12-v6mr2522995ljc.9.1546354597569;
        Tue, 01 Jan 2019 06:56:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9c6:: with SMTP id 189-v6ls3229214ljj.8.gmail; Tue, 01
 Jan 2019 06:56:36 -0800 (PST)
X-Google-Smtp-Source: AFSGD/Xj5HzcnKQALfT4Ss6Ed4KIH+aWBBMWbeoCCnAjm4dV3JS58zXW2S/ssiokHCTRmBxfsAQn
X-Received: by 2002:a2e:541c:: with SMTP id i28-v6mr2466135ljb.20.1546354596669;
        Tue, 01 Jan 2019 06:56:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1546354596; cv=none;
        d=google.com; s=arc-20160816;
        b=I/TBWaOfVL1x5xfNE1rzubr0W7vBQaWpQLUsceM05k8ib5zVbg2Ns2A1oOm5jAh3Nq
         teA9pIJ4b9pMBB04VypPHop7Pm7VPjL0FthqxmijyItUMgdacfw2OA9Gr/b4TjobEXFn
         tZaXYQiiXkxo7zL0DVpqQQUw9J12DycUOZXWh7TVFiw9CTMvV7y0cWVHrVu0SCAJsIJa
         1y/wsG45kcXU324G3ab3e/tzn1+leun+EPl6cxx9k7ZwvaOM5yA/hBwfl7JKYnl+zeF3
         B8slLCUaOcby4GMcSnsjdoZPVNON9FN3IuPVAcTD6uZpT5RajSNhZIfowrGVEzvZKnxV
         gLwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=R5e6u44ccaJ22IjJGFn9hdDYIEmFFEPan6RqAa7sExc=;
        b=Ure4feXw0Dt0AROtMJ18kr+qJUByAaGL6YlamAowP97UPxdpz3L0wRTs76uFsRVDwl
         QX0QDdwyGOqObjPINq6iwjvRS3KCqrfCUhs3dxzlgAfIRGPTN2uxuMXcje4OqtzYJX09
         3G35ON0w3qn+Y3Q9HYo1RRmlgzQykOUKtlzW5ak3sMfM92+LO8acRLL5imYaIC5LxNib
         qY6gRs2x1n/X2dsofeGFmrb5RFjQvDauKGMDrrupGvMiLBd8eOFWZyz7qoSSaAWh+gXT
         ya3d0r0V1RkeaEs69FKJfx8h4997KqWchCwLNziiA5Zp3JU38/9gqBxW0X2K1kv95J/g
         0iHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q10-v6si2726604lji.4.2019.01.01.06.56.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Jan 2019 06:56:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.56,427,1539640800"; 
   d="scan'208";a="290528890"
Received: from abo-91-111-68.mrs.modulonet.fr (HELO hadrien) ([85.68.111.91])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Jan 2019 15:56:35 +0100
Date: Tue, 1 Jan 2019 15:56:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: himadri18.07@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: rename Channel to
 channel style
In-Reply-To: <dc077f72-2857-4ed2-809b-cff2f5c32cf3@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1901011554520.3256@hadrien>
References: <dc077f72-2857-4ed2-809b-cff2f5c32cf3@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1554276266-1546354595=:3256"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1554276266-1546354595=:3256
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

Hello,

Thanks for the patch, but it's not the time of the outreachy application
period now.  The application period for the ext round will open in
February: https://www.outreachy.org/

You are welcome to submit this patch in the normal way for the Linux
kernel.  You can see who to send it to using the get_maintainers command
described in the outreachy tutorial.

julia

On Tue, 1 Jan 2019, himadri18.07@gmail.com wrote:

> This patch fixes the checkpatch.pl warning:
>         CHECK: Avoid CamelCase: <Channel>
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/rtl8192e/dot11d.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/dot11d.c
> b/drivers/staging/rtl8192e/dot11d.c
> index a1c096124683..687deac19796 100644
> --- a/drivers/staging/rtl8192e/dot11d.c
> +++ b/drivers/staging/rtl8192e/dot11d.c
> @@ -15,7 +15,7 @@
>  #include "dot11d.h"
>
>  struct channel_list {
> -       u8      Channel[32];
> +       u8      channel[32];
>         u8      Len;
>  };
>
> @@ -66,11 +66,11 @@ void Dot11d_Channelmap(u8 channel_plan, struct
> rtllib_device *ieee)
>                 memset(GET_DOT11D_INFO(ieee)->channel_map, 0,
>                        sizeof(GET_DOT11D_INFO(ieee)->channel_map));
>                 for (i = 0; i < ChannelPlan[channel_plan].Len; i++) {
> -                       if (ChannelPlan[channel_plan].Channel[i] < min_chan
> ||
> -                           ChannelPlan[channel_plan].Channel[i] > max_chan)
> +                       if (ChannelPlan[channel_plan].channel[i] < min_chan
> ||
> +                           ChannelPlan[channel_plan].channel[i] > max_chan)
>                                 break;
>                         GET_DOT11D_INFO(ieee)->channel_map[ChannelPlan
> -                                       [channel_plan].Channel[i]] = 1;
> +                                       [channel_plan].channel[i]] = 1;
>                 }
>         }
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/dc077f72-2857-4ed2-809b-
> cff2f5c32cf3%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1554276266-1546354595=:3256--


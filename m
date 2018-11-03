X-GM-THRID: 6619413531629453312
X-Received: by 2002:a50:cb87:: with SMTP id k7-v6mr2201667edi.1.1541254700694;
        Sat, 03 Nov 2018 07:18:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:bc02:: with SMTP id j2-v6ls569237edh.3.gmail; Sat, 03
 Nov 2018 07:18:19 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dJIKSHaL8vrYK4Nww7DOnz9dLnd+0PArNKedABGknh2bUcRSLG6Vh2ZJigtzzZp2GyuqwW
X-Received: by 2002:a50:cb87:: with SMTP id k7-v6mr2201665edi.1.1541254699889;
        Sat, 03 Nov 2018 07:18:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541254699; cv=none;
        d=google.com; s=arc-20160816;
        b=T9VQzGywrepaJV5fvkiAMsjA4nqAsliagt7FiBq0DN+klFYTv2kj3LO5VDLjPM6qd/
         4jHRk3GAGON+nFsjQM8gdPxBdtMDx+QwHljyrpLhPgbzlT+dnlcrqYo58RLB3Iwu0a8l
         7Re93eZe/q1X5MoUSRPGgp836pJRTaT0Pd9Cy4V2DUKo0+evOT0YhWkxpG6yh3+lNTpj
         qUlqnOfYXZ97wm40S1rRgpJ/Tc6X2efdyLueTlcpO903qhgS5beq0G9Z2QeweD1pyg7r
         Looj6aGdrV3B07b4JA/Owv2OBOiPTAsZjOv0numEupY2JUxcWfkFkbj2PzTzoEGUdMsE
         fSDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=hgi7fhbWIijCVP4Nu+cizDW2+OKlhfTyEdERfW0emLc=;
        b=bFPmhfBWruzTZTPImsd362hodXhqj3UzdMrCf3nGhQoZdzHuKKe//VRBDllUGxNPTH
         gqfHLaCFzrtUlInIjW3BdK5od5PGSX/8WtMoNdairB+5VMlzk/0PzFIg6G4GmM/2mRao
         oIL+TmVcRWMAnCRpgyhkR5S0XHb6BuyQmaXqbn4/L2Q8i6FA4TbWZD6BTMlAeZ3E1tNy
         5fS5PAh+ux06F8FW3rzHh/PzprTqr5QNCyUSDs9it7J5H3L4b/qZt7e5HMB7SzFJh6Sr
         R0HerVafIU+0cbNlHb1Eg697wU5UbX0kD9HBeWH6GJ60as8rySkWsJUwSY5L4zZaQHSl
         mjxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m25-v6si1056999ejb.1.2018.11.03.07.18.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 07:18:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,460,1534802400"; 
   d="scan'208";a="353984931"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2018 15:18:19 +0100
Date: Sat, 3 Nov 2018 15:18:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: tungolcild@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove extra space
 before tab
In-Reply-To: <a43ce3ad-9062-4294-a23c-f9898fe44276@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1811031518040.2416@hadrien>
References: <20181102234508.GA27353@kvasir.local> <alpine.DEB.2.21.1811030757170.2922@hadrien> <a43ce3ad-9062-4294-a23c-f9898fe44276@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-539196242-1541254699=:2416"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-539196242-1541254699=:2416
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 3 Nov 2018, tungolcild@gmail.com wrote:

> On Saturday, November 3, 2018 at 6:57:54 AM UTC, Julia Lawall wrote:
>
>
>       On Fri, 2 Nov 2018, Ioannis Valasakis wrote:
>
>       > Remove extra spaces before the tab character inside a comment section.
>       > Reported by checkpatch.
>       >
>       > Signed-off-by: Ioannis Valasakis <co...@wizofe.uk>
>       > ---
>       >  drivers/staging/greybus/greybus_protocols.h | 4 ++--
>
>       You seem to have sent three patches on this file.  Greg will want them to
>       be in a series, to reduce ambiguity about how they should be applied.
>
>       Likewise for the other files.
>
>       julia
>
>
> By series do you mean that I need to create a patchset? 

Yes, that makes the application order clear.

julia

>
> ta
> ioannis 
>       >  1 file changed, 2 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
>       > index 5783f715bdc2..429a952c5200 100644
>       > --- a/drivers/staging/greybus/greybus_protocols.h
>       > +++ b/drivers/staging/greybus/greybus_protocols.h
>       > @@ -918,8 +918,8 @@ struct gb_spi_device_config_response {
>       >   *        0 the default (from @spi_device) is used.
>       >   * @len: size of rx and tx buffers (in bytes)
>       >   * @delay_usecs: microseconds to delay after this transfer before (optionally)
>       > - *         changing the chipselect status, then starting the next transfer or
>       > - *         completing this spi_message.
>       > + *        changing the chipselect status, then starting the next transfer or
>       > + *        completing this spi_message.
>       >   * @cs_change: affects chipselect after this transfer completes
>       >   * @bits_per_word: select a bits_per_word other than the device default for this
>       >   *        transfer. If 0 the default (from @spi_device) is used.
>       > --
>       > 2.19.1
>       >
>       >
>       > --
>       > ta
>       > ioannis
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to outreach...@googlegroups.com.
>       > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181102234508.GA27353%40kvasir.local.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a43ce3ad-9062-4294-a23c-f9898fe44276%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-539196242-1541254699=:2416--


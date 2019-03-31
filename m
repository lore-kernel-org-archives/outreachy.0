X-GM-THRID: 6674542859228545024
X-Received: by 2002:a2e:9c2:: with SMTP id 185mr1497124ljj.4.1554039546885;
        Sun, 31 Mar 2019 06:39:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:98f:: with SMTP id 137ls819198ljj.9.gmail; Sun, 31 Mar
 2019 06:39:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxldnTMTq3my5VUvqgKaHYlgZ/eX6aYBFxI1GgF3YFyrQ7WC+jRefnD57BvxdRl4md/H50A
X-Received: by 2002:a2e:5b81:: with SMTP id m1mr1527487lje.27.1554039546148;
        Sun, 31 Mar 2019 06:39:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554039546; cv=none;
        d=google.com; s=arc-20160816;
        b=koL5VcTV7I2JIIORzjcPdK8akxiSIJ1OqPtklz/pmO0WzlogmTAF3eju2/1NXrIJQN
         qdzJ3TPITqO4GF82eB5WGFIWy6Wlkh0OVm2NHkW8KG/U5PcQwb0R42FRNWW6nW91W+sf
         mQfiT6XIVIpAmO9g4mXIPgD9GjZWWqxXnAP6iaMe/wFoLw7w/pW6burshZn2HNTj5MLi
         xh7kJBZrt/uugJcJWKcR2qIGI6Rt9Ok0ep/69WWFfChWrWhQADzcWn2g1Sdx/bl1TlI6
         J23ed+6zBKK/UCusXKzIsfl8+6j8fPdRh+HfnqjQPoLEprpiPXQMHMeTPoJJQ2gRpi5J
         jyJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=I65K9xbCUW1vVlXprvAI8S4pQu/7G53kwwcIC9zAfoI=;
        b=A3eKYhszGqggSdlZBhXgx4Ca5YeVKdyGunb2jOo0YPAbREP3wMvqZo7jFz+aSNPoAP
         3C9KYESG25smsp5c2pX7+X0wvYjwLsn4Fu1S+Ash029ooTEea6o5WbOs4c6u+iuqAj70
         RQPG1PDnvV7B7zMd+c/J4dxLRUpTgOOwTl99OO3qmxS0i/kZ5eXl0P/pPiwYEoA3QcyX
         Rcbl/m31DOyabgr2+jnfgSSv0DWfNc0i8W32XTJl9rIGtLvK11sbZlwZ1q1R89A/YB63
         xqEhvpahVRUigFK7F8yLfOFbTomRfqp/91+YrM5s9AB5AByB4Ves3qoK2cTuJjS7kKcY
         WNBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u21si206970lja.1.2019.03.31.06.39.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:39:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,292,1549926000"; 
   d="scan'208";a="301295735"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2019 15:39:05 +0200
Date: Sun, 31 Mar 2019 15:39:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/7] staging: rtlwifi: halmac: Compress
 two lines into one line
In-Reply-To: <CANTOzWE1am3xofByCG+dFNmwgyivZwGxtZjLHWXazT5NkLP=EQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903311538220.2578@hadrien>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com> <a94f301af01c055a8524ae77206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98@gmail.com> <alpine.DEB.2.21.1903311527480.2578@hadrien>
 <CANTOzWE1am3xofByCG+dFNmwgyivZwGxtZjLHWXazT5NkLP=EQ@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1642326973-1554039545=:2578"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1642326973-1554039545=:2578
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 31 Mar 2019, Payal Kshirsagar wrote:

>
>
> On Sun, Mar 31, 2019, 6:58 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>       6 and 7 have the same subject line.
>
>
> What can I do now ? 
> Should I send them again in v2 or just have to send 7th only?

If you make any change in a series, you should always send the entire
series again.

The only exception is when Greg has applied some of the patches in the
series.

julia

> Thanking
> Payal
>
>       julia
>
>       On Sun, 31 Mar 2019, Payal Kshirsagar wrote:
>
>       > Challenge suggested by coccinelle.
>       > Compresses two lines into one line and remove unnecessary
>       variable.
>       >
>       > Signed-off-by: Payal Kshirsagar
>       <payal.s.kshirsagar.98@gmail.com>
>       > ---
>       > 
>       drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
>       | 5 +----
>       >  1 file changed, 1 insertion(+), 4 deletions(-)
>       >
>       > diff --git
>       a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
>       b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
>       > index 0bd6abd..0ae0d02 100644
>       > ---
>       a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
>       > +++
>       b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
>       > @@ -192,7 +192,6 @@ halmac_cfg_rx_aggregation_88xx_usb(struct
>       halmac_adapter *halmac_adapter,
>       >  u8 halmac_reg_read_8_usb_88xx(struct halmac_adapter
>       *halmac_adapter,
>       >                             u32 halmac_offset)
>       >  {
>       > -     u8 value8;
>       >       void *driver_adapter = NULL;
>       >       struct halmac_api *halmac_api;
>       >
>       > @@ -205,9 +204,7 @@ u8 halmac_reg_read_8_usb_88xx(struct
>       halmac_adapter *halmac_adapter,
>       >       driver_adapter = halmac_adapter->driver_adapter;
>       >       halmac_api = (struct halmac_api
>       *)halmac_adapter->halmac_api;
>       >
>       > -     value8 = PLATFORM_REG_READ_8(driver_adapter,
>       halmac_offset);
>       > -
>       > -     return value8;
>       > +     return PLATFORM_REG_READ_8(driver_adapter,
>       halmac_offset);
>       >  }
>       >
>       >  /**
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/a94f301af01c055a8524ae77
>       206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>       --
>       You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19033115
>       27480.2578%40hadrien.
>       For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CANTOzWE1am3xofByCG%2BdF
> NmwgyivZwGxtZjLHWXazT5NkLP%3DEQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1642326973-1554039545=:2578--


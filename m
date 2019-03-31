X-GM-THRID: 6674542859228545024
X-Received: by 2002:a19:c50d:: with SMTP id w13mr1534375lfe.9.1554042126208;
        Sun, 31 Mar 2019 07:22:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:894e:: with SMTP id b14ls827808ljk.3.gmail; Sun, 31 Mar
 2019 07:22:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx0DOso30hFIOWqnzU1D0xWNghOi4oTLXSCvXiNhVvfHkVkCHtph4cNP4afjevZiQcS56Js
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr1421070ljs.17.1554042125298;
        Sun, 31 Mar 2019 07:22:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554042125; cv=none;
        d=google.com; s=arc-20160816;
        b=DEhtuGxCyooT4CQeMNOCOK4f9NrALjfGRC42Rdjm2UZIlgq4uxd+7qiWtR2PU2Zibl
         KZhxn64vSVYFxCJeoghqFguBmUqNoj7DOwNj21TQZOJaMXdZ0hDjWJC8X/EUVOCE1mey
         roGXd2bW8WGLT/ePx3qgFdrHZrGgm3TlN2c//mIzTF0B3ZX/mYZ2PpUjrZcLbOcZqMDO
         WvkmKPfLsLiWBqO3YQ4vya/kKaUha5DlPmPA5AejRc0PLkPZnot2O9t+uTSFq4jfoQe/
         NzasMUN2pkzVKwK7gpI7eJLBiPwGlamAol4nLcQWKHX2Ij8RlKeDXligrXDGICN8NXgc
         BhQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=XEkosGBFnNpKPXrJRuBQMHu3YbMB0JyqQVAiWO2SabI=;
        b=Em6BT5twVxG5Ua8dNUYbqghzhsGUe8yMvOtIyEEKVXPky2jUMLpM4PbiylRntATvuB
         1c9zqFn2OXLujiWtmMY5jzTPAqQS3h6UQg7K8CXaXXP/+RqbsdSL33rTLv3ah7HTqzck
         jd/sZj77RTXwG4gXDbta3Bvh/3FDyJOwDnFI1gsxobKoXYM7+Kuo4iYqV/YIcx0mpFdJ
         PZxvm+99HxLvalT6qrAXAYgAXVMaqHxDp7/fJm5w86/zmRSs3bJbOh00YQ/3MLPBMORD
         K+j+hAxv/Stm2JP9nDZdpUFooOYsTNGpeLvKRnfZkKobF+mCVOtCEWyr/1qc11z36LGg
         ZN7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v89si235779lje.4.2019.03.31.07.22.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 07:22:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,292,1549926000"; 
   d="scan'208";a="301297716"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2019 16:22:04 +0200
Date: Sun, 31 Mar 2019 16:22:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/7] staging: rtlwifi: halmac: Compress
 two lines into one line
In-Reply-To: <CANTOzWFTsR7vmzAn-ypO+WSzJAdQ5bJ+OSFautYj0RBGqDAvzA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903311621380.2578@hadrien>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com> <a94f301af01c055a8524ae77206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98@gmail.com> <alpine.DEB.2.21.1903311527480.2578@hadrien> <CANTOzWE1am3xofByCG+dFNmwgyivZwGxtZjLHWXazT5NkLP=EQ@mail.gmail.com>
 <alpine.DEB.2.21.1903311538220.2578@hadrien> <CANTOzWFTsR7vmzAn-ypO+WSzJAdQ5bJ+OSFautYj0RBGqDAvzA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1433349097-1554042124=:2578"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1433349097-1554042124=:2578
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 31 Mar 2019, Payal Kshirsagar wrote:

>
>
> On Sun, 31 Mar 2019 at 19:09, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Sun, 31 Mar 2019, Payal Kshirsagar wrote:
>
>       >
>       >
>       > On Sun, Mar 31, 2019, 6:58 PM Julia Lawall
>       <julia.lawall@lip6.fr> wrote:
>       >       6 and 7 have the same subject line.
>       >
>       >
>       > What can I do now ? 
>       > Should I send them again in v2 or just have to send 7th only?
>
>       If you make any change in a series, you should always send the
>       entire
>       series again.
>
>       The only exception is when Greg has applied some of the patches
>       in the
>       series.
>
>
> Would I send this patchset by dropping 2nd patch of this series.

I didn't actually ask you to drop any complete patches, only one of the
changes in a patch.

julia

> Thanks in advance,
> payal
>  
>       julia
>
>       > Thanking
>       > Payal
>       >
>       >       julia
>       >
>       >       On Sun, 31 Mar 2019, Payal Kshirsagar wrote:
>       >
>       >       > Challenge suggested by coccinelle.
>       >       > Compresses two lines into one line and remove
>       unnecessary
>       >       variable.
>       >       >
>       >       > Signed-off-by: Payal Kshirsagar
>       >       <payal.s.kshirsagar.98@gmail.com>
>       >       > ---
>       >       > 
>       >     
>        drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
>       >       | 5 +----
>       >       >  1 file changed, 1 insertion(+), 4 deletions(-)
>       >       >
>       >       > diff --git
>       >     
>        a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
>       >     
>        b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
>       >       > index 0bd6abd..0ae0d02 100644
>       >       > ---
>       >     
>        a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
>       >       > +++
>       >     
>        b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
>       >       > @@ -192,7 +192,6 @@
>       halmac_cfg_rx_aggregation_88xx_usb(struct
>       >       halmac_adapter *halmac_adapter,
>       >       >  u8 halmac_reg_read_8_usb_88xx(struct halmac_adapter
>       >       *halmac_adapter,
>       >       >                             u32 halmac_offset)
>       >       >  {
>       >       > -     u8 value8;
>       >       >       void *driver_adapter = NULL;
>       >       >       struct halmac_api *halmac_api;
>       >       >
>       >       > @@ -205,9 +204,7 @@ u8
>       halmac_reg_read_8_usb_88xx(struct
>       >       halmac_adapter *halmac_adapter,
>       >       >       driver_adapter = halmac_adapter->driver_adapter;
>       >       >       halmac_api = (struct halmac_api
>       >       *)halmac_adapter->halmac_api;
>       >       >
>       >       > -     value8 = PLATFORM_REG_READ_8(driver_adapter,
>       >       halmac_offset);
>       >       > -
>       >       > -     return value8;
>       >       > +     return PLATFORM_REG_READ_8(driver_adapter,
>       >       halmac_offset);
>       >       >  }
>       >       >
>       >       >  /**
>       >       > --
>       >       > 2.7.4
>       >       >
>       >       > --
>       >       > You received this message because you are subscribed
>       to the
>       >       Google Groups "outreachy-kernel" group.
>       >       > To unsubscribe from this group and stop receiving
>       emails from
>       >       it, send an email to
>       >       outreachy-kernel+unsubscribe@googlegroups.com.
>       >       > To post to this group, send email to
>       >       outreachy-kernel@googlegroups.com.
>       >       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/a94f301af01c055a852
>       4ae77
>       >     
>        206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98%40gmail.com.
>       >       > For more options, visit
>       https://groups.google.com/d/optout.
>       >       >
>       >
>       >       --
>       >       You received this message because you are subscribed to
>       the
>       >       Google Groups "outreachy-kernel" group.
>       >       To unsubscribe from this group and stop receiving emails
>       from
>       >       it, send an email to
>       >       outreachy-kernel+unsubscribe@googlegroups.com.
>       >       To post to this group, send email to
>       >       outreachy-kernel@googlegroups.com.
>       >       To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.190
>       33115
>       >       27480.2578%40hadrien.
>       >       For more options, visit
>       https://groups.google.com/d/optout.
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an
>       > email to outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/CANTOzWE1am3xofByCG
>       %2BdF
>       > NmwgyivZwGxtZjLHWXazT5NkLP%3DEQ%40mail.gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
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
>       38220.2578%40hadrien.
>       For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CANTOzWFTsR7vmzAn-ypO%2B
> WSzJAdQ5bJ%2BOSFautYj0RBGqDAvzA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1433349097-1554042124=:2578--


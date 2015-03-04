X-GM-THRID: 5240177819648
X-Received: by 10.180.87.166 with SMTP id az6mr4230940wib.1.1425508355154;
        Wed, 04 Mar 2015 14:32:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.98 with SMTP id bf2ls214063wib.30.gmail; Wed, 04 Mar
 2015 14:32:33 -0800 (PST)
X-Received: by 10.180.11.34 with SMTP id n2mr1498302wib.2.1425508353850;
        Wed, 04 Mar 2015 14:32:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si1202889wib.2.2015.03.04.14.32.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 14:32:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,343,1422918000"; 
   d="scan'208";a="124422453"
Received: from unknown (HELO [132.207.219.27]) ([132.207.219.27])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Mar 2015 23:32:32 +0100
Date: Wed, 4 Mar 2015 17:32:31 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Remove if
 conditions.
In-Reply-To: <8f8344f2-dc88-4816-b7bc-62536fc20f2d@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1503041732130.2734@hadrien>
References: <20150228215501.GA5201@localhost> <alpine.DEB.2.10.1503011640130.2545@hadrien> <8f8344f2-dc88-4816-b7bc-62536fc20f2d@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-2066488226-1425508352=:2734"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2066488226-1425508352=:2734
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

> No, the call to rtllib_act_scanning has no side effects.
>
> The function definition :
>
>  bool rtllib_act_scanning(struct rtllib_device *ieee, bool sync_scan)
>  {
>          if (ieee->softmac_features & IEEE_SOFTMAC_SCAN) {
>                  if (sync_scan)
>                          return ieee->be_scan_inprogress;
>                  else
>                          return ieee->actscanning || ieee->be_scan_inprogres
> s;
>          } else {
>                  return test_bit(STATUS_SCANNING, &ieee->status);
>          }
>  }
>
> It doesn't make any other changes.

OK, looks good.

julia

>
> Thanks,
> Navya
>  
>
>       >          if (priv->bHwRadioOff == true) {
>       >                  printk(KERN_INFO "=========>%s():hw radio
>       off,or Rf state is "
>       >                         "eRfOff, return\n", __func__);
>       > @@ -708,11 +704,6 @@ static int r8192_wx_set_wap(struct
>       net_device *dev,
>       >          int ret;
>       >          struct r8192_priv *priv = rtllib_priv(dev);
>       >
>       > -        if ((rtllib_act_scanning(priv->rtllib, false)) &&
>       > -            !(priv->rtllib->softmac_features &
>       IEEE_SOFTMAC_SCAN)) {
>       > -                ;        /* TODO - get rid of if */
>       > -        }
>       > -
>       >          if (priv->bHwRadioOff == true)
>       >                  return 0;
>       >
>       > @@ -763,9 +754,6 @@ static int r8192_wx_set_enc(struct
>       net_device *dev,
>       >                               {0x00, 0x00, 0x00, 0x00, 0x00,
>       0x03} };
>       >          int i;
>       >
>       > -        if ((rtllib_act_scanning(priv->rtllib, false)) &&
>       > -           !(priv->rtllib->softmac_features &
>       IEEE_SOFTMAC_SCAN))
>       > -                ;        /* TODO - get rid of if */
>       >          if (priv->bHwRadioOff == true)
>       >                  return 0;
>       >
>       > --
>       > 1.9.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20150228215501.GA5201%40
>       localhost.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/8f8344f2-dc88-4816-b7bc-
> 62536fc20f2d%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2066488226-1425508352=:2734--


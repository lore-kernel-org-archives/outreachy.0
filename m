X-GM-THRID: 6615030775466164224
X-Received: by 2002:a19:519a:: with SMTP id g26-v6mr771944lfl.2.1540273204017;
        Mon, 22 Oct 2018 22:40:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:7412:: with SMTP id v18-v6ls90088lfe.70.gmail; Mon, 22
 Oct 2018 22:40:03 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63natlPBye3uPdfVN9+8kqtdnmnvpKFVTJgalaLqi8ua7gohjXI23IY86GuGJBSR4RO48oz
X-Received: by 2002:a19:6910:: with SMTP id e16mr415092lfc.42.1540273203074;
        Mon, 22 Oct 2018 22:40:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540273203; cv=none;
        d=google.com; s=arc-20160816;
        b=vcCnZGpOpY3e6DDzOe8ahhgx5z/ZFx/XIe3NfZo2K1v6l/rQK36ncDwkXe662he0iR
         No3WVntDA6qUABUFgFMMmy5XlXaxnhUTKuY8IURZeadz0XObhlZ6yK6p2rdovrTf7w6z
         uttyaQ6qLLvXIxPSxhcMnhGG9+nqhB5GZFt49zDHpY6zCsyyY//CMwEUqOnKRXkBBf5p
         jZgFAaoDe3E+eGzOG7SNVw0gip7OQiSakV80LwBeNNgmpIYqh0Lz1pFHy085eqG1Jlk3
         1ABYtLa0ryrph0bTILs8KLj1PKTmvY87JMax5COB9RDnIZ/hSSok95jGdilFm+C+azzb
         O7jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1C3uGgx2DFdJfs+4Mek2td9Zw/m0hZg78JIlP7LdSXE=;
        b=zUwN46JUKMVKyA0kcpWTS8pr4Uczp68hS/MSzyMx5gp36SkrG+eYNtOw0R0R0I17Ji
         7DIlK7jzZ3THY5jeDDLGk6ITF61rTmXHBZEHmBCJUM7qH5XdTNYZIIVxB0sZrTLeRp6c
         RYjxOo3s83v6RGzm+0aMzJStL7hb5N6pTxDOnrdatn19Rx5duu0s/xIjrmAQBXWeRk4U
         DqhFN4Y54pDNRTp8272+pr7fHUz/sK0yJXMIGlrIIgy2Xusj1G0uc6TGPNM/b3QrqBN/
         tz0tHcK3e4CbgJisD/FAzxN0PYr/Ybaoy08rKZHr7zAp0nAlHNm2TeEiL9Po5NvAmOv5
         lf4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w13-v6si5881lfe.3.2018.10.22.22.40.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 22:40:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,414,1534802400"; 
   d="scan'208";a="283000004"
Received: from 30.9-255-62.static.virginmediabusiness.co.uk (HELO [172.16.7.66]) ([62.255.9.30])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Oct 2018 07:40:01 +0200
Date: Tue, 23 Oct 2018 06:40:01 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Maya Nakamura <m.maya.nakamura@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: Remove unnecessary
 variable
In-Reply-To: <20181022231706.GA2384@k-vBox>
Message-ID: <alpine.DEB.2.21.1810230639430.2343@hadrien>
References: <20181022041747.GA2618@k-vBox> <alpine.DEB.2.21.1810220805200.2325@hadrien> <20181022231706.GA2384@k-vBox>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 22 Oct 2018, Maya Nakamura wrote:

> On Mon, Oct 22, 2018 at 08:08:10AM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 21 Oct 2018, Maya Nakamura wrote:
> >
> > > Remove an unnecessary variable that is declared and assigned a value only
> > > to return it. Issue found by Coccinelle's semantic patch results for
> > > returnvar.cocci.
> >
> > Just looking around in this code, just above there is a function with
> > double { { } } that could be cleaned up.
> >
> > Looking further, in phydm_process_rssi_ofdm there appear to be variables
> > with parentheses around them.  Maybe you can look around in this file for
> > other things to clean up.
> >
> > The following does not look so good either:
> >
> > 	if (entry->rssi_stat.ofdm_pkt ==
> > 	    64) { /* speed up when all packets are OFDM*/
> >
> > julia
>
> Thank you for explaining to me what more I can do with the same file!
> I will look for more and resubmit this patch, or I might be able to
> try my first patchset.

Make a patchset, because these are different issues.

julia

>
> Maya
>
> > >
> > > Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> > > ---
> > >  drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > > index 90a41c64c0c2..fdc9af56e9d7 100644
> > > --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > > +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > > @@ -491,8 +491,7 @@ static u8 odm_sq_process_patch_rt_cid_819x_lenovo(struct phy_dm_struct *dm,
> > >  						  u8 is_cck_rate, u8 pwdb_all,
> > >  						  u8 path, u8 RSSI)
> > >  {
> > > -	u8 sq = 0;
> > > -	return sq;
> > > +	return 0;
> > >  }
> > >
> > >  static u8 odm_evm_db_to_percentage(s8 value)
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181022041747.GA2618%40k-vBox.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1810220805200.2325%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181022231706.GA2384%40k-vBox.
> For more options, visit https://groups.google.com/d/optout.
>


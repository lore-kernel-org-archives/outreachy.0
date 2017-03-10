X-GM-THRID: 6395630061335085056
X-Received: by 10.46.77.69 with SMTP id a66mr3010535ljb.11.1489126899425;
        Thu, 09 Mar 2017 22:21:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls921929ljd.15.gmail; Thu, 09 Mar
 2017 22:21:38 -0800 (PST)
X-Received: by 10.46.8.90 with SMTP id g26mr3070467ljd.16.1489126898278;
        Thu, 09 Mar 2017 22:21:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si116908wmg.0.2017.03.09.22.21.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 22:21:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,139,1486422000"; 
   d="scan'208";a="263958516"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 07:21:37 +0100
Date: Fri, 10 Mar 2017 07:21:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: Tamara Diaconita <diaconitatamara@gmail.com>, julia.lawall@lip6.fr, 
    aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: wilc1000: Enhance code
 formatting
In-Reply-To: <20170309232939.GB16746@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.20.1703100720060.2169@hadrien>
References: <20170309223059.7353-1-diaconita.tamara@gmail.com> <20170309232939.GB16746@d830.WORKGROUP>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2017, Alison Schofield wrote:

> On Fri, Mar 10, 2017 at 12:30:59AM +0200, Tamara Diaconita wrote:
> > This trims line size at 80 characters and makes code easier to read.
> >
> > Problem found with checkpatch.pl.
> >
> > Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> > ---
> >  drivers/staging/wilc1000/coreconfigurator.h | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> > index a2df5c7..00bb604 100644
> > --- a/drivers/staging/wilc1000/coreconfigurator.h
> > +++ b/drivers/staging/wilc1000/coreconfigurator.h
> > @@ -123,7 +123,8 @@ struct disconnect_info {
> >  s32 wilc_parse_network_info(u8 *msg_buffer,
> >  			    struct network_info **ret_network_info);
> >  s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
> > -			       struct connect_resp_info **ret_connect_resp_info);
> > +			       struct connect_resp_info
> > +			       **ret_connect_resp_info);
>
> Tamara,
>
> Here I might take the checkpath CHECK on alignment, rather than split
> the structure..
>
> That is, do this:
>
> s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
>                               struct connect_resp_info **ret_connect_resp_info);
>
> and live with this:
>
> CHECK: Alignment should match open parenthesis
> #126: FILE: coreconfigurator.h:126:
> +s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
> +			      struct connect_resp_info **ret_connect_resp_info);
>
> It still looks better than the line over 80.
>
> Let's ask Julia???

I agree with Alison.  Getting the whole declaration on one line within 80
characters is the best thing.  Maybe the name of the variable could be
shortened.

julia


>
> alisons
>
>
> >  void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
> >  				 u32 length);
> >  void wilc_network_info_received(struct wilc *wilc, u8 *buffer,
> > --
> > 2.9.3
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170309223059.7353-1-diaconita.tamara%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170309232939.GB16746%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
>


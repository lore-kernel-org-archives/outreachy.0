X-GM-THRID: 6394514785010974720
X-Received: by 10.46.1.12 with SMTP id 12mr1546025ljb.30.1488869683746;
        Mon, 06 Mar 2017 22:54:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.83 with SMTP id 19ls1563743ljv.49.gmail; Mon, 06 Mar
 2017 22:54:43 -0800 (PST)
X-Received: by 10.25.234.202 with SMTP id y71mr2387991lfi.2.1488869683099;
        Mon, 06 Mar 2017 22:54:43 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si205337wmg.3.2017.03.06.22.54.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 22:54:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,257,1484002800"; 
   d="scan'208";a="263426686"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 07:54:27 +0100
Date: Tue, 7 Mar 2017 07:54:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Tahia Khan <tahia.khan@gmail.com>, outreachy-kernel@googlegroups.com, 
    aditya.shankar@microchip.com, ganesh.krishna@microchip.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/3] staging: wilc1000: Fixes
 camel-casing in wilc_scan_complete_received
In-Reply-To: <20170307054849.GB14438@kroah.com>
Message-ID: <alpine.DEB.2.20.1703070754040.2098@hadrien>
References: <cover.1488838177.git.tahia.khan@gmail.com> <13aa6c6b8da66aecb569c9491b69b99dfb11e613.1488838177.git.tahia.khan@gmail.com> <20170307054849.GB14438@kroah.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Greg KH wrote:

> On Mon, Mar 06, 2017 at 05:23:15PM -0500, Tahia Khan wrote:
> > Fixes checkpatch warning by renaming pu8Buffer to buffer
> > and u32Length to length in wilc_scan_complete_received.
> >
> > Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
> > ---
> >  drivers/staging/wilc1000/coreconfigurator.h | 4 ++--
> >  drivers/staging/wilc1000/host_interface.c   | 6 +++---
> >  2 files changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> > index 10101f8..616bd21 100644
> > --- a/drivers/staging/wilc1000/coreconfigurator.h
> > +++ b/drivers/staging/wilc1000/coreconfigurator.h
> > @@ -124,8 +124,8 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
> >  			    struct network_info **ret_network_info);
> >  s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
> >  			       struct connect_resp_info **ret_connect_resp_info);
> > -void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
> > -				 u32 u32Length);
> > +void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
> > +				 u32 length);
>
> This can all now be on one line, correct?

If ther is any issue, then buf would also be perfectly fine as a name.

julia

>
> >  void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
> >  				u32 u32Length);
> >  void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
> > diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> > index f848bb8..853a57f3 100644
> > --- a/drivers/staging/wilc1000/host_interface.c
> > +++ b/drivers/staging/wilc1000/host_interface.c
> > @@ -3523,8 +3523,8 @@ void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
> >  	mutex_unlock(&hif_deinit_lock);
> >  }
> >
> > -void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
> > -				 u32 u32Length)
> > +void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
> > +				 u32 length)
>
> Same here.
>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170307054849.GB14438%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>


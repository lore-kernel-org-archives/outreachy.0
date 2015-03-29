X-GM-THRID: 10161736384512
X-Received: by 10.152.163.99 with SMTP id yh3mr6728144lab.8.1427632811318;
        Sun, 29 Mar 2015 05:40:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.7.129 with SMTP id j1ls446497wia.50.gmail; Sun, 29 Mar
 2015 05:40:10 -0700 (PDT)
X-Received: by 10.180.97.200 with SMTP id ec8mr1809235wib.5.1427632810961;
        Sun, 29 Mar 2015 05:40:10 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f5si76740wix.1.2015.03.29.05.40.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 05:40:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,488,1422918000"; 
   d="scan'208";a="130598862"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Mar 2015 14:40:10 +0200
Date: Sun, 29 Mar 2015 14:39:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristina Georgiana Opriceana <cristina.opriceana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Remove duplicated
 argument to |
In-Reply-To: <15b6d646-9754-4212-a199-83d1b23ddd30@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1503291439380.2644@hadrien>
References: <20150328013012.GA7624@Inspiron> <alpine.DEB.2.02.1503280706330.2060@localhost6.localdomain6> <15b6d646-9754-4212-a199-83d1b23ddd30@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-416524690-1427632797=:2644"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-416524690-1427632797=:2644
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 29 Mar 2015, Cristina Georgiana Opriceana wrote:

>
> On Saturday, March 28, 2015 at 8:07:40 AM UTC+2, Julia Lawall wrote:
>       On Sat, 28 Mar 2015, Cristina Opriceana wrote:
>
>       > Delete duplicated argument to | for the state argument in
>       > the _clr_fwstate_() function call as it is redundant.
>       > Detected with coccinelle.
>       >
>       > Signed-off-by: Cristina Opriceana <cristina....@gmail.com>
>       > ---
>       >  drivers/staging/rtl8712/rtl871x_ioctl_set.c | 3 +--
>       >  1 file changed, 1 insertion(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
>       b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
>       > index bd1d1b7..22262b3 100644
>       > --- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
>       > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
>       > @@ -266,8 +266,7 @@ void
>       r8712_set_802_11_infrastructure_mode(struct _adapter *padapter,
>       >                  /* clear WIFI_STATION_STATE; WIFI_AP_STATE;
>       WIFI_ADHOC_STATE;
>       >                   * WIFI_ADHOC_MASTER_STATE */
>       >                  _clr_fwstate_(pmlmepriv, WIFI_STATION_STATE |
>       WIFI_AP_STATE |
>       > -                              WIFI_ADHOC_STATE |
>       WIFI_ADHOC_MASTER_STATE |
>       > -                              WIFI_AP_STATE);
>       > +                              WIFI_ADHOC_STATE |
>       WIFI_ADHOC_MASTER_STATE);
>
>       For these, you should normally check the nearby code to see if
>       they
>       actually meant something else, but thanks to the comment that
>       seems
>       unlikely in this case.  How did you find it?
>
>       julia
>
>
> Well, it was detected with coccinelle, then I followed the code and saw it
> was duplicated.

Oops, I missed that you already said that in the commit message :)

julia


>
>  
>
>       >                  switch (networktype) {
>       >                  case Ndis802_11IBSS:
>       >                          set_fwstate(pmlmepriv,
>       WIFI_ADHOC_STATE);
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
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20150328013012.GA7624%40
>       Inspiron.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/15b6d646-9754-4212-a199-
> 83d1b23ddd30%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-416524690-1427632797=:2644--


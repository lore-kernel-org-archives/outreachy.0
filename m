X-GM-THRID: 6674267883353145344
X-Received: by 2002:a17:906:a417:: with SMTP id l23mr4123311ejz.4.1554148346489;
        Mon, 01 Apr 2019 12:52:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1f51:: with SMTP id d17ls276229ejk.11.gmail; Mon, 01
 Apr 2019 12:52:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwB+UNyDel3NYNiOerz3J6RHRbAO5kCRYQq/OlZh9jFeToUPPoJBKY3yUTvqtT6/JhQ1+yG
X-Received: by 2002:a17:906:b288:: with SMTP id q8mr4121738ejz.10.1554148345281;
        Mon, 01 Apr 2019 12:52:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554148345; cv=none;
        d=google.com; s=arc-20160816;
        b=s4y5Y+ImJFSazrMn+W4N/goy5bJzIyFeA+WsPS6D89WzmbgppcZe0lw+tBXmYeGAqZ
         iIQivpCkOFh39HR05P/iYFkYcHncsoa5Jw8OvGVwryFEtvIRFZMw9+SExnaKQxxJWHoA
         jTQlpus8On3SimA8bWXpn9WRaG2FE/VFqQHbHZBKIzfOhvsKurPY25YHjAEnO1X3baWQ
         i4RfwCZANbdEl+ss/Bq61p+hQwqre0wpb8kXrKyo1Y9CIbiQZ99gG69UugRpmmsD+w5d
         DckFGOyTaurBal53h9UITUy9jPi+kgUaFS+JoVSdhOdPgeHfZi6DEzyKPCB9eywjH0Ew
         T4CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=RCbqBQfukTNKWMJfJyn29Wc3QMzB35BycBdjYEqtR9k=;
        b=L+LRrNpC+/nAnteJh/JdVRZOZvpMORKyxy+Ca0oYddyftsJW8cPVQ9JKHdISVO9Yur
         qF58S/IrMtR/r7OUVdLQ8/e4mGu3IR6zXq3+gFfeMPGLrt8NsWDX8UwXWcErR9t7tcZb
         1cjtdfLjStucJWNTGuDZu1z4epzTyRXc/1codab6xxJ1P1sr4MFvYa2rPKy+qqNJpooR
         tZuEkzuy5O4BgoC6ZPa6eBl6Z7KZzMJf35aTNmyZIhmHo7eMSiwHFLGlL+iZXe9PVpx8
         v4CbMixX+TQ6WHVFZHoGLnaKtVuH5/L28UWE3+tEOpnGG/9VN018qqye5cZIPv+Tb+Fe
         Xm4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l53si630123edc.2.2019.04.01.12.52.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 12:52:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,297,1549926000"; 
   d="scan'208";a="301441498"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Apr 2019 21:52:24 +0200
Date: Mon, 1 Apr 2019 21:52:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Larry.Finger@lwfinger.net, 
    Florian Schilhabel <florian.c.schilhabel@googlemail.com>, 
    Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 6/7] staging: rtl8712: remove
 unnecessary NULL check
In-Reply-To: <CAPnhUpaFnAoWFQLO2VadZRv_qdeEbu9osncGZG0bkyk1Pib2bg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1904012151530.2530@hadrien>
References: <20190330192742.65250-1-himadri18.07@gmail.com> <20190331022155.68569-1-himadri18.07@gmail.com> <20190331022155.68569-7-himadri18.07@gmail.com> <alpine.DEB.2.21.1903311013430.2578@hadrien>
 <CAPnhUpaFnAoWFQLO2VadZRv_qdeEbu9osncGZG0bkyk1Pib2bg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-955212433-1554148344=:2530"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-955212433-1554148344=:2530
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 1 Apr 2019, Himadri Pandya wrote:

>
>
> On Sun, Mar 31, 2019 at 1:45 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Sun, 31 Mar 2019, Himadri Pandya wrote:
>
>       > Remove unnecessary NULL check for wlan_network *pnetwork because
>       > container_of will not return NULL in this usage.
>
>       Actually, it is possible that it can, because of the obscure reason that
>       the list field is at the top of the structure.  You can see if it is
>       possible and useful to make the same check without the container_of call.
>
>       julia
>
>
> Okay. 
>
> I think pmlmepriv->pscanned is used to get the address of mlme_priv 's member struct wlan_network cur_network using container_of(). I can directly check if struct wlan_netowrk's member struct list_head list is allocated memory or not. Because it is
> the first member and if the memory is allocated, the pointer to it won't be NULL. So instead of using container_of(), I think I should just check if pmlmepriv->cur_network->list is NULL or not.
>
> Please correct me if I am mistaken.

I think that you can test the value before the call to container_of.

julia

>
> Thank you.
>
> - Himadri
>
>
>       >
>       > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
>       > ---
>       >  drivers/staging/rtl8712/rtl871x_mlme.c | 2 --
>       >  1 file changed, 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
>       > index 1a15c45aa83b..be44c6b2819b 100644
>       > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
>       > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
>       > @@ -1119,8 +1119,6 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
>       >               }
>       >               pnetwork = container_of(pmlmepriv->pscanned,
>       >                                       struct wlan_network, list);
>       > -             if (pnetwork == NULL)
>       > -                     return _FAIL;
>       >               pmlmepriv->pscanned = pmlmepriv->pscanned->next;
>       >               if (pmlmepriv->assoc_by_bssid) {
>       >                       dst_ssid = pnetwork->network.MacAddress;
>       > --
>       > 2.17.1
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190331022155.68569-7-himadri18.07%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>       --
>       You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>       To post to this group, send email to outreachy-kernel@googlegroups.com.
>       To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311013430.2578%40hadrien.
>       For more options, visit https://groups.google.com/d/optout.
>
>
>
--8323329-955212433-1554148344=:2530--


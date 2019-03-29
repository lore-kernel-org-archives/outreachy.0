X-GM-THRID: 6673502133906571264
X-Received: by 2002:ac2:4856:: with SMTP id 22mr1007087lfy.12.1553824744763;
        Thu, 28 Mar 2019 18:59:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4601:: with SMTP id t1ls79644lja.2.gmail; Thu, 28 Mar
 2019 18:59:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz1HpGn2B5IqivjW+Vd3sasXMUKJZDoMrKxmezAlja6NLV8QcCtWzGDLu8tHvTOKm5Imm+Z
X-Received: by 2002:a2e:9c2:: with SMTP id 185mr872715ljj.4.1553824744043;
        Thu, 28 Mar 2019 18:59:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553824744; cv=none;
        d=google.com; s=arc-20160816;
        b=ieCaEMi4TReYkYmkSRd/C9OSShDH+4oriHaGsYC9NlBEV4kZ6S2pLSmzzhzOjfiVpU
         WPIkfCj2zC/8wNDo/Rganb9mQ34DFR+TWcQ2k7eDJD2oXaWRYCOcRCeoB+ayXXXyREhv
         uFdDOiP14Ummb9o5Y6c78/v1zewHYzZ7DLvQEjPNZ4QZpWQZ1NPZHBVCmvSHft7tLht+
         atVqvq7BSSNNIijyE+GiU2zD6tWB6MrgO1qmIOmDtYQIRFTk64D+YLGdf41kkS0kB+51
         bLgLyN9H2f1yDcytWfDn1OxoRU8XVHghJEyfk5ZkBE6ehQfGtjwh0fGjbu5FE7cUw2GX
         A98g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6MseFqroXBy18u5JjEUnEJ8xSIzMKX4mk/cuFswle2Y=;
        b=PWtIzfwi6oqOijwQY3CqPo9HBK+7RKITyxV01nDLK4/gFlljlPZ/ZSUkvdpZuU4RxG
         XtO7gnVyjYqpj8m2xWO6NXLliqmC8jAqoF3HCEa6yR05HUZH9RDFblVVgrl8P0Pf18vI
         rCa1XbLMGNWKaP4pVzqh8sN33sjl5f9Esy6mxdK3QEcIHLy/5atMDeIgKLWVNnAMle/r
         xrutzJNv9+T6ATaJRxTXq1bJn39kTvFkt9vpw3lTOaV5DdsaJyBvqPlUVcf7iZqvq0pR
         FlNbmawiT1DBKclf3O5HmcqFb10nDRNtgG94DarJydSxmynxN1NONhufEqVxUvCPfP9K
         v9gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FJDurs5Y;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com. [2a00:1450:4864:20::533])
        by gmr-mx.google.com with ESMTPS id c25si25582lfh.2.2019.03.28.18.59.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 18:59:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) client-ip=2a00:1450:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FJDurs5Y;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x533.google.com with SMTP id x14so704656eds.1
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 18:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6MseFqroXBy18u5JjEUnEJ8xSIzMKX4mk/cuFswle2Y=;
        b=FJDurs5Ybo6U0Qvy/tDIw1Ket/5gOTInEd/t6V3mik4h+bfizqdH2KiM1IaAm9syvU
         PZ4ncTSQOXPcKJKclW5TYXn1uus39DdFxTdW3wzn6HaFbpxd3GOw4rhg5E4WPBTB+Vxx
         CjyOA3WC4AQBs+3QbQDVDy2416p9eYpO35ynwyHHnT8b/b3sMSZBFUYmzOeXmNkD1cEV
         gOUAKJ65Pq7mwZQyqHSdlOBUgxupe5oo88qoVXAFBOAKBOWi4ALYHkkXAP2T2r8xn5Aj
         RSVGaagE43rETom60aR+XOaJvRTQsS2WlmrFk6DCMasVR6tpHXop9bYxhpvYyTpT/oOX
         7gag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6MseFqroXBy18u5JjEUnEJ8xSIzMKX4mk/cuFswle2Y=;
        b=BD0DS/h9Aen7uZy2AlbxuL8VpEhB8/YelXFv3M2iBK+DZmhnPL7WZJHGAuRdEK1Dam
         NykKk9VopnXqw7ACA8TmWT6They/2MD/3VTZBOfy/LyaUNvw4JG0Cd+0HoHFIHX0JV4W
         y/dmjgGbuDsjc8PfgHYYa1OXf64SsMJLvpjHiRKx1qEfHolphTNeps/6DtqLmnxfHRtN
         xw0CmdhcXsYMLIe6XVvvWRl0gjSgH5328nMqmdZpag7rgSGahwxiJN/pc+fDxCDNcdW0
         PTDBde7n4QHN5DFqueGZ/bCiwhE6Ga35GImXHfbGMPhzIaxzrcy1qiEX0CtIm+kmrICj
         ML9g==
X-Gm-Message-State: APjAAAXBDxokHcyUkykkDAOkIQZdKT/biUVFKu0UkfHEdxbfpERLo6iG
	ZYBiT0xcRN49PX2dlrQy4CkQIhGxJAej1nf0ZiqtcQ==
X-Received: by 2002:a17:906:bce9:: with SMTP id op9mr25999007ejb.65.1553824743498;
 Thu, 28 Mar 2019 18:59:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190328175622.27971-1-sanjana99reddy99@gmail.com> <alpine.DEB.2.21.1903281949430.2760@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903281949430.2760@hadrien>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Fri, 29 Mar 2019 07:28:51 +0530
Message-ID: <CAO-bXGAosXq5wfFxj2YNuO6yXm=tzUDOO2==TzxWof3V0bG4dQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: host_interface.c:
 Modify return statement.
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000e1284005853203b9"

--000000000000e1284005853203b9
Content-Type: text/plain; charset="UTF-8"

On Fri, 29 Mar 2019, 00:20 Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 28 Mar 2019, Sanjana Sanikommu wrote:
>
> > Challenge suggested by coccinelle.
> > Remove return variable and directly return the value
> > Issue found using ret.cocci
> >
> > Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> > ---
> >  drivers/staging/wilc1000/host_interface.c | 23 +++++------------------
> >  1 file changed, 5 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/staging/wilc1000/host_interface.c
> b/drivers/staging/wilc1000/host_interface.c
> > index 4dd9a20f6a0b..a10c31bce07f 100644
> > --- a/drivers/staging/wilc1000/host_interface.c
> > +++ b/drivers/staging/wilc1000/host_interface.c
> > @@ -1358,17 +1358,14 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const
> u8 *rx_gtk, u8 gtk_key_len,
> >  int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr
> *pmkid)
> >  {
> >       struct wid wid;
> > -     int result;
> >
> >       wid.id = WID_PMKID_INFO;
> >       wid.type = WID_STR;
> >       wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
> >       wid.val = (u8 *)pmkid;
> >
> > -     result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> > +     return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> >                                     wilc_get_vif_idx(vif));
>
> The last argument needs to be moved.  Please check the other cases for the
> same issue.
>

   I will adjust the spaces.

   Sanjana

>
> julia
>
> > -
> > -     return result;
> >  }
> >
> >  int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
> > @@ -1403,8 +1400,7 @@ int wilc_set_join_req(struct wilc_vif *vif, u8
> *bssid, const u8 *ies,
> >               conn_info->req_ies_len = ies_len;
> >               conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
> >               if (!conn_info->req_ies) {
> > -                     result = -ENOMEM;
> > -                     return result;
> > +                     return -ENOMEM;
> >               }
> >       }
> >
> > @@ -1570,7 +1566,6 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct
> cfg_param_attr *param)
> >  {
> >       struct wid wid_list[4];
> >       int i = 0;
> > -     int result;
> >
> >       if (param->flag & WILC_CFG_PARAM_RETRY_SHORT) {
> >               wid_list[i].id = WID_SHORT_RETRY_LIMIT;
> > @@ -1601,10 +1596,8 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct
> cfg_param_attr *param)
> >               i++;
> >       }
> >
> > -     result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
> > +     return wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
> >                                     i, wilc_get_vif_idx(vif));
> > -
> > -     return result;
> >  }
> >
> >  static void get_periodic_rssi(struct timer_list *t)
> > @@ -2121,7 +2114,6 @@ int wilc_setup_multicast_filter(struct wilc_vif
> *vif, u32 enabled, u32 count,
> >
> >  int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
> >  {
> > -     int ret;
> >       struct wid wid;
> >
> >       wid.id = WID_TX_POWER;
> > @@ -2129,15 +2121,12 @@ int wilc_set_tx_power(struct wilc_vif *vif, u8
> tx_power)
> >       wid.val = &tx_power;
> >       wid.size = sizeof(char);
> >
> > -     ret = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> > +     return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> >                                  wilc_get_vif_idx(vif));
> > -
> > -     return ret;
> >  }
> >
> >  int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
> >  {
> > -     int ret;
> >       struct wid wid;
> >
> >       wid.id = WID_TX_POWER;
> > @@ -2145,8 +2134,6 @@ int wilc_get_tx_power(struct wilc_vif *vif, u8
> *tx_power)
> >       wid.val = tx_power;
> >       wid.size = sizeof(char);
> >
> > -     ret = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
> > +     return wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
> >                                  wilc_get_vif_idx(vif));
> > -
> > -     return ret;
> >  }
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190328175622.27971-1-sanjana99reddy99%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903281949430.2760%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000e1284005853203b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, 29 Mar 2019, 00:20 Julia Lawall, &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><br>
<br>
On Thu, 28 Mar 2019, Sanjana Sanikommu wrote:<br>
<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; Remove return variable and directly return the value<br>
&gt; Issue found using ret.cocci<br>
&gt;<br>
&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"mailto:sanjana99reddy9=
9@gmail.com" target=3D"_blank" rel=3D"noreferrer">sanjana99reddy99@gmail.co=
m</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wilc1000/host_interface.c | 23 +++++------------=
------<br>
&gt;=C2=A0 1 file changed, 5 insertions(+), 18 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/stagi=
ng/wilc1000/host_interface.c<br>
&gt; index 4dd9a20f6a0b..a10c31bce07f 100644<br>
&gt; --- a/drivers/staging/wilc1000/host_interface.c<br>
&gt; +++ b/drivers/staging/wilc1000/host_interface.c<br>
&gt; @@ -1358,17 +1358,14 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, cons=
t u8 *rx_gtk, u8 gtk_key_len,<br>
&gt;=C2=A0 int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_=
attr *pmkid)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct wid wid;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0int result;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://wid.id" rel=3D"noreferrer =
noreferrer" target=3D"_blank">wid.id</a> =3D WID_PMKID_INFO;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wid.type =3D WID_STR;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wid.size =3D (pmkid-&gt;numpmkid * sizeof(st=
ruct wilc_pmkid)) + 1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wid.val =3D (u8 *)pmkid;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0result =3D wilc_send_config_pkt(vif, WILC_SET_CFG=
, &amp;wid, 1,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return wilc_send_config_pkt(vif, WILC_SET_CFG, &a=
mp;wid, 1,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wilc_get_vif_=
idx(vif));<br>
<br>
The last argument needs to be moved.=C2=A0 Please check the other cases for=
 the<br>
same issue.<br></blockquote></div></div><div dir=3D"auto"><br></div><div di=
r=3D"auto">=C2=A0 =C2=A0I will adjust the spaces.</div><div dir=3D"auto">=
=C2=A0 =C2=A0</div><div dir=3D"auto">=C2=A0 =C2=A0Sanjana</div><div dir=3D"=
auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return result;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)<br>
&gt; @@ -1403,8 +1400,7 @@ int wilc_set_join_req(struct wilc_vif *vif, u8 *=
bssid, const u8 *ies,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0conn_info-&gt;re=
q_ies_len =3D ies_len;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0conn_info-&gt;re=
q_ies =3D kmemdup(ies, ies_len, GFP_KERNEL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!conn_info-&=
gt;req_ies) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0result =3D -ENOMEM;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0return result;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0return -ENOMEM;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; @@ -1570,7 +1566,6 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struc=
t cfg_param_attr *param)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct wid wid_list[4];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int i =3D 0;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0int result;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (param-&gt;flag &amp; WILC_CFG_PARAM_RETR=
Y_SHORT) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wid_list[i].id =
=3D WID_SHORT_RETRY_LIMIT;<br>
&gt; @@ -1601,10 +1596,8 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, stru=
ct cfg_param_attr *param)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i++;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0result =3D wilc_send_config_pkt(vif, WILC_SET_CFG=
, wid_list,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return wilc_send_config_pkt(vif, WILC_SET_CFG, wi=
d_list,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i, wilc_get_v=
if_idx(vif));<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return result;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static void get_periodic_rssi(struct timer_list *t)<br>
&gt; @@ -2121,7 +2114,6 @@ int wilc_setup_multicast_filter(struct wilc_vif =
*vif, u32 enabled, u32 count,<br>
&gt;<br>
&gt;=C2=A0 int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct wid wid;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://wid.id" rel=3D"noreferrer =
noreferrer" target=3D"_blank">wid.id</a> =3D WID_TX_POWER;<br>
&gt; @@ -2129,15 +2121,12 @@ int wilc_set_tx_power(struct wilc_vif *vif, u8=
 tx_power)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wid.val =3D &amp;tx_power;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wid.size =3D sizeof(char);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0ret =3D wilc_send_config_pkt(vif, WILC_SET_CFG, &=
amp;wid, 1,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return wilc_send_config_pkt(vif, WILC_SET_CFG, &a=
mp;wid, 1,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 wilc_get_vif_idx(vif));<br=
>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct wid wid;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://wid.id" rel=3D"noreferrer =
noreferrer" target=3D"_blank">wid.id</a> =3D WID_TX_POWER;<br>
&gt; @@ -2145,8 +2134,6 @@ int wilc_get_tx_power(struct wilc_vif *vif, u8 *=
tx_power)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wid.val =3D tx_power;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wid.size =3D sizeof(char);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0ret =3D wilc_send_config_pkt(vif, WILC_GET_CFG, &=
amp;wid, 1,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return wilc_send_config_pkt(vif, WILC_GET_CFG, &a=
mp;wid, 1,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 wilc_get_vif_idx(vif));<br=
>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 }<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20190328175622.27971-1-sanjana99reddy99%40=
gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.g=
oogle.com/d/msgid/outreachy-kernel/20190328175622.27971-1-sanjana99reddy99%=
40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903281949430.2760%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903281949430.2760%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--000000000000e1284005853203b9--


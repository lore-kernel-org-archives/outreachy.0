X-GM-THRID: 7021611435626070016
X-Received: by 2002:a25:d58:: with SMTP id 85mr3472362ybn.275.1634972708565;
        Sat, 23 Oct 2021 00:05:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:7741:: with SMTP id s62ls4824873ybc.0.gmail; Sat, 23 Oct
 2021 00:05:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxjbCR+nMKuivNlGs4QkCU+kmfB2kk9PEO2wK6zL+7/7utJDSj3EFHC/M5jB9+3rj6y1Jtf
X-Received: by 2002:a25:e753:: with SMTP id e80mr4694469ybh.523.1634972707533;
        Sat, 23 Oct 2021 00:05:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634972707; cv=none;
        d=google.com; s=arc-20160816;
        b=Kpv4r4iraY2pvAnve1utSZ9F52Qqo/Qo0KQ8hTQH5swOCHNOOJRgaHLrnnnP+oWCs5
         /ZqRJa+Rrys8eLqNS6RbVjl559mcjV352hpDel99j0efT2DOjNWCjW8LPU4iTxkVstUY
         K3gRWzAXxpwDhMNzNsLtq58pbyEM/EOYbdjXLR/fFF5yEr8w56IyYyTqpnHRsQaYIOAt
         14Jy9yov2qgFKiIl7j+Ft3RaWSwXhdcsvZiWTIl7A6RFP0s+rtsRtuQlEXD3hRwxz2Gn
         Jm0NSb7WyqJKEpbx5/aEU7614pa1MXE9MwAzpzawuhd7AyKQJ/vlWUztRlhGyxiCWEG6
         oj3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uLD2x34VR9wGjl2xGcpBSG87CkVAO5p2lbSd+1dkugg=;
        b=goOn2kGeX0btQKrDOValjB7LDlZUS0DVdSm2nkCC5qlooL+Hn1E5iQ+R6hYcGtzM2N
         7u62atj82K0N4+7rL5zG2ovt7luRB75Fkto69ehtuFH9biOKjPMTFCREJWDsRNJkfKrW
         kDovCYzZnHLQsKwNMXMtsJ5fLYeBm/nCzwAXhsplbKcdc7i0IlBfo47O1ukldyuvCojF
         RL4zEakxP9W0+sUTdhyNvKm85ijhYet9elX/ThkiF/NAO7rtp4C+o6WYycwOdKXdAKdb
         gbPJBnwSe2umWXrPJGFZ8I7HC+2t/+0U00i9vNci0/ubF+/I1pzSzUnOsyBjsXpJMKVS
         Faow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Y5L7TPZw;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::f2b as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com. [2607:f8b0:4864:20::f2b])
        by gmr-mx.google.com with ESMTPS id k1si1363020ybp.1.2021.10.23.00.05.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Oct 2021 00:05:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::f2b as permitted sender) client-ip=2607:f8b0:4864:20::f2b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Y5L7TPZw;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::f2b as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf2b.google.com with SMTP id gh1so3848161qvb.8;
        Sat, 23 Oct 2021 00:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uLD2x34VR9wGjl2xGcpBSG87CkVAO5p2lbSd+1dkugg=;
        b=Y5L7TPZwP3v3ZRjjpWkkZRyIGRvs4ICrZsgu24XxKuh+CtdICfDXMAspjSBNVA6QzH
         3Q4nWXaQr5HbY/y7q+JvkuRLPdUVCEX/etIT4Fxl7Q84QMFQmcdxs9QA9fDoqhOXRdhG
         05IWRnIcie6VfMapPrr/NBZSf9Ihqm+m0Cn7oVQFoZpqfQuifkr1i3i3WTp2mGa7UQpx
         SFUfnyjFL4TxiG8xJgRvXdO0bGz7Jd4xfiI0m9GoTVBhuSG4chT5bCa9v9bZ4mpit9TG
         8sa76cIbgkyw7rQlAiyAylsdxliJUsN/V2HaNKTpSTlgW+05ZHYRd9DFRa71uyPtS0o3
         He0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uLD2x34VR9wGjl2xGcpBSG87CkVAO5p2lbSd+1dkugg=;
        b=N078RkNK8WVFUn787HCeCb8KV47iDNa6o8i0L8tV9/wpt2X6h0wbJpIjRQzGndyOet
         ju6/lMLp3J0ev6S8w1y3jkmRolOXU+rx4cLjYlzaD91sseGHNN58kyaQuEgS6IvjssWP
         v8pJZ+CgqsJt45n6NT/sINjEmtCsRZAJvpdgxumsf0rtrKraT80R0P7+6KQzlwttVM4i
         Tfa591TdZpmJQJa8jDXBLj/koyzXlAa4V0M9/nyPWQgjND/JnXKjKGn1zQBzA0RfO7/Z
         RodwJvbYgiaT+7kLqrDMG3WT+OsbCkTsU9cLf66/nljn2zkiectPhKDAqm4ZTakQd8gK
         ZSfw==
X-Gm-Message-State: AOAM533NBd9OuFLs2cL4TF6salJF12717HC6A3PItrvo8GLgac8BQQcj
	G/YfyhNs5+yO1r1etC540nA9kbsPeBLN7/EHj10=
X-Received: by 2002:ad4:4144:: with SMTP id z4mr4092139qvp.22.1634972707228;
 Sat, 23 Oct 2021 00:05:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1634906059.git.kushalkothari285@gmail.com>
 <7d5df4b8aacd961d0de367cbd73a8b75272652a8.1634906059.git.kushalkothari285@gmail.com>
 <20211022154821.GA464812@alison-desk>
In-Reply-To: <20211022154821.GA464812@alison-desk>
From: kushal kothari <kushalkothari285@gmail.com>
Date: Sat, 23 Oct 2021 12:34:54 +0530
Message-ID: <CALtHPQt1Y7vQiMfk1JN6UjX0voFvKdzhz1xDVKyEzZaZBpf1zg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/4] staging: rtl8723bs: core:
 Remove true and false comparison
To: Alison Schofield <alison.schofield@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kush19992810@gmail.com, 
	outreachy-kernel@googlegroups.com, fabioaiuto83@gmail.com, 
	ross.schm.dev@gmail.com, "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, marcocesati@gmail.com, 
	straube.linux@gmail.com, philippesdixon@gmail.com, 
	manuelpalenzuelamerino@gmail.com, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, Mike Rapoport <mike.rapoport@gmail.com>, 
	kushalkotharitest@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000006e913e05ceffbfcd"

--0000000000006e913e05ceffbfcd
Content-Type: text/plain; charset="UTF-8"

>Hi Kushal,

>See "Versioning one patch revision" and "Versioning patchsets" in
>https://kernelnewbies.org/Outreachyfirstpatch
<https://kernelnewbies.org/Outreachyfirstpatch>

>Either remove the changelogs in Patch 1-4 or put them below the --- in each
>patch.

>Alison

Sorry! I'll update the changes.

On Fri, Oct 22, 2021 at 9:10 PM Alison Schofield <alison.schofield@intel.com>
wrote:

> On Fri, Oct 22, 2021 at 06:43:18PM +0530, Kushal Kothari wrote:
> > Remove comparison to true and false in if statement.
> > Issue found with checkpatch.pl.
> > CHECK: Using comparison to true is error prone
> > CHECK: Using comparison to false is error prone
> >
> > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> >
> > Changes in v3: Enclose the version number inside the square bracket.
> > Changes in v2: Unnecessary parantheses handled in *v2 staging:
> rtl8723bs: core: Remove unnecessary parentheses*
> > ---
>
> Hi Kushal,
>
> See "Versioning one patch revision" and "Versioning patchsets" in
> https://kernelnewbies.org/Outreachyfirstpatch
>
> Either remove the changelogs in Patch 1-4 or put them below the --- in each
> patch.
>
> Alison
>
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 22 +++++++++++-----------
> >  1 file changed, 11 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > index 2624e994513f..acd4e8b1fad5 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -371,7 +371,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
> >  void rtw_stop_cmd_thread(struct adapter *adapter)
> >  {
> >       if (adapter->cmdThread &&
> > -             atomic_read(&(adapter->cmdpriv.cmdthd_running)) == true &&
> > +             atomic_read(&(adapter->cmdpriv.cmdthd_running)) &&
> >               adapter->cmdpriv.stop_req == 0) {
> >               adapter->cmdpriv.stop_req = 1;
> >               complete(&adapter->cmdpriv.cmd_queue_comp);
> > @@ -542,7 +542,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter,
> struct ndis_802_11_ssid *ssid,
> >       struct cmd_priv         *pcmdpriv = &padapter->cmdpriv;
> >       struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
> >
> > -     if (check_fwstate(pmlmepriv, _FW_LINKED) == true)
> > +     if (check_fwstate(pmlmepriv, _FW_LINKED))
> >               rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SCAN, 1);
> >
> >       ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
> > @@ -775,7 +775,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct
> wlan_network *pnetwork)
> >       /*  If not,  we have to copy the connecting AP's MAC address to it
> so that */
> >       /*  the driver just has the bssid information for PMKIDList
> searching. */
> >
> > -     if (pmlmepriv->assoc_by_bssid == false)
> > +     if (!pmlmepriv->assoc_by_bssid)
> >               memcpy(&pmlmepriv->assoc_bssid[0],
> &pnetwork->network.mac_address[0], ETH_ALEN);
> >
> >       psecnetwork->ie_length = rtw_restruct_sec_ie(padapter,
> &pnetwork->network.ies[0], &psecnetwork->ies[0],
> pnetwork->network.ie_length);
> > @@ -1164,7 +1164,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8
> chplan, u8 enqueue, u8 swconf
> >       u8 res = _SUCCESS;
> >
> >       /*  check if allow software config */
> > -     if (swconfig && rtw_hal_is_disable_sw_channel_plan(padapter) ==
> true) {
> > +     if (swconfig && rtw_hal_is_disable_sw_channel_plan(padapter)) {
> >               res = _FAIL;
> >               goto exit;
> >       }
> > @@ -1250,7 +1250,7 @@ u8 traffic_status_watchdog(struct adapter
> *padapter, u8 from_timer)
> >       /*  */
> >       /*  Determine if our traffic is busy now */
> >       /*  */
> > -     if ((check_fwstate(pmlmepriv, _FW_LINKED) == true)
> > +     if ((check_fwstate(pmlmepriv, _FW_LINKED))
> >               /*&& !MgntInitAdapterInProgress(pMgntInfo)*/) {
> >               /*  if we raise bBusyTraffic in last watchdog, using lower
> threshold. */
> >               if (pmlmepriv->LinkDetectInfo.bBusyTraffic)
> > @@ -1342,7 +1342,7 @@ static void dynamic_chk_wk_hdl(struct adapter
> *padapter)
> >
> >       pmlmepriv = &(padapter->mlmepriv);
> >
> > -     if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
> > +     if (check_fwstate(pmlmepriv, WIFI_AP_STATE))
> >               expire_timeout_chk(padapter);
> >
> >       /* for debug purpose */
> > @@ -1377,8 +1377,8 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u8
> lps_ctrl_type)
> >       struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
> >       u8 mstatus;
> >
> > -     if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true)
> > -             || (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
> > +     if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) ||
> > +             (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE))) {
> >               return;
> >       }
> >
> > @@ -1386,7 +1386,7 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u8
> lps_ctrl_type)
> >       case LPS_CTRL_SCAN:
> >               hal_btcoex_ScanNotify(padapter, true);
> >
> > -             if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
> > +             if (check_fwstate(pmlmepriv, _FW_LINKED)) {
> >                       /*  connect */
> >                       LPS_Leave(padapter, "LPS_CTRL_SCAN");
> >               }
> > @@ -1512,7 +1512,7 @@ static void rtw_lps_change_dtim_hdl(struct adapter
> *padapter, u8 dtim)
> >       if (dtim <= 0 || dtim > 16)
> >               return;
> >
> > -     if (hal_btcoex_IsBtControlLps(padapter) == true)
> > +     if (hal_btcoex_IsBtControlLps(padapter))
> >               return;
> >
> >       mutex_lock(&pwrpriv->lock);
> > @@ -1840,7 +1840,7 @@ static void c2h_wk_callback(struct work_struct
> *work)
> >                       continue;
> >               }
> >
> > -             if (ccx_id_filter(c2h_evt) == true) {
> > +             if (ccx_id_filter(c2h_evt)) {
> >                       /* Handle CCX report here */
> >                       rtw_hal_c2h_handler(adapter, c2h_evt);
> >                       kfree(c2h_evt);
> > --
> > 2.25.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/7d5df4b8aacd961d0de367cbd73a8b75272652a8.1634906059.git.kushalkothari285%40gmail.com
> .
>
> --
> You received this message because you are subscribed to the Google Groups
> "kushalkotharitest" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to kushalkotharitest+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/kushalkotharitest/20211022154821.GA464812%40alison-desk
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000006e913e05ceffbfcd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt;Hi Kushal,<br>
<br>
&gt;See &quot;Versioning one patch revision&quot; and &quot;Versioning patc=
hsets&quot; in<br>
<a href=3D"https://kernelnewbies.org/Outreachyfirstpatch" rel=3D"noreferrer=
" target=3D"_blank">&gt;https://kernelnewbies.org/Outreachyfirstpatch</a><b=
r>
<br>
&gt;Either remove the changelogs in Patch 1-4 or put them below the --- in =
each<br>
&gt;patch. <br>
<br><div>
&gt;Alison</div><div><br></div><div>Sorry! I&#39;ll update the changes.</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, Oct 22, 2021 at 9:10 PM Alison Schofield &lt;<a href=3D"mailto:al=
ison.schofield@intel.com" target=3D"_blank">alison.schofield@intel.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fr=
i, Oct 22, 2021 at 06:43:18PM +0530, Kushal Kothari wrote:<br>
&gt; Remove comparison to true and false in if statement.<br>
&gt; Issue found with <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" t=
arget=3D"_blank">checkpatch.pl</a>.<br>
&gt; CHECK: Using comparison to true is error prone<br>
&gt; CHECK: Using comparison to false is error prone<br>
&gt; <br>
&gt; Signed-off-by: Kushal Kothari &lt;<a href=3D"mailto:kushalkothari285@g=
mail.com" target=3D"_blank">kushalkothari285@gmail.com</a>&gt;<br>
&gt; <br>
&gt; Changes in v3: Enclose the version number inside the square bracket.<b=
r>
&gt; Changes in v2: Unnecessary parantheses handled in *v2 staging: rtl8723=
bs: core: Remove unnecessary parentheses*<br>
&gt; ---<br>
<br>
Hi Kushal,<br>
<br>
See &quot;Versioning one patch revision&quot; and &quot;Versioning patchset=
s&quot; in<br>
<a href=3D"https://kernelnewbies.org/Outreachyfirstpatch" rel=3D"noreferrer=
" target=3D"_blank">https://kernelnewbies.org/Outreachyfirstpatch</a><br>
<br>
Either remove the changelogs in Patch 1-4 or put them below the --- in each=
<br>
patch. <br>
<br>
Alison<br>
<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/core/rtw_cmd.c | 22 +++++++++++-------=
----<br>
&gt;=C2=A0 1 file changed, 11 insertions(+), 11 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/stagin=
g/rtl8723bs/core/rtw_cmd.c<br>
&gt; index 2624e994513f..acd4e8b1fad5 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c<br>
&gt; @@ -371,7 +371,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)<br>
&gt;=C2=A0 void rtw_stop_cmd_thread(struct adapter *adapter)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (adapter-&gt;cmdThread &amp;&amp;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0atomic_read(&amp;(ada=
pter-&gt;cmdpriv.cmdthd_running)) =3D=3D true &amp;&amp;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0atomic_read(&amp;(ada=
pter-&gt;cmdpriv.cmdthd_running)) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;cmdp=
riv.stop_req =3D=3D 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;cmdp=
riv.stop_req =3D 1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0complete(&amp;ad=
apter-&gt;cmdpriv.cmd_queue_comp);<br>
&gt; @@ -542,7 +542,7 @@ u8 rtw_sitesurvey_cmd(struct adapter=C2=A0 *padapt=
er, struct ndis_802_11_ssid *ssid,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct cmd_priv=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0*pcmdpriv =3D &amp;padapter-&gt;cmdpriv;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct mlme_priv *pmlmepriv =3D &amp;padapte=
r-&gt;mlmepriv;<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (check_fwstate(pmlmepriv, _FW_LINKED) =3D=3D t=
rue)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (check_fwstate(pmlmepriv, _FW_LINKED))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_lps_ctrl_wk_=
cmd(padapter, LPS_CTRL_SCAN, 1);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ph2c =3D rtw_zmalloc(sizeof(struct cmd_obj))=
;<br>
&gt; @@ -775,7 +775,7 @@ u8 rtw_joinbss_cmd(struct adapter=C2=A0 *padapter,=
 struct wlan_network *pnetwork)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 If not,=C2=A0 we have to copy the c=
onnecting AP&#39;s MAC address to it so that */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 the driver just has the bssid infor=
mation for PMKIDList searching. */<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pmlmepriv-&gt;assoc_by_bssid =3D=3D false)<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pmlmepriv-&gt;assoc_by_bssid)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(&amp;pmlm=
epriv-&gt;assoc_bssid[0], &amp;pnetwork-&gt;network.mac_address[0], ETH_ALE=
N);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psecnetwork-&gt;ie_length =3D rtw_restruct_s=
ec_ie(padapter, &amp;pnetwork-&gt;network.ies[0], &amp;psecnetwork-&gt;ies[=
0], pnetwork-&gt;network.ie_length);<br>
&gt; @@ -1164,7 +1164,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, =
u8 chplan, u8 enqueue, u8 swconf<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 res =3D _SUCCESS;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 check if allow software config */<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0if (swconfig &amp;&amp; rtw_hal_is_disable_sw_cha=
nnel_plan(padapter) =3D=3D true) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (swconfig &amp;&amp; rtw_hal_is_disable_sw_cha=
nnel_plan(padapter)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D _FAIL;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto exit;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -1250,7 +1250,7 @@ u8 traffic_status_watchdog(struct adapter *padap=
ter, u8 from_timer)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 Determine if our traffic is busy no=
w */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((check_fwstate(pmlmepriv, _FW_LINKED) =3D=3D =
true)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((check_fwstate(pmlmepriv, _FW_LINKED))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*&amp;&amp; !Mg=
ntInitAdapterInProgress(pMgntInfo)*/) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 if we r=
aise bBusyTraffic in last watchdog, using lower threshold. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pmlmepriv-&g=
t;LinkDetectInfo.bBusyTraffic)<br>
&gt; @@ -1342,7 +1342,7 @@ static void dynamic_chk_wk_hdl(struct adapter *p=
adapter)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pmlmepriv =3D &amp;(padapter-&gt;mlmepriv);<=
br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (check_fwstate(pmlmepriv, WIFI_AP_STATE) =3D=
=3D true)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (check_fwstate(pmlmepriv, WIFI_AP_STATE))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0expire_timeout_c=
hk(padapter);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* for debug purpose */<br>
&gt; @@ -1377,8 +1377,8 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u=
8 lps_ctrl_type)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct mlme_priv *pmlmepriv =3D &amp;(padapt=
er-&gt;mlmepriv);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 mstatus;<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_S=
TATE) =3D=3D true)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|| (check_fwstate(pml=
mepriv, WIFI_ADHOC_STATE) =3D=3D true)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_S=
TATE)) ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(check_fwstate(pmlmep=
riv, WIFI_ADHOC_STATE))) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt; @@ -1386,7 +1386,7 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u=
8 lps_ctrl_type)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LPS_CTRL_SCAN:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hal_btcoex_ScanN=
otify(padapter, true);<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (check_fwstate(pml=
mepriv, _FW_LINKED) =3D=3D true) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (check_fwstate(pml=
mepriv, _FW_LINKED)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/*=C2=A0 connect */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0LPS_Leave(padapter, &quot;LPS_CTRL_SCAN&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -1512,7 +1512,7 @@ static void rtw_lps_change_dtim_hdl(struct adapt=
er *padapter, u8 dtim)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (dtim &lt;=3D 0 || dtim &gt; 16)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (hal_btcoex_IsBtControlLps(padapter) =3D=3D tr=
ue)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (hal_btcoex_IsBtControlLps(padapter))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_lock(&amp;pwrpriv-&gt;lock);<br>
&gt; @@ -1840,7 +1840,7 @@ static void c2h_wk_callback(struct work_struct *=
work)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0continue;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ccx_id_filter(c2h=
_evt) =3D=3D true) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ccx_id_filter(c2h=
_evt)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* Handle CCX report here */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0rtw_hal_c2h_handler(adapter, c2h_evt);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0kfree(c2h_evt);<br>
&gt; -- <br>
&gt; 2.25.1<br>
&gt; <br>
&gt; -- <br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/7d5df4b8aacd961d0de367cbd73a8b75272652a8.1=
634906059.git.kushalkothari285%40gmail.com" rel=3D"noreferrer" target=3D"_b=
lank">https://groups.google.com/d/msgid/outreachy-kernel/7d5df4b8aacd961d0d=
e367cbd73a8b75272652a8.1634906059.git.kushalkothari285%40gmail.com</a>.<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;kushalkotharitest&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:kushalkotharitest%2Bunsubscribe@googlegroups.com"=
 target=3D"_blank">kushalkotharitest+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/kushalkotharitest/20211022154821.GA464812%40alison-desk" rel=3D"=
noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/kushalkotha=
ritest/20211022154821.GA464812%40alison-desk</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div>

--0000000000006e913e05ceffbfcd--


X-GM-THRID: 6666325868481085440
X-Received: by 2002:a25:6783:: with SMTP id b125mr10845867ybc.1.1552127242487;
        Sat, 09 Mar 2019 02:27:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:589:: with SMTP id 131ls81801ybf.7.gmail; Sat, 09 Mar
 2019 02:27:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqyjn+3asQ/CI1Lr3FNxDANDctE+9cHa3SC6J5CxvYh8HfkyYmk3bGDNhLkJx7jKRbxbnmm0
X-Received: by 2002:a25:4c85:: with SMTP id z127mr10407143yba.69.1552127241526;
        Sat, 09 Mar 2019 02:27:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552127241; cv=none;
        d=google.com; s=arc-20160816;
        b=XSG1PxXSqIEDS2C8ORy3Q9T7amOFwJH6r5+1s0tDE2ZSmYvnJlugC+Sh/BLGZbfb0W
         bklpfYWhrABxSFR1B64hJSwAZeCrxu+p+Kow2JS+qBhll4rJUksdF48xe5/lUD75LvVf
         gC45M/eB2H+w4IyfN2FEXYEAAFY+v6ySsBQSARD/5XnvQOf4IxYDe5HredZqjC46Lpdh
         b+deFFPwa8RWLZZsjlOwM92LMcB94n4fCoV/GekcpPwpmgB5XIIVvw35VFJqsNsr9sK5
         8F+gEPBwDUh7yGIhUABqqQagSaTcAJlaze3Tf1hoX4nxgOTMdjnJv6zMn1PeB8EDHHhi
         0qFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=G5W5FNISJ3qFkr7SxoBo/3wxoWQV84OVaxY6lR1xD/c=;
        b=bL+BOZSewHfi046J3zozB9nh9ZLDNbrgDWNY2y1k993JBX6BuD29Lk4B0+unl5y+dx
         KWoAqsPjSfas6K0cTlsLwfK+/VdhLQG1JQcFKob6cWLGWtNsIXpM+e9dvL5MY23ErSlq
         LA+0r3mcPAjIHK60kAkGGZi6OGhiMj+z4nizBycDdYNk3xZ4sfUCfpRqR2vBUp/+q9Qy
         BT44thLKj3Vz9obThISGb+9ioiBKkXVfCn2sfBLgRRBEltDHbQNXnpSWFOlQV4S4UeHQ
         yNZMc/Iyncnhnsw+wl6OaWZ6WJ3IBpzrB6h5e0JELMXO/8BULp3ynN+T8GRbzirz5vQG
         PLgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aa+bZWir;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id k62si6087ybb.4.2019.03.09.02.27.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 02:27:21 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aa+bZWir;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id e15so28971otk.6
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 02:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=G5W5FNISJ3qFkr7SxoBo/3wxoWQV84OVaxY6lR1xD/c=;
        b=aa+bZWir/f1EkKJRXCMeK/cQlkO/twdYOXBxcJcWIeQ1M5xwkqika653tf5q9dBK6A
         Yn3YW+GgvQ8j7zZ+86GkB9HQZ6k5ife2RC1CKmqQycU/xAZt9d/TKTyrtzzDgLEzTvNn
         pgSZz1TyYOuLX7dMoZGzv6GKm5YDVjufGVuOPgtFEkjmMwxMYrC63jlQ+6AdMe3BgMYv
         iUOVVMRjgr1MxtycvD9N8kpYztXc8dWGtXrfy8/bftbwNPiqbreN1omPWLYdL7GcnegF
         x2k/Z7Clon3d0ThffDlCuBgnsi6jscauFfkaEFJBekpWn1BgHekG43GZnESJUO+sLwh0
         FvjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=G5W5FNISJ3qFkr7SxoBo/3wxoWQV84OVaxY6lR1xD/c=;
        b=EqrlzZNyKH6bmq78m9EMF4kEYIT8UVBrmaXrFrVZ55EANhPcvUHloZVcyY3r85BijG
         aF8N3cLFTs2B3SYFZ2B12fhEN7upw+tr4XfpZpMyeZSO1Jq1ka+Em9q3uSYY726LwEEu
         wKNlzBq37cy7PnHd6TNusmWL02Xm04rzhNeSG/SQSaDG06LybH+2eVQFv6mHC4QWbS/L
         Sa8YJPw/zIrJLNEKmCwf1/9xYG7lF4mehXU+BztZyevLppi2Xq0/+vdFTRgbefMb5tlW
         qSDx3aCCbKkPVpNhZuqNro53hWhaegt/vBsvsX0E6HTlvyQD0jZ2cDC64mM7CZt7g3xJ
         86Yg==
X-Gm-Message-State: APjAAAWu9vD9zmLq/g9EwvYgURd95R8LJIMGHLIt3X2j8Ho8IEr6SPru
	jnG5XduquHnK9ahAWQX9gw3mKsgemrQNEERwnnCCwhz5
X-Received: by 2002:a9d:72c2:: with SMTP id d2mr15254492otk.228.1552127240943;
 Sat, 09 Mar 2019 02:27:20 -0800 (PST)
MIME-Version: 1.0
References: <20190309094840.38154-1-himadri18.07@gmail.com> <20190309101610.39595-1-himadri18.07@gmail.com>
In-Reply-To: <20190309101610.39595-1-himadri18.07@gmail.com>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sat, 9 Mar 2019 15:57:08 +0530
Message-ID: <CAPnhUpZ9wZL-CsvBqpi+RMXbai19hpKVEVxmzHiyuFJtTVaOsA@mail.gmail.com>
Subject: Re: [PATCH v2] staging: wilc1000: remove unnecessary variable result
To: adham.abozaeid@microchip.com, ajay.kathat@microchip.com, 
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000d7bddd0583a6c8bf"

--000000000000d7bddd0583a6c8bf
Content-Type: text/plain; charset="UTF-8"

On Sat, 9 Mar, 2019, 3:47 PM Himadri Pandya, <himadri18.07@gmail.com> wrote:

> Remove unnecessary local variable "result" and its assignments from
> function wilc_set_pmkid_info. Suggested by Coccinelle.
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V2:
>         - Arrange the function arguments to the right of "(" in function
> call in the return statement
>
> diff --git a/drivers/staging/wilc1000/host_interface.c
> b/drivers/staging/wilc1000/host_interface.c
> index 4dd9a20f6a0b..fa0e1bd9f836 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8
> *rx_gtk, u8 gtk_key_len,
>  int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr
> *pmkid)
>  {
>         struct wid wid;
> -       int result;
>
>         wid.id = WID_PMKID_INFO;
>         wid.type = WID_STR;
>         wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
>         wid.val = (u8 *)pmkid;
>
> -       result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> -                                     wilc_get_vif_idx(vif));
> +       return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +                                   wilc_get_vif_idx(vif));
>
> -       return result;
>  }
>
>  int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
> ---
>  drivers/staging/wilc1000/host_interface.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c
> b/drivers/staging/wilc1000/host_interface.c
> index 4dd9a20f6a0b..fa0e1bd9f836 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8
> *rx_gtk, u8 gtk_key_len,
>  int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr
> *pmkid)
>  {
>         struct wid wid;
> -       int result;
>
>         wid.id = WID_PMKID_INFO;
>         wid.type = WID_STR;
>         wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
>         wid.val = (u8 *)pmkid;
>
> -       result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> -                                     wilc_get_vif_idx(vif));
> +       return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +                                   wilc_get_vif_idx(vif));
>
> -       return result;
>  }
>
>  int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
> --
> 2.17.1
>

The diff is appearing twice in the patch. So I'm resending the version 2.

>

--000000000000d7bddd0583a6c8bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, 9 Mar, 2019, 3:47 PM Himadri Pandya, &lt;<a hr=
ef=3D"mailto:himadri18.07@gmail.com">himadri18.07@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">Remove unnecessary local variable &=
quot;result&quot; and its assignments from<br>
function wilc_set_pmkid_info. Suggested by Coccinelle.<br>
<br>
Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail.com"=
 target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<br>
---<br>
Changes in V2:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Arrange the function arguments to the right o=
f &quot;(&quot; in function<br>
call in the return statement<br>
<br>
diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wi=
lc1000/host_interface.c<br>
index 4dd9a20f6a0b..fa0e1bd9f836 100644<br>
--- a/drivers/staging/wilc1000/host_interface.c<br>
+++ b/drivers/staging/wilc1000/host_interface.c<br>
@@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 =
*rx_gtk, u8 gtk_key_len,<br>
=C2=A0int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr =
*pmkid)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct wid wid;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0int result;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://wid.id" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">wid.id</a> =3D WID_PMKID_INFO;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 wid.type =3D WID_STR;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 wid.size =3D (pmkid-&gt;numpmkid * sizeof(struc=
t wilc_pmkid)) + 1;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 wid.val =3D (u8 *)pmkid;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0result =3D wilc_send_config_pkt(vif, WILC_SET_C=
FG, &amp;wid, 1,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wilc_get_vif_idx=
(vif));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return wilc_send_config_pkt(vif, WILC_SET_CFG, =
&amp;wid, 1,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wilc_get_vif_idx(vif));=
<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return result;<br>
=C2=A0}<br>
<br>
=C2=A0int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)<br>
---<br>
=C2=A0drivers/staging/wilc1000/host_interface.c | 6 ++----<br>
=C2=A01 file changed, 2 insertions(+), 4 deletions(-)<br>
<br>
diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wi=
lc1000/host_interface.c<br>
index 4dd9a20f6a0b..fa0e1bd9f836 100644<br>
--- a/drivers/staging/wilc1000/host_interface.c<br>
+++ b/drivers/staging/wilc1000/host_interface.c<br>
@@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 =
*rx_gtk, u8 gtk_key_len,<br>
=C2=A0int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr =
*pmkid)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct wid wid;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0int result;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://wid.id" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">wid.id</a> =3D WID_PMKID_INFO;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 wid.type =3D WID_STR;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 wid.size =3D (pmkid-&gt;numpmkid * sizeof(struc=
t wilc_pmkid)) + 1;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 wid.val =3D (u8 *)pmkid;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0result =3D wilc_send_config_pkt(vif, WILC_SET_C=
FG, &amp;wid, 1,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wilc_get_vif_idx=
(vif));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return wilc_send_config_pkt(vif, WILC_SET_CFG, =
&amp;wid, 1,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wilc_get_vif_idx(vif));=
<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return result;<br>
=C2=A0}<br>
<br>
=C2=A0int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)<br>
-- <br>
2.17.1<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"=
auto">The diff is appearing twice in the patch. So I&#39;m resending the ve=
rsion 2.=C2=A0</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"></blockquote></div></div></div>

--000000000000d7bddd0583a6c8bf--


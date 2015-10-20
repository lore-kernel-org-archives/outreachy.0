X-GM-THRID: 6207353027120070656
X-Received: by 10.67.7.35 with SMTP id cz3mr4421913pad.40.1445372353494;
        Tue, 20 Oct 2015 13:19:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.114.231 with SMTP id jj7ls228130obb.31.gmail; Tue, 20 Oct
 2015 13:19:13 -0700 (PDT)
X-Received: by 10.182.29.41 with SMTP id g9mr4566860obh.27.1445372352993;
        Tue, 20 Oct 2015 13:19:12 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-ig0-x231.google.com (mail-ig0-x231.google.com. [2607:f8b0:4001:c05::231])
        by gmr-mx.google.com with ESMTPS id lo7si270229igb.3.2015.10.20.13.19.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 13:19:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2607:f8b0:4001:c05::231 as permitted sender) client-ip=2607:f8b0:4001:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2607:f8b0:4001:c05::231 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x231.google.com with SMTP id ni9so80172690igb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 13:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=vanlNFwUcMiy6CqZuk4+/tomn2lTvsEgcFeMGHENFz0=;
        b=MRa1bGrdFOoZ+rKlHfczgnm9q6UTwtSGVfyPV2ZKWsz4JxG7vG0tt8ZV6DnCZPCKAj
         VTJ2br1F1TSeG1fwQw4QE/Ov43PdcO7OlI8wGT6RTwubMNaFBCZWxSIxQyguwSjAz/KW
         SxwQCLXgbyJDYjKcfhW6xnsYx0UO9iItU8B9xQU+8cT6r7SUcA4D9cc4evvpIMAV0yV3
         ce97K7JKel53qcjylRXz1R9pCgSl2W+B48l04dAfCR3JXZqQKwFBuE9/vWxEDzHMxtaI
         wayv4Fu4ChJgV+uKq2qwxpDmfmGd6uGsBdp4MnMrMVJq9auzYxjRSbHyM3Z7MKTQLyh7
         FSEA==
MIME-Version: 1.0
X-Received: by 10.50.141.136 with SMTP id ro8mr6689238igb.11.1445372352754;
 Tue, 20 Oct 2015 13:19:12 -0700 (PDT)
Received: by 10.50.73.138 with HTTP; Tue, 20 Oct 2015 13:19:12 -0700 (PDT)
In-Reply-To: <1445368854-15527-1-git-send-email-brcnakalin@gmail.com>
References: <1445368854-15527-1-git-send-email-brcnakalin@gmail.com>
Date: Tue, 20 Oct 2015 23:19:12 +0300
Message-ID: <CAN-NAouQrs1T2TkDsVhcaCfh+s6iBDAka4QMw0Ob76ye_fNhKw@mail.gmail.com>
Subject: Re: [PATCH] staging: panel: Do not use multiple blank lines.
From: =?UTF-8?B?QnVyw6dpbiBBa2FsxLFu?= <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e01229ed6a77a5e05228ef90a

--089e01229ed6a77a5e05228ef90a
Content-Type: text/plain; charset=UTF-8

Hi. I made the mistake of subject. I'll send it again correct.

2015-10-20 22:20 GMT+03:00 Burcin Akalin <brcnakalin@gmail.com>:

> Remove multiple blank lines. Problem found using checkpatch.pl
> "CHECK: Please don't use multiple blank lines"
>
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
> ---
>  drivers/staging/netlogic/platform_net.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/netlogic/platform_net.c
> b/drivers/staging/netlogic/platform_net.c
> index e914147..7806c2b 100644
> --- a/drivers/staging/netlogic/platform_net.c
> +++ b/drivers/staging/netlogic/platform_net.c
> @@ -58,7 +58,6 @@
>  #define MAX_NUM_XLS_GMAC       8
>  #define MAX_NUM_XLR_GMAC       4
>
> -
>  static u32 xlr_gmac_offsets[] = {
>         NETLOGIC_IO_GMAC_0_OFFSET, NETLOGIC_IO_GMAC_1_OFFSET,
>         NETLOGIC_IO_GMAC_2_OFFSET, NETLOGIC_IO_GMAC_3_OFFSET,
> --
> 1.9.1
>
>

--089e01229ed6a77a5e05228ef90a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi. I made the mistake of subject. I&#39;ll send it again =
correct.<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>2015-10-20 22:20 GMT+03:00 Burcin Akalin <span dir=3D"ltr">&lt;<a href=3D"=
mailto:brcnakalin@gmail.com" target=3D"_blank">brcnakalin@gmail.com</a>&gt;=
</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">Remove multiple blank lines. Pro=
blem found using <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=
=3D"_blank">checkpatch.pl</a><br>
&quot;CHECK: Please don&#39;t use multiple blank lines&quot;<br>
<br>
Signed-off-by: Burcin Akalin &lt;<a href=3D"mailto:brcnakalin@gmail.com">br=
cnakalin@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/netlogic/platform_net.c | 1 -<br>
=C2=A01 file changed, 1 deletion(-)<br>
<br>
diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netl=
ogic/platform_net.c<br>
index e914147..7806c2b 100644<br>
--- a/drivers/staging/netlogic/platform_net.c<br>
+++ b/drivers/staging/netlogic/platform_net.c<br>
@@ -58,7 +58,6 @@<br>
=C2=A0#define MAX_NUM_XLS_GMAC=C2=A0 =C2=A0 =C2=A0 =C2=A08<br>
=C2=A0#define MAX_NUM_XLR_GMAC=C2=A0 =C2=A0 =C2=A0 =C2=A04<br>
<br>
-<br>
=C2=A0static u32 xlr_gmac_offsets[] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 NETLOGIC_IO_GMAC_0_OFFSET, NETLOGIC_IO_GMAC_1_O=
FFSET,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 NETLOGIC_IO_GMAC_2_OFFSET, NETLOGIC_IO_GMAC_3_O=
FFSET,<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.1<br>
<br>
</font></span></blockquote></div><br></div>

--089e01229ed6a77a5e05228ef90a--


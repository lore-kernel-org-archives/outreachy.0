X-GM-THRID: 6608456604457107456
X-Received: by 2002:a65:428b:: with SMTP id j11-v6mr1509830pgp.12.1538684525554;
        Thu, 04 Oct 2018 13:22:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9687:: with SMTP id n7-v6ls2493946plp.10.gmail; Thu,
 04 Oct 2018 13:22:04 -0700 (PDT)
X-Google-Smtp-Source: ACcGV6062ichxr9hwDVo2YXC3AhDZAZ6uBs057YveIDt1zKprXrEO1oAMgxk77vPwkL798tnt+gL
X-Received: by 2002:a17:902:468:: with SMTP id 95-v6mr4094530ple.26.1538684524634;
        Thu, 04 Oct 2018 13:22:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538684524; cv=none;
        d=google.com; s=arc-20160816;
        b=QxFOnAi231kdQHjTDK1j5cNi6SFuvaHshFNy1/aaD6BGCSqLXqb+E1a28P69xd86/l
         vqDDt2h38ka7/55NRzuEmHfr47p7kRV0phleaHXSPMSyyz4aGVlrP2n2dh0TnTljMBxD
         e6o84Kdr7KhGa/nCvh/oc0GQyj+HuewgdOLy5vzHJ/WHBACAxX5I+xvJY5kSnb7qmKLP
         XNkNnC05HckQbNZZJb1epLofff/grXqNNmo+qPJQ+apQVuqkZ7OjRtm1wF82cNea5OZ+
         rIL+ACBeuZPkz2Bkx5Js4mXa+GFGT2/5V9Z1NcgBJr1yATDjsA4uaaYypQEVC74KMWMd
         Dwhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wkBmepDXdj9kTRZk/LlpjwOXMnWDfHKuPSFw2Gcmvmw=;
        b=tmelVaOzxKmJrcKsqN7WIouInpwdV2saImJxnjbYKmectwuF7OaAVwKG+fW6vl4rY4
         Hz9a6BdUXnPSSif37LLK6kBTQkEmwuli64pQ8P9xkwljzJy+olNd+SW2QLQK9Uvo64mp
         kupgnfVqvIXI+w5fCh6kIStZ2B/JfBkUG6ws90WoKmFsi1KPDFqxcZ7xxT0NZVUvk9CH
         /xx8h7wXeo0xd1jY+cpEHeR3uZ7YX2gKOaPaqwSR4LmejihrcbM1ejPxrZhcQaQEUUvi
         PvrA3X9tmg4c1qNYyWTdfsHE2fRzY1oWrew05mrpzIn+DygEgL+KIY5lcuAXKksBEPw8
         P3pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M+6U6XGV;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com. [2607:f8b0:4864:20::731])
        by gmr-mx.google.com with ESMTPS id 7-v6si237443pga.5.2018.10.04.13.22.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 13:22:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) client-ip=2607:f8b0:4864:20::731;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M+6U6XGV;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x731.google.com with SMTP id 204-v6so6627100qkd.5
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 13:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wkBmepDXdj9kTRZk/LlpjwOXMnWDfHKuPSFw2Gcmvmw=;
        b=M+6U6XGVJj9/LTW39s4MX3JfeTsFGyGcd2n8GILIHrU810/Sj/f0TRD3FO9JPQf/CD
         m96dvJ3aDBPcVaH15q87r3s4No5yc3WQLrpq3wJuem96ipLENhugDTKUGMiUPj4gCJVU
         QwbYXhdA9bC7yyO9m14rocot2yGp5zDV+LkGvBd/C9bf3FYwH3YnR2pV7fFz2z8Lj8XH
         JE8OX3TK11lNpFe22YqNdxWp6GxphWYussM3tT4e5zMS8Adoqq0mXiUtelYsGUwDv0nO
         id1taSLFI0HpGECPedQPAxhGimshIOc9jOE4UO8fcdVVSdidKPtTZpe8SSRvzIps33Hs
         nRLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wkBmepDXdj9kTRZk/LlpjwOXMnWDfHKuPSFw2Gcmvmw=;
        b=jAFMGsQUlS3tk5ReQFKdbViYi38oOANTUWJnVbI7MZGk7LanSs2bSzr6v5UF19fBxj
         RE9rjSqY9PAP/rcdlQNOXKK1gr88n2Hq+Ok70sWL8rlY6e8+5KHJwZ0n+ogPxMQlvvu/
         x8LgaNtad4oEjhea3drgRwjDSbBB7aMtrhNJLfTzNHtTSlGjxLWrXzIynwBT9OWJAFG6
         nHqfAk8UYvVcdVaPMBQgnOuFc/iDtJgF8y41mx2gFgL+CDsWRAwXnFQpm+NUaB0WVzAg
         mMEsz0GBcNcWKESBuZY7g4cTawba7TxkPCIC0c8aGIzkB5Vw/oXMFxwnUqgZRm8N4Z3v
         rGqg==
X-Gm-Message-State: ABuFfohzD8cuBP3p22erR6RDlbR7IeE9wladRqx+5bzIFrTIKAXI7u4U
	U3Gj8RTueYISJSZCu6ImYOQlq/pdD+EENyBCCGuNnQ==
X-Received: by 2002:a37:c11:: with SMTP id 17-v6mr6508877qkm.95.1538684523399;
 Thu, 04 Oct 2018 13:22:03 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1538670297.git.mamtashukla555@gmail.com> <2e3eb8f9b4461a330f292aa187158385800c56d4.1538670297.git.mamtashukla555@gmail.com>
In-Reply-To: <2e3eb8f9b4461a330f292aa187158385800c56d4.1538670297.git.mamtashukla555@gmail.com>
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Thu, 4 Oct 2018 13:21:52 -0700
Message-ID: <CAO393AC2J-iZScfmYaF-eX4X4+h7_R=+RFRKHU_X13zMvNyzUw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: mt7621-pci: spaces
 preferred around that '|'
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000007050ba05776ce8b3"

--0000000000007050ba05776ce8b3
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 4, 2018, 9:36 AM Mamta Shukla <mamtashukla555@gmail.com> wrote:

> Add spaces around '|' to fix checkpatch issue
> CHECK: spaces preferred around that '|' (ctx:VxV)
>

The subject line could say what change has been made instead of the
checkpatch message and also start the first word with a capital letter. :)

>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ---
>  drivers/staging/mt7621-pci/pci-mt7621.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c
> b/drivers/staging/mt7621-pci/pci-mt7621.c
> index 14aac08..780ba56 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -644,7 +644,7 @@ static int mt7621_pci_probe(struct platform_device
> *pdev)
>         switch (pcie_link_status) {
>         case 7:
>                 val = read_config(pcie, 2, 0x4);
> -               write_config(pcie, 2, 0x4, val|0x4);
> +               write_config(pcie, 2, 0x4, val | 0x4);
>                 val = read_config(pcie, 2, 0x70c);
>                 val &= ~(0xff)<<8;
>                 val |= 0x50<<8;
> @@ -653,14 +653,14 @@ static int mt7621_pci_probe(struct platform_device
> *pdev)
>         case 5:
>         case 6:
>                 val = read_config(pcie, 1, 0x4);
> -               write_config(pcie, 1, 0x4, val|0x4);
> +               write_config(pcie, 1, 0x4, val | 0x4);
>                 val = read_config(pcie, 1, 0x70c);
>                 val &= ~(0xff)<<8;
>                 val |= 0x50<<8;
>                 write_config(pcie, 1, 0x70c, val);
>         default:
>                 val = read_config(pcie, 0, 0x4);
> -               write_config(pcie, 0, 0x4, val|0x4); //bus master enable
> +               write_config(pcie, 0, 0x4, val | 0x4); //bus master enable
>                 val = read_config(pcie, 0, 0x70c);
>                 val &= ~(0xff)<<8;
>                 val |= 0x50<<8;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/2e3eb8f9b4461a330f292aa187158385800c56d4.1538670297.git.mamtashukla555%40gmail.com
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000007050ba05776ce8b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Thu, Oct 4, 2018, 9:36 AM Mamta Shukla &lt;<a href=3D"mailto:mamtashukla=
555@gmail.com">mamtashukla555@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">Add spaces around &#39;|&#39; to fix checkpatch issue<b=
r>
CHECK: spaces preferred around that &#39;|&#39; (ctx:VxV)<br></blockquote><=
/div></div><div dir=3D"auto"><br></div><div dir=3D"auto">The subject line c=
ould say what change has been made instead of the checkpatch message and al=
so start the first word with a capital letter. :)</div><div dir=3D"auto"><d=
iv class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Signed-off-by: Mamta Shukla &lt;<a href=3D"mailto:mamtashukla555@gmail.com"=
 target=3D"_blank" rel=3D"noreferrer">mamtashukla555@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/mt7621-pci/pci-mt7621.c | 6 +++---<br>
=C2=A01 file changed, 3 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt76=
21-pci/pci-mt7621.c<br>
index 14aac08..780ba56 100644<br>
--- a/drivers/staging/mt7621-pci/pci-mt7621.c<br>
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c<br>
@@ -644,7 +644,7 @@ static int mt7621_pci_probe(struct platform_device *pde=
v)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (pcie_link_status) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case 7:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val =3D read_config=
(pcie, 2, 0x4);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_config(pcie, =
2, 0x4, val|0x4);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_config(pcie, =
2, 0x4, val | 0x4);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val =3D read_config=
(pcie, 2, 0x70c);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val &amp;=3D ~(0xff=
)&lt;&lt;8;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val |=3D 0x50&lt;&l=
t;8;<br>
@@ -653,14 +653,14 @@ static int mt7621_pci_probe(struct platform_device *p=
dev)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case 5:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case 6:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val =3D read_config=
(pcie, 1, 0x4);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_config(pcie, =
1, 0x4, val|0x4);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_config(pcie, =
1, 0x4, val | 0x4);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val =3D read_config=
(pcie, 1, 0x70c);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val &amp;=3D ~(0xff=
)&lt;&lt;8;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val |=3D 0x50&lt;&l=
t;8;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 write_config(pcie, =
1, 0x70c, val);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 default:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val =3D read_config=
(pcie, 0, 0x4);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_config(pcie, =
0, 0x4, val|0x4); //bus master enable<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_config(pcie, =
0, 0x4, val | 0x4); //bus master enable<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val =3D read_config=
(pcie, 0, 0x70c);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val &amp;=3D ~(0xff=
)&lt;&lt;8;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val |=3D 0x50&lt;&l=
t;8;<br>
-- <br>
1.9.1<br>
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
om/d/msgid/outreachy-kernel/2e3eb8f9b4461a330f292aa187158385800c56d4.153867=
0297.git.mamtashukla555%40gmail.com" rel=3D"noreferrer noreferrer" target=
=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/2e3eb8f9b446=
1a330f292aa187158385800c56d4.1538670297.git.mamtashukla555%40gmail.com</a>.=
<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--0000000000007050ba05776ce8b3--


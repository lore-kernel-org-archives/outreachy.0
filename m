X-GM-THRID: 6608456604457107456
X-Received: by 2002:a81:a2d4:: with SMTP id z203-v6mr4408800ywg.5.1538683973847;
        Thu, 04 Oct 2018 13:12:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:15c6:: with SMTP id 189-v6ls1592997ybv.20.gmail; Thu, 04
 Oct 2018 13:12:53 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63wYqlVuVReYUwnSX0x72zfoAWSm9fCCtfNN60P1yCUrk+jBQpuY2tx+eQe3w9IzbWSA/Ff
X-Received: by 2002:a25:a091:: with SMTP id y17-v6mr4644243ybh.53.1538683972964;
        Thu, 04 Oct 2018 13:12:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538683972; cv=none;
        d=google.com; s=arc-20160816;
        b=c9DdcIl3jMOjqTub51xFtf72WJa/1bqLNPnRx+7LSet28G0F+WU7UavD5qqAjTtCRD
         A4cy+eWDvQmjHpeT+hd6OvnZIASAsALBNVm3JYOaZPWccQG83cwDQ8yxHS09A5Dq6z4s
         Ri5vGT1BJn9LhKpE/x0hrNJvnKbfqfzVSzX1wEJIN0cAvyIGVAEhYdJdhVJcqX01bUet
         aK6PKs6faAk4m4z7JixvnVhTQTLlT9+3xNpQU4Uf4LcE3cUYXvnJageOyOFCE9tTDjse
         nC1kXHN4W1VatHKJg2b5/AhbIe/2oX8iKtx7nhXPMj0QyvOsBXWHyCwxRfnHSiIZgcD4
         vcIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U/1aWticEwWF4W8XuCH9Q/PMtm9yw3RDc6z6UjbEX5w=;
        b=QB+yrjVoU9wzx33beeep/Ia0Ymke04VGsAiwgo8j6bDmqGRwJh1+hs0zm+yKTqcA1a
         scXzJmB9EkXjfItAHT2uoEvMWBHUBMYo+BrtzbYa7AvIrX00+J/4gBqH3VDEk9+ofCiP
         SL3IfXyqoA+/dB4H1p5qCLEH/i7byBkmc4qT1+DfM37zFaw5uS5UM+KsKrXlpIut9I6d
         8aHzaoxTaOdD+ib0ZX43ILP16SSW50wdmuqDTWVM3nD96VpNVWdWElcITpd4mu5cjKe1
         ZR8H8zyoUllJUuwb5wXm0Q4RemKiKZ/SjYfeCnvU111tg26vYssh8RGL/LsXGqVB4kw+
         PO1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nRFrFFl0;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id v16-v6si269863ybe.1.2018.10.04.13.12.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 13:12:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nRFrFFl0;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id v19-v6so11400794qtg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 13:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=U/1aWticEwWF4W8XuCH9Q/PMtm9yw3RDc6z6UjbEX5w=;
        b=nRFrFFl0hSWGK/s0rDs7tPQ2e3b4kPBUbfpzqlIvaVqWZ7Rm/UzBlyjQ5+IqY5fkdT
         DCC18aQsCDdGEIQGhFNulvyP4CEud4roY25aGNoiY4QCUc8uZa+lIgdmW8wbaUaqnXbP
         r07JtzmOIM7jimzbRUMJ44fFl4lC062iYt+w1Maaq9tn1pTRpnqCjDsW1YpijS96nG4A
         KdKUPPMR6G0kR+SZzrDm5ULW550Jb4EoL9fyYooJjeJ5Kcg9sbQBVumvs+GDv5/6W+rA
         85AUwGOrHge1w6fpNQLiLJSBBC++VISWqN34pR7M+3XrbFxefsUigUnA8kDAvJRCKLP2
         1How==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=U/1aWticEwWF4W8XuCH9Q/PMtm9yw3RDc6z6UjbEX5w=;
        b=uYkT2fmnHJq7hakXWT5WKLv0A1fgm/eadKq1fy9q9aPTAtJ+Y6+wlAE6x0P3vy4+3Q
         +DQuYtRL4GZQlz7DLDANkGZ/mfOPXMoj44RJe1Nm7+IQTb7DnUzNFMX0Csl3lOmcfuVd
         Id1wg+HhMteXhmzSd3ynb5KRppbV8uAD3cfyH+Yxy0WAjtsSwIdJk3Jpuj1vNy1NK/PJ
         xyx44E+e/GMuENMuEnpmbydGyqCb8KYZ3sCW+dOdr4oMXHtJCEyH02savn2nQry82+3V
         JMKO5L6KDVNCMgVO90v1mGL8PCRR7Rj46xyvA3tMfff4oyITxCNzqluXVRP1Vu3x70oE
         hXcw==
X-Gm-Message-State: ABuFfoizo00YSJ8xLQ2U9bLK2XzvHbtMbJ+yRVKFQzvYZWlQP3Y3Pp3B
	JhdlsQEyOxHLlqgI2C66/U/dmdUzPs3HByVxREBUtA==
X-Received: by 2002:aed:2e04:: with SMTP id j4-v6mr6438741qtd.47.1538683972216;
 Thu, 04 Oct 2018 13:12:52 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1538670297.git.mamtashukla555@gmail.com> <dbd85c8647fdc02a03e1266568ac8b043bd6720d.1538670297.git.mamtashukla555@gmail.com>
In-Reply-To: <dbd85c8647fdc02a03e1266568ac8b043bd6720d.1538670297.git.mamtashukla555@gmail.com>
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Thu, 4 Oct 2018 13:12:41 -0700
Message-ID: <CAO393ADdPNei1wGJDv9qSz6F2TDBjxMXXAEmTBJcokQ_k4tuLg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: mt7621-pci: do not
 initialise statics to 0
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="00000000000095ebd005776cc74a"

--00000000000095ebd005776cc74a
Content-Type: text/plain; charset="UTF-8"

Hi Mamta

On Thu, Oct 4, 2018, 9:33 AM Mamta Shukla <mamtashukla555@gmail.com> wrote:

> Remove initialisation to 0 for static global variable to fix checkpatch
> issue.
> ERROR: do not initialise statics to 0
>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ---
> Removed initialisation to 0 for static global variable:
> 1.This type of variable iss initialised to 0 implicitly as per C coding
> standard.
> 2.Also this will take space in .BSS segment of memory while linking.
>

This series should've been a v2. If there are patches in a series which
haven't changed, you still send a v2 for them with the change log "No
change".


>  drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c
> b/drivers/staging/mt7621-pci/pci-mt7621.c
> index ba1f117..3182d8a 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -122,7 +122,7 @@
>  #define RALINK_PCIE_CLK_EN             BIT(21)
>
>  #define MEMORY_BASE 0x0
> -static int pcie_link_status = 0;
> +static int pcie_link_status;
>
>  /**
>   * struct mt7621_pcie_port - PCIe port information
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
> https://groups.google.com/d/msgid/outreachy-kernel/dbd85c8647fdc02a03e1266568ac8b043bd6720d.1538670297.git.mamtashukla555%40gmail.com
> .
> For more options, visit https://groups.google.com/d/optout.
>

--00000000000095ebd005776cc74a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Mamta<br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Thu, Oct 4, 2018, 9:33 AM Mamta Shukla &lt;<a href=3D"mailto:ma=
mtashukla555@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">mam=
tashukla555@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">Remove initialisation to 0 for static global variable to fix checkpatch i=
ssue.<br>
ERROR: do not initialise statics to 0<br>
<br>
Signed-off-by: Mamta Shukla &lt;<a href=3D"mailto:mamtashukla555@gmail.com"=
 rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">mamtashukla555@=
gmail.com</a>&gt;<br>
---<br>
Removed initialisation to 0 for static global variable:<br>
1.This type of variable iss initialised to 0 implicitly as per C coding<br>
standard.<br>
2.Also this will take space in .BSS segment of memory while linking.<br></b=
lockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">This se=
ries should&#39;ve been a v2. If there are patches in a series which haven&=
#39;t changed, you still send a v2 for them with the change log &quot;No ch=
ange&quot;.=C2=A0=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
=C2=A0drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt76=
21-pci/pci-mt7621.c<br>
index ba1f117..3182d8a 100644<br>
--- a/drivers/staging/mt7621-pci/pci-mt7621.c<br>
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c<br>
@@ -122,7 +122,7 @@<br>
=C2=A0#define RALINK_PCIE_CLK_EN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0BIT(21)<br>
<br>
=C2=A0#define MEMORY_BASE 0x0<br>
-static int pcie_link_status =3D 0;<br>
+static int pcie_link_status;<br>
<br>
=C2=A0/**<br>
=C2=A0 * struct mt7621_pcie_port - PCIe port information<br>
-- <br>
1.9.1<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">outreachy-kernel=
+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">o=
utreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/dbd85c8647fdc02a03e1266568ac8b043bd6720d.153867=
0297.git.mamtashukla555%40gmail.com" rel=3D"noreferrer noreferrer noreferre=
r noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy=
-kernel/dbd85c8647fdc02a03e1266568ac8b043bd6720d.1538670297.git.mamtashukla=
555%40gmail.com</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">https://=
groups.google.com/d/optout</a>.<br>
</blockquote></div></div></div>

--00000000000095ebd005776cc74a--


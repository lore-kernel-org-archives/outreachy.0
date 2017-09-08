X-GM-THRID: 6463333308428189696
X-Received: by 10.13.221.193 with SMTP id g184mr2208146ywe.111.1504892889613;
        Fri, 08 Sep 2017 10:48:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.146.214 with SMTP id u205ls542166iod.10.gmail; Fri, 08 Sep
 2017 10:48:08 -0700 (PDT)
X-Received: by 10.202.83.68 with SMTP id h65mr2072771oib.121.1504892888889;
        Fri, 08 Sep 2017 10:48:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504892888; cv=none;
        d=google.com; s=arc-20160816;
        b=xE/TspmUErwJPQno5Vq6ZWRf7T0qZlWnTdQVfKkE7kUEIoeIMdL+pQdVMzyH5D9JPC
         sncvLUBxm+s43mL29xGdVbylAj6QyIKVOzIonEJ0gFk5QT2XMMbGohjETXFa9VV5xoBu
         5cZDIe9/gWdv/egGaI9Qt8ipnVUwVbi/IL37I1Vjy3pJfFWt8LKGp1ulKeF4BJ9D3mg/
         qDIE645qCkHCzVLIxIe+U6CKlWbJ+8sCErbtmR3Fv6eQKP9LMbvW/2iF3Nk8N4xvqQav
         5pfzpBTW74dsHrisjS/GI26MOQFvL0NNvg8pv/Op6i/haBkAda2Rc+u1oumhj0d8KlR6
         KnKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=CFrWFZsWSnpS1SsM22OocASpYBeu5y8hZD+9iE5WYaY=;
        b=j0m7vcQniVFc7MLhNlRNwqeR7B+eLaSHGyCGCb/UJIZ40CLI9o4RxiadXr+3IlWUBg
         CbBH1qA9PicDFJQk0nEw8YnXmAo7QvIKs2O/30yPG9isChmemFL4fw9qRWNY6RPRWSlg
         d2AAyK4XuL0GJiyWWMZCrLv8yNVM3W3oIvzBR3B/r6xuk6vrKyyfl1dfIemBoXK+p7mO
         H8JkNIltcTn57yoiWy1hIPGzNl51eW0DAPuCJc7+qnxQnwjKTtT5G0s+tb9kQkkAroNr
         TLuiuO3yhBACo66FE4p5+N68whTZc28c8qTTNPO5GBYS0fcDSOAs5LRtnjMQajjO3nNT
         SJmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EJ6zvimz;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id o68si122088vkc.1.2017.09.08.10.48.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 10:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EJ6zvimz;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id x85so798272vkx.3
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 10:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=CFrWFZsWSnpS1SsM22OocASpYBeu5y8hZD+9iE5WYaY=;
        b=EJ6zvimzRsFWoZGTo4Xq8oQ1hHK3fFZnAV0uz9uMH9bzjys3nWVLBz2XmsWc2YYMoY
         9ee2EKYDdml/Op15md6tSS2L7K0W+NO578G84hd32rvhnEtYfD5nuBxmvgGslY3Gtz1e
         kDrmyz006A7G1SswOFgF5ZrtJYyZ09roS4YQeoS372PtJ3CuDu1E+oTtebWE4KtiilHY
         7YGNbBsJHmS9jqg1vnzygfR4wdKrBmC/UgcEulzdGcsyXtKsoBYUdGx0XZgAbwrC7TuQ
         PdPVCBWlwnaxs6F/alQamwRL7vj3Bz599MI72RO05oBC3H5JYnvhxvrQLOZ+2NHu6g0i
         G2rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=CFrWFZsWSnpS1SsM22OocASpYBeu5y8hZD+9iE5WYaY=;
        b=J/JXNwS5Vbgf3biTbwZNjpEMQagP7T/QQ4GLegrsldaeJlPBNkzLZxbACGb005bfsf
         nuee329pnFzJ+R4tXeCgCNb8V0OpBY2kB8e1kUelQDIJhymC12WWuIxtYRUWbogRu+NT
         Ah6+RJcv9+PguW5yptz9zlbmPpvxkGoqPjBS9Ns/GCsiHQSw+qR0/m8ovYZRAycDE/wj
         95bIeaRVtl0amh3NXLhBH4qpwb5gDro9ZGn40qezu4hpUz9J9SGtc/KT+/Al5QIT6sTj
         CtfUKzg3SqRye0KezirL5D6YAbHxKMAfNjMgaC9N4mV7zEOxnBh99SYGG5XkrVwFCnmN
         IpPA==
X-Gm-Message-State: AHPjjUgiFJrVfETFGPkSisVaX/zEc3bjg3PMc0gFFc0/QfjQExNhcGJc
	WdatVD0vKWFwW63KxERmRxMS9o1PRg==
X-Google-Smtp-Source: AOwi7QBDTl6rPGMqQqOFagOiRTVZsWO5pgdK/stbuYJB1aViVUVnTnceoLnEyDwGSi9vinhN1KkiEvlSxJR6LVw4g7Y=
X-Received: by 10.31.165.196 with SMTP id o187mr2390565vke.103.1504892888597;
 Fri, 08 Sep 2017 10:48:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.10.5 with HTTP; Fri, 8 Sep 2017 10:48:08 -0700 (PDT)
In-Reply-To: <1504880668-25927-1-git-send-email-harshasharmaiitr@gmail.com>
References: <1504880668-25927-1-git-send-email-harshasharmaiitr@gmail.com>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Fri, 8 Sep 2017 23:18:08 +0530
Message-ID: <CANMOCy0GiGcAEpVcQx8MWx=2vWBaVCP+aemGyUZ64ciHbiDQ5A@mail.gmail.com>
Subject: Re: [PATCH v6] staging: pi433: Fixes minor typo errors
To: Greg KH <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Harsha Sharma <harshasharmaiitr@gmail.com>
Content-Type: multipart/alternative; boundary="001a11416d3a0cca6f0558b12e00"

--001a11416d3a0cca6f0558b12e00
Content-Type: text/plain; charset="UTF-8"

Hello,
I have tried to follow above given instructions but please correct me if I
am wrong somewhere.
Sorry for inconvenience and thanks for your valuable time.

With regards,
Harsha Sharma

On Fri, Sep 8, 2017 at 7:54 PM, Harsha Sharma <harshasharmaiitr@gmail.com>
wrote:

> Fixes checkpatch warning -- "occured" and "succesfully" are misspelled
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Changes in v6:
>  -Added changes from other versions
> Changes in v5:
>  -Signed-off properly with correct author name in .gitconfig
> Changes in v4:
>  -Correct the format of the subject.
>  -Signed-off with same author name and signed-off name
> Changes in v3:
>  -Added space after : and removed file extension from subject
>  drivers/staging/pi433/pi433_if.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/pi433/pi433_if.c
> b/drivers/staging/pi433/pi433_if.c
> index 6b9b7df..6a10478 100644
> --- a/drivers/staging/pi433/pi433_if.c
> +++ b/drivers/staging/pi433/pi433_if.c
> @@ -473,7 +473,7 @@ struct pi433_instance {
>         }
>
>
> -       /* rx done, wait was interrupted or error occured */
> +       /* rx done, wait was interrupted or error occurred */
>  abort:
>         dev->interrupt_rx_allowed = true;
>         SET_CHECKED(rf69_set_mode(dev->spi, standby));
> @@ -1033,7 +1033,7 @@ static int setup_GPIOs(struct pi433_device *device)
>                 if (retval)
>                         return retval;
>
> -               dev_dbg(&device->spi->dev, "%s succesfully configured",
> name);
> +               dev_dbg(&device->spi->dev, "%s successfully configured",
> name);
>         }
>
>         return 0;
> --
> 1.9.1
>
>

--001a11416d3a0cca6f0558b12e00
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>I have tried to follow above given instructions=
 but please correct me if I am wrong somewhere.</div><div>Sorry for inconve=
nience and thanks for your valuable time.</div><div><br></div><div>With reg=
ards,</div><div>Harsha Sharma</div></div><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Fri, Sep 8, 2017 at 7:54 PM, Harsha Sharma <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:harshasharmaiitr@gmail.com" target=3D"_b=
lank">harshasharmaiitr@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Fixes checkpatch warning -- &quot;occured&quot; and &quot;suc=
cesfully&quot; are misspelled<br>
<br>
Signed-off-by: Harsha Sharma &lt;<a href=3D"mailto:harshasharmaiitr@gmail.c=
om">harshasharmaiitr@gmail.com</a>&gt;<br>
---<br>
Changes in v6:<br>
=C2=A0-Added changes from other versions<br>
Changes in v5:<br>
=C2=A0-Signed-off properly with correct author name in .gitconfig<br>
Changes in v4:<br>
=C2=A0-Correct the format of the subject.<br>
=C2=A0-Signed-off with same author name and signed-off name<br>
Changes in v3:<br>
=C2=A0-Added space after : and removed file extension from subject<br>
=C2=A0drivers/staging/pi433/pi433_<wbr>if.c | 4 ++--<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/drivers/staging/pi433/pi433_<wbr>if.c b/drivers/staging/pi433/=
pi433_<wbr>if.c<br>
index 6b9b7df..6a10478 100644<br>
--- a/drivers/staging/pi433/pi433_<wbr>if.c<br>
+++ b/drivers/staging/pi433/pi433_<wbr>if.c<br>
@@ -473,7 +473,7 @@ struct pi433_instance {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0/* rx done, wait was interrupted or error occur=
ed */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* rx done, wait was interrupted or error occur=
red */<br>
=C2=A0abort:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;interrupt_rx_allowed =3D true;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SET_CHECKED(rf69_set_mode(dev-<wbr>&gt;spi, sta=
ndby));<br>
@@ -1033,7 +1033,7 @@ static int setup_GPIOs(struct pi433_device *device)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (retval)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return retval;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&amp;device=
-&gt;spi-&gt;dev, &quot;%s succesfully configured&quot;, name);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&amp;device=
-&gt;spi-&gt;dev, &quot;%s successfully configured&quot;, name);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.1<br>
<br>
</font></span></blockquote></div><br></div>

--001a11416d3a0cca6f0558b12e00--


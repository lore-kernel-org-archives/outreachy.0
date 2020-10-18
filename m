X-GM-THRID: 6885024139738873856
X-Received: by 2002:a50:c34a:: with SMTP id q10mr15053489edb.36.1603045897844;
        Sun, 18 Oct 2020 11:31:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:1d3c:: with SMTP id dh28ls5644317edb.0.gmail; Sun,
 18 Oct 2020 11:31:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwMsm+/VbaI3872+RHaaKBWzqEtBt8qt1NfLs8oxZZTj3hRX71OmPSTr+4NUNOASFms+2es
X-Received: by 2002:aa7:c347:: with SMTP id j7mr15252112edr.353.1603045895645;
        Sun, 18 Oct 2020 11:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603045895; cv=none;
        d=google.com; s=arc-20160816;
        b=R5eouoxV/Z/GanmpSuUaNYjykaa7zPnnfE36w0U9pYzQlRGNy9erKW+i/556/KRr7U
         P2kghm20kWwnMVLnxtTfknPrOWbdqK9LIL664Hm2aoM+y6LAomK7MqRA1E/G+1h6r+t1
         TLJZBQD0VwGYjah0EOcLqSZlEioJsWthaWt6RhcVDke6vK/JlGKONwDOePkpXawUszkv
         OH+IMro57/TR3FIGf8BP5MTwlwKUrXbS5AkevYwPR4bFUyaMDpmN6vwncc1fKWcxwjOb
         0TVTyLK6v67eTzhlHU3E/m1U8tF2bkfSzwOByGQpTEDGdwogvv3IIrsIrBKc3Kw8taLz
         cRUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=j/vFE7HRmIucSG+WD5TVRruoThM8b8FCnMMQZG2+y6o=;
        b=K/4qsxHz3KYXhYtzypqj9iC0xoqU1Rq3g6LLj4i4wDnk5MLsMQPPa693yHJ9KnB1rE
         45Pj/gvfpn42UhAUO9QbhrMY+cWL9pa5iJQUbm1fAMNJuy6TOja2aUpc9hjRH28DRs83
         mJVxRxMjmwLlb+g2EpomxM1bg4RTYRyG+C9o1H2tuw28tyQHNSsPPf/j8MLahTW5Y9E1
         hjDeoL4BhIr+R7iOzyA1g1hUasqzRu6H9isjwpxN9w1ztr9ILYB0RtOyLzfzaQnODS2z
         eejDOF8woCbvSbxiIt0KhGCD3cW4+BKx/JpHvyZH0Mz9bLS+HYAejtRugjUH7EjWpIVH
         14xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t7a5PNna;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id v18si248519edx.4.2020.10.18.11.31.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 11:31:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t7a5PNna;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x542.google.com with SMTP id i5so7979467edr.5
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 11:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=j/vFE7HRmIucSG+WD5TVRruoThM8b8FCnMMQZG2+y6o=;
        b=t7a5PNna9mPxsXiDOJWjC2j3JFQUfredUDS0ZdIHm+bSSHh3/7NetxBJa3ueQEBF6r
         Az0g4yUWc83vzN8+/iR5DhwI1bC1oW9phnVBI8hqaVdXYAmihsMHMO/kbwtUMqSr1kcu
         YWHSk2lJ4qEooUqXV9g4bEuhPa8hUMXLsOEokzJc9go+DcN3kGFfG7WcpGVoOC7e5KLo
         plcNNAQCVwk7Q4radQKIjQB5LRuv0uvm51dZlUHhB2YVs+T5P9gaH1fnN0XTXnG3/Oef
         bzvWBDhl5XyvzehUW+HkK2iFQ1KumFa6LwojuZHBQKBsIQ3ciWOXciJPb+72Kxv0urHu
         s2jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=j/vFE7HRmIucSG+WD5TVRruoThM8b8FCnMMQZG2+y6o=;
        b=aTm5d+5NKowFPjSiU/B6L1KhecDuR89Wd8YJ+Fx3rnlCTi1If96RZsZZmwkCzmfmGt
         cI1n74OQP4nojZas7wCUb4Hw9hUpqfDrWDuj2Q5QldUhrrg+2YglNpCiHkY/UXAYD+VM
         TTPl88zU3mrnNgG1tw2rHQRhDO8QEwLvBRutjHIewOeoU4eC1KJ//NdHKVnkgM3WqdmT
         NpqTrToujMAPPGCMCD8T8dMQajpWbA1RgyFd1y9gN6PSkV4zX59A0FXy9Gr18M3uPIip
         oyW0JkwkKhVsRF6W2JzDTPbgAWaEsxTHSlKFmUxHVR38MFzTGvZ9Uc3zNiErbEvJuNGC
         VxgQ==
X-Gm-Message-State: AOAM530BIr+s+G9HnvfVVA5mSnq4mBSB2DMj0hT7Dti8/8g5LouYXkPI
	k0VSiZhaAUbLk47Ev3H/VLGd3a7+nTlWZbkx+xs=
X-Received: by 2002:a50:cbc9:: with SMTP id l9mr14317346edi.310.1603045895435;
 Sun, 18 Oct 2020 11:31:35 -0700 (PDT)
MIME-Version: 1.0
References: <20201018180954.GA39024@ubuntu204>
In-Reply-To: <20201018180954.GA39024@ubuntu204>
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
Date: Mon, 19 Oct 2020 00:01:24 +0530
Message-ID: <CACAkLuoOgLe5pH5WsKqybZ92DcHiKM0eOCPuqm7wKMkeOC7s5Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Use sysfs_emit for
 show(device *...) functions
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Ian Abbott <abbotti@mev.co.uk>, 
	H Hartley Sweeten <hsweeten@visionengravers.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="00000000000027f96c05b1f63520"

--00000000000027f96c05b1f63520
Content-Type: text/plain; charset="UTF-8"

On Sun, 18 Oct, 2020, 11:40 PM Deepak R Varma, <mh12gx2825@gmail.com> wrote:

> Convert snprintf calls in device show functions to sysfs_emit
> for PAGE_SIZE buffer safety.
> Warning generated by: scripts/coccinelle/api/device_attr_show.cocci
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/comedi/comedi_fops.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/comedi/comedi_fops.c
> b/drivers/staging/comedi/comedi_fops.c
> index d99231c737fb..5b8ba0c84a8e 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c
> @@ -396,7 +396,7 @@ static ssize_t max_read_buffer_kb_show(struct device
> *csdev,
>         mutex_unlock(&dev->mutex);
>
>         comedi_dev_put(dev);
> -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> +       return sysfs_emit(buf, "%u\n", size);
>  }
>
>  static ssize_t max_read_buffer_kb_store(struct device *csdev,
> @@ -452,7 +452,7 @@ static ssize_t read_buffer_kb_show(struct device
> *csdev,
>         mutex_unlock(&dev->mutex);
>
>         comedi_dev_put(dev);
> -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> +       return sysfs_emit(buf, "%u\n", size);
>  }
>
>  static ssize_t read_buffer_kb_store(struct device *csdev,
> @@ -509,7 +509,7 @@ static ssize_t max_write_buffer_kb_show(struct device
> *csdev,
>         mutex_unlock(&dev->mutex);
>
>         comedi_dev_put(dev);
> -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> +       return sysfs_emit(buf, "%u\n", size);
>  }
>
>  static ssize_t max_write_buffer_kb_store(struct device *csdev,
> @@ -565,7 +565,7 @@ static ssize_t write_buffer_kb_show(struct device
> *csdev,
>         mutex_unlock(&dev->mutex);
>
>         comedi_dev_put(dev);
> -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> +       return sysfs_emit(buf, "%u\n", size);
>  }
>
>  static ssize_t write_buffer_kb_store(struct device *csdev,
> --
> 2.25.1
>

Hi Deepak,

I was just about to send a V2 for the previous patchset I sent which
included this file as well. No issues since I've not sent it yet- I'll
remove this file from my V2. But please give me a heads-up the next time so
we are not working on the same files. :-)

Thanks, and regards,
Sumera

-- 
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20201018180954.GA39024%40ubuntu204
> .
>

--00000000000027f96c05b1f63520
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, 18 Oct, 2020, 11:40 PM Deepak R Varma, &lt;<a =
href=3D"mailto:mh12gx2825@gmail.com" target=3D"_blank" rel=3D"noreferrer">m=
h12gx2825@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
Convert snprintf calls in device show functions to sysfs_emit<br>
for PAGE_SIZE buffer safety.<br>
Warning generated by: scripts/coccinelle/api/device_attr_show.cocci<br>
<br>
Signed-off-by: Deepak R Varma &lt;<a href=3D"mailto:mh12gx2825@gmail.com" r=
el=3D"noreferrer noreferrer" target=3D"_blank">mh12gx2825@gmail.com</a>&gt;=
<br>
---<br>
=C2=A0drivers/staging/comedi/comedi_fops.c | 8 ++++----<br>
=C2=A01 file changed, 4 insertions(+), 4 deletions(-)<br>
<br>
diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/=
comedi_fops.c<br>
index d99231c737fb..5b8ba0c84a8e 100644<br>
--- a/drivers/staging/comedi/comedi_fops.c<br>
+++ b/drivers/staging/comedi/comedi_fops.c<br>
@@ -396,7 +396,7 @@ static ssize_t max_read_buffer_kb_show(struct device *c=
sdev,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_unlock(&amp;dev-&gt;mutex);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 comedi_dev_put(dev);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return snprintf(buf, PAGE_SIZE, &quot;%u\n&quot=
;, size);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return sysfs_emit(buf, &quot;%u\n&quot;, size);=
<br>
=C2=A0}<br>
<br>
=C2=A0static ssize_t max_read_buffer_kb_store(struct device *csdev,<br>
@@ -452,7 +452,7 @@ static ssize_t read_buffer_kb_show(struct device *csdev=
,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_unlock(&amp;dev-&gt;mutex);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 comedi_dev_put(dev);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return snprintf(buf, PAGE_SIZE, &quot;%u\n&quot=
;, size);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return sysfs_emit(buf, &quot;%u\n&quot;, size);=
<br>
=C2=A0}<br>
<br>
=C2=A0static ssize_t read_buffer_kb_store(struct device *csdev,<br>
@@ -509,7 +509,7 @@ static ssize_t max_write_buffer_kb_show(struct device *=
csdev,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_unlock(&amp;dev-&gt;mutex);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 comedi_dev_put(dev);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return snprintf(buf, PAGE_SIZE, &quot;%u\n&quot=
;, size);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return sysfs_emit(buf, &quot;%u\n&quot;, size);=
<br>
=C2=A0}<br>
<br>
=C2=A0static ssize_t max_write_buffer_kb_store(struct device *csdev,<br>
@@ -565,7 +565,7 @@ static ssize_t write_buffer_kb_show(struct device *csde=
v,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_unlock(&amp;dev-&gt;mutex);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 comedi_dev_put(dev);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return snprintf(buf, PAGE_SIZE, &quot;%u\n&quot=
;, size);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return sysfs_emit(buf, &quot;%u\n&quot;, size);=
<br>
=C2=A0}<br>
<br>
=C2=A0static ssize_t write_buffer_kb_store(struct device *csdev,<br>
-- <br>
2.25.1<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Hi Deepak,=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">I=
 was just about to send a V2 for the previous patchset I sent which include=
d this file as well. No issues since I&#39;ve not sent it yet- I&#39;ll rem=
ove this file from my V2. But please give me a heads-up the next time so we=
 are not working on the same files. :-)=C2=A0</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">Thanks, and regards,=C2=A0</div><div dir=3D"auto">Sum=
era</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_=
quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
rel=3D"noreferrer noreferrer" target=3D"_blank">outreachy-kernel+unsubscrib=
e@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/20201018180954.GA39024%40ubuntu204" rel=3D"nore=
ferrer noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d=
/msgid/outreachy-kernel/20201018180954.GA39024%40ubuntu204</a>.<br>
</blockquote></div></div></div>

--00000000000027f96c05b1f63520--


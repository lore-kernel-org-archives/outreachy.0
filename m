X-GM-THRID: 6886436790360604672
X-Received: by 2002:aa7:c458:: with SMTP id n24mr4175601edr.189.1603402817273;
        Thu, 22 Oct 2020 14:40:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:43c6:: with SMTP id i6ls204417ejs.6.gmail; Thu, 22
 Oct 2020 14:40:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwczA34bnq89jDrvZvTAqJ9WTbYAsQMWWbo7zOi9t4FjkcIRO/jmWwtxQUW1ADptYeZy8jf
X-Received: by 2002:a17:906:fa84:: with SMTP id lt4mr4377563ejb.61.1603402815016;
        Thu, 22 Oct 2020 14:40:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603402815; cv=none;
        d=google.com; s=arc-20160816;
        b=sK+mM91RBbS4R7KcEmeQYLA6SqIJ0h2V8r5lTJ44bkqFpbGM1cLYw0kOzMuT5jr/Ob
         KvmztWd67Tc0xL+zTkG5hgB4jIoDpFdo54u/EbYd/OBgCr+x03CzGpSmO9+Je7+zrLTb
         7Rc3/EKHtOhXpJtlJyrcIstV9DgQJky+PW8AylsEC9HZpdkVCIbqRE82Px9MRd/ua8e5
         ZoVYW/PNNkx2t1HzFXB297EU6oKHCoH6jv//ouhE5MHZ2W6niA3GPxBzQ/bpmkZvggqg
         DpkiiBX5jCEhSCR9hS8WD0se8d8IUm2CIxpP7nvglSQo3Sn+TbDOFs+hydeHcF84uY1o
         m0Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ye8Oo0//hYvczhAGt6KHG9OzkSrSCdlWjnUP+NDCwEE=;
        b=QmhvkuVUWRivOfKkjAauX1/JsU2MK/pFgg6oQp8tBa9dfwicwOHU6gFTY0/WxI+E+4
         3ttolv7sRVpbfI+ORnEsO/gU9Hy6KMq5evoW9LEMo0Ngq1L1qON5ifxQTaUocH9qsRhJ
         QNmXwHtdRH0/NC9rAwHjp6HzmcprUwEDFu20KP3KaWcLSPny2/pOpw7wWSciUytarenx
         9u/vMrjnW+mr+xGBFgxapU6XfXHBMuFEf8AJwuj2kc0Wn5kxU/suP7+AP82egZQp3ubA
         rg4T/N2O5MW7uFnXDW5ykO3AU5xbk5JXY+N5Yjyqpq3XHkWP8Hc5Zbp59LUF8bH0u/wY
         +9Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r4ZSa7IG;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id lf25si108758ejb.0.2020.10.22.14.40.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 14:40:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r4ZSa7IG;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x544.google.com with SMTP id t20so3241552edr.11
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 14:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ye8Oo0//hYvczhAGt6KHG9OzkSrSCdlWjnUP+NDCwEE=;
        b=r4ZSa7IGg+H9TNC4t7vxsFpbVF4K4dAQ2e9Rmp+xCVpml5fAlLufoVlNprevyUwEiA
         xpjsc2ESKkyRXWY4AgsEQpEO8u5dPEvMiZhw8MKRBmjE4mksbZ+03B7z9CgMMLnw6cDL
         Utt4veTsHmOHtBkr1P5RPWBfzcDk+68Xe75BzAjPQU6iVv0CWUsjWmQ/g9nbOYbOQvxW
         3mOBHWLSrSKDQ+22gOwn6tPQPTIp1gliq8IXfIqUlb9oMzUiFWkRS9Bd025zr0rrn6Y4
         wN98WqMiKP3cpf5e2HmberlrxHeMgvN0ObayE5YYKOo0O+Izt46T9RQKcDZauirPeHBx
         LfDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ye8Oo0//hYvczhAGt6KHG9OzkSrSCdlWjnUP+NDCwEE=;
        b=AGrIWtylwTgzueUlZD7nqUfDlmj6Ywswvoj59ffs+teE5StwpQLqjj6Ll0KV3HfKUT
         Yo9aH/BytaAmp70qPUZVsnb+yr8sR+SAjj0eH3rBsYIrvvuCq9/dHgJ9S+XnGgKPsjPs
         MI90ULRhWGXXCehwSRZCFliFox7gGCfKv6xKf3YFan95JmUhZkZ3mrIWH8u8UCOJE8wD
         mxkUGVvZYp2mC6TNLORjCI9hCNdPMmv6UssWlofv/yg6tk1pZ1KeC6H4O9Fq8Jd4nZHZ
         SHEFo03lwkL9xVlFWF2D+5iebHg4zMaWBQ0bbmzgyj/noFmk/y/Ga7+trA0nrwUsKbSa
         6DQQ==
X-Gm-Message-State: AOAM530+I8S9sKVbXOzCOzNlb5J/xfHscxTIaKiYrTIqknx/euqvNKtl
	P3boX8z9OJiTmagVSga4CYVlCVk38V+BlhEgArA=
X-Received: by 2002:a05:6402:151a:: with SMTP id f26mr4316057edw.386.1603402814831;
 Thu, 22 Oct 2020 14:40:14 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1603371258.git.sylphrenadin@gmail.com> <f6107f3e467f1906abdcc33d35f13cf54f7e5a96.1603371258.git.sylphrenadin@gmail.com>
 <20201022135455.GA1788090@kroah.com>
In-Reply-To: <20201022135455.GA1788090@kroah.com>
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
Date: Fri, 23 Oct 2020 03:10:03 +0530
Message-ID: <CACAkLuoR=w-=t-tQWH1-3i_nVZggbLjY8eQVzb412Br4ctqBmQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/5] gpu: drm: amdgpu: Replace
 snprintf() with sysfs_emit()
To: Greg KH <gregkh@linuxfoundation.org>
Cc: dri-devel@lists.freedesktop.org, 
	Outreachy <outreachy-kernel@googlegroups.com>, alexander.deucher@amd.com, 
	christian.koenig@amd.com, airlied@linux.ie, Daniel Vetter <daniel@ffwll.ch>, 
	Melissa Wen <melissa.srw@gmail.com>, linux-media@vger.kernel.org, 
	amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary="00000000000035becb05b2494fda"

--00000000000035becb05b2494fda
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 22, 2020 at 7:24 PM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Oct 22, 2020 at 07:17:56PM +0530, Sumera Priyadarsini wrote:
> > Using snprintf() for show() methods holds the risk of buffer overrun
> > as snprintf() does not know the PAGE_SIZE maximum of the temporary
> > buffer used to output sysfs content.
> >
> > Modify amdgpu_psp.c to use sysfs_emit() instead which knows the
> > size of the temporary buffer.
> >
> > Issue found with Coccinelle.
> >
> > Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> > ---
> >  drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
> b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
> > index d6c38e24f130..4d1d1e1b005d 100644
> > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
> > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
> > @@ -2621,7 +2621,7 @@ static ssize_t psp_usbc_pd_fw_sysfs_read(struct
> device *dev,
> >               return ret;
> >       }
> >
> > -     return snprintf(buf, PAGE_SIZE, "%x\n", fw_ver);
> > +     return sysfs_emit(buf, PAGE_SIZE, "%x\n", fw_ver);
>
> Did you build this code?  I don't think it is correct...
>

Yes, you are right. I compiled all of them again separately. I had based
them off the usual drm tree
but that is wrong because sysfs_emit has been added only in the 5.10. I
will send a v2 with the proper
corrections.

regards,
sumera


> thanks,
>
> greg k-h
>

--00000000000035becb05b2494fda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 22, 2020 at 7:24 PM Greg =
KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation=
.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">On Thu, Oct 22, 2020 at 07:17:56PM +0530, Sumera Priyadarsini wrote:<br=
>
&gt; Using snprintf() for show() methods holds the risk of buffer overrun<b=
r>
&gt; as snprintf() does not know the PAGE_SIZE maximum of the temporary<br>
&gt; buffer used to output sysfs content.<br>
&gt; <br>
&gt; Modify amdgpu_psp.c to use sysfs_emit() instead which knows the<br>
&gt; size of the temporary buffer.<br>
&gt; <br>
&gt; Issue found with Coccinelle.<br>
&gt; <br>
&gt; Signed-off-by: Sumera Priyadarsini &lt;<a href=3D"mailto:sylphrenadin@=
gmail.com" target=3D"_blank">sylphrenadin@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c b/drivers/gpu/drm=
/amd/amdgpu/amdgpu_psp.c<br>
&gt; index d6c38e24f130..4d1d1e1b005d 100644<br>
&gt; --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c<br>
&gt; +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c<br>
&gt; @@ -2621,7 +2621,7 @@ static ssize_t psp_usbc_pd_fw_sysfs_read(struct =
device *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0return snprintf(buf, PAGE_SIZE, &quot;%x\n&quot;,=
 fw_ver);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return sysfs_emit(buf, PAGE_SIZE, &quot;%x\n&quot=
;, fw_ver);<br>
<br>
Did you build this code?=C2=A0 I don&#39;t think it is correct...<br></bloc=
kquote><div><br></div><div>Yes, you are right. I compiled all of them again=
 separately. I had based them off the usual drm tree<br></div><div>but that=
 is wrong because sysfs_emit has been added only in the 5.10. I will send a=
 v2 with the proper</div><div>corrections.<br><br></div><div>regards,<br></=
div><div>sumera</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--00000000000035becb05b2494fda--


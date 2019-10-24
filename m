X-GM-THRID: 6751148085003419648
X-Received: by 2002:a92:3954:: with SMTP id g81mr48230857ila.255.1571928072543;
        Thu, 24 Oct 2019 07:41:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:9cd4:: with SMTP id x81ls1097234ill.15.gmail; Thu, 24
 Oct 2019 07:41:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy4dd+JDe5BjpTt1GYeEUelcrc7eQL8mqsvV72TY16lb+Q5Jpu8O0edqW3yYC3RV5jzD9u7
X-Received: by 2002:a92:4144:: with SMTP id o65mr47453893ila.206.1571928070930;
        Thu, 24 Oct 2019 07:41:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571928070; cv=none;
        d=google.com; s=arc-20160816;
        b=Azc7v/jE4Z9kwFEGasux7z8ZTZRW20qsNv4flbrVljqZUynKVYBk54fVAT7n3/BRfo
         zidbLR4hP2ccZul/HHJxSu5356LwAsB+s+XMGqdptqfJA/ME66FUElILNM74J4R7Qgne
         qaLNVZEBbaa3Tc49W6mIautczowUA7N/UUe/TKSo32wmn2PG4uF/nIK6lS9N5I7AzBgd
         CwUrdK3dFje53AQjH/hGA8hDtc4KXBHCXa2jaV4IsjBNrcqsydOuw5O+nsmB4eWo2OEs
         ffY/L7tb/VVm6ZP1ybS6n+oUiUuJO2E8LC+UtwBc+oy7wzd05HouwjCWWsYJdw2kS3n+
         566w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jFF6/2XuJHhftzq0dHSUY/Yx3WignYPGnINsvTqiggA=;
        b=j74cqfajYvNxMKYrI0WqjCTFT8tHbC9ZHmI1hOGN0Nf0U8tktJHgOcF6w3hWQJOiPD
         crCGArZ46RABC0rKt6pdwCcmSB44cyhmPv3G8fCQuS61FrO2aqDoDMzSTqbggVfeEO5+
         3lmwPitKgBSvo5WJEsxtczUYCONFCcMIuFzeKQin+xKF07y+5FvekjVZx2xbfcv7IYw8
         y54J+SXm+DZDtUbixiLzm6gO9S85dMfNgO4FdVtqORpTNfNTxcvdIrDR3Vcsm1XBuUQN
         M/Ag5ZBCkqK6UDhIZ844IPwRBjtEsu+Gij8LnXtnofGWsdCqs4Q5/4jMC5w4LyOLlx4n
         DVrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j0Q3eomV;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id z130si1192320iof.5.2019.10.24.07.41.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 07:41:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j0Q3eomV;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe43.google.com with SMTP id d3so16391109vsr.1
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 07:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jFF6/2XuJHhftzq0dHSUY/Yx3WignYPGnINsvTqiggA=;
        b=j0Q3eomVqZhIRMF1Zh8BBQiEopUc9fsP/CJLcH9SeuOSeMgKFuFeOMWsbENqrEMOSa
         3SpzukbXZ+RbWICVknzs7i/cGUEFa1eOb049akcr3T+rvdhKB2STNPrLZFoy571hT1MH
         4fmTz/iaPUlcLlCZrKoudgi3SVz9qjnYZCHtuHzgubMVXiijMD4yBMvtOmx9p1Jz+vfo
         PT6two40yJdj7S/m5j6cM0ggL4vrtSv6Oe5EcTiwYpwUh3ilQ+sJO+es0DrZeTrZ44Ng
         jGpdr7QXqyxhjNz0UMBHEZlayefUdv8D0rj8xHR2/cJ9lgxX3h7QWrPWQ90gFd5tDdoZ
         ou6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jFF6/2XuJHhftzq0dHSUY/Yx3WignYPGnINsvTqiggA=;
        b=n8ZrSe525ZQxYmQRt7yTs8srFzYbu6/Qby2VIYuplXuAfLeoJLqkBPcNqMDHpkw35J
         Ge+jvnNWpLHlAphGTIbW+BkN9IyNhp9v3DOGRSy9EE+M/DRSR7Fxh2ZUce3sRsB1dp8r
         +vrqrGWTPc4wEgYMgUxR4mX/IhSEvLuePqyA5Wud/ZE6HLIFcZKig/pc0dscyFfYKAu8
         rGqkX+3nkddDCqZhBBtjhspx4G+pH7xu+OatuUSXAlxcveULA9I9aB2qpsM5Hc7AotBx
         dnKu3EgTwizI4U9lOzysnNDjlFhWV86juUmH4Jl4rgK9yd6G68xB9Meg7rZ5csjSdPA+
         aVsg==
X-Gm-Message-State: APjAAAUXbdChnNFRcJstjSuKBPdpvB3RUznQWpTUFfXaLLFT+GLDosTp
	KGM/4oFZ4db07K1DLqDJdFKjLxeuyO2FS9drU5c=
X-Received: by 2002:a67:fb0c:: with SMTP id d12mr8716943vsr.201.1571928070297;
 Thu, 24 Oct 2019 07:41:10 -0700 (PDT)
MIME-Version: 1.0
References: <20191023234230.GA4485@ik-ubuntu> <b4d518c4-602a-9db3-4370-e26dfb780637@mev.co.uk>
 <CANR89jYTpnXXZXBkmYwox-i+ZF_0bSWWCCTLOpjaYKJpXJkEZw@mail.gmail.com>
In-Reply-To: <CANR89jYTpnXXZXBkmYwox-i+ZF_0bSWWCCTLOpjaYKJpXJkEZw@mail.gmail.com>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Thu, 24 Oct 2019 15:40:59 +0100
Message-ID: <CANR89jaTcgtXzkPH-O6vTNoCjQXyHSTe-zY35y=O9p9WBQ=X7A@mail.gmail.com>
Subject: Re: [PATCH 1/7] Staging: comedi: Remove wrapper function declarartion
To: Ian Abbott <abbotti@mev.co.uk>
Cc: gregkh@linuxfoundation.org, hsweeten@visionengravers.com, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000003e1b050595a90663"

--0000000000003e1b050595a90663
Content-Type: text/plain; charset="UTF-8"

So should we maybe email the names on the TODOs, next time, to clarify the
tasks

On Thu, 24 Oct 2019 at 10:53, evan chime <chime.evan.dri.devel@gmail.com>
wrote:

> Hello Ian
>
> Thanks for the reply. Got it
>
> Kind Regards
> Evan
>
> On Thu, 24 Oct 2019 at 10:38, Ian Abbott <abbotti@mev.co.uk> wrote:
>
>> On 24/10/2019 00:42, Evan Chime wrote:
>> > Remove wrapper function "comedi_buf_map_get" declaration
>> > as part of remove all wrappers in drivers/staging/comedi/TODO
>> >
>> > Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
>> > ---
>> >   drivers/staging/comedi/comedi_internal.h | 1 -
>> >   1 file changed, 1 deletion(-)
>> >
>> > diff --git a/drivers/staging/comedi/comedi_internal.h
>> b/drivers/staging/comedi/comedi_internal.h
>> > index 515f293a5d26..df3b1af109f7 100644
>> > --- a/drivers/staging/comedi/comedi_internal.h
>> > +++ b/drivers/staging/comedi/comedi_internal.h
>> > @@ -28,7 +28,6 @@ int comedi_buf_alloc(struct comedi_device *dev,
>> struct comedi_subdevice *s,
>> >                    unsigned long new_size);
>> >   void comedi_buf_reset(struct comedi_subdevice *s);
>> >   bool comedi_buf_is_mmapped(struct comedi_subdevice *s);
>> > -void comedi_buf_map_get(struct comedi_buf_map *bm);
>> >   int comedi_buf_map_put(struct comedi_buf_map *bm);
>> >   int comedi_buf_map_access(struct comedi_buf_map *bm, unsigned long
>> offset,
>> >                         void *buf, int len, int write);
>> >
>>
>> Sorry, I don't really see the point of this patch series.  For a start,
>> the comedi_buf_map functions were added a long time after the TODO file
>> was written.  I can't even remember what the "remove all wrappers" line
>> in the TODO file is referring to.
>>
>> Besides that, as pointed out by Julia, the patches have been ordered in
>> such a way as to break the build between the patches.
>>
>> --
>> -=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
>> -=( MEV Ltd. is a company registered in England & Wales. )=-
>> -=( Registered number: 02862268.  Registered address:    )=-
>> -=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
>>
>

--0000000000003e1b050595a90663
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">So should we maybe email the names on the TODOs, nex=
t time, to clarify the tasks</div></div><div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 24 Oct 2019 at 10:53, evan c=
hime &lt;<a href=3D"mailto:chime.evan.dri.devel@gmail.com">chime.evan.dri.d=
evel@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>=
<div dir=3D"auto">Hello=C2=A0Ian</div></div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Thanks for the reply. Got it</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Kind=C2=A0Regards</div><div dir=3D"auto">Evan=C2=A0</di=
v><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, 24 Oct 2019 at 10:38, Ian Abbott &lt;<a href=3D"mailto:abbotti@mev=
.co.uk" target=3D"_blank">abbotti@mev.co.uk</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">On 24/10/2019 00:42, Evan Chime wrote:<br>
&gt; Remove wrapper function &quot;comedi_buf_map_get&quot; declaration<br>
&gt; as part of remove all wrappers in drivers/staging/comedi/TODO<br>
&gt; <br>
&gt; Signed-off-by: Evan Chime &lt;<a href=3D"mailto:chime.evan.dri.devel@g=
mail.com" target=3D"_blank">chime.evan.dri.devel@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0drivers/staging/comedi/comedi_internal.h | 1 -<br>
&gt;=C2=A0 =C2=A01 file changed, 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/comedi/comedi_internal.h b/drivers/stagin=
g/comedi/comedi_internal.h<br>
&gt; index 515f293a5d26..df3b1af109f7 100644<br>
&gt; --- a/drivers/staging/comedi/comedi_internal.h<br>
&gt; +++ b/drivers/staging/comedi/comedi_internal.h<br>
&gt; @@ -28,7 +28,6 @@ int comedi_buf_alloc(struct comedi_device *dev, stru=
ct comedi_subdevice *s,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u=
nsigned long new_size);<br>
&gt;=C2=A0 =C2=A0void comedi_buf_reset(struct comedi_subdevice *s);<br>
&gt;=C2=A0 =C2=A0bool comedi_buf_is_mmapped(struct comedi_subdevice *s);<br=
>
&gt; -void comedi_buf_map_get(struct comedi_buf_map *bm);<br>
&gt;=C2=A0 =C2=A0int comedi_buf_map_put(struct comedi_buf_map *bm);<br>
&gt;=C2=A0 =C2=A0int comedi_buf_map_access(struct comedi_buf_map *bm, unsig=
ned long offset,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0void *buf, int len, int write);<br>
&gt; <br>
<br>
Sorry, I don&#39;t really see the point of this patch series.=C2=A0 For a s=
tart, <br>
the comedi_buf_map functions were added a long time after the TODO file <br=
>
was written.=C2=A0 I can&#39;t even remember what the &quot;remove all wrap=
pers&quot; line <br>
in the TODO file is referring to.<br>
<br>
Besides that, as pointed out by Julia, the patches have been ordered in <br=
>
such a way as to break the build between the patches.<br>
<br>
-- <br>
-=3D( Ian Abbott &lt;<a href=3D"mailto:abbotti@mev.co.uk" target=3D"_blank"=
>abbotti@mev.co.uk</a>&gt; || Web: <a href=3D"http://www.mev.co.uk" rel=3D"=
noreferrer" target=3D"_blank">www.mev.co.uk</a> )=3D-<br>
-=3D( MEV Ltd. is a company registered in England &amp; Wales. )=3D-<br>
-=3D( Registered number: 02862268.=C2=A0 Registered address:=C2=A0 =C2=A0 )=
=3D-<br>
-=3D( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=3D-<br>
</blockquote></div></div>
</blockquote></div></div>

--0000000000003e1b050595a90663--


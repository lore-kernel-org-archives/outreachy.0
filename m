X-GM-THRID: 6955860329873014784
X-Received: by 2002:a6b:cdc6:: with SMTP id d189mr19116762iog.46.1619543679153;
        Tue, 27 Apr 2021 10:14:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:cb86:: with SMTP id z6ls6007115ilo.11.gmail; Tue, 27 Apr
 2021 10:14:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzuZAnlHf/XvzhqjFic6SBfK/FBZChZzAsiS3cYAy36J+OmcRT9Kh4BtF2Buza0GYlyzTQq
X-Received: by 2002:a05:6e02:1be7:: with SMTP id y7mr19826825ilv.300.1619543678350;
        Tue, 27 Apr 2021 10:14:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619543678; cv=none;
        d=google.com; s=arc-20160816;
        b=Xx1rRkFlwToKDAKPq5q6XmNxnck/s6EYfKltStwMCIJCTo3g8zNKhX5TDq/IAz/jlw
         MDC+t+N7DkEfrVovfLyxjSsbpPotkCe5tpzGBJyNT0AHTV7rYmvjdcekp8obAlE/QMtn
         Wj2AovfuI0oP4ogVGTWbDs/fR2el/HRs3GaOWVab+qEjtWfp97a3FRy7QCl1QNDdXXDO
         F8gxOwKKelqUXg6N9olZOlEzOAxuIRbQvmlYqLR6qLmAbJ5l02KDjMxyq1S/eyc2TfSx
         fmCivmFg3dgfip1ZA7UMUamhjYyVF2w57LjLzSWULrwuu/o8klrFlteBFQvfr9W5jLGc
         +K0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/Y/saDIaE1oTNFwre9AVxGG+GFyB+GgdU+mzdknvG3Q=;
        b=obAdwV42dDyY0Nw7bKK/OGNAJsJr4k8GXiss6ry3fnylgphhUJHnZRkaeB6EGPJhuS
         QHnBTV5XtRdDhyXgWD6dTPkUZaDrzWnagWt5NinEDc1xjgR1cPCY9E00riNHrzm/S14d
         XV+p7t8J6LwLGXENqloJl9yPK4RqI895gsrr3ZwdmOFfaqpBpgE6soZhmKIIzxkdkn3g
         2WIOje89pVdP443FbLPd0AFVQ3+ZD/yOaegQCjEQG4pYaAZcW06h8mcCm8BLbwP/crr9
         xkIGrLLMptLIYpsGhjs0izsjtHEBsRoPfStzivqNz1f3pbeWcTgwFPRVhpu2htlZU8OC
         52Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eyxzngxX;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tawahpeggy98@gmail.com>
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com. [2607:f8b0:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id c1si1919356iot.4.2021.04.27.10.14.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 10:14:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of tawahpeggy98@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) client-ip=2607:f8b0:4864:20::32e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eyxzngxX;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32e.google.com with SMTP id x54-20020a05683040b6b02902a527443e2fso4848540ott.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 10:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/Y/saDIaE1oTNFwre9AVxGG+GFyB+GgdU+mzdknvG3Q=;
        b=eyxzngxXxVCXTJrRF4duf5+O8/zgu6aapF2x0WZr21JrSEcMf/Uvd1xqHCZjDKKGjH
         pcZ2R+9n3t4GsuhkncdIqNSIxs7sKOm1ecCPOgfBu2yluRYoDmPRY4rw1afSr7VWbwdq
         s+64sIF7RsTykdOZGCrR8E0qE7beipSSdHUtin+BpBr+KmG9lPIPwYEG28SA/z94iQ9a
         3W59LiqlM9OzK6kkrM2j2Io9ARBWvuINGh8mLVKnwuS7N9Scwb3YMg2AFF7OywfUDcbb
         IMjoUMc//bZGnYSVAHhltS1PoMDItXKroCwxbl4qebPu3N71UrzPD2ohIe+awSn7YLjN
         lqKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/Y/saDIaE1oTNFwre9AVxGG+GFyB+GgdU+mzdknvG3Q=;
        b=SSLy/5elo48q3eGog1VZUpfo1/+WYuTA/t7w7aWfYslkiTtbFiNSwx5tmUlS1qE/zS
         ZcovINPu5h7juqxpURy5T+pyblHPwcIG9zMNPwLZcp8gheMhNXbhAJqFC+RB81hpicCV
         Yn67Nm6VtD3VN8K77hILcDt6q3ZPgeALTaI0G6NqJHETNFGNdF4o2jubGRr3ZqxkiFgg
         WJpEY/uhNc5gIOGbEkF8n+Fi97mSYL1fJf5mMXfd9GTDHSuhgkMWyBlF7iLh7XqJXjqG
         2U0suyBNCHlREIuch1IHMIgYnf1zPqC+ys6zH8bFp2rJ/d8p6gDOXjC4gXB/5Vn/mlb1
         3bBg==
X-Gm-Message-State: AOAM532MInaASjtZJI4X+3XH5eHFtMsBqkHeFJCaWAHejsDJwjNMhViW
	nGhqYeMhHdYrnv/SoUfDDFYjF/Jhw+I+kPhBsvQ=
X-Received: by 2002:a05:6830:22f4:: with SMTP id t20mr12915966otc.196.1619543678068;
 Tue, 27 Apr 2021 10:14:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210427170945.GA23366@peggy-Lenovo-V130-15IKB> <20210427171152.GB235567@casper.infradead.org>
In-Reply-To: <20210427171152.GB235567@casper.infradead.org>
From: PEGGY TAWAH <tawahpeggy98@gmail.com>
Date: Tue, 27 Apr 2021 18:14:25 +0100
Message-ID: <CADT-=4=UBJu90JHehHyOU518yFtS3egfZLG_tYDNkv8aVcJmVA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging:greybus: Add () around gcam macro.
To: Matthew Wilcox <willy@infradead.org>
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000a12ada05c0f765b2"

--000000000000a12ada05c0f765b2
Content-Type: text/plain; charset="UTF-8"

Okay sorry about that.let me check again.

On Tue, Apr 27, 2021, 6:12 PM Matthew Wilcox <willy@infradead.org> wrote:

> On Tue, Apr 27, 2021 at 01:09:52PM -0400, Tawah Peggy wrote:
> > checkpatch.pl suggested to add parenthesis around the gcam macro
> > variable.
> >
> > Signed-off-by: Tawah Peggy <tawahpeggy98@gmail.com>
> >
> > ---
> > changes in v2:
> >   - Add parenthesis around other gcam macro in the same paragraph and
> >     also remove previous parenthesis since it was added in the wrong
> >     place
>
> Looks like you sent v1 of the patch
>
> >  drivers/staging/greybus/camera.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/greybus/camera.c
> b/drivers/staging/greybus/camera.c
> > index cdbb42cd413b..324a26430f71 100644
> > --- a/drivers/staging/greybus/camera.c
> > +++ b/drivers/staging/greybus/camera.c
> > @@ -182,7 +182,7 @@ static const struct gb_camera_fmt_info
> *gb_camera_get_format_info(u16 gb_fmt)
> >
> >  #define gcam_dbg(gcam, format...)    dev_dbg(&gcam->bundle->dev, format)
> >  #define gcam_info(gcam, format...)   dev_info(&gcam->bundle->dev,
> format)
> > -#define gcam_err(gcam, format...)    dev_err(&gcam->bundle->dev, format)
> > +#define gcam_err((gcam), format...)  dev_err(&gcam->bundle->dev, format)
> >
> >  static int gb_camera_operation_sync_flags(struct gb_connection
> *connection,
> >                                         int type, unsigned int flags,
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20210427170945.GA23366%40peggy-Lenovo-V130-15IKB
> .
>

--000000000000a12ada05c0f765b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Okay sorry about that.let me check again.</div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 27, =
2021, 6:12 PM Matthew Wilcox &lt;<a href=3D"mailto:willy@infradead.org">wil=
ly@infradead.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On =
Tue, Apr 27, 2021 at 01:09:52PM -0400, Tawah Peggy wrote:<br>
&gt; <a href=3D"http://checkpatch.pl" rel=3D"noreferrer noreferrer" target=
=3D"_blank">checkpatch.pl</a> suggested to add parenthesis around the gcam =
macro<br>
&gt; variable.<br>
&gt; <br>
&gt; Signed-off-by: Tawah Peggy &lt;<a href=3D"mailto:tawahpeggy98@gmail.co=
m" target=3D"_blank" rel=3D"noreferrer">tawahpeggy98@gmail.com</a>&gt;<br>
&gt; <br>
&gt; ---<br>
&gt; changes in v2:<br>
&gt;=C2=A0 =C2=A0- Add parenthesis around other gcam macro in the same para=
graph and<br>
&gt;=C2=A0 =C2=A0 =C2=A0also remove previous parenthesis since it was added=
 in the wrong<br>
&gt;=C2=A0 =C2=A0 =C2=A0place<br>
<br>
Looks like you sent v1 of the patch<br>
<br>
&gt;=C2=A0 drivers/staging/greybus/camera.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybu=
s/camera.c<br>
&gt; index cdbb42cd413b..324a26430f71 100644<br>
&gt; --- a/drivers/staging/greybus/camera.c<br>
&gt; +++ b/drivers/staging/greybus/camera.c<br>
&gt; @@ -182,7 +182,7 @@ static const struct gb_camera_fmt_info *gb_camera_=
get_format_info(u16 gb_fmt)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 #define gcam_dbg(gcam, format...)=C2=A0 =C2=A0 dev_dbg(&amp;gcam=
-&gt;bundle-&gt;dev, format)<br>
&gt;=C2=A0 #define gcam_info(gcam, format...)=C2=A0 =C2=A0dev_info(&amp;gca=
m-&gt;bundle-&gt;dev, format)<br>
&gt; -#define gcam_err(gcam, format...)=C2=A0 =C2=A0 dev_err(&amp;gcam-&gt;=
bundle-&gt;dev, format)<br>
&gt; +#define gcam_err((gcam), format...)=C2=A0 dev_err(&amp;gcam-&gt;bundl=
e-&gt;dev, format)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static int gb_camera_operation_sync_flags(struct gb_connection *=
connection,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0int type, unsigned int flags,<br>
&gt; -- <br>
&gt; 2.17.1<br>
&gt; <br>
&gt; -- <br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20210427170945.GA23366%40peggy-Lenovo-V130=
-15IKB" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.goog=
le.com/d/msgid/outreachy-kernel/20210427170945.GA23366%40peggy-Lenovo-V130-=
15IKB</a>.<br>
</blockquote></div>

--000000000000a12ada05c0f765b2--


X-GM-THRID: 6752186003812777984
X-Received: by 2002:a25:b74b:: with SMTP id e11mr8321138ybm.87.1572116238997;
        Sat, 26 Oct 2019 11:57:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cac9:: with SMTP id a192ls207064ybg.15.gmail; Sat, 26
 Oct 2019 11:57:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyycVkfMevQxyzE9oZs9QvgvKCQQ4n4ZrgBBW3mtR6HGbjsGjSsBBSHUojq8iy+B0HPhWdF
X-Received: by 2002:a25:ba41:: with SMTP id z1mr6158105ybj.434.1572116237441;
        Sat, 26 Oct 2019 11:57:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572116237; cv=none;
        d=google.com; s=arc-20160816;
        b=wwbvVOj7+NtLGdXg2yyPL7eDEYAN8o8KrOtN37bPitaNC3ydBCKg7Zpud/VA2degEM
         8Km/WrZVYIPvXzSJdJQWvXUUhRhCNRujpouQRdfAAiNY3Op8oJ1dlu0YfdwWH6U5YzOt
         BIPWcKEyZk+p33i7xieM+fW5TwyxINmHQXXmP4gcM69aO47Fm0Y2KBIozmGO81B9li7i
         6BaSIcHtVy2JHGTS+EOVe1DTYLpfc6e4uuKTdBSDjAWuS+OjUVYOugZ8imv5pHpbDFSs
         6vrcodBJKREZmdOsHmRiFgr9aB66ZnFEJGlC+7CHt8P3VWZlseoBVJxnuHu1JXtI3PG6
         p0lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TDjZB0YyrEYLYUGOXb0EZ+DtkTFjsE+2dhBNz+3UXDA=;
        b=DzZ/vUaXpkDUq/LIyhg1p9o1QJvPXL6z9//0mJ8oti9FuLqKZrnE/OeKR1qoHywATz
         XJe20eHpKXS9QXDmd0eP4JEC0w3UFJ5a3R4m+ue2mKTIkMJPvsnLTPsH/4unJtGWFkq3
         AtCiRder9ilt2SDKt3u0OOiQyOSpzfLtWRIVFW1gMnM2dMW30xclohyhRfT+VusykUiZ
         mBI9t6WkvJzt342NAGdiRcKYdLJADdMS1x5EHahkFVqRTokty2mbFUIF6k+wBCiabFcn
         xmMiQ1wNcDFVTHjPZnFJtgrhBMYHXcqJHrY10K2Qg7ajkRqrMZQrGdc6LUGM0bjZ33IH
         0fQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A01w1T2E;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::92a as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-ua1-x92a.google.com (mail-ua1-x92a.google.com. [2607:f8b0:4864:20::92a])
        by gmr-mx.google.com with ESMTPS id v135si419890ywa.0.2019.10.26.11.57.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 11:57:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::92a as permitted sender) client-ip=2607:f8b0:4864:20::92a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A01w1T2E;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::92a as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x92a.google.com with SMTP id f21so1275702uan.3
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 11:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TDjZB0YyrEYLYUGOXb0EZ+DtkTFjsE+2dhBNz+3UXDA=;
        b=A01w1T2EvJ/dqPeyRIShnTQOUioz+7rrTXK8SfpmJF/MGqHt8JtqCZ+XqylXLcfAEJ
         up/bKifzwVuHm5VfH+fpBTtPFM4vz5ChdL+PJI2dSCEbrHiXFhNdhF0H7wyxeWAXeMm9
         flNl6ZADh+6fUrYFcDhLZ0tDzNtwo4AHUhznh1iFOZHOuoWAJai/dUXkZX0otnzfC5z5
         G7u3kCB4z0EGxxxjz7u6N8Gq+FqMKDFAjv3K9E5LxYyTZ71eU8IMFCL6hQODM7PidFIh
         xw3n4Pm0DCJYF7SvfiWS+KoMTXjFYdIGSeabB4vfZPLHGSAy3RTTapHnSjNHklUe0VFu
         jIUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TDjZB0YyrEYLYUGOXb0EZ+DtkTFjsE+2dhBNz+3UXDA=;
        b=W/2A8KDRxJIl1mW+wkTDLcQ+JWMUqgljSPhEpgbViJWBxhD1RgUidJOZMcg20bsC10
         jY0MffNyucyRB+D/bQRARaDelHX8y+YxqO0yL2F9NQhlUOpQYsuljvTRx6SWrIiPufzI
         d0HeoRC/cBY7ks0zspFNYkAc1MNQKIMGoYJKY4GxvzaZkONTnCjp9zAKAOG6XJqhOOIh
         H7pHog9lAofgzyUfjbMXiPBSog5w+K921l4dWWvdDzp6y6kPHgbVUspupNVZGM1V4KpB
         0W3Y8bLEab8SDV1xJTfkkT8l2tIkCaKMQr+WLLH16fLfhgVBT1IE+snIjaHm14JoK+4b
         Y3vA==
X-Gm-Message-State: APjAAAXz0hXs8GzvM0yIx80zA+Wwbq/HWuXBWAzgrfLiCtjS97IL+uWx
	oTGLgS9NO3BJFDnGgJ1+5uaxCWngo53h+cyLn6YqIz0Z
X-Received: by 2002:a9f:3103:: with SMTP id m3mr4748503uab.12.1572116237113;
 Sat, 26 Oct 2019 11:57:17 -0700 (PDT)
MIME-Version: 1.0
References: <20191026185009.GA804847@kroah.com>
In-Reply-To: <20191026185009.GA804847@kroah.com>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Sat, 26 Oct 2019 19:57:06 +0100
Message-ID: <CANR89jZnFrC7Kyr6dzdtVxLy=bb13W3i1CRQ1gHHv+H6NsG1OQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000dbde2c0595d4d54d"

--000000000000dbde2c0595d4d54d
Content-Type: text/plain; charset="UTF-8"

On Sat, 26 Oct 2019 at 19:50, Greg KH <gregkh@linuxfoundation.org> wrote:

> Hi all,
>
> I'm now caught up on all submitted outreachy patches that I can apply.
>
> If you have not gotten an email from my patch system saying that your
> patch was applied, consider it lost, and please rebase and resend it.
>
> thanks,
>
> greg k-h


Cheers



>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20191026185009.GA804847%40kroah.com
> .
>

--000000000000dbde2c0595d4d54d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, 26 Oct 2019 at 19:50, Greg KH &lt;<a href=3D"mailto=
:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Hi all,<br>
<br>
I&#39;m now caught up on all submitted outreachy patches that I can apply.<=
br>
<br>
If you have not gotten an email from my patch system saying that your<br>
patch was applied, consider it lost, and please rebase and resend it.<br>
<br>
thanks,<br>
<br>
greg k-h</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Cheers=
=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/20191026185009.GA804847%40kroah.com" rel=3D"nor=
eferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kern=
el/20191026185009.GA804847%40kroah.com</a>.<br>
</blockquote></div></div>

--000000000000dbde2c0595d4d54d--


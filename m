X-GM-THRID: 6670734463616417792
X-Received: by 2002:a2e:91c4:: with SMTP id u4mr83873ljg.29.1553153420939;
        Thu, 21 Mar 2019 00:30:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b04e:: with SMTP id d14ls462033ljl.7.gmail; Thu, 21 Mar
 2019 00:30:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqweXotos0MQK+Ph9Vb6orqmtCxJLPV6IIo4PJwFosyG+WnZKdCSa/W2VFK6hpwxc36FyOhk
X-Received: by 2002:a2e:7205:: with SMTP id n5mr83613ljc.3.1553153419928;
        Thu, 21 Mar 2019 00:30:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553153419; cv=none;
        d=google.com; s=arc-20160816;
        b=YQwEFE9LizkcRVpibKfMxZZr0qrCTZFCiy0vsZZWVrpRmL1Ha7e6T5/i9ANxuaEmeb
         VlmBjdEUjXVb+2gH6+0131vsNpZ/hhyLoP+rZclaslWVbfsRnlsrMLu6m/uhqeR2CgRp
         iTrrbuxpu+kUF+VGEWU9QbgTg00Q1mAngTvFd4MhjcAA4jLFSbyvDe/asUdkh2e8M9g1
         eNmb28pstCgh7UIptxTz9Zb0jNSTh8O2YLlOeYTe+D9SOdYOLZH1TOr4ocB8sEwkYnYl
         Ta0zIJb7V0J9nXp4hTL3XLshDkjSPI5bEEWFEGjg9xraCSLS+TbECYUGreg/l48dFiSU
         BjgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Wy0Kb4uIVNM1QwluP90ESKdLpFlZZS921+Lz2sLjmVU=;
        b=rp0N6olPeueFFu4V2BjvkO29IMXRUU8mMBG9falHzyfqXgWcW5MyEW/qn16Q6QuQOf
         ill9OA8u41miK8rTr8p1YDRhQESSvUkc65jMatgscEWrXSyCXaqZQJz6JpTTQ3adHDgY
         aUivL+EOtIIp0nIRKoXy/tTP7WbNkUtg8lvuB9eFbqyEC/roa5+i8o+q4J+8Smfq/atj
         3i38qgkEUjEQJ127DXH1vhZcZLkVbRcLAK7m0p/ZkCAyosY2jkiPHqSTQRGOBu/s3Bq+
         +CNY3W4jm3A4kgLX20hItJtpJmKPQUlBqNEsx+IY8leS3OyvpK0/fZ0mQc69emKkllC4
         n89w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ojDoqLgo;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id y1si277043lfe.1.2019.03.21.00.30.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:30:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ojDoqLgo;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22b.google.com with SMTP id z26so4394810lja.13
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 00:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Wy0Kb4uIVNM1QwluP90ESKdLpFlZZS921+Lz2sLjmVU=;
        b=ojDoqLgofObFiGjJ/PbPtLUL0xIvJGBDl0mg29RvFcjgYk40QjqTe1SyhAEsCXsxY2
         TTRWUOxq0CkJDQFn6eUbnuGGg7MdE7EICnBPm+oR0XDEmvl2E1qWeIIMLW+Z+ISVpulg
         A6I1kGEJwptjmXOcKoRhhIq76C4d35zMZUzDue3waqydx1Y+YSRPOiJR9xhG/2y4NylS
         uewfi+shiaPkjKYlrAz3ziuKUdSWy6IcstO6fbhVmKStWSskX4+XUyoZXchrXI29zQVh
         eoWgPWM+P+9dkdeuEE8OB/kSwy18PlwFyfC3YiWHssD/GE89i7BSKBiMkz0EkwurxZxl
         +cvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Wy0Kb4uIVNM1QwluP90ESKdLpFlZZS921+Lz2sLjmVU=;
        b=gPbr+tClGFINGnm0/dlNEy1R/0vpdzb996QJ23OK2548fVN5xmjjF7zjjWfdmFhlN9
         KGmZAkjf/lstZ1Zaps4Xxv0C4r/Hofwz2l+TPKTrJWDQhP7L8yu46oaJdI1V/xsI6iws
         nA0j8U2fvZzZZTpJdrTZ46vyg7NULk0hk3JIGw3wGK13g2aY+lYF9ATgw6LDaysdpd1u
         dmUN+hTNHStNKtnZA2SB/e7T0MeI/gsU/pOMJ7uzIQg825XcYTAhchdOmbHray6xuQoP
         dRCQnLJ0DN/ltVMsn7XxUIeSNFrxA1Wpa2Gp01BQ2dX/Qu4kSoVtaBRfEECntPV7BYRb
         PnMw==
X-Gm-Message-State: APjAAAVBwj55e3nwgeDgKVNSwbS9NVPURRdn/+Ra0oWXWGPepk1pj6Ve
	ICZ7YajLmKP+hnifnVR366dR9IBOKbjV1hXkbXDTTw==
X-Received: by 2002:a2e:2f04:: with SMTP id v4mr1162511ljv.129.1553153419770;
 Thu, 21 Mar 2019 00:30:19 -0700 (PDT)
MIME-Version: 1.0
References: <1553151378-8172-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190321071713.GB28171@kroah.com>
In-Reply-To: <20190321071713.GB28171@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Thu, 21 Mar 2019 13:00:06 +0530
Message-ID: <CANTOzWHFfZD+W0M_uOyHQFCOrH2KEXc4tnmf=XsUoQ_ugXkHMA@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: vt6655: fix various style issues
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000de008c058495b54e"

--000000000000de008c058495b54e
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Mar 2019 at 12:49, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 21, 2019 at 12:26:18PM +0530, Payal Kshirsagar wrote:
> > Fix spaces around operator issue,
> > fix line over 80 characters issue
> > and fix lines should not end with parenthesis issue.
>
> Only do one type of thing per patch.  This needs to be a patch series,
> not just one single patch.
>
> Okay, doing the same.
Thank you for letting me know,
payal

> thanks,
>
> greg k-h
>

--000000000000de008c058495b54e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, 21 Mar 2019 at 12:49, Greg KH=
 &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Thu, Mar 21, 2019 at 12:26:18PM +0530, Payal Kshirsagar wrote:<br>
&gt; Fix spaces around operator issue,<br>
&gt; fix line over 80 characters issue<br>
&gt; and fix lines should not end with parenthesis issue.<br>
<br>
Only do one type of thing per patch.=C2=A0 This needs to be a patch series,=
<br>
not just one single patch.<br>
<br></blockquote><div>Okay, doing the same.</div><div>Thank you for letting=
 me know,</div><div>payal<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--000000000000de008c058495b54e--


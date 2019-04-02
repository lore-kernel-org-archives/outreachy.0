X-GM-THRID: 6674450234072891392
X-Received: by 2002:a5d:4ac2:: with SMTP id y2mr1076071wrs.22.1554180383724;
        Mon, 01 Apr 2019 21:46:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:2292:: with SMTP id 18ls25602wmf.3.canary-gmail;
 Mon, 01 Apr 2019 21:46:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyr5nLv4PlGoCk0sSS08tjmDm1UbQ51Uc9ckADOc4jmKKjHT9yqj6G0P+nF7ymIq43l3CSr
X-Received: by 2002:a1c:2355:: with SMTP id j82mr1508992wmj.7.1554180382925;
        Mon, 01 Apr 2019 21:46:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554180382; cv=none;
        d=google.com; s=arc-20160816;
        b=dNDBya+BJsV6qqPNKO34sCOtK+kq5rn/dzbtS7QRXQM4tJtzqdQuyw8x+05aSFIXkL
         eQWOME+0aSmc7TkogzEAjxyTfVVAek5FkkRDp1tH2xZxwAGiHL+LyfEksqn9TuxsAK41
         sl0FreOcaqrvTpDsfdUNlkP7jfogrs3v83GDsvqjoIKHsJQCb6B8lOBiNt2EbWy4eIrs
         86zGDf1S9jXvxUrDlOqd2Sm991cGA1cO6wYkzeWQMxolEwbzi/i8lAcS2ktM+roGLGbT
         hUDXwtv6ekhwHkqsIPvqmXUYY+xIiS4LcfEYPw6bVGTjtA5vEew05ML70Xc+xDD6rytD
         cOHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7gvercHMGqIgaiFofrs9A2BvRpGYSyznPHTxu+mlfQE=;
        b=SRl3QzxnPiKBewF5LaX/7L47aCqzGUaOaSCtay675rhBwRX44ovMZ8/pQq1XWMgEDa
         xshy8xYMwoZES5khy6w9emPZrVZxgxYkgU9JNeHlLmB2zpQnPr+CL2rDt4SV3UBErFLW
         6J8P2tlNGr3l42kh15x566/FPwFGn8lPSoUEb1sIppxyIo5jU6ovrYzqbSlz6ixmk3ru
         WxTTzFhE5VStb08s7A5FjXAPZEwZPQ88w8KYfncNSQqK5qDwTFC2hCkYawzZRtoHJhxT
         UrRarafGRJX7cNjh8hxFBtafbp2NYCf6BPSxn6TF60RSzsFCXVMg4KS2pxTS9TDZSgee
         yULw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="LK+bdX/9";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id 61si208454wra.0.2019.04.01.21.46.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 21:46:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="LK+bdX/9";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x233.google.com with SMTP id v22so5599897lje.9
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 21:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7gvercHMGqIgaiFofrs9A2BvRpGYSyznPHTxu+mlfQE=;
        b=LK+bdX/9cSi8EKvmvZS9o1lcU2Cmoe+cckwOxJwZ0EkH4kpEyCyRz3KhhyoVCujItU
         uHjD9m3T1IM5h4cO/uTXPtoD040z3JppRmH4uL1k7IiFVmXiSduo0l2feYkTMTt2JzXe
         IGXdnbfTVqEVEHuRVPiSyIvVq317RyW+OeEf+Sq3uuZphCfvglp5/wwhOLQWKTSAmWk2
         A0QJLf904aWcwUx5ASOs22zSyckZkk8TotAiLlpzNrDS2URXPy1Abg6yQC6d8bO6xzrg
         MKKZPfUv6KXButAcGeDXxzPBtsZasjESAzlX6bJq6mpKSsckfE9fD9Q8B1FHIbHzNlO1
         IExA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7gvercHMGqIgaiFofrs9A2BvRpGYSyznPHTxu+mlfQE=;
        b=daol/uPOBSoWf9V/0MRS+qc2Bwe8VZN9Nq8/W9Fd54qD7uokx9QJtJa4NPIsVmjT1N
         p4IyhKyxRhDUG+KSOOY1pH4LjvudRD8qNU1ikfmYQL/iI8hKDAZ6crCs5oK+11FUMqdS
         EDYjkqgfgDz+MBXspN+bcpdec1tvrtYFgXNMFXjM6VFdyHpKbkutyZtJT3zWaIGMiZi3
         BjNTqanyHvy4gqBHeacp7wguqzmhTYdk5IrH/gihqjSaim7W/he6dOGtZ3Z4Jc0QsSrb
         +BvX5+mQJwftSQ3foY25UkLx4dk8oHrmUawA0cIUYQIQGBNwxkt+NmnmIBg17sPqN2TX
         CduQ==
X-Gm-Message-State: APjAAAWLCxAwfiuOhLqdQHGfJ0YDLGHYpD91hDqiyLO2xJyugJOe5CHt
	Iqy7XLQYcdOSZbeBlYcdlRbsXWW7dyHJoo/mXeEAEA==
X-Received: by 2002:a2e:500d:: with SMTP id e13mr37247785ljb.169.1554180382746;
 Mon, 01 Apr 2019 21:46:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com> <20190401172510.GB16636@kroah.com>
In-Reply-To: <20190401172510.GB16636@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Tue, 2 Apr 2019 10:16:09 +0530
Message-ID: <CANTOzWF0X3+iTqbdaQfSdk3FnnDtgZqeD0Cq1V+535FX3xW2jQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/9] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Fix formatting issues
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000a16dbb058584d1ca"

--000000000000a16dbb058584d1ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 1, 2019, 11:10 PM Greg KH <greg@kroah.com> wrote:

> On Sun, Mar 31, 2019 at 04:18:35PM +0530, Payal Kshirsagar wrote:
> > This patchset:
> >         -Removes spaces and adds right number of tabs.
> >         -Removes spaces before square brackets.
> >         -Avoids camelcase variable names.
> >         -Removes space before semicolon.
> >         -Aligns to open parenthesis.
> >
> > Changes in v2:
> >       -Variable name =E2=80=9Cbl_inserted=E2=80=9D changed to =E2=80=9C=
inserted=E2=80=9D.
> >       -Variable name =E2=80=9CPMK=E2=80=9D changed to =E2=80=9Cpmk=E2=
=80=9D.
> >       -Spelling corrected to =E2=80=9Cinserted=E2=80=9D in log message.
>
> As I didn't take the 1st patch here, I couldn't take any of the others.
> Please fix up and resend the whole series.
>

Sure, I will do.
Thanks,
Payal

thanks,
>
> greg k-h
>

--000000000000a16dbb058584d1ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Mon, Apr 1, 2019, 11:10 PM Greg KH &lt;<a href=3D"mailto:greg@kroah.com"=
>greg@kroah.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On S=
un, Mar 31, 2019 at 04:18:35PM +0530, Payal Kshirsagar wrote:<br>
&gt; This patchset:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Removes spaces and adds right number=
 of tabs.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Removes spaces before square bracket=
s.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Avoids camelcase variable names.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Removes space before semicolon.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Aligns to open parenthesis.<br>
&gt; <br>
&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Variable name =E2=80=9Cbl_inserted=E2=80=9D=
 changed to =E2=80=9Cinserted=E2=80=9D.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Variable name =E2=80=9CPMK=E2=80=9D changed=
 to =E2=80=9Cpmk=E2=80=9D.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Spelling corrected to =E2=80=9Cinserted=E2=
=80=9D in log message.<br>
<br>
As I didn&#39;t take the 1st patch here, I couldn&#39;t take any of the oth=
ers.<br>
Please fix up and resend the whole series.<br></blockquote></div></div><div=
 dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"></blockquote></div></div><div dir=3D"auto">Sure, I=
 will do.</div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Payal</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--000000000000a16dbb058584d1ca--


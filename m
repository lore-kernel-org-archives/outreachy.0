X-GM-THRID: 6670726051308503040
X-Received: by 2002:ac2:4474:: with SMTP id y20mr3873850lfl.42.1553223123264;
        Thu, 21 Mar 2019 19:52:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:3802:: with SMTP id f2ls757977lfa.0.gmail; Thu, 21 Mar
 2019 19:52:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxzb0PB4zQ6idXEtKTC+kr1w5Zq374XFjj8clXuSPIRCEXphd0h1PGUxsw3WHSPZ7vCmIv2
X-Received: by 2002:a19:7914:: with SMTP id u20mr3943853lfc.41.1553223122253;
        Thu, 21 Mar 2019 19:52:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553223122; cv=none;
        d=google.com; s=arc-20160816;
        b=mqoAtpbv0Awmc3rBcuFLN/7Mhb1E+c6lyTcmm3I4Jye8uGQLIXE1fIJq1rIO1wm1Y2
         eEcOxIbEbsZjdjSwF/XQ/NYNw+eyIkVDmpwicj3VbDBuDSj+kriC7f+g1WrHMZJWlGYi
         EZYkshPokE+i8obCkjkai/rbqHOr4+TnbFIiTszq+sI7kbArlI0Ns8RWADbFi+6Otg2P
         cvxBRTsecsG12/QKMPBX7enINy2xbRfItkliQrWU7qdayUVZSfqJWZMYsqpULHlKTL/q
         tjSKoKI4WNb+4w/p03aTiuDK+t1axE79EbBd9njV13NHrd9HOrkG21w+7qfPlh6DyJQd
         ymhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vZY7yzXpFF/TyrQOepL4864FLQ58IFSYQsaDHgy3yU4=;
        b=N0tSYN5dxZb3lIhjc2j1ZTt49iY0SBhrFDkq9I3lJanB2Z+4LvNQTHL4izmAOqkiqK
         jqVzRkyDXqhseAOVAgTi7nFQCFbq2ccPz4oGEpmjqhwGR+u5zkUt9eOHNdfJISiZUs9t
         VJX86g2WoarDzZ4LfBruxPv2FsYwGaLbFp+QwnG+FPOD1O1R4aPH5ncyh17cp3X5NLKU
         K9uZ2vqvJZS5VYOClTNFSqJ0p+HSOPxsOBMyvXti8pVAb7zUUoBo0AExWcw7MG1QpYGt
         flE9BJWzpFMfgnQU7s9wwgmPkreFrw+6jNQ8Hh3S7Vssab3Hdsljqi6nHkE8LCpWv7Ll
         WkAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UOLJI3Gy;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id l18si270826lje.5.2019.03.21.19.52.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 19:52:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UOLJI3Gy;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id 5so318614lft.12
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 19:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vZY7yzXpFF/TyrQOepL4864FLQ58IFSYQsaDHgy3yU4=;
        b=UOLJI3Gy01BSKA5fZQfP2QJFoRZGtQGk8HQqN0/fv4XT5eOJWIp9t1C9ocsRnX5iET
         VI+dgdS62+nYVSPKV0q7UE+HXm2iJUB5hKRRzzyJ4BaP8Ce8irMI+b9lOg4S0H8Vh8xX
         +2Ri9lQEH9rYhTIHgBHcQbi2kW9ag5EGYu9UFmRFpKwMeydTkL+01O38wBjHZlBgCnxG
         SUVbSeax9W861h+pTfcbyo9PRgcmK2Wbx1wyvnXBKSHqHLIouUfNL+8a2X5EIN0f22Jq
         Cwe1VwozpzbzakRGBvw8Hw08Wv2qMAlXNC7O00mkzrcvC09z/IRvg72hXo50CA1i2c9a
         ZHvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vZY7yzXpFF/TyrQOepL4864FLQ58IFSYQsaDHgy3yU4=;
        b=XOl36o/1srILBQ53WvSjNAii5lIxOWGZVnvu7kxMOOvccj2H0+jtl2s95Ot0j1twch
         J9vuldfjO8NVUdSDgmKeiQM3YhTTAEOQJwKrZODOU3e15v+enbvakP7u6kqPr/FW28Hi
         PcehCwwIgNVB0ZVPYEysL0y3PfG7PyY+wKLuuODhZhWlU8Zwt0a8KW31i8/IOWLCsgzz
         sCKXBWso0rcuhX6w+YBbDliU6zSOqVpVgPj1N/kIs6mOX7rWN5tSfMxLn2/gUPI6MvdA
         8Uk9/2B07HSL8nCYKrve4W457GOQ4il748vzawA6pxh722uQ7hnGr+Vy1MGngJUxc4hI
         WGTA==
X-Gm-Message-State: APjAAAVrSHwsvI7YLZDk9gFcwtUqY/iPIPGqKFFBR9F7MfvevGDd9nhm
	2HI07/bd9f1KyS/Wczkk4Ex/d67zgV07VLWRyhtsEg==
X-Received: by 2002:a19:c90a:: with SMTP id z10mr3642604lff.40.1553223122101;
 Thu, 21 Mar 2019 19:52:02 -0700 (PDT)
MIME-Version: 1.0
References: <1553163225-10581-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
 <20190321190257.GB12522@kroah.com>
In-Reply-To: <20190321190257.GB12522@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Fri, 22 Mar 2019 08:21:49 +0530
Message-ID: <CANTOzWGk1tojRZwB3c-HkqxDKKXUhHus_7-C8yzUMvVR_r6sEA@mail.gmail.com>
Subject: Re: [PATCH 1/3] [Outreachy kernel] staging: vt6655: spaces around operators
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000732c800584a5f00b"

--000000000000732c800584a5f00b
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 22, 2019, 12:32 AM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 21, 2019 at 03:43:45PM +0530, Payal Kshirsagar wrote:
> > Add spaces around operators.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
>
> 1/3?  Where are the other 2 patches of this series?
>
> Please fix up and resend them all.
>

Okay I will resend them.
Payal

>
> thanks,
>
> greg k-h
>

--000000000000732c800584a5f00b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Fri, Mar 22, 2019, 12:32 AM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfo=
undation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">On Thu, Mar 21, 2019 at 03:43:45PM +0530, Payal Kshirs=
agar wrote:<br>
&gt; Add spaces around operators.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
<br>
1/3?=C2=A0 Where are the other 2 patches of this series?<br>
<br>
Please fix up and resend them all.<br></blockquote></div></div><div dir=3D"=
auto"><br></div><div dir=3D"auto">Okay I will resend them.</div><div dir=3D=
"auto">Payal</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--000000000000732c800584a5f00b--


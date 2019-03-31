X-GM-THRID: 6674267883353145344
X-Received: by 2002:ac8:38b7:: with SMTP id f52mr6154726qtc.7.1554057103191;
        Sun, 31 Mar 2019 11:31:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ba02:: with SMTP id w2ls2030419qvf.6.gmail; Sun, 31 Mar
 2019 11:31:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxjlJZhw8vk/HtG3n5eeupX9DczTN+CspiBCCQdHJHUmPjAxVj6TKAIJetSByyR1d5LkpYR
X-Received: by 2002:a0c:d0ef:: with SMTP id b44mr6058668qvh.61.1554057102567;
        Sun, 31 Mar 2019 11:31:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554057102; cv=none;
        d=google.com; s=arc-20160816;
        b=vngj/6xu8ovHygczAZ7hsuSfpcTzdcv7Xdy2U9U21haLG3t8ju2pTjD+eoSggHHaq4
         RUVMnYKApA3A3WVyWvzfcdUnauNdQBgTA9KCufJBcLlhksxm120HbGR3y8m6UJJ3yDol
         C0aM9jhMlYl4Pi5eAZ9DkNDx3AIzsL2f3yTV2T3919vbBGFmDa8mlS294L2A+WyMORlA
         N7Ph7jb3OY/V51RbUSc7mo65Mz5JDB9YZWLY0EcNfgBuwhUWp4Vu8Nfz4QxyS1Z9rQQS
         ZR+LntuBAJe3E7hiEivOI7IMkTQBNeFDAJQc7zgElNHE22VYDp8gWh8koxQNRcAnyg5P
         y1PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2yh33NUg3gTjAZgdJpxsmr+4IdjziwmWyze/8oSOOn4=;
        b=DDjXaO3+8wS+5rsvVavRsSahF+O4N0ji6ctbaXDR4GCEsgFJM/6bb11ET2AvidMpBl
         vJOaaswbEttAPC8+Qaw6CpOoysUAFwCSzw9yqxoA17DGYGI1rrvFqFzcAJ7weHL8b6hQ
         nSLxR47IGiMGiNG2sWFdl1HtRbvq8O+yM0MueGPRIeD5n6p47CIGU76H9laZBlc3sZ31
         lZdeV1O4qoKLymN3rw5qrvOnn4MMer8ZAHXNK+1zQf6AYX/NC4rPntvCIQqCw1693rcs
         MPRqxq6eZCG9G220VQwpkrmzQ7fU6Vj/7MV2iAFim1AGd9fqr5RJjZsCc0qwq94dGC46
         EaAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ig/JBqco";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id h186si492304qkc.1.2019.03.31.11.31.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 11:31:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ig/JBqco";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id e5so6491970otk.12
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 11:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2yh33NUg3gTjAZgdJpxsmr+4IdjziwmWyze/8oSOOn4=;
        b=Ig/JBqcoYt4Ux6FX1G5mmWq+2qQZJmJMGOGwhBFL3BUmkWNxqeaVyFCr1PdxF/F7EQ
         PzMI5asxQ4H3aJOYR/SDH7aE4IrcFDeAh7RhAlGtnkqsQ270yJarur01bM/EPGtQqfli
         yncj/9R5doO3irBnalfNuPS9KmJaJzIc4CCk78QsRckrGtrXC4cTDlsbWEF4/KUbVLIw
         ZnECwNGmugJl0McvN5Qmkxf+6C+0vQhTm6wOH3IJ4DQHkBkI/RJ+o1g1g0bpkoppB5NL
         vgUq7fj1sg27I0DVOXUmhQElprE9h7ywMLxo8OsUygFTxlhAzTfCRmJ9jUkAAmCP3hTc
         z6Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2yh33NUg3gTjAZgdJpxsmr+4IdjziwmWyze/8oSOOn4=;
        b=S40OaXaHrPxm84ql8jPllYG1buYCdpc7ZtZN6AOCUY4ra11HNYMd4+rwYndI1HCuvX
         R9FuW7osUanaxiAOdkbMphXimq17Y6oa4PpFtPVIciqf3x8R8FUMv5iY3WEYB267MvuG
         AbYeC4rrxBBwUfdjV/E0Ycu9p6mMD6KqU+FrxT4DMDDEpPUhIHQ66Kx5Q57C3a0QROWM
         D6X4RLIYafxbf/5Li09gj7ZdKBSHwkmDKlBQgderZmloX6ab3uzw+vmJFleO1LWXVrr2
         eYEzxGuad+vA/6Kj30xG26aw+xwBAWIUOluO+/E+HwoTQpGhhgDDM6nHiY1TJD+owhB7
         uLVA==
X-Gm-Message-State: APjAAAX4EtIEwpi3uBkzPGpS5oklPEe/5Ntkre6V3/fNFrF2CCik8seP
	7EneRni2Ov8jyEwjXrkm4C6fnSYMhaoieGaXa93OMQ==
X-Received: by 2002:a9d:62d4:: with SMTP id z20mr43888166otk.299.1554057102135;
 Sun, 31 Mar 2019 11:31:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190330192742.65250-1-himadri18.07@gmail.com>
 <20190331022155.68569-1-himadri18.07@gmail.com> <20190331022155.68569-8-himadri18.07@gmail.com>
 <96e52ac0-0e8a-dcc7-cb5d-2c00037cfc8d@lwfinger.net>
In-Reply-To: <96e52ac0-0e8a-dcc7-cb5d-2c00037cfc8d@lwfinger.net>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Mon, 1 Apr 2019 00:01:29 +0530
Message-ID: <CAPnhUpa2=Lt7anFMzStWYRZfUrYCNzKBxMG8x-g2-u==Zt43gA@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] staging: rtl8712: use list_entry in function r8712_select_and_join_from_scan
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: florian.c.schilhabel@googlemail.com, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000088987f0585681d92"

--00000000000088987f0585681d92
Content-Type: text/plain; charset="UTF-8"

On Sun, 31 Mar, 2019, 10:50 PM Larry Finger, <Larry.Finger@lwfinger.net>
wrote:

> On 3/30/19 9:21 PM, Himadri Pandya wrote:
> > Use list_entry instead of container_of for conversion to
> > wlan_network in function r8712_select_and_join_from_scan() because it
> > is a better practice to use list_entry for such list manipulations in
> > kerel.
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> > Changes in V3:
> >       - Improve log message
>
> I have tested these patches, and they do not break the driver.
>
> Tested-by: Larry Finger <Larry.Finger@lwfinger.net>
>
> If "container_of()" resolves to "list_entry()" in this case, why is it
> "better
> practice" to use the latter. It probably is more clear what is happening,
> but
> you need to give your reason.
>

Including more appropriate explanation in next revision.


> You also have a typo for kernel in every patch.
>

My bad. Fixing them in the next revision.

Thank you.

- Himadri


> Larry
>

--00000000000088987f0585681d92
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, 31 Mar, 2019, 10:50 PM Larry Finger, &lt;<a hr=
ef=3D"mailto:Larry.Finger@lwfinger.net">Larry.Finger@lwfinger.net</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">On 3/30/19 9:21 PM, Himadri P=
andya wrote:<br>
&gt; Use list_entry instead of container_of for conversion to<br>
&gt; wlan_network in function r8712_select_and_join_from_scan() because it<=
br>
&gt; is a better practice to use list_entry for such list manipulations in<=
br>
&gt; kerel.<br>
&gt; <br>
&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<b=
r>
&gt; ---<br>
&gt; Changes in V3:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0- Improve log message<br>
<br>
I have tested these patches, and they do not break the driver.<br>
<br>
Tested-by: Larry Finger &lt;<a href=3D"mailto:Larry.Finger@lwfinger.net" ta=
rget=3D"_blank" rel=3D"noreferrer">Larry.Finger@lwfinger.net</a>&gt;<br>
<br>
If &quot;container_of()&quot; resolves to &quot;list_entry()&quot; in this =
case, why is it &quot;better <br>
practice&quot; to use the latter. It probably is more clear what is happeni=
ng, but <br>
you need to give your reason.<br></blockquote></div></div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Including more appropriate explanation in next=
 revision.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D=
"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
<br>
You also have a typo for kernel in every patch.<br></blockquote></div></div=
><div dir=3D"auto"><br></div><div dir=3D"auto">My bad. Fixing them in the n=
ext revision.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Than=
k you.</div><div dir=3D"auto"><br></div><div dir=3D"auto">- Himadri</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">
<br>
Larry<br>
</blockquote></div></div></div>

--00000000000088987f0585681d92--


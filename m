X-GM-THRID: 6753200563017482240
X-Received: by 2002:a05:6830:1e52:: with SMTP id e18mr1114836otj.19.1572353825550;
        Tue, 29 Oct 2019 05:57:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:438a:: with SMTP id u10ls4612732oiv.3.gmail; Tue, 29 Oct
 2019 05:57:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyjtLnYLk6hCrMlUWLTiQvrMXvR3BG0aDqZrJ7K9PZQRwPNK/BgPs8cvU1U2FlNxvO/5kOi
X-Received: by 2002:aca:5413:: with SMTP id i19mr4005861oib.121.1572353824739;
        Tue, 29 Oct 2019 05:57:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572353824; cv=none;
        d=google.com; s=arc-20160816;
        b=oac7TfxHwQfLqhBk1EOIhIlz9jK9HsyWz5uy3UGwI6jmqcaeJS37IiizlrmoCtm9QL
         LK3kIxu97Hr/XcE2hlh4bompFNlGi4DKHDape3fAPFEWA0U9PloNrmEm3ZA3ru82fc4o
         8DbxLXVXJHdvRDf3lVBLE56Qv0Gjyq+G0smxoVH6Sq6ehSG5ie9cBkavSA98VpEX0NUT
         +7KPb8qdxl4TD3o9h03i4bDd7C8TvM17FqFQDOkLcQgXvrWqQBGRXwjfMi2CjzkmlEXX
         qUNE+Q0JLMwO8UP1TWFdO8h+KUCnXKM91FhyTP2+rp9ivQA9FSQUa8wJBy/q0jaEUyRZ
         zQKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=1ZmXe+JukEtUTO0ge3C/0Qd3k++9W7GjiH022dKXobI=;
        b=fX7yRST2N+Kusy4r7j2Di1r2UIz3C5BUWSNpsZehVZTX9iP+6gnjChiPOT6wpq3Wit
         jrAgqfSw3kenWPmCBXfmozisC1HPQPXM8euf+1EhgcBkYn9y93XDKLls+4IHtCrN1UJg
         j8SA+YcWXHBLlymWS2U4kuaFoneeOrg/C5yVH+BDd4KRWMqDG1zojupwZw/H8i7xZAbJ
         6tN4lQp/M1SaQRRIRiFzXKfJOi/MUwVyMbUy6zT5nAji05bVLvaZ3QTf/LW6tojX2PZf
         nMmGh8CmQIx8Q7iCVEBRTH8TPphRW9k0+Nj/keRBh4Qb1kWA8k4Tm+ioEDJ41WImc6jH
         7/tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gNuC2QGw;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::92e as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com. [2607:f8b0:4864:20::92e])
        by gmr-mx.google.com with ESMTPS id n63si710544oib.3.2019.10.29.05.57.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 05:57:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::92e as permitted sender) client-ip=2607:f8b0:4864:20::92e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gNuC2QGw;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::92e as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x92e.google.com with SMTP id d19so1583821uaq.11
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 05:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=1ZmXe+JukEtUTO0ge3C/0Qd3k++9W7GjiH022dKXobI=;
        b=gNuC2QGwL5b75904gFaJKZ5wIJEH77aijXiINAKYA2hXQAmDpxfUdhmwkOSWSqwyVO
         Se7G7h6vMIajUKNctDsoSXhbfVECFJ94ZFwnTUhsGJOyL2mXLyOshSHQYqtPlxoCB+sJ
         Xdhq9oiqwCDyD2zbA/vZ9qLInoruKu8Ttf8ZlXZ/5h8vCF909beG6pYDjRi/DmqWS6Su
         wh2Gfz8s09ja2JZzeNzsC3j1LullHlzR4XYseeaee3TEM4R8WRMD8YbdfrTj9Jufq6fV
         SH//iHQn3QMAn+U7BUYFOIRK863iKDMS0I9MlbG4aD+qUktSBMwVp6V+KuulbygRgnDf
         mM3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=1ZmXe+JukEtUTO0ge3C/0Qd3k++9W7GjiH022dKXobI=;
        b=AGmDXMo7cMygO4pNlMDMb2z0h3V4o5eVH1LHpM7aHnBjhn2aXDJodEp7Ovj4sWJwcb
         wf3xHnAEYWOBbBd1GiqOsuIMXQkRhwmlYcOyk+30fi+PMTy7e4r/WsUqJLYaiap0xd+E
         C8Thf6Lsja0XJGCqnkGPE6PmryySSJT6n6qkn3dTRKtOQ/Khy76gTkNAy6mkKUAPkGfO
         UwZLG/puAGvbyWP+TMfPzrzUy7n73yWtOHo5JoeXUPT7NXBeCAU300W5AuWnn2/a7EV0
         G1vufA8dXSOeD5wLplLcmuCsDcX6fpyq2kERFmj+0NsFn7iXZUTcWmuRse+qkDxvX1Hm
         f5EA==
X-Gm-Message-State: APjAAAXMYk4LXvbNmVRXIsSyKHeyjLWlYFsEuHX2ULtLHw68ErfzUBUR
	Sb6nHqwtp/njW3MewNlglRJbAD1yjZ0jfQCHrYDnZw==
X-Received: by 2002:ab0:156c:: with SMTP id p41mr11301252uae.46.1572353824080;
 Tue, 29 Oct 2019 05:57:04 -0700 (PDT)
MIME-Version: 1.0
References: <CANR89jaTHmRieV47zcr3MZJ69cmNSBOtuTLN88bti4HAf73CkQ@mail.gmail.com>
In-Reply-To: <CANR89jaTHmRieV47zcr3MZJ69cmNSBOtuTLN88bti4HAf73CkQ@mail.gmail.com>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Tue, 29 Oct 2019 12:56:53 +0000
Message-ID: <CANR89jbbD5cXrcYpJ1Y4CmAp2jPpVLCYoaKpubPR98eRaARz8w@mail.gmail.com>
Subject: Re: Driver dependency
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000025489105960c270d"

--00000000000025489105960c270d
Content-Type: text/plain; charset="UTF-8"

Hello Guys

Forgive me the other email was not well formatted - my mail client fault.
Please am trying to modify a driver and the driver depends on COMPILE_TEST.
COMPILE_TEST is [=n]  and depends on !UML.
UML is Symbol: UML [=UML]
           Type  : unknown

I've read the newbie tutorial many times, please can someone help. I guess
!UML means UML shouldn't be on ie UML [=n], then "!" will make !UML true

Kind regards
Evan

--00000000000025489105960c270d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Guys<br><div class=3D"gmail_quote"><div dir=3D"ltr">=
<br>Forgive me the other email was not well formatted - my mail client faul=
t. Please am trying to modify a driver and the driver depends on COMPILE_TE=
ST.<br>COMPILE_TEST is [=3Dn] =C2=A0and depends on !UML.<br>UML is Symbol: =
UML [=3DUML] <br></div><div dir=3D"ltr">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Type =C2=A0: unknown<br><br>I&#39;ve read the n=
ewbie tutorial many times, please can someone help. I guess !UML means UML =
shouldn&#39;t be on ie UML [=3Dn], then &quot;!&quot; will make !UML true =
=C2=A0<br><br>Kind regards<br>Evan<br></div>
</div></div>

--00000000000025489105960c270d--


X-GM-THRID: 6801392736188497920
X-Received: by 2002:a63:6bc8:: with SMTP id g191mr6394784pgc.2.1583599872180;
        Sat, 07 Mar 2020 08:51:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:868f:: with SMTP id d15ls1996374pfo.5.gmail; Sat, 07 Mar
 2020 08:51:10 -0800 (PST)
X-Google-Smtp-Source: ADFU+vsvhvxWiaq0cDNBRzf30ZwRJtP4dujGolm+lDjMn0CqPOPJGsnuG/Ljxk6iVtH3uubbGiGX
X-Received: by 2002:a63:e053:: with SMTP id n19mr8953219pgj.64.1583599870533;
        Sat, 07 Mar 2020 08:51:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583599870; cv=none;
        d=google.com; s=arc-20160816;
        b=UBui6rAV1B+vdl2ynF/ub3YdDNhz8+qdy8rMuUmgA9sOR71pmEU8fv2uhu7swIxb6n
         BQDgzZ+4GWKQh/ovRIr2ooC+NOjDIPB7m1WgJv/RleQn/F5g476kUYGf++csRcbeNFiT
         3CLwgIodA1wrBA91Gt6XjBwPHhujvm5ipECv3gRB2uA+9rHcOnGHcWpc7UtDveA89ayK
         YeZd4LUQzudP5fb6BiUs7QZFdZOnfVzXeRWyNyxxONoGV/OO94y/KCgwO9OofTiu/uZ3
         bvasY8C7g/kGPglYc9tM/7aDjcGD9O1B7nTLr1PyrEaAxu+nB4okLMvh/jcO86IPlGy6
         LBEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:to:subject:content-transfer-encoding:mime-version
         :references:in-reply-to:user-agent:date:dkim-signature;
        bh=c9qIMEIj2Bg3dPsjzB2e/HRpPGx1Icwf9gZgS7c3swc=;
        b=BR6adTyRKTvuD7GfsBlIzUjgKilg1xO0uC4g4aNcL8l393+NxWLJHVt18xFXvcEulS
         l1swnMWUUAAm2L2V4kuPnCC8e46SsKuRPa/h4EoBbAeSaokQxIq+qc3oSmNsiJNOqhR8
         th5H4OZji03iJE1EgdFyucUYjaRyZcTL1DBvHnnr9uLkRcnBUCtGekPwrxENCHidVFyY
         OFfL239exQ5DvbNtBs2oLprNdRwwx/crMRvBjjB2DQPkAl9hurlyglRlNFccu6FNqhXF
         JkdZP5gcFDRtwBEhI1VaaNkRhqeaLd9FtavRiDnpwyJX8GwlFssfVkxUgxDVLK0xZrYa
         +UfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@joelfernandes.org header.s=google header.b=F4P9fl83;
       spf=pass (google.com: domain of joel@joelfernandes.org designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=joel@joelfernandes.org
Return-Path: <joel@joelfernandes.org>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id s92si241332pjb.0.2020.03.07.08.51.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2020 08:51:10 -0800 (PST)
Received-SPF: pass (google.com: domain of joel@joelfernandes.org designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@joelfernandes.org header.s=google header.b=F4P9fl83;
       spf=pass (google.com: domain of joel@joelfernandes.org designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=joel@joelfernandes.org
Received: by mail-pf1-x42b.google.com with SMTP id z65so2699155pfz.8
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2020 08:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=joelfernandes.org; s=google;
        h=date:user-agent:in-reply-to:references:mime-version
         :content-transfer-encoding:subject:to:from:message-id;
        bh=c9qIMEIj2Bg3dPsjzB2e/HRpPGx1Icwf9gZgS7c3swc=;
        b=F4P9fl830q/tHNTnvVAJZExR5w+TveoYD2OH33f9R3oA4j06XSXh6vJcIvhugTXHu8
         srsFUZ2dHdhC5Xx7IFcgO5m6hoiY+SUj0HlMaKxWO/ET+I/NfWdA1FA0jbejRba0JBaT
         g/TrELLByRfl3aZnwc4rx6uWr+0FtaHayBfaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:user-agent:in-reply-to:references
         :mime-version:content-transfer-encoding:subject:to:from:message-id;
        bh=c9qIMEIj2Bg3dPsjzB2e/HRpPGx1Icwf9gZgS7c3swc=;
        b=Lj3YLiZDd0yF0qULiKfxXSJDiytO3dzA2ELc79kfbm3oiL9ClJsax1zxrmrN5EjZzv
         6SCk7MVDS+zxdyWpcPnKUfwrQV4IGGx3vsRUtJm+9g9yU+RrEoGAOk0XuFP6PJghzh4U
         0LF7stCgHZap8hwVSwM1YN6tODLURw1H1s2VGaGXBx1C6jiYIV47c9w8MGlG9SW5pmhG
         ZjFcQCElgoo8J7Q4e2hzvc4Z0Lz74Iay5XgstuyYpYENNeevTBGdP+FcXtr9d9kGIj2q
         gWsdLtKFsBbviT7g2iO5Imf3yvJ9X/OusF0gBUcAtigr6qbRH+VoGRGk8ayBW1qT4453
         h1Lg==
X-Gm-Message-State: ANhLgQ1qG9ynteOYnXtQ7RTWizCnf1VGMoJkqk1WhCyN5FJ0MrUMMRea
	IJOqGhx5KJwubXs20gDSBbVll5FCZFw=
X-Received: by 2002:a62:ea0f:: with SMTP id t15mr4545851pfh.31.1583599869699;
        Sat, 07 Mar 2020 08:51:09 -0800 (PST)
Return-Path: <joel@joelfernandes.org>
Received: from ?IPv6:2600:1012:b067:7e32:12c2:424b:4077:fa47? ([2600:1012:b067:7e32:12c2:424b:4077:fa47])
        by smtp.gmail.com with ESMTPSA id b2sm12904405pjc.40.2020.03.07.08.51.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2020 08:51:09 -0800 (PST)
Date: Sat, 07 Mar 2020 08:51:06 -0800
User-Agent: K-9 Mail for Android
In-Reply-To: <20200307085911.GA5556@lily>
References: <20200307085911.GA5556@lily>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="----JJ4H8YSXZKKKOV09DKHJVFOG0181W4"
Content-Transfer-Encoding: 7bit
Subject: Re: [Outreachy kernel] My first post to Outreachy-kernel mailing list
To: outreachy-kernel@googlegroups.com,Veera <vkor@vkten.in>
From: joel@joelfernandes.org
Message-ID: <B5A382A7-7A80-4FB8-A224-4FD197206E0D@joelfernandes.org>

------JJ4H8YSXZKKKOV09DKHJVFOG0181W4
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Welcome aboard=2E

On March 7, 2020 12:59:13 AM PST, Veera <vkor@vkten=2Ein> wrote:
>Hi,
>
>I am R Veera Kumar and am selected as applicant for Outreachy May 2020
>round=2E
>This is my first post to the list=2E
>
>Veera
>
>--=20
>You received this message because you are subscribed to the Google
>Groups "outreachy-kernel" group=2E
>To unsubscribe from this group and stop receiving emails from it, send
>an email to outreachy-kernel+unsubscribe@googlegroups=2Ecom=2E
>To view this discussion on the web visit
>https://groups=2Egoogle=2Ecom/d/msgid/outreachy-kernel/20200307085911=2EG=
A5556%40lily=2E

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------JJ4H8YSXZKKKOV09DKHJVFOG0181W4
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Welcome aboard=2E<br><br><div class=3D"gmail_quote=
">On March 7, 2020 12:59:13 AM PST, Veera &lt;vkor@vkten=2Ein&gt; wrote:<bl=
ockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border=
-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail">Hi,<br><br>I am R Veera Kumar and am selected as app=
licant for Outreachy May 2020 round=2E<br>This is my first post to the list=
=2E<br><br>Veera<br></pre></blockquote></div><br>-- <br>Sent from my Androi=
d device with K-9 Mail=2E Please excuse my brevity=2E</body></html>
------JJ4H8YSXZKKKOV09DKHJVFOG0181W4--


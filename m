X-GM-THRID: 6524313922578677760
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.107.148.72 with SMTP id w69mr509439iod.56.1519061163337;
        Mon, 19 Feb 2018 09:26:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.237.68 with SMTP id r65ls1888872ith.1.canary-gmail; Mon, 19
 Feb 2018 09:26:02 -0800 (PST)
X-Google-Smtp-Source: AH8x226gnY3acVi8N3gOPVzzX9ZTMI4SQJ7m3aQSyeWfE+j8O4hp/OcU9qS1NBvV66N36IPGVvN4
X-Received: by 10.36.29.216 with SMTP id 207mr12034744itj.55.1519061162135;
        Mon, 19 Feb 2018 09:26:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519061162; cv=none;
        d=google.com; s=arc-20160816;
        b=aDqgVJBkkVMDClU8Q9kiaeh6NVEuByF0hGOJEuA/FV9QFs5311Dn/wakvs5KY0edf2
         NW1LWJFkEAdRXHFQyA5+9EH2P1zNQp/czEMFj2SJ6xb4njOYwwVWSNxidx+aBnKk+OaG
         I9DJ2D26U2H80J2S8pQGroT58QYqsk+aKeUs1ujXMxluF6rhT4Agkvgp9bJbqh/sxsEs
         TbNeQ8+Qjn4SxtqV9PRSBc8cYZeRGJ5jAoD5HFoveHEEQF0YKB5t0uGnViFAoWgbe6NY
         zXcbwwzQk07JpVbK3igXQxJ5PYpYR9wl6NcEEd0svuKEhtkABJKaEdw50ciKqZjo+ffU
         Vtxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=+gVBsp+y90d+BxTS0UEfLlWVh9OvTgogneVB43SCoZI=;
        b=0vgYabdlkMVbysyY0QZ2KopidpNMOh7Sw1NXOw03NHace4frS00shHIzwFExJrxqxK
         R9Q+HUW6J9giOXp+gr6yUia1k1lpGWJo05nB6AeX6cCYNApWjLTr35EgS9W11NAVwxHO
         AqfAVXJin90iFiWdewh+EcyLsojEBZ8FhrOtkskPebu38cKdULAiNiCgqTGqaE0tOYiN
         sR0Fy7Xv08NdJ+X1r3F5CcUYAnHM9K/U6cCXJceOskkp0B3bGWRGcw9xsZ7dl++hIoxB
         0Iqjt+7SlbqzwWObMoD22ir6RAggsORyf9iRFN6TEDC0mvPxWrXVBU6eN+Oy8vjXEZQ1
         t5/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IQF7BsXk;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4003:c06::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-oi0-x22c.google.com (mail-oi0-x22c.google.com. [2607:f8b0:4003:c06::22c])
        by gmr-mx.google.com with ESMTPS id 71si454861ioz.0.2018.02.19.09.26.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 09:26:02 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4003:c06::22c as permitted sender) client-ip=2607:f8b0:4003:c06::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IQF7BsXk;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4003:c06::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22c.google.com with SMTP id t185so2503384oif.6
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 09:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+gVBsp+y90d+BxTS0UEfLlWVh9OvTgogneVB43SCoZI=;
        b=IQF7BsXkgH7Ta+T0Gt9lO78pCNmsBrzaLZTRU6WJvxKBqN7gWWN+wbphKCLVMdX2Mz
         JBIUSBDckET2QHVWs9OEig0L5KAOcGm0TvJVT6U5WSAK/XDTykNvnyTWyFYEwchUZymd
         Mbz6VjUBAnFW1GdnjNglCKWxq5zSiWPlBgqorJsu7tizd4Bt1YfvUD5o6CjGE8sWnoLp
         aFeUFcrGz7Ni7QQBkkqOKFCONPHheihgomHBrhoBmFAMfaVPl59PPXUAXYdGufE0Xx9A
         uOvM+CwPzWNz3Hn7IS8z60QNoaL6aB0c17Dz2RkLJY02ZmMG7G/f/k4jLQgDDCN7r/cJ
         YCnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+gVBsp+y90d+BxTS0UEfLlWVh9OvTgogneVB43SCoZI=;
        b=NV+m9H42WNqP1gUJecFC5pbyP3BJycOztYgx8TaAYV1ZXZXmyERoRqjfYRk5nZxsDE
         dgGZJo+VHKupteioEbgq+/nkginslDqbUiS8tzoQClQAFDgJy72Uxp4ysPewSncQ3UBm
         gL8k/ffDt8+7lRW5++F7nJKqTYK/LSeVuwR8tJwlb7qfiwGKTuzUNOCw/2H6Oyq7u5ft
         PV8pQl89UMK1AgrT7V87t/Rf4mkHP95jvYbMCLKBm0kBJn2Cl063FTm7sLvaFE9zvCgS
         xgeLCwcyqkxDOe6mL9zP51cW7NulLA6NT8rmJUz1W6w199X3ETJOM/RiBQ7hgs7FITtL
         3XHw==
X-Gm-Message-State: APf1xPBreohE2i3RWUTfhu8wma4U0v59obT3vCFHtNthniky61qsld37
	ubbc8cjB14MvhyIiraMV8jYQjWm1pHh2kw0O2+M=
X-Received: by 10.202.221.11 with SMTP id u11mr11028666oig.42.1519061161229;
 Mon, 19 Feb 2018 09:26:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.74.150.70 with HTTP; Mon, 19 Feb 2018 09:26:00 -0800 (PST)
In-Reply-To: <224c65c0-329e-488d-a998-5d377352fcf0@googlegroups.com>
References: <224c65c0-329e-488d-a998-5d377352fcf0@googlegroups.com>
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Mon, 19 Feb 2018 18:26:00 +0100
Message-ID: <CAO393ACQWjsh3HJUx+kouWO+CvSXSm4JCnvB9mpkGrGC=B=3yw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [Application] Record contributions /
 Contribution URL
To: Eisha CHEN-YEN-SU <chenyensu0@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="001a113d6030e84511056593fc69"

--001a113d6030e84511056593fc69
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 19, 2018 at 6:10 PM, Eisha CHEN-YEN-SU <chenyensu0@gmail.com>
wrote:

> Hello,
>
> I would like to know what URL should be put to record a contribution (on
> Outreachy's website) when
> a patch is accepted by Greg Kroah-Hartman, please.
>
>
Hello Eisha,

You could search for your patches here
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/> and
then add the corresponding result in the contribution along with a
description.
You don't need to put separate contribution URLs for each of the cleanup
patches. However, once you get a small task patch
accepted for whichever project you apply to, it will be nice to have that
as a separate URL along with the description.

Eisha
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/224c65c0-329e-488d-a998-
> 5d377352fcf0%40googlegroups.com
> <https://groups.google.com/d/msgid/outreachy-kernel/224c65c0-329e-488d-a998-5d377352fcf0%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
> For more options, visit https://groups.google.com/d/optout.
>



-- 
Shraddha

--001a113d6030e84511056593fc69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Feb 19, 2018 at 6:10 PM, Eisha CHEN-YEN-SU <span dir=3D"ltr">&l=
t;<a href=3D"mailto:chenyensu0@gmail.com" target=3D"_blank">chenyensu0@gmai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr">Hello,<br><br>I would like to know what URL should be put to record a c=
ontribution (on Outreachy&#39;s website) when<br>a patch is accepted by Gre=
g Kroah-Hartman, please.<span class=3D"HOEnZb"><font color=3D"#888888"><br>=
<br></font></span></div></blockquote><div><br></div><div>Hello Eisha,</div>=
<div><br></div><div>You could search for your patches=C2=A0<a href=3D"https=
://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/">here</a=
>=C2=A0and then add the corresponding result in the contribution along with=
 a description.</div><div>You don&#39;t need to put separate contribution U=
RLs for each of the cleanup patches. However, once you get a small task pat=
ch</div><div>accepted for whichever project you apply to, it will be nice t=
o have that as a separate URL along with the description.</div><div><br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span class=3D"HOEnZb"><=
font color=3D"#888888">Eisha<br></font></span></div><span class=3D"HOEnZb">=
<font color=3D"#888888">

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel+unsubscribe@googlegroups.com" ta=
rget=3D"_blank">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.<wbr>com</a>=
.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/224c65c0-329e-488d-a998-5d377352fcf0%40googlegr=
oups.com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">http=
s://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>224c65c0-329e-488d=
-a998-<wbr>5d377352fcf0%40googlegroups.<wbr>com</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" targ=
et=3D"_blank">https://groups.google.com/d/<wbr>optout</a>.<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div di=
r=3D"ltr">Shraddha<br></div></div>
</div></div>

--001a113d6030e84511056593fc69--


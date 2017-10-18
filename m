X-GM-THRID: 6473105457256857600
X-Received: by 10.98.112.8 with SMTP id l8mr3064676pfc.22.1508338407902;
        Wed, 18 Oct 2017 07:53:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.253.142 with SMTP id q14ls1287494pls.0.gmail; Wed, 18 Oct
 2017 07:53:26 -0700 (PDT)
X-Received: by 10.101.80.140 with SMTP id r12mr3899943pgp.136.1508338406938;
        Wed, 18 Oct 2017 07:53:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508338406; cv=none;
        d=google.com; s=arc-20160816;
        b=fapjIBzlan9u0uZUllMyOpbhcuSMSjNzzlmHjJFEs5YJwJxHJM7XGETriQpavObau3
         Dvvs098yeRzkcc33dPKHJfdga0QNKBTqopjhiJufDkE6Gf0JK9yb44uhMCkACIxMBvsQ
         QcsvvmNGFeneM52Ez9HA93AgIEA/jOLJodVt5/vOXHSVZyHCY9rBmhb3lfI37Sf7tEek
         kWxGN16ym3NySWGr2of1/AI2mfHUpvfZIXCnk3ZnpRcj6srqC3+cofYOcUfPV1zJKZPQ
         rsZc9ZWeIHVy4kb/VNCdsWxoot7t0rLu0FUIps16vCEbCLrJ3UziCtmp+M1Mjdp9Qemm
         syJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=kldJEELiMglDhiWfNyL9YG0OnJEUjEdvpB6tuoD0Suw=;
        b=npP9dd8cB5RSnxzDsC+Xv8urhiMQ6Y98Eg7HTM66+yZxId5fWKqRmH3UJ6e3t68oqP
         qI5+6VgEuSSJedjkkpsp4CTr4bAtuepdy5A6q4mZ+GS75Tom6Q4OT/D2yWQbYrdiL6XQ
         2MR355ED1RjUjLcL4kAPAk3+ngV1+LrEhC6PKRDoYG+Nq7nFDzrrWl+5rf/35VqsQaaz
         W8p1hBqUS+pnCfD9W7qsV1rjBgSoEyVY8Ko0dhRbiftUzUE5uJ0VSvFinLphzkttYJLA
         RU6ZnAcuC2uEXXVtNhIOItIi6SWuznTnv+6GHHqTtpQ/gfTidHFYuYdpH1kwHqatGEy4
         EqEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ItfkTX9a;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x242.google.com (mail-qt0-x242.google.com. [2607:f8b0:400d:c0d::242])
        by gmr-mx.google.com with ESMTPS id m186si514972pfm.2.2017.10.18.07.53.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 07:53:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) client-ip=2607:f8b0:400d:c0d::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ItfkTX9a;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x242.google.com with SMTP id 8so10571516qtv.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 07:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=kldJEELiMglDhiWfNyL9YG0OnJEUjEdvpB6tuoD0Suw=;
        b=ItfkTX9a56gcCopkJiZPIrT6THHpVfMd1787Z2+MYbMQwyZjPG9dGtifjQ60o+MB5s
         LS/yP/z9nqQJnjde4Z9z/eTJfua4Kc6u78YmX7fbXzN12+6SaODr4EyMnueYckhYMyae
         U9B3yvBivs9Q4rbwupjcnHwNK/6Lx9rT0a3tszRItwEEHiRpURHYCqe6k9VOSHLobgsa
         IwR1xDDciATPeiD0iMcHQvhwX0Gip48S4ys/xqBSpn0tD4+WnrTMg+fM1l0CzszhDSj0
         972I5aJJC8KPmdTFks2WlKeaw31Ed276K+20Gx4u7e7DCjREaOSH2NZ/xc8K3ZJFvSCe
         I/Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=kldJEELiMglDhiWfNyL9YG0OnJEUjEdvpB6tuoD0Suw=;
        b=GmpINqF27Eefzw57BqZbB7gB0wn5EP6KMV5sSgyEg4bZsK6Re3mQNc4Egd7s+5ORed
         xyYpNoDBFF/DkBO74EGfv4jb8K7VqXugytBk4ix36tLaIK7/sLeKQcKrRt5CgYWZ2c96
         OoTOdTjHS16ZUWOPGHJG81fb0rOTr+Zpuy1Sha4YcXzKbDSvBNYon1KEEkL1eDQJZQZQ
         JiK9kRgjm+isJtkOsHwNtz9v4UkDFyd0KGsIKSZD5S/+8Z9YUpZGZc3yoJ17vHW1xd/Y
         4EG80U5/fbh7BSvbUFhkP4J/tcBnd8h4HiV+DPamLtKNsJOWFu4TAv7B8Pw2yxvbwah6
         Io4Q==
X-Gm-Message-State: AMCzsaWwKDeeTp1O2irXXB8YVSIjvqiB9AnA0vXmidXjLLHrYsi3K0kj
	zWqYt0ZIIoknakh8C6oHVFXN0fT/NocjhFHFxe8=
X-Google-Smtp-Source: ABhQp+QnQ7WFrQNZuFjldO7LLrvggMuhkV76E0AYMw6iAvPbb5rHmFxPcBxvlQcFgkeOi9uSYVjxhTgRcbYXSVSZEp0=
X-Received: by 10.200.36.86 with SMTP id d22mr3544286qtd.140.1508338406597;
 Wed, 18 Oct 2017 07:53:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.62.216 with HTTP; Wed, 18 Oct 2017 07:53:26 -0700 (PDT)
In-Reply-To: <20171018123117.GA11890@kroah.com>
References: <1507196802-4143-1-git-send-email-srishtishar@gmail.com> <20171018123117.GA11890@kroah.com>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Wed, 18 Oct 2017 20:23:26 +0530
Message-ID: <CAB3L5ozhby6izgNjoBZS6BwzOgpVcoH1fErt8PN3JhptFv0FGA@mail.gmail.com>
Subject: Re: [PATCH v2] Staging: rtl8188eu: core: rtw_ap: Use list_for_each_entry_safe
To: Greg KH <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="001a11412a9ced2693055bd366fb"

--001a11412a9ced2693055bd366fb
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 18, 2017 at 6:01 PM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Oct 05, 2017 at 03:16:42PM +0530, Srishti Sharma wrote:
> > This is a cleanup patch and doesn't change runtime behavior. It
> > changes an open coded list traversal to use list_for_each_entry_safe.
> > Done using the following semantic patch by coccinelle.
>
> You have sent me two different patches, with this same subject.
>
> And you have sent me lots of different patches for this same driver, I
> don't have any idea which order to apply them in.  Please resend them
> all, in an ordered patch series, properly numbered, so I know what to do
> here.
>

I had sent them individually because in a patch series they would have the
same subject, as all of them are making similar changes in different files
of the driver. One patch for all files would probably be too long, What do
you suggest I do in this situation ?

Regards,
Srishti

>
> thanks,
>
> greg k-h
>

--001a11412a9ced2693055bd366fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Oct 18, 2017 at 6:01 PM, Greg KH <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfounda=
tion.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Thu, Oct 05, 2017 at 03:16:42PM +0530, Srishti Sharma wrote:<br=
>
&gt; This is a cleanup patch and doesn&#39;t change runtime behavior. It<br=
>
&gt; changes an open coded list traversal to use list_for_each_entry_safe.<=
br>
&gt; Done using the following semantic patch by coccinelle.<br>
<br>
</span>You have sent me two different patches, with this same subject.<br>
<br>
And you have sent me lots of different patches for this same driver, I<br>
don&#39;t have any idea which order to apply them in.=C2=A0 Please resend t=
hem<br>
all, in an ordered patch series, properly numbered, so I know what to do<br=
>
here.<br></blockquote><div><br></div><div>I had sent them individually beca=
use in a patch series they would have the same subject, as all of them are =
making similar changes in different files of the driver. One patch for all =
files would probably be too long, What do you suggest I do in this situatio=
n ?</div><div><br></div><div>Regards,=C2=A0</div><div>Srishti=C2=A0<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div></div>

--001a11412a9ced2693055bd366fb--


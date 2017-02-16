X-GM-THRID: 6387647463261470720
X-Received: by 10.99.134.198 with SMTP id x189mr773649pgd.29.1487265231331;
        Thu, 16 Feb 2017 09:13:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.73.152 with SMTP id e24ls2082399itd.10.canary-gmail; Thu,
 16 Feb 2017 09:13:50 -0800 (PST)
X-Received: by 10.99.130.199 with SMTP id w190mr1049451pgd.158.1487265230478;
        Thu, 16 Feb 2017 09:13:50 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id n127si135933ita.3.2017.02.16.09.13.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 09:13:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id e137so5077111itc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 09:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=icITX9n9FZai/048duc5owSm4MY9ie+x1EuNT8zerTA=;
        b=GrDNgvsq9ke6CXz8dqfFGEQmILpBn5kIF4JIAj2AL4ElouegqwB6xizahrOGcQHlQN
         JGeyh89IRIEIxnewatfRglEz6nrS1/UfxohmdNQYGrz6WpWl2PMriiDj4WQ8I/ZyR8fI
         j76tzYsRxcR3/+xZoscpVUhnPNA2NhN3jrKkeIdgrqQTd9kPfLP/IcMv+U6yYiMfcDBQ
         DlQDH3xZ067a8Qb7XuAhK3Le36UyIC6l6G9fshe5dsLMWSOCr5vOQ80RW8FRWvw6g3ax
         8wcSCcIeITlANAPPqFbs6N2GImpaNVlPrdanbJFBEGiqfcXvTvoIrIfKOV+3E17/rz6c
         hhWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=icITX9n9FZai/048duc5owSm4MY9ie+x1EuNT8zerTA=;
        b=sq6wfrgO4FLWHe/wJBMPATcRyjtljrpr6vBz62MG0cWZuIxfAcMAaWwlq9L17p9yz0
         Hu2CbkmnaOIQ+8DLkdP2xhTZUw4CAJxV62XsLyN7c2gGhnj6oh/TaiVVXM34CYJndaeW
         kumhdsWLN15TT1ILyw1vuglHb7RR1KA1kpgofkTFN2AHOLGkmxu+yhMItOlM2XP5W6Z0
         svWx5plgI7M3bDZIAyYS7jGeA4y+nsTTxlA0ijMFV4vripUGtLTdnIpzKyrT6R339rWB
         Bcri49E9mLpwmXbhE5+D3nb+QZkIKuzjQk6LvEZLp2ICpRFt2GnXfE3eDurr/rPaKQfw
         nJ6A==
X-Gm-Message-State: AMke39kXbaGXGDTKECHiD8G3ZF9JxspYIjVmqkcUpmIXj5ujKI7PC9FN9QxL9o6FxfkmCBbEXrgAfEan2UIIRA==
X-Received: by 10.36.103.142 with SMTP id u136mr3325197itc.89.1487265230206;
 Thu, 16 Feb 2017 09:13:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.211.84 with HTTP; Thu, 16 Feb 2017 09:13:19 -0800 (PST)
In-Reply-To: <1487264190-6768-1-git-send-email-gs051095@gmail.com>
References: <1487264190-6768-1-git-send-email-gs051095@gmail.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Thu, 16 Feb 2017 22:43:19 +0530
Message-ID: <CAOCi2DHr9uZVxJvPiLXcNtSoTfVVjEWFu84QxmNRf9ncmBB-oA@mail.gmail.com>
Subject: Re: [PATCH] staging: wlan-ng: add blank line after declaration
To: outreachy-kernel@googlegroups.com
Cc: Greg KH <gregkh@linuxfoundation.org>, Gargi Sharma <gs051095@gmail.com>
Content-Type: multipart/alternative; boundary=001a114a91bcbbcaf50548a8ebdb

--001a114a91bcbbcaf50548a8ebdb
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 16, 2017 at 10:26 PM, Gargi Sharma <gs051095@gmail.com> wrote:
>
> add blank line after struct declaration to fix the checkpatch issue, add
> blank line after declarations.
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x.h
b/drivers/staging/wlan-ng/hfa384x.h
> index 5f1851c..f199847 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -1175,6 +1175,7 @@ struct hfa384x_usbctlx {
>         enum ctlx_state state;  /* Tracks running state */
>
>         struct completion done;
> +
>         volatile int reapable;  /* Food for the reaper task */
>
>         ctlx_cmdcb_t cmdcb;     /* Async command callback */
> --
> 2.7.4
>
Please ignore. Sent by mistake.

Thanks,
Gargi

--001a114a91bcbbcaf50548a8ebdb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>On Thu, Feb 16, 2017 at 10:26 PM, Gargi Sharma &lt;<a=
 href=3D"mailto:gs051095@gmail.com">gs051095@gmail.com</a>&gt; wrote:<br></=
div>&gt;<br>&gt; add blank line after struct declaration to fix the checkpa=
tch issue, add<br>&gt; blank line after declarations.<br>&gt;<br>&gt; Signe=
d-off-by: Gargi Sharma &lt;<a href=3D"mailto:gs051095@gmail.com">gs051095@g=
mail.com</a>&gt;<br>&gt; ---<br>&gt; =C2=A0drivers/staging/wlan-ng/hfa384x.=
h | 1 +<br>&gt; =C2=A01 file changed, 1 insertion(+)<br>&gt;<br>&gt; diff -=
-git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.=
h<br>&gt; index 5f1851c..f199847 100644<br>&gt; --- a/drivers/staging/wlan-=
ng/hfa384x.h<br>&gt; +++ b/drivers/staging/wlan-ng/hfa384x.h<br>&gt; @@ -11=
75,6 +1175,7 @@ struct hfa384x_usbctlx {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 enum ctlx_state state; =C2=A0/* Tracks running state */<br>&gt;<br>&gt;=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct completion done;<br>&gt; +<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 volatile int reapable; =C2=A0/* Food for the reape=
r task */<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ctlx_cmdcb_t cmdcb; =
=C2=A0 =C2=A0 /* Async command callback */<br>&gt; --<br>&gt; 2.7.4<br>&gt;=
<br><div><div>Please ignore. Sent by mistake.=C2=A0</div><div><br></div><di=
v>Thanks,</div><div>Gargi</div></div></div>

--001a114a91bcbbcaf50548a8ebdb--


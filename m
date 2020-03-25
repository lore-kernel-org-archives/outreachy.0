X-GM-THRID: 6806661932796346368
X-Received: by 2002:a2e:3c01:: with SMTP id j1mr1085486lja.175.1585121509043;
        Wed, 25 Mar 2020 00:31:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a550:: with SMTP id e16ls234064ljn.6.gmail; Wed, 25 Mar
 2020 00:31:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu2BCp9dwWCzaIlC7nywvLnW8iiRQ4Rpm41vSJsx/DQzx9eeH3w5W/r2Qyp2OK+3l712Xak
X-Received: by 2002:a2e:9b8e:: with SMTP id z14mr1106132lji.150.1585121507517;
        Wed, 25 Mar 2020 00:31:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585121507; cv=none;
        d=google.com; s=arc-20160816;
        b=XSPfQPjyiL0xhFweKgAbE9LvdHv4CZWrSUMdjRbpcsCAK7M2AT50x5mCoxKW8m1ljh
         ZdfJ8Zgpl9OuIzVwv0I3YfFzLU9f92uggI/V9hb0TC0Q2UiTeInFqDcsQV5s9UT1qMYY
         Bb7T/UGIJn0mhXVfaevsKkvge9XDEPZUbxtFJYsEpzxwg4UchQwDzO5vn9CFV3IZGWKo
         BOuBc98l6weXxue04ynVSJfHAcA+9+o7Z86nLWG0WNj/HfwB//PUSjI7YJ230zcL8G1A
         qeI/lXiwwYqUe5yqMInMV1WQr+Y5jR5DoTOKUFBjTBZQm4It/Dxj/8oYwu0AkmM1bGoC
         TMvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Oex2CpE1VOM/h6R5SHMDvGFq3f3uBtfkoJJodpPU1Z4=;
        b=GHUmAyy9QF3YnYlbx262d+/FppxrJtVpBWQSIZIvihOSL6qDKXm+JYf9Px8zpJIh45
         0bf4DEJJebLNQXMxLPVkTNN+pzCLod4IgBdmNXOqj3+80k2bZcREdV+lc3kG3f7xStHn
         Mtd9FinAm4acvjeFew2Tc4WdrplVNUV56Yj66P220Aj2d5chwhUCdRjVHhvyjJfQU4RX
         qDin5sYvcin1nKpMJsO9FJ11HXLVe4f94gVVp3R10g0AovJ9WZPTAiYNDMhCMsZRzmOO
         R6Nl2Gjl61Ca4yVkMiBdYmestcqi8WuFzCznRyV3JylyymiZQYo7wWi6pP7YkBF5xLnX
         99xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pPk7HV1H;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id e4si844283ljn.1.2020.03.25.00.31.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:31:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pPk7HV1H;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22e.google.com with SMTP id w1so1350126ljh.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 00:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Oex2CpE1VOM/h6R5SHMDvGFq3f3uBtfkoJJodpPU1Z4=;
        b=pPk7HV1HjzprgvlM1Huxoql611mfkRgNlU6hK2gYFsPmntSSxua/fIwWqU6My8oKv0
         PJifgzaRBTNR+rkk1iEH30uxoXKenypcb5bbjeWYspypE+STPJzNwoq7ogt4X56nSjn7
         W+hJHBCZ7V0s5k5UdUW2VSsXeAzaz7EHiViA6MFk/VKc9EHFI+6FATx9k+XW4SBc7IGR
         xyvIkUKeMFf4n7C6GAiCcOwtHH/n9/7D58ZxbUK2vhJGhXY7GZEV/mRceJofhJ/CFRps
         DjmP5FJa+JRFcgK7moHoVvj41hfMENZofEwA2YUn//12iLhqYfPUq2ru5blxKj77iFLc
         7b8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Oex2CpE1VOM/h6R5SHMDvGFq3f3uBtfkoJJodpPU1Z4=;
        b=OPHWtjW2ajPFkdNOBGB4hsBikaioyINBClWRY7xGjzSRgdUiIhRljFYIGZfOZ1OOtB
         dMn46hgZIsW7FyoHESq5aP/2ja8LRt3ETjF0YhJdc8nbxGL1P4xIi7pSFwBE8l1TzeJb
         n8Al2Dec0aqFUHU6QGPp/OHlnp5GFMhx6v+Nbz+yx68UmAiC+DNjk9tPjFRPNWTWx+Kt
         KaMUDVH1S08F1RwKrfVI+AN1IJFguiattrWjrSFq5m0dfTO81QYsBdjJVEEM8E1xZPwW
         7zFtXxx+pW/4CAVXmaVBL1LPVOw2Q3aAKYgjeFUqtaXXDmeQjJcpAMeM8O94QkYsTRAd
         6qGg==
X-Gm-Message-State: AGi0Pub6/d4B0x9+rjDnwWJDS1ucFR1eMzw7VLSWLRH6WOArYU4bq4M2
	3deUzRcTwshPyTLJIfDQJqBKjN9LQ6g2ctlRBfeEYr/Q
X-Received: by 2002:a2e:a495:: with SMTP id h21mr1081983lji.123.1585121507243;
 Wed, 25 Mar 2020 00:31:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200321140430.GA18933@simran-Inspiron-5558> <20200323014718.461a6bbe@elisabeth>
In-Reply-To: <20200323014718.461a6bbe@elisabeth>
From: Simran Singhal <singhalsimran0@gmail.com>
Date: Wed, 25 Mar 2020 13:01:34 +0530
Message-ID: <CALrZqyOwXvYJTh756Du-4g6=0CxMY0AbD_OKoLVwOqq02LyjdQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: kpc2000: Removing multiple
 blank lines
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, jeremy@azazel.net, 
	driverdevel <devel@driverdev.osuosl.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000005d7b4d05a1a8dce6"

--0000000000005d7b4d05a1a8dce6
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 23, 2020 at 6:17 AM Stefano Brivio <sbrivio@redhat.com> wrote:

> On Sat, 21 Mar 2020 19:34:31 +0530
> Simran Singhal <singhalsimran0@gmail.com> wrote:
>
> > This patch fixes the checkpatch warning by removing multiple blank
> > lines.
>
> Actually, you're removing just one. Can you please re-post fixing the
> description? Mind that it's going to be a "v2", that is, the second
> version of this patch. Please see recent examples on this list about
> that.
>
>
Noted. I'll send v2 for that.


> --
> Stefano
>
>

--0000000000005d7b4d05a1a8dce6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 23, 2020 at 6:17 AM Stefa=
no Brivio &lt;<a href=3D"mailto:sbrivio@redhat.com">sbrivio@redhat.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Sa=
t, 21 Mar 2020 19:34:31 +0530<br>
Simran Singhal &lt;<a href=3D"mailto:singhalsimran0@gmail.com" target=3D"_b=
lank">singhalsimran0@gmail.com</a>&gt; wrote:<br>
<br>
&gt; This patch fixes the checkpatch warning by removing multiple blank<br>
&gt; lines.<br>
<br>
Actually, you&#39;re removing just one. Can you please re-post fixing the<b=
r>
description? Mind that it&#39;s going to be a &quot;v2&quot;, that is, the =
second<br>
version of this patch. Please see recent examples on this list about<br>
that.<br>
<br></blockquote><div><br></div><div>Noted. I&#39;ll send v2 for that.<br><=
/div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
-- <br>
Stefano<br>
<br>
</blockquote></div></div>

--0000000000005d7b4d05a1a8dce6--


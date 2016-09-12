X-GM-THRID: 6329504242942869504
X-Received: by 10.66.88.68 with SMTP id be4mr17139093pab.25.1473708938617;
        Mon, 12 Sep 2016 12:35:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.41 with SMTP id g38ls11778814ote.34.gmail; Mon, 12 Sep
 2016 12:35:38 -0700 (PDT)
X-Received: by 10.13.204.87 with SMTP id o84mr16598633ywd.37.1473708938124;
        Mon, 12 Sep 2016 12:35:38 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22a.google.com (mail-qk0-x22a.google.com. [2607:f8b0:400d:c09::22a])
        by gmr-mx.google.com with ESMTPS id p193si183873ywe.6.2016.09.12.12.35.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 12:35:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) client-ip=2607:f8b0:400d:c09::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22a.google.com with SMTP id w204so153447299qka.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 12:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=G6uMz/ICOfHHeR6DV589qln8OXx6SEcHb4hI6h85+Ks=;
        b=oLkTmCvMdtkyVuTSK7G5J1rN8+7g1DTCoZpD1QhgnawkhLPZ4i3Cnu67CKzX1w6Obb
         tv5dRQ/P5+PUdIEacyatbsly2it0MfMvn6vFBMiROIRHMotj0MmkCvPwINMo02qnWOAB
         tlttZlt4c27qiIXSzhrXneszTItDyZOkicYCmC2wGuJKAW9gGpJRPSNwthJWHTJfuRcU
         Z6vRENXoDFDxFWsNKALXqOdUeN9LVCdYE5tJNH+z4hbdwkZ6GKwZsgxNh78lr5Kdfsid
         ct1Ys4/pW3syl2qsSolJ7NDKWPqtu5mAW0tiEEkZOQ9qVCGGOXORP3BLepWoPwIr9eLT
         qpxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=G6uMz/ICOfHHeR6DV589qln8OXx6SEcHb4hI6h85+Ks=;
        b=H/5JqBNdHSW4CRy7yNBDtBUdt71aEqk8k0GcDSZ2r//ozVdU30QSlPzJaMt0aUeLPA
         qq6KVW6/q6feDIcgUOQU4knPX032quJFVWhLMyFxeLxDkLJ7/FRmovObe7QmNeLY33dC
         Lskd9RPoLAMNW4JTEfTCh1lc2MSeyc3r3hnuoqvkqF+l5GHa85NNP2WdEplbDC76cnRD
         jtpjjWRcztydd4QBu0OVTgJqHPeXlAkk+r70vq2JL4pzUFe+sFMNh5kCkaPTxvh+30/p
         PpG0SJopEFj9s202SU8CX5Cp5NgC7bfDcAxEfvcrY/oiK7+AXvbBHeu5MvMOti4AzT2a
         ZsAg==
X-Gm-Message-State: AE9vXwOgaoWb0HIsjqZTrDh+JOex/CWXckV+l9BjiV5pH2bXxw7dXovo9KXJDh3fs5Fb8LDP0kepIWttR0mMCg==
X-Received: by 10.55.209.140 with SMTP id o12mr20584038qkl.286.1473708937931;
 Mon, 12 Sep 2016 12:35:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.41.37 with HTTP; Mon, 12 Sep 2016 12:35:37 -0700 (PDT)
In-Reply-To: <CAOCi2DHqT7nMey6vwBGUTh1_wZ-Vea=Qrw9Evuat5wt98BdTxA@mail.gmail.com>
References: <CAOCi2DHqT7nMey6vwBGUTh1_wZ-Vea=Qrw9Evuat5wt98BdTxA@mail.gmail.com>
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Date: Mon, 12 Sep 2016 15:35:37 -0400
Message-ID: <CA+5yK5HfmGTZXuuUPL3T2JfMww2PNSQ3eofuT3yQB1wkGUPhYg@mail.gmail.com>
Subject: Re: [Outreachy kernel] udelay vs usleep_range
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1147a29ebf7bef053c54990e

--001a1147a29ebf7bef053c54990e
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 12, 2016 at 1:48 PM, Gargi Sharma <gs051095@gmail.com> wrote:
> Hi all,
>
> I ran the checkpatch script over drivers/staging/nvec.c and got the
> following warning
>
> CHECK: usleep_range is preferred over udelay; see
> Documentation/timers/timers-howto.txt
> #634: FILE: drivers/staging/nvec/nvec.c:634:
> +                       udelay(33);
>
> I checked out the timers-howto.txt and for usleep_range, one has to
specify
> the lower and upper limit for the timer. How does one decide what the
upper
> limit will be if one is to change the function from udelay to
usleep_range?
>
> Thanks!
> Gargi
>

You can check this
<https://groups.google.com/forum/#!searchin/outreachy-kernel/udelay%7Csort:relevance/outreachy-kernel/54bNeb1qwo8/ppeQJh1tCQAJ>
discussion on similar lines, I hope it helps you out.

Amitoj
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
>
https://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DHqT7nMey6vwBGUTh1_wZ-Vea%3DQrw9Evuat5wt98BdTxA%40mail.gmail.com
.
> For more options, visit https://groups.google.com/d/optout.

--001a1147a29ebf7bef053c54990e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Mon, Sep 12, 2016 at 1:48 PM, Gargi Sharma &lt;=
<a href=3D"mailto:gs051095@gmail.com">gs051095@gmail.com</a>&gt; wrote:<br>=
&gt; Hi all,<br>&gt;<br>&gt; I ran the checkpatch script over drivers/stagi=
ng/nvec.c and got the<br>&gt; following warning<br>&gt;<br>&gt; CHECK: usle=
ep_range is preferred over udelay; see<br>&gt; Documentation/timers/timers-=
howto.txt<br>&gt; #634: FILE: drivers/staging/nvec/nvec.c:634:<br>&gt; + =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 udelay(33);<br>&gt;<br>&gt; I checked out the timers-howto.txt and for =
usleep_range, one has to specify<br>&gt; the lower and upper limit for the =
timer. How does one decide what the upper<br>&gt; limit will be if one is t=
o change the function from udelay to usleep_range?<br>&gt;<br>&gt; Thanks!<=
br>&gt; Gargi<br>&gt;<div><br></div><div>You can check <a href=3D"https://g=
roups.google.com/forum/#!searchin/outreachy-kernel/udelay%7Csort:relevance/=
outreachy-kernel/54bNeb1qwo8/ppeQJh1tCQAJ">this</a> discussion on similar l=
ines, I hope it helps you out.</div><div><br></div><div>Amitoj=C2=A0<br>&gt=
; --<br>&gt; You received this message because you are subscribed to the Go=
ogle Groups<br>&gt; &quot;outreachy-kernel&quot; group.<br>&gt; To unsubscr=
ibe from this group and stop receiving emails from it, send an<br>&gt; emai=
l to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com">out=
reachy-kernel+unsubscribe@googlegroups.com</a>.<br>&gt; To post to this gro=
up, send email to <a href=3D"mailto:outreachy-kernel@googlegroups.com">outr=
eachy-kernel@googlegroups.com</a>.<br>&gt; To view this discussion on the w=
eb visit<br>&gt; <a href=3D"https://groups.google.com/d/msgid/outreachy-ker=
nel/CAOCi2DHqT7nMey6vwBGUTh1_wZ-Vea%3DQrw9Evuat5wt98BdTxA%40mail.gmail.com"=
>https://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DHqT7nMey6vwBGUTh=
1_wZ-Vea%3DQrw9Evuat5wt98BdTxA%40mail.gmail.com</a>.<br>&gt; For more optio=
ns, visit <a href=3D"https://groups.google.com/d/optout">https://groups.goo=
gle.com/d/optout</a>.<br><br></div></div>

--001a1147a29ebf7bef053c54990e--


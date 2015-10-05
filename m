X-GM-THRID: 6202253257836855296
X-Received: by 10.50.23.82 with SMTP id k18mr9261857igf.4.1444081711037;
        Mon, 05 Oct 2015 14:48:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.92.102 with SMTP id cl6ls1184074igb.34.gmail; Mon, 05 Oct
 2015 14:48:30 -0700 (PDT)
X-Received: by 10.66.249.100 with SMTP id yt4mr28134491pac.42.1444081710658;
        Mon, 05 Oct 2015 14:48:30 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id y6si333905ywc.3.2015.10.05.14.48.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 14:48:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x230.google.com with SMTP id 47so162393674qgt.2
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 14:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=XK7azBlcUBhnFdzKDrfS3sa4MKbAOumGsnOcnD30JGg=;
        b=LdDgpOoYjz4wz8aexcBjrcK04mRGs4BtSFyKlUejp/LVEzKH5hIRSxKIH//IGRpL3r
         9kEZvVAxQp64HbUGRan1l4C3v8phHbqHILnVYA6vBtPyHKRGAlHc8m9fxqM0L5UrVLNK
         pQXUnF2VV42pQbFz00haZUoYvsWZV6X2vS2GFCGtanaBFzU6/wBrD5Xr69+DIzvADAgE
         iyS1+XD7C8jlyemHUKSJiuhWOaJcx1EmzwYYvMrBFUrIDzOh0K1v9lbkt4QSpp/M2ZJL
         VtnGmY1Nt3aYykoBwK0UCs7DbRIK8YjcwdEanqt+B84Wwcds8yga8JEmJESKLzLEnPa/
         Mc3A==
MIME-Version: 1.0
X-Received: by 10.140.147.146 with SMTP id 140mr34710427qht.68.1444081710415;
 Mon, 05 Oct 2015 14:48:30 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Mon, 5 Oct 2015 14:48:30 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510052131070.2608@hadrien>
References: <20151005195012.GA21881@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1510052131070.2608@hadrien>
Date: Tue, 6 Oct 2015 03:18:30 +0530
Message-ID: <CA+5yK5Hh=0vgxfVb1WzXiy4w6z9GG9mJEHC21Bsvd9zdGzCJMw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usleep_range is
 preferred over udelay
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11354d3a60461a05216279b8

--001a11354d3a60461a05216279b8
Content-Type: text/plain; charset=UTF-8

>> Fix checkpatch.pl issue: "CHECK: usleep_range is preferred over udelay;
>> see Documentation/timers/timers-howto.txt".
>> Replace `udelay()` with a call to `usleep_range()` with a reasonable
upper limit.
>
> What is the definition of reasonable?  Do maybe other similar drivers use
> these values?
>

I checked over here
<https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/?h=staging-testing&id=120bdac7376a36418eb1d55e0161dc0e660a45c3>
 and here
<https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/?h=staging-testing&id=3fe6929bbbca11b015d182d4864d92d0bf5c244d>.
They both used 1000. However, this
<https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/?h=staging-testing&id=f98a20068dfcc16d1292d3e4d0d690e123da1538>
uses
20. But, the first two drivers seemed more similar to me. I couldn't find
anything in the documentation specifying the selection of range.

> julia
>
>>

--001a11354d3a60461a05216279b8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><br>&gt;&gt; Fix <a href=3D"http://checkpatch.pl">=
checkpatch.pl</a> issue: &quot;CHECK: usleep_range is preferred over udelay=
;<br>&gt;&gt; see Documentation/timers/timers-howto.txt&quot;.<br>&gt;&gt; =
Replace `udelay()` with a call to `usleep_range()` with a reasonable upper =
limit.<br>&gt;<br>&gt; What is the definition of reasonable?=C2=A0 Do maybe=
 other similar drivers use<br>&gt; these values?<br>&gt;<br><br>I checked o=
ver <a href=3D"https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.=
git/commit/?h=3Dstaging-testing&amp;id=3D120bdac7376a36418eb1d55e0161dc0e66=
0a45c3">here</a>=C2=A0and=C2=A0<a href=3D"https://git.kernel.org/cgit/linux=
/kernel/git/gregkh/staging.git/commit/?h=3Dstaging-testing&amp;id=3D3fe6929=
bbbca11b015d182d4864d92d0bf5c244d">here</a>. They both used 1000. However,=
=C2=A0<a href=3D"https://git.kernel.org/cgit/linux/kernel/git/gregkh/stagin=
g.git/commit/?h=3Dstaging-testing&amp;id=3Df98a20068dfcc16d1292d3e4d0d690e1=
23da1538">this</a>=C2=A0uses 20. But, the first two drivers seemed more sim=
ilar to me. I couldn&#39;t find anything in the documentation specifying th=
e selection of range.<div><br>&gt; julia<br>&gt;<br>&gt;&gt;<br></div></div=
>

--001a11354d3a60461a05216279b8--


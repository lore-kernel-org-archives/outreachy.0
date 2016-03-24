X-GM-THRID: 6264811554202451968
X-Received: by 10.157.39.137 with SMTP id c9mr4223806otb.24.1458796192070;
        Wed, 23 Mar 2016 22:09:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.119 with SMTP id q110ls917086qgd.95.gmail; Wed, 23 Mar
 2016 22:09:51 -0700 (PDT)
X-Received: by 10.176.0.111 with SMTP id 102mr3514200uai.2.1458796191023;
        Wed, 23 Mar 2016 22:09:51 -0700 (PDT)
Return-Path: <deutschluz@gmail.com>
Received: from mail-ig0-x22b.google.com (mail-ig0-x22b.google.com. [2607:f8b0:4001:c05::22b])
        by gmr-mx.google.com with ESMTPS id bc4si5414314igb.3.2016.03.23.22.09.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Mar 2016 22:09:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of deutschluz@gmail.com designates 2607:f8b0:4001:c05::22b as permitted sender) client-ip=2607:f8b0:4001:c05::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of deutschluz@gmail.com designates 2607:f8b0:4001:c05::22b as permitted sender) smtp.mailfrom=deutschluz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22b.google.com with SMTP id nk17so106119151igb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Mar 2016 22:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=HwXgOafXM7pdh+HH6TZ+wTNHN4HSIbbSvAQea+BDNdY=;
        b=Zcm+UPEMH0PJSJjKEzEvDqI85PNWyk3HC2zUfw6DpB31ePTIN+GKoCrdDk4lNE2EQE
         lI7Z7N6+j6adSKud2YvHtLjXp6ZMd1RoUXINdGnes5IytAJ8aMn3Jp2e6foD6DvU/iyb
         3WV+Q4HfzYboLXzhRvpTyLavoT3O8T0aqvgoARezk2lFhihnbgvoOnUcAx/T86HBFvWv
         63CEJaY426sZxgi8TUVv7ohvaiBNi0E6/ar0lvbnKAxSGq78iw/zgw79QLUFg6EnSxDy
         sXpq+lwBK2oO1DE3HNMID2+OaH1+A0JukJfbj9T2A1ThZzrc92E/RQj+07AOwbe1xkUv
         PWNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=HwXgOafXM7pdh+HH6TZ+wTNHN4HSIbbSvAQea+BDNdY=;
        b=OvUVbzEzWmtno/eDQEDd8kclbfaxL8n+4M0viadNl4FmzTJkX53qjoV+7VDWEFnF1I
         21YNY4OkZBCnn5WmZ2qZOd63Z9EJUoCgmFvAJ6SeslZy50jVuygiQcepEAQtR8139qMk
         VIUd2mte5Dz05IZoC2EhVP+jcmTMBaxdToa93gtBQ+tLwtBanO+h72CKk2fmmgxGdFq/
         JzPNvJKZY7BieryFpRYI/W0JlBcYJoNXImtT73rW2jtxzva584KlfmdrOcybxJ0Ts3Y9
         k/Xhz3OJ7K30gKp5fVXO0Ii6JLRPmIq79S8FjeFp3TRckObrAS2u0IvLX88NODsroH/3
         f7aQ==
X-Gm-Message-State: AD7BkJI7U/3bngskHOCE66Cx7j9eDMMlyMkJj0S6WIWHtDcp2xHB0lp94BI+NM1Er4zVlNT7l6Fr7eUeEB+XXA==
MIME-Version: 1.0
X-Received: by 10.50.142.103 with SMTP id rv7mr7173966igb.35.1458796190838;
 Wed, 23 Mar 2016 22:09:50 -0700 (PDT)
Received: by 10.79.92.199 with HTTP; Wed, 23 Mar 2016 22:09:50 -0700 (PDT)
In-Reply-To: <20160324025609.GB19662@kroah.com>
References: <CAGLzxAr5=CPi-K9rsLHwqgKhmj=1jVHygQ3NHi=EZMcpGWQTUg@mail.gmail.com>
	<20160322211338.GA9367@kroah.com>
	<CAGLzxArcwTX1VnkSQs=wr_hpB=uoKPcPQ-WVMZXCDc1M8ZAmOg@mail.gmail.com>
	<20160324025609.GB19662@kroah.com>
Date: Wed, 23 Mar 2016 22:09:50 -0700
Message-ID: <CAGLzxAo=DPVr5+DEFxqxdMWRqGEVWkt_9dTHCLEMfrCiSnE9oA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: add more
 information to Kconfig
From: Angel Orejel <deutschluz@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, sveta.orlik.code@gmail.com, 
	Alison Schofield <amsfield22@gmail.com>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a11c3d4f4c136ba052ec4748c

--001a11c3d4f4c136ba052ec4748c
Content-Type: text/plain; charset=UTF-8

I can fix this but I need some clarification about your question. Should I
delete those untracked files? The top two will be gone because I piped the
output of checkpatch to them, but the bottom two might have been put there
after running the command 'make -j2'. Can I just delete those? or use 'git
checkout'. may be I could use 'git stash'?
Also, about the fact that my patch has html in it: I ve been sending the
patch to my gmail from evolution and then from my gmail to whoever. So i
think i ll just skip that part and send from evolution. I think that should
fix that.

On Wed, Mar 23, 2016 at 7:56 PM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Wed, Mar 23, 2016 at 04:34:28PM -0700, Angel Orejel wrote:
>
> <snip>
>
> For some reason you sent this only to me, which is a bit rude to
> everyone else on the mailing list.  I'll be glad to respond if you
> resend it to everyone.
>
> thanks,
>
> greg k-h
>

--001a11c3d4f4c136ba052ec4748c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I can fix this but I need some clarification about yo=
ur question. Should I delete those untracked files? The top two will be gon=
e because I piped the output of checkpatch to them, but the bottom two migh=
t have been put there after running the command &#39;make -j2&#39;. Can I j=
ust delete those? or use &#39;git checkout&#39;. may be I could use &#39;gi=
t stash&#39;?=C2=A0</div><div>Also, about the fact that my patch has html i=
n it: I ve been sending the patch to my gmail from evolution and then from =
my gmail to whoever. So i think i ll just skip that part and send from evol=
ution. I think that should fix that.</div></div><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On Wed, Mar 23, 2016 at 7:56 PM, Greg KH <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"=
_blank">gregkh@linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">On Wed, Mar 23, 2016 at 04:34:28PM -0700, Angel Orejel wrot=
e:<br>
<br>
&lt;snip&gt;<br>
<br>
For some reason you sent this only to me, which is a bit rude to<br>
everyone else on the mailing list.=C2=A0 I&#39;ll be glad to respond if you=
<br>
resend it to everyone.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div>

--001a11c3d4f4c136ba052ec4748c--


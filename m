X-GM-THRID: 6264811554202451968
X-Received: by 10.140.93.110 with SMTP id c101mr3710864qge.28.1458891539373;
        Fri, 25 Mar 2016 00:38:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.136 with SMTP id o8ls1377357qge.46.gmail; Fri, 25 Mar
 2016 00:38:58 -0700 (PDT)
X-Received: by 10.159.36.8 with SMTP id 8mr7799450uaq.13.1458891538560;
        Fri, 25 Mar 2016 00:38:58 -0700 (PDT)
Return-Path: <deutschluz@gmail.com>
Received: from mail-io0-x22a.google.com (mail-io0-x22a.google.com. [2607:f8b0:4001:c06::22a])
        by gmr-mx.google.com with ESMTPS id ei9si256439igc.2.2016.03.25.00.38.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Mar 2016 00:38:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of deutschluz@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) client-ip=2607:f8b0:4001:c06::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of deutschluz@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) smtp.mailfrom=deutschluz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22a.google.com with SMTP id m184so107313026iof.1
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Mar 2016 00:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=0uhQuUtIBLeaNH1UtDQXD/m2K1o+Z27PrfoaKN8I7e8=;
        b=J8iWy6vs7fZ7GjnNt04anV7QoWoWVRO5ZUTQuIU9dX0upnT4QFTpWN1BciQ1gn1Yig
         QTi6/KLPLyu3WIO9J/Aj5WcIJNmsqZirZTEsFmE3DDc8FsdKpD8Lt4Et5S2ipEQU4FTF
         FiKSBZSw40Gw5MDog/OkDrSU5mte9/1IkBFXNii0sxeQiJzsWjI9Vgav/OHhiix8BZxI
         GZbVWDK2Dh6tk0li4XDmpnvm3A885idZ7PR5jmhynnL3VoRiHrfWFUN1f2M1TtY71kwB
         BQGLvbOsS2KNZJOeiO0a4sOhfaSyAKLMFx43emj+EwA0JoeooJ+eigWnwB/Bt8C/bLU5
         ZWug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=0uhQuUtIBLeaNH1UtDQXD/m2K1o+Z27PrfoaKN8I7e8=;
        b=eY33Eee1JkRHZlGgms8xZ54tWeyqegxJrVacHHSPZRP6psjK+t51slAPntG9f1uyAz
         BlQ1y+6K9Oh2DZZr+JXv4Isu7tcyqMP32JEsp6gdHKU7Bu3HeYr75CPuszO6DDvtvyJb
         ZE9ACZAOCl0+T0sHVoHG2x9KSU2nKP7nHDyoJQpmlRDhTVJ/ZEI0jpzgQ6bzQwjl/ycD
         y1zF/UtZNKhXv1WLi0iRw+UfH3oCPGhRs+JN5YgP5ai/PgFUlOezXmAkOVAdk5U8QTpv
         1Z4d19t/NdfPdov1EYjmmymEI0B/vgcFSNnGspgsYejmT0NoL4KX6QptDu6Dd3Qv85nE
         T4Fw==
X-Gm-Message-State: AD7BkJJtdIM3fxDJvETP3cqV7z6pSXlHbjH9zevKPWPA2blVS14EXLdojl1lcDPvghslVAo9nemIf6rH7awDZw==
MIME-Version: 1.0
X-Received: by 10.107.38.201 with SMTP id m192mr12253321iom.2.1458891538344;
 Fri, 25 Mar 2016 00:38:58 -0700 (PDT)
Received: by 10.79.92.199 with HTTP; Fri, 25 Mar 2016 00:38:58 -0700 (PDT)
In-Reply-To: <20160324135610.GB21239@kroah.com>
References: <CAGLzxAr5=CPi-K9rsLHwqgKhmj=1jVHygQ3NHi=EZMcpGWQTUg@mail.gmail.com>
	<20160322211338.GA9367@kroah.com>
	<CAGLzxArcwTX1VnkSQs=wr_hpB=uoKPcPQ-WVMZXCDc1M8ZAmOg@mail.gmail.com>
	<20160324025609.GB19662@kroah.com>
	<CAGLzxAo=DPVr5+DEFxqxdMWRqGEVWkt_9dTHCLEMfrCiSnE9oA@mail.gmail.com>
	<20160324135610.GB21239@kroah.com>
Date: Fri, 25 Mar 2016 00:38:58 -0700
Message-ID: <CAGLzxAoSgrpMx8Xt7y7uQSJB=ZWCj059tHYBqqZug=mq-rMPHw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: add more
 information to Kconfig
From: Angel Orejel <deutschluz@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: sveta.orlik.code@gmail.com, Alison Schofield <amsfield22@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114073a2e8b719052edaa7fc

--001a114073a2e8b719052edaa7fc
Content-Type: text/plain; charset=UTF-8

I am still very much interested in helping with the linux kernel. I didn't
know about this outreach thing till last saturday. That was part of the
reason I avoided mutt till now. I had to do a lot of googling to get to
work. But whatever, it works.
GREG: So do I still send this patch to you? or is there another maintainer?

On Thu, Mar 24, 2016 at 6:56 AM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Wed, Mar 23, 2016 at 10:09:50PM -0700, Angel Orejel wrote:
> > I can fix this but I need some clarification about your question. Should
> I
> > delete those untracked files? The top two will be gone because I piped
> the
> > output of checkpatch to them, but the bottom two might have been put
> there
> > after running the command 'make -j2'. Can I just delete those? or use
> 'git
> > checkout'. may be I could use 'git stash'?
>
> I don't understand this at all, 'git stash' is not for making a patch,
> when you create it, those # lines will not be in the changelog comments,
> how they showed up in your patch is very odd.
>
> Try working through the tutorial again to figure out the steps that are
> needed for this.
>
> > Also, about the fact that my patch has html in it: I ve been sending the
> patch
> > to my gmail from evolution and then from my gmail to whoever. So i think
> i ll
> > just skip that part and send from evolution. I think that should fix
> that.
>
> Just use mutt :)
>
> thanks,
>
> greg k-h
>

--001a114073a2e8b719052edaa7fc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am still very much interested in helping with the linux =
kernel. I didn&#39;t know about this outreach thing till last saturday. Tha=
t was part of the reason I avoided mutt till now. I had to do a lot of goog=
ling to get to work. But whatever, it works.=C2=A0<div>GREG: So do I still =
send this patch to you? or is there another maintainer?</div></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Mar 24, 2016 at 6=
:56 AM, Greg KH <span dir=3D"ltr">&lt;<a href=3D"mailto:gregkh@linuxfoundat=
ion.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><span class=3D"">On Wed, Mar 23, 2016 at=
 10:09:50PM -0700, Angel Orejel wrote:<br>
&gt; I can fix this but I need some clarification about your question. Shou=
ld I<br>
&gt; delete those untracked files? The top two will be gone because I piped=
 the<br>
&gt; output of checkpatch to them, but the bottom two might have been put t=
here<br>
&gt; after running the command &#39;make -j2&#39;. Can I just delete those?=
 or use &#39;git<br>
&gt; checkout&#39;. may be I could use &#39;git stash&#39;?=C2=A0<br>
<br>
</span>I don&#39;t understand this at all, &#39;git stash&#39; is not for m=
aking a patch,<br>
when you create it, those # lines will not be in the changelog comments,<br=
>
how they showed up in your patch is very odd.<br>
<br>
Try working through the tutorial again to figure out the steps that are<br>
needed for this.<br>
<span class=3D""><br>
&gt; Also, about the fact that my patch has html in it: I ve been sending t=
he patch<br>
&gt; to my gmail from evolution and then from my gmail to whoever. So i thi=
nk i ll<br>
&gt; just skip that part and send from evolution. I think that should fix t=
hat.<br>
<br>
</span>Just use mutt :)<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div>

--001a114073a2e8b719052edaa7fc--


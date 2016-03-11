X-GM-THRID: 6260883531997642752
X-Received: by 10.107.135.101 with SMTP id j98mr8816765iod.2.1457730072014;
        Fri, 11 Mar 2016 13:01:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.40.196 with SMTP id o187ls1339583ioo.94.gmail; Fri, 11 Mar
 2016 13:01:11 -0800 (PST)
X-Received: by 10.50.112.232 with SMTP id it8mr3530722igb.9.1457730071660;
        Fri, 11 Mar 2016 13:01:11 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-vk0-x22c.google.com (mail-vk0-x22c.google.com. [2607:f8b0:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id b196si315241vkf.1.2016.03.11.13.01.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:01:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400c:c05::22c as permitted sender) client-ip=2607:f8b0:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400c:c05::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x22c.google.com with SMTP id e185so148678059vkb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 13:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=6Gx0zcp8HgZlEnyp5Ej+5D9bDJacIAwV3FTXSZf3PLg=;
        b=gun+5O51CpFGgDuKyfaiXTvNwRgMP7KI8pZFpsku4r6UcRJLbwYEcMVL3XwJsl/1sr
         YoYIkDkbrZT8vWau4hFfQwZtxLlwn0NDK7vEijqgd+dFRGPB+p2w6FWPwm4xfHn/F6Du
         JMep9ZDUW9vfYyBds9wVqMLpneILMxOCWVU6WEiFNnakThle04H8ze8foj/+G71nMdli
         uIwHEyzPFkHfyrfnbCaoPRqAE8yBZja7JnI0rgUH1FOOHcZArziswook7hsr/5hcurqS
         8wwZvc9ElmhwSiptKdZcqEHemomgJ5SozXcFykoHqbROOdiVAzqnDsllKm56xrNp+xJt
         g6mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=6Gx0zcp8HgZlEnyp5Ej+5D9bDJacIAwV3FTXSZf3PLg=;
        b=evbROYjGnR2x6cOJcQynmU8GfvNQcPZmxIIqDd1GRjXc/bKxwYOqe64RCEVL4o6ZPY
         VmMbrlcKUVFUMFaTkj7uwd7c2PGobwzjZLVQIq7TdmvbezMsdyZy/T/rpHsvjCVRjJ+b
         vpyFyFGBTLqaxOQuqFBJzGEKUi5kw7u5Y1iE2eJMtf9H7ji85+Q7baEFNfpuCmn+468F
         U2sef5SFyiCqDAKfiwasrNxepJujZ1NWP9sGnkM57DmfG8Snr4TkIIlcUCh5ycH49AgN
         uEeYV7jqyabWI8cQ6xecYA+VaCXiwcDhdYFHy/KWeYG5CXcVWFSTYCnVOZDiAVOJhoD0
         4icA==
X-Gm-Message-State: AD7BkJJ2XqhfIpvr2+ZtDlWI+ZXxXa9h1SE+Sw9dFSGXmRQxStHp+khY7rcXz4sTlp5XoxV2HXFkk/bP0YOBkg==
X-Received: by 10.31.58.83 with SMTP id h80mr11813842vka.149.1457730071483;
 Fri, 11 Mar 2016 13:01:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.40.199 with HTTP; Fri, 11 Mar 2016 13:00:31 -0800 (PST)
In-Reply-To: <20160311194540.GP24046@htj.duckdns.org>
References: <CAFNHFT83c__ZmX+3tt7ioh9q8i+OB4zkAcCp2gH3yobb4Ui9TA@mail.gmail.com>
 <20160311194540.GP24046@htj.duckdns.org>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Sat, 12 Mar 2016 02:30:31 +0530
Message-ID: <CAFNHFT91oA0UvUMZK+xLsOmOoxprp4_VHJ6Hhd5mfYu=5DqLVw@mail.gmail.com>
Subject: Re: Workqueue tasks
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114389d416dc9d052dcc3b30

--001a114389d416dc9d052dcc3b30
Content-Type: text/plain; charset=UTF-8

Hello Tejun,

Thank you for your reply.
I'm working on the file staging/rtl8712/usb_intf.c. I have found 3
workitems sharing system_wq (viz
pwrpriv->SetPSModeWorkItem,pwrpriv->SetPSModeWorkItem,pLed->BlinkWorkItem)
I'm  planning to use cancel_delayed_work() for each of these workitems to
flush them individually and make these calls in their corresponding
unregister functions .
I'm unsure about the placement of the calls to cancel_delayed_work(). Can
you please guide me.

Thanks,
Bhaktipriya

On Sat, Mar 12, 2016 at 1:15 AM, Tejun Heo <tj@kernel.org> wrote:

> (cc'ing mailing list)
>
> Hello, Bhaktipriya.
>
> Sorry about the delay.  I was really buried recently.  I should be
> able to stay a lot more responsive from now on.
>
> On Sun, Mar 06, 2016 at 09:45:50AM +0530, Bhaktipriya Shridhar wrote:
> > I'm really interested in  working for the workqueue project . Can you
> > please give me more workqueue tasks.
>
> I forgot to write up about this but one workqueue task to do is
> getting rid of flush_scheduled_work().  It doesn't make sense to flush
> system_wq as one doesn't know what could be running there.  There
> aren't too many flush_scheduled_work() users left but there are three
> under drivers/staging.
>
> I'll write up more about it later but here's the outline.
>
> * If there are finite number of work items to be flushed, instead of
>   flushing system_wq, flushing each work item should be fine.
>
> * If there are a lot of work items to flush or work items are dynamic,
>   creating a dedicated workqueue, putting work items there, and
>   flushing that workqueue should do.
>
> Thanks!
>
> --
> tejun
>

--001a114389d416dc9d052dcc3b30
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello Tejun,<br><br></div>Thank you fo=
r your reply. <br></div>I&#39;m working on the file staging/rtl8712/usb_int=
f.c. I have found 3 workitems sharing system_wq (viz pwrpriv-&gt;SetPSModeW=
orkItem,pwrpriv-&gt;SetPSModeWorkItem,pLed-&gt;BlinkWorkItem)<br><span clas=
s=3D"">I&#39;m=C2=A0 planning to use cancel_delayed_work() for each of thes=
e workitems to flush them individually and make these calls in their corres=
ponding unregister functions . <br>I&#39;m unsure about the placement of th=
e calls to </span><span class=3D"">cancel_delayed_work().</span> Can you pl=
ease guide me. <br><br></div>Thanks,<br></div>Bhaktipriya<br></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, Mar 12, 2016 at 1=
:15 AM, Tejun Heo <span dir=3D"ltr">&lt;<a href=3D"mailto:tj@kernel.org" ta=
rget=3D"_blank">tj@kernel.org</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">(cc&#39;ing mailing list)<br>
<br>
Hello, Bhaktipriya.<br>
<br>
Sorry about the delay.=C2=A0 I was really buried recently.=C2=A0 I should b=
e<br>
able to stay a lot more responsive from now on.<br>
<br>
On Sun, Mar 06, 2016 at 09:45:50AM +0530, Bhaktipriya Shridhar wrote:<br>
&gt; I&#39;m really interested in=C2=A0 working for the workqueue project .=
 Can you<br>
&gt; please give me more workqueue tasks.<br>
<br>
I forgot to write up about this but one workqueue task to do is<br>
getting rid of flush_scheduled_work().=C2=A0 It doesn&#39;t make sense to f=
lush<br>
system_wq as one doesn&#39;t know what could be running there.=C2=A0 There<=
br>
aren&#39;t too many flush_scheduled_work() users left but there are three<b=
r>
under drivers/staging.<br>
<br>
I&#39;ll write up more about it later but here&#39;s the outline.<br>
<br>
* If there are finite number of work items to be flushed, instead of<br>
=C2=A0 flushing system_wq, flushing each work item should be fine.<br>
<br>
* If there are a lot of work items to flush or work items are dynamic,<br>
=C2=A0 creating a dedicated workqueue, putting work items there, and<br>
=C2=A0 flushing that workqueue should do.<br>
<br>
Thanks!<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
tejun<br>
</font></span></blockquote></div><br></div>

--001a114389d416dc9d052dcc3b30--


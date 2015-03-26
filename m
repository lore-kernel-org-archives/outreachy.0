X-GM-THRID: 9881078726656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,dd95e5ef2cc5e81
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.202.66 with SMTP id c42mr15784057yho.18.1427371802429;
        Thu, 26 Mar 2015 05:10:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.52.194 with SMTP id v2ls606409obo.21.gmail; Thu, 26 Mar
 2015 05:10:02 -0700 (PDT)
X-Received: by 10.182.22.68 with SMTP id b4mr16138236obf.31.1427371802094;
        Thu, 26 Mar 2015 05:10:02 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-ig0-x22b.google.com (mail-ig0-x22b.google.com. [2607:f8b0:4001:c05::22b])
        by gmr-mx.google.com with ESMTPS id e4si1418937igt.3.2015.03.26.05.10.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 05:10:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:4001:c05::22b as permitted sender) client-ip=2607:f8b0:4001:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:4001:c05::22b as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22b.google.com with SMTP id qf9so51034324igb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 05:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=e/71rGoXQ8ylwsv0zjgl5vPVHwMcsidoZqzkFaXonV4=;
        b=zhXbNj9HvvxWNZPg10/SagGKg0B3doebmsWnr9pShUAZ6U/ZFgC3czvvJ9z7y18SRS
         m2H07h0//kbIUckd47w+/WV2r3fP3GzRPSVXTr1qJXP9O/cZIv5zH9yfXo16Mw+sqcGZ
         JXnSlT1WzkXxOjeYYAFf62XGtnMctChwuDsbZ91vJamqgn2KW5gun4kX7ihHqOCt7G0/
         P9IupsUSNyoIBWWwy4WSATqeyex5pGHQlqtXAxwgb/S5nIp+lgakkYa7HPM7pPka8O9+
         2XwcgLhcm2swULp4tKwG4L1aXYJxRxWqwA3VbHeTg0FtEX8OfLjAn04lxRyKVVZWAweB
         Gtrg==
X-Received: by 10.50.43.138 with SMTP id w10mr36280267igl.19.1427371801766;
 Thu, 26 Mar 2015 05:10:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.82.85 with HTTP; Thu, 26 Mar 2015 05:09:41 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1503260732230.2066@localhost6.localdomain6>
References: <1427328162-6345-1-git-send-email-helen.fornazier@gmail.com> <alpine.DEB.2.02.1503260732230.2066@localhost6.localdomain6>
From: Helen Fornazier <helen.fornazier@gmail.com>
Date: Thu, 26 Mar 2015 09:09:41 -0300
Message-ID: <CAPW4XYYu3mfqW42rJU98SLv2yVAhiKemmw1x3KHFTejPEm-grg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: i2o: Remove indentation of labels
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e01176c7f34f45a05122fe566

--089e01176c7f34f45a05122fe566
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 26, 2015 at 3:33 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> i2o is on the way out of the kernel.  So there is no point to mae patches
> on it.  You can find the list of the directories to avoid in the tutorial,
> in the section Find a driver to clean up.
>
> julia
>

Sorry about that, I've read that list but I completely forgot about it.


>
> On Wed, 25 Mar 2015, Helen Fornazier wrote:
>
> > This patch fixes the checkpatche.pl warnings:
> >
> > WARNING: labels should not be indented
> > +      context_remove:
> >
> > WARNING: labels should not be indented
> > +      nop_msg:
> >
> > WARNING: labels should not be indented
> > +      exit:
> >
> > Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
> > ---
> >  drivers/staging/i2o/i2o_block.c | 24 ++++++++++++------------
> >  1 file changed, 12 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/staging/i2o/i2o_block.c
> b/drivers/staging/i2o/i2o_block.c
> > index 7784787..406758f 100644
> > --- a/drivers/staging/i2o/i2o_block.c
> > +++ b/drivers/staging/i2o/i2o_block.c
> > @@ -871,13 +871,13 @@ static int i2o_block_transfer(struct request *req)
> >
> >       return 0;
> >
> > -      context_remove:
> > +context_remove:
> >       i2o_cntxt_list_remove(c, req);
> >
> > -      nop_msg:
> > +nop_msg:
> >       i2o_msg_nop(c, msg);
> >
> > -      exit:
> > +exit:
> >       return rc;
> >  };
> >
> > @@ -1002,13 +1002,13 @@ static struct i2o_block_device
> *i2o_block_device_alloc(void)
> >
> >       return dev;
> >
> > -      cleanup_queue:
> > +cleanup_queue:
> >       put_disk(gd);
> >
> > -      cleanup_dev:
> > +cleanup_dev:
> >       kfree(dev);
> >
> > -      exit:
> > +exit:
> >       return ERR_PTR(rc);
> >  };
> >
> > @@ -1115,10 +1115,10 @@ static int i2o_block_probe(struct device *dev)
> >
> >       return 0;
> >
> > -      claim_release:
> > +claim_release:
> >       i2o_device_claim_release(i2o_dev);
> >
> > -      exit:
> > +exit:
> >       return rc;
> >  };
> >
> > @@ -1187,16 +1187,16 @@ static int __init i2o_block_init(void)
> >
> >       return 0;
> >
> > -      unregister_blkdev:
> > +unregister_blkdev:
> >       unregister_blkdev(I2O_MAJOR, "i2o_block");
> >
> > -      free_mempool:
> > +free_mempool:
> >       mempool_destroy(i2o_blk_req_pool.pool);
> >
> > -      free_slab:
> > +free_slab:
> >       kmem_cache_destroy(i2o_blk_req_pool.slab);
> >
> > -      exit:
> > +exit:
> >       return rc;
> >  };
> >
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1427328162-6345-1-git-send-email-helen.fornazier%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>



-- 
Helen Fornazier

--089e01176c7f34f45a05122fe566
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Mar 26, 2015 at 3:33 AM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">i2o is on the way =
out of the kernel.=C2=A0 So there is no point to mae patches<br>
on it.=C2=A0 You can find the list of the directories to avoid in the tutor=
ial,<br>
in the section Find a driver to clean up.<br>
<br>
julia<br></blockquote><div><br></div><div>Sorry about that, I&#39;ve read t=
hat list but I completely forgot about it.</div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Wed, 25 Mar 2015, Helen Fornazier wrote:<br>
<br>
&gt; This patch fixes the <a href=3D"http://checkpatche.pl" target=3D"_blan=
k">checkpatche.pl</a> warnings:<br>
&gt;<br>
&gt; WARNING: labels should not be indented<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 context_remove:<br>
&gt;<br>
&gt; WARNING: labels should not be indented<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 nop_msg:<br>
&gt;<br>
&gt; WARNING: labels should not be indented<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 exit:<br>
&gt;<br>
&gt; Signed-off-by: Helen Fornazier &lt;<a href=3D"mailto:helen.fornazier@g=
mail.com">helen.fornazier@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/i2o/i2o_block.c | 24 ++++++++++++------------<br=
>
&gt;=C2=A0 1 file changed, 12 insertions(+), 12 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/i2o/i2o_block.c b/drivers/staging/i2o/i2o=
_block.c<br>
&gt; index 7784787..406758f 100644<br>
&gt; --- a/drivers/staging/i2o/i2o_block.c<br>
&gt; +++ b/drivers/staging/i2o/i2o_block.c<br>
&gt; @@ -871,13 +871,13 @@ static int i2o_block_transfer(struct request *re=
q)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 context_remove:<br>
&gt; +context_remove:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0i2o_cntxt_list_remove(c, req);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 nop_msg:<br>
&gt; +nop_msg:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0i2o_msg_nop(c, msg);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 exit:<br>
&gt; +exit:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return rc;<br>
&gt;=C2=A0 };<br>
&gt;<br>
&gt; @@ -1002,13 +1002,13 @@ static struct i2o_block_device *i2o_block_devi=
ce_alloc(void)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return dev;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 cleanup_queue:<br>
&gt; +cleanup_queue:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0put_disk(gd);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 cleanup_dev:<br>
&gt; +cleanup_dev:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0kfree(dev);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 exit:<br>
&gt; +exit:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(rc);<br>
&gt;=C2=A0 };<br>
&gt;<br>
&gt; @@ -1115,10 +1115,10 @@ static int i2o_block_probe(struct device *dev)=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 claim_release:<br>
&gt; +claim_release:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0i2o_device_claim_release(i2o_dev);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 exit:<br>
&gt; +exit:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return rc;<br>
&gt;=C2=A0 };<br>
&gt;<br>
&gt; @@ -1187,16 +1187,16 @@ static int __init i2o_block_init(void)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 unregister_blkdev:<br>
&gt; +unregister_blkdev:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unregister_blkdev(I2O_MAJOR, &quot;i2o_block=
&quot;);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 free_mempool:<br>
&gt; +free_mempool:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mempool_destroy(i2o_blk_req_pool.pool);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 free_slab:<br>
&gt; +free_slab:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0kmem_cache_destroy(i2o_blk_req_pool.slab);<b=
r>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 exit:<br>
&gt; +exit:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return rc;<br>
&gt;=C2=A0 };<br>
&gt;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1427328162-6345-1-git-send-email-helen.for=
nazier%40gmail.com" target=3D"_blank">https://groups.google.com/d/msgid/out=
reachy-kernel/1427328162-6345-1-git-send-email-helen.fornazier%40gmail.com<=
/a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature">Helen Fornazier<br></div>
</div></div>

--089e01176c7f34f45a05122fe566--


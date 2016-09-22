X-GM-THRID: 6332957936966434816
X-Received: by 10.176.2.146 with SMTP id 18mr619153uah.12.1474584245811;
        Thu, 22 Sep 2016 15:44:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.10 with SMTP id 10ls7998333oty.10.gmail; Thu, 22 Sep
 2016 15:44:05 -0700 (PDT)
X-Received: by 10.157.39.112 with SMTP id r103mr850808ota.68.1474584245442;
        Thu, 22 Sep 2016 15:44:05 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id si10si1274901pab.1.2016.09.22.15.44.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 15:44:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id i5so1023414pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 15:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4fWjW+ZajjM7PdklgGNeQo1wlTRILvEBaoKinpS/g80=;
        b=O0O7cwPIBPSuS8gG+x2S/Rta8E4YSrVmqjpfxxAjYGuKhUmE7tT3q8VTGNOSs4y1NP
         UvRBTesMKaGZQlIX/U/v2ihmnikLsEDZ92aftuBg9lWNBPpU+6P1XwLOdyhAxIrIjgSb
         Q86Y/9rXOqh62OhLPGdXHvOZ8XYc3WfK8raL8pbhpg2SwdcW3DHgnQnRMtiz1AnRvN6v
         qe/vuCWD+XevhVXAZojc0e7RtIU7BF5vJwCN6PTqrTM01oAIFfvBz4LVsgc+kYMjys9h
         1xkWX5FaprT6ydrrKj31jR+vi/wJGuxSuiZL46ipIMGRMQBXYe6X6c34iJU5W2Jfsz6I
         eNaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4fWjW+ZajjM7PdklgGNeQo1wlTRILvEBaoKinpS/g80=;
        b=HMlf6Q/YcdgGEhe68yZR2/umv1jqWG5PdmwWHzbPrhCkNKGwtcaVPAAf8DyBKYoHYM
         8+C21ivSkLNONYnN0jZ3P+SThO5hpE2wiWjmtPocNpTpA41wezhqx/wltsFS00OpnAEw
         mMHZ7A4GXsCS1g6re9fX0cqvOT9H2OlmKqaExd5Upk9JPwZCeTmRH6z5ODDfReUPz7rx
         RtdMfzl7tzCbJ8O5GlfMH7FH/IFrIsm+T5QAOBSbe1FH/ebwpUyHbcy+EoYbxw65jwdz
         k8Cvi1W4cl849vcVx1vwU9OH1XGXBYb8q1IgZt3bW49Qa1Qe3RJsEFSM5Umi/07DCgYA
         zDeQ==
X-Gm-Message-State: AE9vXwMqMH/2iCcuLKikxH/lDxZNcdPM+Fhne3fm99r0tVUCgGYmhraEpD++MBCY55RDrg==
X-Received: by 10.66.252.167 with SMTP id zt7mr7187676pac.93.1474584245228;
        Thu, 22 Sep 2016 15:44:05 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:3c2c:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id jh3sm6388891pac.16.2016.09.22.15.44.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 15:44:04 -0700 (PDT)
Date: Thu, 22 Sep 2016 15:43:40 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: julia.lawall@lip6.fr, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: dgnc: Break up long comment
Message-ID: <20160922224339.GC3579@localhost>
References: <20160922011045.GA3636@localhost>
 <alpine.DEB.2.10.1609220804360.3472@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609220804360.3472@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Sep 22, 2016 at 08:08:20AM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 21 Sep 2016, Elizabeth Ferdman wrote:
> 
> > This patch splits a long comment up into two lines; error found by checkpatch
> >
> > Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> > ---
> >  drivers/staging/dgnc/dgnc_neo.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> > index e794056..cb63351 100644
> > --- a/drivers/staging/dgnc/dgnc_neo.c
> > +++ b/drivers/staging/dgnc/dgnc_neo.c
> > @@ -996,7 +996,8 @@ static irqreturn_t neo_intr(int irq, void *voidbrd)
> >
> >   case UART_17158_TXRDY:
> >   /*
> > - * TXRDY interrupt clears after reading ISR register for the UART channel.
> > + * TXRDY interrupt clears after reading
> > + * ISR register for the UART channel.
> 
> The form of the patch is OK, but I don't think that he change is an
> improvement.  I guess it was one character over before, or something like
> that, because even with the added character at the front for the change,
> the line looks fine.  But the main problem with the change is that the
> lines now look visually similar in a way that doesn't correspond to the
> semantics of the comment.  One has the impression that there are two
> independent points, one about TXRDY and one about ISR, and that a period
> was incorrectly omitted at the end of the first line.  But this is not the
> case.  TXRDY is the subject and ISR is the object.
> 
> julia
> 
> >   */
> >
> >   /*
> > --
> > 2.1.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160922011045.GA3636%40localhost.
> > For more options, visit https://groups.google.com/d/optout.
> >

Julia, thanks for the feedback. It was caught by checkpatch, but it
wasn't even over 80 chars. I must have been looking at the bigger
number in vim. Since this shouldn't have been patched in the first
place, I'm not going to do any revising here. I'll just move on to
another one.

Elizabeth


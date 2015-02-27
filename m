X-GM-THRID: 4475579269120
X-Received: by 10.112.159.227 with SMTP id xf3mr2327225lbb.11.1425064414722;
        Fri, 27 Feb 2015 11:13:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.240.201 with SMTP id wc9ls180294wic.2.gmail; Fri, 27 Feb
 2015 11:13:32 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr709381wib.7.1425064412941;
        Fri, 27 Feb 2015 11:13:32 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id o3si170381wib.2.2015.02.27.11.13.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:13:32 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id w55so22203592wes.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=cQXpvP6PducPkKxo7o1L3JZjJF9NICsgyX6edTdBNwk=;
        b=WrMTsq7sbHCJ9RdtSEYMNfXqHW3SOIQdqWq2a06YJ7m6GqxiaehDX+e1A67XeX0EeL
         iAusAaQMlihyUpgw4045XClxq9pIaI3NX8vQVFAOLezI+SZ4frcximT6I1QwK56SGQZB
         04HFJ6Bhw35wQErJwg4HycWppTCCAoKN9wCWtBENPIFSKjwq9lxJMeqOmrnCN8CvYY0O
         Iy6gUplfqUZEqTid8p/JsI8pgJZ5o9Y3hkcANoy/+FL5HnmEV8VkBg644GGk1UNiH0i7
         pgfGlU/34GBFpysR39Mcm9ccVceQUlydZfVEhKpU1Jy73O27jN954mXRG8M4Z2TQT3Co
         Ahkw==
X-Received: by 10.180.21.162 with SMTP id w2mr9642361wie.42.1425064412844;
        Fri, 27 Feb 2015 11:13:32 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id 18sm7161027wjr.46.2015.02.27.11.13.31
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 11:13:32 -0800 (PST)
Date: Fri, 27 Feb 2015 21:13:18 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 14/24] staging: lustre: lov: remove
 unused variable
Message-ID: <20150227191318.GD31834@waves>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
 <8f04ef8c0696cbc93f0ec76b4860354d50fd0b88.1425035010.git.mahfouz.saif.elyazal@gmail.com>
 <alpine.DEB.2.10.1502271656040.2663@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1502271656040.2663@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 04:56:19PM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 27 Feb 2015, Aya Mahfouz wrote:
> 
> > This patch removes a variable that was simply used to
> > store the return value of a function call before
> > returning it.
> >
> > The issue was detected and resolved using the following
> > coccinelle script:
> >
> > @@
> > identifier len,f;
> > @@
> >
> > -int len;
> >  ... when != len
> >      when strict
> > -len =
> > +return
> >         f(...);
> > -return len;																																		Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/lov/lov_obd.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
> > index 2c6c558..9960b45 100644
> > --- a/drivers/staging/lustre/lustre/lov/lov_obd.c
> > +++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
> > @@ -314,7 +314,7 @@ static int lov_disconnect(struct obd_export *exp)
> >  {
> >  	struct obd_device *obd = class_exp2obd(exp);
> >  	struct lov_obd *lov = &obd->u.lov;
> > -	int i, rc;
> > +	int i;
> >
> >  	if (!lov->lov_tgts)
> >  		goto out;
> > @@ -340,8 +340,7 @@ static int lov_disconnect(struct obd_export *exp)
> >  	obd_putref(obd);
> >
> >  out:
> > -	rc = class_disconnect(exp); /* bz 9811 */
> > -	return rc;
> > +	return class_disconnect(exp);
> 
> The comment should probably be preserved.
> 
> julia
> 
Yes, you're totally right. I've managed it in another patch. Seems that
I wasn't diligent enough.
> >  }
> >
> >  /* Error codes:
> > --
> > 1.9.3
> >
> >
> > --
> > Kind Regards,
> > Aya Saif El-yazal Mahfouz
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8f04ef8c0696cbc93f0ec76b4860354d50fd0b88.1425035010.git.mahfouz.saif.elyazal%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz


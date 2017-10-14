X-GM-THRID: 6476685007232434176
X-Received: by 10.46.56.8 with SMTP id f8mr146278lja.21.1507973744819;
        Sat, 14 Oct 2017 02:35:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.4.83 with SMTP id 80ls1313531lje.17.gmail; Sat, 14 Oct 2017
 02:35:43 -0700 (PDT)
X-Received: by 10.46.23.70 with SMTP id l67mr146536lje.11.1507973743867;
        Sat, 14 Oct 2017 02:35:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507973743; cv=none;
        d=google.com; s=arc-20160816;
        b=EPJY/znDx5rhIzImKk39dWCovyQEJz8ay4qEHtLHy5isRObofCxSfFizWOfJVTXP9H
         1YQblK42MkNET7rqdOA4fhdMTh3/F//OSSlrsg8VNEs0IslZh+FxGwzqD7BEnIfKKKLD
         3tNS1+/7AcgJq3QGwJMApjMVTplNHp2q/5K4+QN2hPmFdN1IMlFfmlV3rcfuWL8I8LEe
         kiKKTOmwRx+B4zena6Jt34V/Fn+oWBO0hw45E+8sinOb1+GqnNJ1kq3RdCRb4jMYk29v
         HoyN1BHAVg0RvIwUP5MPkIAgPySL5EBelMUv4Gdgveqk5rrSlrpcNTTQD4IBnfFy0dlT
         6dQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=OWr2yaa0jUqkP255F9TFpkmb1IedZzJWJYZvdPErI9E=;
        b=0B4ME6ya5kTEhPaofkKlsevod43mczLX2fIHv1LlQiXudSESfnCP6bCr1ZHM0QYHYN
         /D+szWSk3VIQezJlRB7AXF0lpu3zmovzb7EI4fop6h+6dKasj206zoHbjT/41L9iBf9o
         YNlwaRiL6cgtJ2WBFZMx8j9Ei7BAjpe9f3mINiKPCQJ9L2RPyZuIHXbsPjID5Ya0yAQ8
         xRL+rlGu4DyyU+0F4cIoIHXNp/kqDM0cyF9J+BYgYsXQTNaC/xTEDTCdo5OyFbM5M1oH
         5wK3pNM78ODyrQwDomJHUzQazUuzyMLM/J6FouRWJ9sYaFsdDsn3cOkXH2nW9v6tET+K
         dPhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GowkhuqO;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id l14si146275lje.1.2017.10.14.02.35.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 02:35:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GowkhuqO;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id v91so1145915wrc.5
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 02:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OWr2yaa0jUqkP255F9TFpkmb1IedZzJWJYZvdPErI9E=;
        b=GowkhuqOX/7wdLq/9E38eR2FY18aDYM94YkPH2241rWyKvxU3n2iCacfG7DsLqnm+L
         x/Y7X46B9MrV1qCqJKyUwzdKUxjZMOifuyXCmxbrhmz3i+pvGtZCqgWvGJo4rYZFEoPT
         IyT4opBfNYmeTtDKYALG9Bd5G3RSIQIRcRfxzcTzJCW89RBLoujAa0m93jDFmYvxdU6G
         pKI9+JMkJwwukFYu7anPGYTIxp9+EBV8jwiHnm7WrTwJ04z0cUtEXLGEXTrpQlI9oLoT
         vSQ4p0bQIp5gg6tQ+8zeAMDvRa67orQkkmfTXZ84Mp4MLecvAoO6IVJlnT7b5JIBlmL/
         wbyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OWr2yaa0jUqkP255F9TFpkmb1IedZzJWJYZvdPErI9E=;
        b=rMHEsG2RDW7/s91ZJ3b/10dKw9zhu4N+df5rrckdqW868BdmQey2gOARtMQS3NxOoH
         2miYfnbE1RuJ8iqGPlMrFoAVuk9anhCQGyxmxWAF/yvWFp6BsR1pSYYSREbo+DaZzKqi
         FtWkARbmXytpZJko32fDSErM4Pq4q0YYHB4wQ4pLScAKhqLCU8qEB5aOiNBo5Sjmfm3t
         nSNcOHJfybwmh6DriSVS2N293oPo8g/0csw9NSGGeZ5J0cTchX/isWlz2QP1sdg/EeGD
         XAJxekfqsr+VN3r/ApQ7to5ioxkbkjtMoWNN7NPmpPKO1DOo7i4nkSbzH8dQxIIRqT5S
         Z3/A==
X-Gm-Message-State: AMCzsaWINfIxru+UZ6si2+zmI5vaZcP2TY1dqmLIEoebSgfC8s3byb/K
	nALdNScPxI+bXh7KtEBrWPk=
X-Google-Smtp-Source: AOwi7QCn3rC3lds3TR/XdQxsi4YslbSXcthiNmlTwm/5FxzP7KWcItMjMsvXCYjIXph5hNz/dfeaXw==
X-Received: by 10.223.133.4 with SMTP id 4mr3302429wrh.56.1507973743308;
        Sat, 14 Oct 2017 02:35:43 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id 200sm3967883wmu.44.2017.10.14.02.35.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 02:35:42 -0700 (PDT)
Date: Sat, 14 Oct 2017 12:35:41 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Remove
 unnecessary braces
Message-ID: <20171014093541.GB6039@domino-MS-16Y1>
References: <20171014084535.GA3681@domino-MS-16Y1>
 <alpine.DEB.2.20.1710141049350.19037@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1710141049350.19037@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 14, 2017 at 10:53:58AM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 14 Oct 2017, Mihaela Muraru wrote:
> 
> > Remove unnecessary braces for single statements.
> >
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > ---
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > index a96bae0..1c67e9a 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > @@ -209,9 +209,7 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
> >  	((struct vchiq_2835_state *)state->platform_state)->inited = 1;
> 
> These casts are not very nice, and having them over and over is worse.
> Maybe you could introduce a local variable with the right type.
> 
> julia

Thank you,

I take care of that.

Mihaela

> >  	status = vchiq_arm_init_state(state, &((struct vchiq_2835_state *)state->platform_state)->arm_state);
> >  	if (status != VCHIQ_SUCCESS)
> > -	{
> >  		((struct vchiq_2835_state *)state->platform_state)->inited = 0;
> > -	}
> >  	return status;
> >  }
> >
> > @@ -219,9 +217,7 @@ VCHIQ_ARM_STATE_T*
> >  vchiq_platform_get_arm_state(VCHIQ_STATE_T *state)
> >  {
> >  	if (!((struct vchiq_2835_state *)state->platform_state)->inited)
> > -	{
> >  		BUG();
> > -	}
> >  	return &((struct vchiq_2835_state *)state->platform_state)->arm_state;
> >  }
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171014084535.GA3681%40domino-MS-16Y1.
> > For more options, visit https://groups.google.com/d/optout.
> >


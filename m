X-GM-THRID: 6619380955766325248
X-Received: by 2002:a1c:e482:: with SMTP id b124-v6mr1525wmh.22.1541226857695;
        Fri, 02 Nov 2018 23:34:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f30d:: with SMTP id q13-v6ls106629wmq.12.canary-gmail;
 Fri, 02 Nov 2018 23:34:16 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dB3LrYaHfpPOfrDBSgGMvh8eccqADqDfSc43gP7GtPXBLGqgyz49w5tQay/2BK2rtbxHCf
X-Received: by 2002:a1c:b5c9:: with SMTP id e192-v6mr1504wmf.22.1541226856867;
        Fri, 02 Nov 2018 23:34:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541226856; cv=none;
        d=google.com; s=arc-20160816;
        b=tGJ7fA7+VgTU4mUHHJG8csbTv1LYMIRSvkRhOJmZXG+lBzsaphsGTP/U07zFYxByqQ
         PIEnT/0eP5jOzQFHu1DKK6e/repl/0Qf5eqhSt+SPLxrTXLmNijNhhoeRdxBLlxAgT0+
         SX9FoDuHfetlxaQcJ/Un+2Oj6nuHdbc+ranzZE/3F79TF/6KZU0TO22YCwDhHcLPtrZH
         tGYFFh6EDQrdlPk0naZr3Vy3b+LGrLccmsNerv6zQY+JFPFHS6GccWCVH5ZklDGQ22/K
         raIrG9KRr51pDf/YT5SrSGG5279stMoPBoRLKm90Y5+FHIZkWVtg9qlBsUyYXOgYC/r3
         r+fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3duZ4AbnkWv6WuiA9vIMa+4YPEbT7nqsNFIeVApYOQ8=;
        b=JqK9XuNWIwght/ne5sINe/leoAnHSaZjMzIWqe8nzlPWq5PeydHs9tNKm+a6D8BNgW
         nVlVwPVQwpQ8+n4StFk+cmD/VlDGY51hjxmF2pImsGLDnK9BWKToEAC+6Ni5qrbZN8qx
         5fT5PuwQGL0a7W4dQN/CXfCRco7cXq7/3Vw0ww9Ezs+r2sqJoXa7i6VTx+BvLi6Mtydz
         QrX3k3+SaaJhkLguMxbWUczTFUcU7rwxrx6RdWFHg4KaSvwJdod+mb1nzIBkiX5gyx2S
         oyU34107kR6ptxjtJx5QLJgPZthAt6PONcp3N1XMxvXXKzG1ZZVoQOLk7OdCACcCahXq
         5yNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z129-v6si694988wmc.0.2018.11.02.23.34.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 23:34:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,458,1534802400"; 
   d="scan'208";a="284220185"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2018 07:34:16 +0100
Date: Sat, 3 Nov 2018 07:34:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himanshu Jha <himanshujha199640@gmail.com>
cc: Ioannis Valasakis <code@wizofe.uk>, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3 5/5] staging: greybus Shorten
 comparison to NULL
In-Reply-To: <20181103063136.GE6145@himanshu-Vostro-3559>
Message-ID: <alpine.DEB.2.21.1811030733020.2922@hadrien>
References: <cover.1541194567.git.code@wizofe.uk> <1f66a183a15277e3fe96368d6165e1e601c87605.1541194567.git.code@wizofe.uk> <20181103063136.GE6145@himanshu-Vostro-3559>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Nov 2018, Himanshu Jha wrote:

> On Fri, Nov 02, 2018 at 09:39:44PM +0000, Ioannis Valasakis wrote:
> > Shorten pointer NULL check by simple truth test
> > Reported by checkpatch.
> >
> > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > ---
> >  drivers/staging/greybus/core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
> > index d28773e06838..0ed3b0ffee5a 100644
> > --- a/drivers/staging/greybus/core.c
> > +++ b/drivers/staging/greybus/core.c
> > @@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
> >  static const struct greybus_bundle_id *
> >  greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
> >  {
> > -	if (!id == NULL)
> > +	if (id)
>
> I don't think the original code was `if (!id == NULL)`

As Himanshu says, you need to start with Greg's tree.  If you don't feel
that you have the git commands down to do that, then just destroy your
tree and start over.

julia


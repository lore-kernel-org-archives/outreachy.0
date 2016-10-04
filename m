X-GM-THRID: 6337407610900185088
X-Received: by 10.159.54.227 with SMTP id p90mr304438uap.22.1475547634923;
        Mon, 03 Oct 2016 19:20:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.198 with SMTP id s64ls10974665otb.15.gmail; Mon, 03 Oct
 2016 19:20:34 -0700 (PDT)
X-Received: by 10.237.32.33 with SMTP id 30mr317771qta.24.1475547634562;
        Mon, 03 Oct 2016 19:20:34 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 80si631189pfw.0.2016.10.03.19.20.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 19:20:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 190so3711034pfv.1
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 19:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BjkfkprJ6sMrTZWLrltiPH64tkb5eI4pFeC4w/mE9x0=;
        b=ZlWZUkyE6LDOLdODFg1qOAez5NhLCfpgjFgc/PC6zA/RSKfLQctalhYrYjcVX8pqP6
         U/0svM834W3JZXL3Mn8iyFsYRlTurKlpj+G2wYS7dhSo5sKq2ek0mlmxYrEkPaP9lrWV
         T4vHqGbRqOp8aJTMxPPUjPfQeYdz7jwG3Fx5+IxVtrbMcZmA+zM+MTH17cVO16ycdUGS
         hUz8D7VisG3eSsWbMrcCx16WDQznIyLYnPEjXw0EhdaXPJmK9JKjgkqvIQ7e6pgQM3bU
         rbcJtruUlI5Zyfd8Yg8erm3dEaSrqZuDVKh+z7ETpgrKWN7T+MY6g7a3mmuYr7WRnFYh
         i7HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BjkfkprJ6sMrTZWLrltiPH64tkb5eI4pFeC4w/mE9x0=;
        b=TM93HRrk02hM6xmB9BDvsA9Qhmc2xPOXyRogQc1IBr2pnnpm9cUOf6asXuclK705LQ
         GSxIbuQB+YqNq2Ka3RGr2zx99RWibNLFWwMPbqw0KrAAWK5JTmCNeB1TRRQMnc0Ount2
         DbE213hvz89MWKPc2xdEr57bpzfYQlbhpd1gNTmBpuSUlMvN1JsaVrulfZ+S2ojy1v9D
         5JZM1c1f6GVLOcTgGRL6/gJ2lvDxSz8X4PYQUJ5WbsL9CggYd1v9LxSa/AfLnAtSqPgl
         cpV8e6ZbrLqDzgYpjwqapZClpR6aTHyEHOzL0p06+4yvxSKBbYiilWFARef4/wI5GSMm
         zllA==
X-Gm-Message-State: AA6/9RkvqG+PnT8Xd60uB0ts7Ab6aJ1aAKjeAR07RXQLj6GdPEALuJTIclmPbbAGm4vlDg==
X-Received: by 10.98.113.135 with SMTP id m129mr2013088pfc.41.1475547634348;
        Mon, 03 Oct 2016 19:20:34 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id m5sm760474paw.40.2016.10.03.19.20.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 19:20:34 -0700 (PDT)
Date: Mon, 3 Oct 2016 19:20:31 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Oleg Drokin <oleg.drokin@intel.com>
Cc: outreachy-kernel@googlegroups.com, amsfield22@gmail.com,
	daniel.baluta@intel.com, andreas.dilger@intel.com,
	jsimmons@infradead.org, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: lustre: move int literal to right side of
 comparison test
Message-ID: <20161004022031.GA7732@localhost>
References: <20161004005807.GA13033@localhost>
 <C9C47919-34D8-49D2-80AA-345EDD169236@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <C9C47919-34D8-49D2-80AA-345EDD169236@intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Oct 03, 2016 at 09:04:56PM -0400, Oleg Drokin wrote:
> 
> On Oct 3, 2016, at 8:58 PM, Elizabeth Ferdman wrote:
> 
> > Move the integer literal 0 to the right side of the comparison test
> > for improved readability.
> > 
> > Error caught by checkpatch: 
> > Constants should be placed on the right side of the comparison.
> > 
> > Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> > ---
> > drivers/staging/lustre/lustre/lov/lov_object.c | 8 ++++----
> > 1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/lustre/lustre/lov/lov_object.c b/drivers/staging/lustre/lustre/lov/lov_object.c
> > index 52f7363..49a288f 100644
> > --- a/drivers/staging/lustre/lustre/lov/lov_object.c
> > +++ b/drivers/staging/lustre/lustre/lov/lov_object.c
> > @@ -597,7 +597,7 @@ static const struct lov_layout_operations lov_dispatch[] = {
> > 	enum lov_layout_type		    __llt;		  \
> > 									\
> > 	__llt = __obj->lo_type;					 \
> > -	LASSERT(0 <= __llt && __llt < ARRAY_SIZE(lov_dispatch));	\
> > +	LASSERT(__llt >= 0 && __llt < ARRAY_SIZE(lov_dispatch));	\
> 
> Do you think this is more readable than the version before it?
> 
>  at least the previous one easily shows that:
> 0 <= llt < ARRAY_SIZE(lov_dispatch)
> 

Hey Oleg,
In my opinion, yes. I like reading from left to right rather than
staring at a compound inequality so to me it's
more readable. __llt is the important part, so the way I think is
__llt has to be greater than or equal to 0 and less than
arraysize(lov_dispatch). Obviously the compound way says the exact same
thing, but it doesn't read from left to right in the same way. 

Actually, it looks so much like a compound inequality that
I initially glossed over the && part and kept thinking, 'ok the left
side results in either 0 or 1, and that's supposed to be less than array
size?'... which I realize doesn't make sense, but that's just the way I
interpreted it initially. Then I looked at it again and saw the &&.

Lastly, since the rule is to put constants on the right side, I figured
that way is more readable because that's the standard way of doing it,
therefore it's more readable...as in, it conforms to the way the rest of
the code in the kernel looks, it's not necessarily better or worse.

Thanks for the reply,
Liz

> (same with the rest).
> 
> > 	lov_dispatch[__llt].op(__VA_ARGS__);			    \
> > })
> > 
> > @@ -652,7 +652,7 @@ do {								    \
> > 									\
> > 	lov_conf_freeze(__obj);						\
> > 	__llt = __obj->lo_type;					 \
> > -	LASSERT(0 <= __llt && __llt < ARRAY_SIZE(lov_dispatch));	\
> > +	LASSERT(__llt >= 0 && __llt < ARRAY_SIZE(lov_dispatch));	\
> > 	lov_dispatch[__llt].op(__VA_ARGS__);			    \
> > 	lov_conf_thaw(__obj);						\
> > } while (0)
> > @@ -700,11 +700,11 @@ static int lov_layout_change(const struct lu_env *unused,
> > 	struct lu_env *env;
> > 	int refcheck;
> > 
> > -	LASSERT(0 <= lov->lo_type && lov->lo_type < ARRAY_SIZE(lov_dispatch));
> > +	LASSERT(lov->lo_type >= 0 && lov->lo_type < ARRAY_SIZE(lov_dispatch));
> > 
> > 	if (conf->u.coc_md)
> > 		llt = lov_type(conf->u.coc_md->lsm);
> > -	LASSERT(0 <= llt && llt < ARRAY_SIZE(lov_dispatch));
> > +	LASSERT(llt >= 0 && llt < ARRAY_SIZE(lov_dispatch));
> > 
> > 	cookie = cl_env_reenter();
> > 	env = cl_env_get(&refcheck);
> > -- 
> > 2.1.4
> 


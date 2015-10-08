X-GM-THRID: 6202759012965941248
X-Received: by 10.140.150.206 with SMTP id 197mr3709925qhw.0.1444267575669;
        Wed, 07 Oct 2015 18:26:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.138 with SMTP id n10ls362212ioi.86.gmail; Wed, 07 Oct
 2015 18:26:15 -0700 (PDT)
X-Received: by 10.107.18.148 with SMTP id 20mr4074214ios.32.1444267575283;
        Wed, 07 Oct 2015 18:26:15 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id zg1si5466973pbb.2.2015.10.07.18.26.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 18:26:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ex6so37301402pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 18:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=mskctlzs+uXRQc91knxHUh1dEkOOUaVRoxnQ7HMqwTE=;
        b=WtYWlN7FdSJLQe7rd3fOtSdPHc+7BOifRq4JChFVtxwEdsu4RIEmSBCk/Htwld0lc7
         QQsn0NGxniTRdUNhDFcvbNzIfUDWrbcMHQUbSOrKhYjB+JIsoZOGp7XsjtTv79YUcGHn
         Xg/PoD0fZkGym4/vQzfv3+kZP0dQzhKgYCpXs+5qZDf9NhpyxZ3v2/Q0qMQAikV++6Sm
         aV2WOEz+shqy5cDw03yW7XNzgMG7B0U2Hf+sNNqi9XMZtvYHDXZ98MAbgnr+PqDwhy92
         011yjZuiHmUD1NGHOQlmKQUc5YaGlQ01oYCHmqSFT7GriuHc+kky6T2L/YfrNECL/ICz
         EFEg==
X-Received: by 10.67.23.165 with SMTP id ib5mr4679219pad.26.1444267575156;
        Wed, 07 Oct 2015 18:26:15 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu ([2601:647:4700:de30:8067:188f:6c60:7880])
        by smtp.gmail.com with ESMTPSA id po4sm41780869pbb.64.2015.10.07.18.26.14
        (version=TLS1_2 cipher=AES128-SHA256 bits=128/128);
        Wed, 07 Oct 2015 18:26:14 -0700 (PDT)
From: Deepa Dinamani <deepa.kernel@gmail.com>
X-Google-Original-From: Deepa Dinamani <deepa@deepa-ubuntu>
Date: Wed, 7 Oct 2015 18:26:12 -0700
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Deepa Dinamani <deepa.kernel@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: skein: remove extra
 indentation
Message-ID: <20151008012611.GA20044@deepa-ubuntu>
References: <20151007170600.GA24764@deepa-ubuntu>
 <alpine.DEB.2.10.1510072020130.2482@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1510072020130.2482@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 07, 2015 at 08:20:38PM +0100, Julia Lawall wrote:
> On Wed, 7 Oct 2015, Deepa Dinamani wrote:
> 
> > Remove second leading indent of code in do/while macro blocks.
> >
> > This patch fixes the checkpatch.pl warning:
> >
> > WARNING: suspect code indent for conditional statements
> >
> > Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> > ---
> >  drivers/staging/skein/skein_block.c | 40 ++++++++++++++++++-------------------
> >  1 file changed, 20 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/staging/skein/skein_block.c b/drivers/staging/skein/skein_block.c
> > index b0cd935..09d37d5 100644
> > --- a/drivers/staging/skein/skein_block.c
> > +++ b/drivers/staging/skein/skein_block.c
> > @@ -96,16 +96,16 @@ do { \
> >  #endif
> >  #define R256_8_ROUNDS(R)                                 \
> >  do {                                                     \
> 
> Could it be nicer to indent the do instead?
> 
> julia

Is reducing the size of the diff a primary goal, or is it a coding
style preference? Both approaches are used by other macros in this
same source file. Should they all be changed for consistency?

deepa

> > -		R256(0, 1, 2, 3, R_256_0, 8 * (R) + 1);  \
> > -		R256(0, 3, 2, 1, R_256_1, 8 * (R) + 2);  \
> > -		R256(0, 1, 2, 3, R_256_2, 8 * (R) + 3);  \
> > -		R256(0, 3, 2, 1, R_256_3, 8 * (R) + 4);  \
> > -		I256(2 * (R));                           \
> > -		R256(0, 1, 2, 3, R_256_4, 8 * (R) + 5);  \
> > -		R256(0, 3, 2, 1, R_256_5, 8 * (R) + 6);  \
> > -		R256(0, 1, 2, 3, R_256_6, 8 * (R) + 7);  \
> > -		R256(0, 3, 2, 1, R_256_7, 8 * (R) + 8);  \
> > -		I256(2 * (R) + 1);                       \
> > +	R256(0, 1, 2, 3, R_256_0, 8 * (R) + 1);  \
> > +	R256(0, 3, 2, 1, R_256_1, 8 * (R) + 2);  \
> > +	R256(0, 1, 2, 3, R_256_2, 8 * (R) + 3);  \
> > +	R256(0, 3, 2, 1, R_256_3, 8 * (R) + 4);  \
> > +	I256(2 * (R));                           \
> > +	R256(0, 1, 2, 3, R_256_4, 8 * (R) + 5);  \
> > +	R256(0, 3, 2, 1, R_256_5, 8 * (R) + 6);  \
> > +	R256(0, 1, 2, 3, R_256_6, 8 * (R) + 7);  \
> > +	R256(0, 3, 2, 1, R_256_7, 8 * (R) + 8);  \
> > +	I256(2 * (R) + 1);                       \
> >  } while (0)
> >
> >  #define R256_UNROLL_R(NN)                     \
> > @@ -187,16 +187,16 @@ do {                                                                      \
> >  #endif /* end of looped code definitions */
> >  #define R512_8_ROUNDS(R)  /* do 8 full rounds */                      \
> >  do {                                                                  \
> > -		R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_0, 8 * (R) + 1);   \
> > -		R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_1, 8 * (R) + 2);   \
> > -		R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_2, 8 * (R) + 3);   \
> > -		R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_3, 8 * (R) + 4);   \
> > -		I512(2 * (R));                              \
> > -		R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_4, 8 * (R) + 5);   \
> > -		R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_5, 8 * (R) + 6);   \
> > -		R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_6, 8 * (R) + 7);   \
> > -		R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_7, 8 * (R) + 8);   \
> > -		I512(2 * (R) + 1);        /* and key injection */     \
> > +	R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_0, 8 * (R) + 1);   \
> > +	R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_1, 8 * (R) + 2);   \
> > +	R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_2, 8 * (R) + 3);   \
> > +	R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_3, 8 * (R) + 4);   \
> > +	I512(2 * (R));                              \
> > +	R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_4, 8 * (R) + 5);   \
> > +	R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_5, 8 * (R) + 6);   \
> > +	R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_6, 8 * (R) + 7);   \
> > +	R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_7, 8 * (R) + 8);   \
> > +	I512(2 * (R) + 1);        /* and key injection */     \
> >  } while (0)
> >  #define R512_UNROLL_R(NN)                             \
> >  		((SKEIN_UNROLL_512 == 0 &&            \
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151007170600.GA24764%40deepa-ubuntu.
> > For more options, visit https://groups.google.com/d/optout.
> >


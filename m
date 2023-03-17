Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900DC65D
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 07:23:51 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id qe8-20020a17090b4f8800b0023f07253a2cso4273032pjb.3
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 00:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679037831;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JsYUkGowSnmJ/1uMCvwhqEIEN3OadlFrYmyaf3yFZoQ=;
        b=J+8p2XO1GOuKuomeoSL6gUjz4ocVuo32iBKvXIFxRaPg9jTcbMzVmIyzq45ywFG34R
         YTY+o8xG5nV+nuAVML9rfs+lHU/BWsdF6auCB2DgCdwdpUiQnZP7KZt+WBVBm3kVEjmZ
         mJQUXKxTfnYp6kaHnX2Tp1ouhkSIzC9+4327iGY/NrjiM9i8g3GkXnPWbD5d9JFTfCQ/
         9a2cwgVP9kLavVloYPLvkbvr7+VMPsjaRWC+/f4jci3Yk/vQb84oXmJvCWRVh/jCMYoJ
         /UjkcEwezlSvzKHeZrVNkEYi5DhkVX0/kJLAhuM7XjqFXMO1uwLHbrWw9H7EkZj8Lm8K
         FHxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679037831;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JsYUkGowSnmJ/1uMCvwhqEIEN3OadlFrYmyaf3yFZoQ=;
        b=GVOUxpjOTdwOyBISzBSQrPJsnfE66bc9PiVeSrTpFzgV+vRXYKMObDNni/I0EvRyex
         nIVEKA4gS8LstYx2UtVh9P1E3MgfpdAQHtIhFKr9HaGqkyBNl5k4UpZwTOXB4WkzEL+p
         45+nhUeLMtlFpy5LszGEUnEJU3ychHl5T0Hb8j4wnlvpZlGKujoFMhBKMiAF1W3EaWsa
         CHJegxGbrQGnZYo3FlvIvTUD6knsZJp4BOVIhsoKFziNjOM3cPJkMO5qzPCG4klcoaTz
         oosvDBzusgR8rbxc25VHvncwBafKvaYirW/IkuZ3krljuZh/PGMuDmYs5XoTzan2ZtLy
         TlzA==
X-Gm-Message-State: AO0yUKVIfTFsL8rSmp7e9gzGlsfWrLM+LnteQdT1x8bhul7K/X90Ynwu
	ewg7ND7Yr/e7PsSn90/EJ78x4HTcJFe0qw==
X-Google-Smtp-Source: AK7set9xjJnNZF9RTs75IOQMjQebP13pj5A9cetFgBfOL4aqojuQqElcYhZUwsDwWtQTQxMKpPuz8Q==
X-Received: by 2002:a17:902:c40c:b0:1a0:50bd:31c0 with SMTP id k12-20020a170902c40c00b001a050bd31c0mr7841034plk.24.1679037830933;
        Fri, 17 Mar 2023 00:23:50 -0700 (PDT)
Received: from sumitra.com ([14.139.226.12])
        by smtp.gmail.com with ESMTPSA id t20-20020a1709028c9400b001992fc0a8eesm847817plo.174.2023.03.17.00.23.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 00:23:50 -0700 (PDT)
Date: Fri, 17 Mar 2023 00:23:46 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Warn on macros with flow control statements
Message-ID: <20230317072346.GB83845@sumitra.com>
References: <20230316080834.GA43491@sumitra.com>
 <f1b47a95-7c16-44d3-b9f4-daeba3274d3@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f1b47a95-7c16-44d3-b9f4-daeba3274d3@inria.fr>

On Thu, Mar 16, 2023 at 09:26:31AM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 16 Mar 2023, Sumitra Sharma wrote:
> 
> >
> > Hi
> >
> > I am working on the below chechpatch.pl check
> >
> > WARNING: Macros with flow control statements should be avoided
> > #42: FILE: ./drivers/staging/qlge/qlge_devlink.c:42:
> > +#define FILL_SEG(seg_hdr, seg_regs)                                        \
> > +       do {                                                                \
> > +               err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
> > +               if (err) {                                                  \
> > +                       kvfree(dump);                                       \
> > +                       return err;                                         \
> > +               }                                                           \
> > +       } while (0)
> >
> >
> > I was trying to change this macro into an inline function like this
> >
> > static inline int FILL_SEG(struct devlink_fmsg *fmsg, struct mpi_coredump_segment_header *seg_hdr, u32 *seg_regs)
> > {
> >         int err =0;
> >
> >         err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs);
> >         if (err) {
> >                 kvfree(dump);
> >                 return err;
> >         }
> > }
> 
> This is not a promising approach.  The return that you have here will just
> return from the function that you have defined, while the return in the
> macro was intended to return from the function that calls the macro.
> 
> The problem with the macro is that when you look at the uses, you don't
> know that a return is possible.  But given that the macro is defined right
> next to the function that uses it, and that somehow extracting the return
> from the macro would be hackish and complex, the code is probably ok as it
> is.
> 
> The macro is pretty unpleasant, also because it captures several variables
> (fmsg and dump).
> 
> Maybe a solution would be to replace all the macro calls with:
> 
> err = err || qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs);
> 
> and then test for a non zero err value at the end.  But maybe wait for
> someone else to weigh in before taking that approach..
>

Hi julia,

I will wait for some more reviews. And after that, I will try
implementing your solution.

Regards,

Sumitra

> julia
> 
> >
> > But I am not sure whether I am going in the right direction..or how to
> > move further in it. I am looking for some guidance.
> >
> >
> >
> > Regards,
> >
> > Sumitra
> >
> >

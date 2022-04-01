Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6487B
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 15:18:33 +0000 (UTC)
Received: by mail-qk1-f180.google.com with SMTP id q200so2339343qke.7
        for <outreachy@lists.linux.dev>; Fri, 01 Apr 2022 08:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+DIwAem2DGAnRaO7zae73Gv5LiZtPH8amtTIRF6Hpik=;
        b=Q2dP6PNdea7SgI9M25reG+ZCdhDWV4phVvVb0PIAnxzB8Dm802vtFAijGpD2SWb8QY
         n3wZ3Znto1qTGMKs+kXSVkGga6tmBP6TnWq2iewBd80QDyQcXqICiLPKSCkIPIcob12e
         2Ntbey5ILaPzLRogfIs7FfyJXvulwFuQf7Mr+7vbyIGiuYS3ksqaQ7DiuGKl4qY8aL+q
         PYxuSLAbYuVqoZ5Z0G0TJEC3ZrCLtQ0YTSbdrPPTKNk8s5zZzPmk4ZFHoTrJ7+e5WCqr
         /CgfVi34ZD6dkIx25RDnKp6cQHHr6ahZJuwt0RMzc5h3jU5qwDY2z6VyB4KS4wsf4m20
         p20g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+DIwAem2DGAnRaO7zae73Gv5LiZtPH8amtTIRF6Hpik=;
        b=tbWi8UsDGW3xhU33E2Z5pfNoKNWvqmhRhiwWccRjvK3/mbnG4uW6NYFRJ8bxt6Gi9L
         M02NiEjXjnJkPOiUOLnsnlJcput2UzT1SvttIHC6NKB6yuxdtbDZ7WjzGe8rYV+cI73I
         K5WtNSDQqJC6dl6CPMiGggLZ+/r9db54NSdt7YwUHUJ8wg1tk3VBoHfMgpsCKw4ZmNj/
         4ZzdRvbCwvOAlPAZajaRzTKryLnewxbOrkWtjumhWOX3CLmZO2g+S0DHJNEn/mH7ipeY
         fQMGnTPNN8rhb2s3j1p3sX1VoiEi3V58WEnJD+wjGDMbWPOd3fF2vmo0AyN4SmtFayXq
         nXYA==
X-Gm-Message-State: AOAM53005HgNqNCAICTbPwcL7ViDXbFKyDGbiQKtp0B/xebysoORO86M
	Mh8UGQFsePd1A1wVY72uZJY=
X-Google-Smtp-Source: ABdhPJw1mmo5HgBjvqEJuAiCFS10/3r35kmOPF/B8CYf1IDVzvtXVCfHFovE5x9WRRzF+7EEiBW/+Q==
X-Received: by 2002:a37:6153:0:b0:67b:1bf7:69b with SMTP id v80-20020a376153000000b0067b1bf7069bmr6738401qkb.27.1648826312252;
        Fri, 01 Apr 2022 08:18:32 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([4.34.18.218])
        by smtp.gmail.com with ESMTPSA id t7-20020a05622a180700b002e0ccf0aa49sm2122049qtc.62.2022.04.01.08.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 08:18:31 -0700 (PDT)
Date: Fri, 1 Apr 2022 11:18:27 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Alison Schofield <alison.schofield@intel.com>,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: Finding Clean-up Tasks
Message-ID: <20220401151827.GB49127@jaehee-ThinkPad-X1-Extreme>
References: <20220331183805.GA1182645@alison-desk>
 <20220401142803.GA38814@jaehee-ThinkPad-X1-Extreme>
 <20220401170839.3919d0b4@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220401170839.3919d0b4@elisabeth>

On Fri, Apr 01, 2022 at 05:08:39PM +0200, Stefano Brivio wrote:
> On Fri, 1 Apr 2022 10:28:03 -0400
> Jaehee Park <jhpark1013@gmail.com> wrote:
> 
> > On Thu, Mar 31, 2022 at 11:38:05AM -0700, Alison Schofield wrote:
> >
> > [...]
> >
> > > If you have a patch AND a question, you can send the patch
> > > and put your question below the scissors line. For example,
> > > you might see multiple instances of something but are not sure
> > > the patch will be well-received. Fix one instance - and below
> > > the scissor line ask you question: "There are 10 more of these
> > > in this file, just want to sanity check that my approach here
> > > is wanted."  (If I were doing cleanup today, I'd use this tactic
> > > for drivers/staging/iio checkpatch ERROR about octals.)
> > >   
> > 
> > Thank you for advice! I had a question about where to put the questions
> > in the patch. When you say scissor line, are we putting dashed lined
> > somewhere in the patch and writing our questions?
> 
> Let's say this is the original patch as prepared by git format-patch:
> 
> --
> This is a commit message.
> 
> Signed-off-by: you
> ---
>  file.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/file.c
> index 148b06a..ceb10a6 100644
> --- a/file.c
> +++ b/file.c
> @@ -927,7 +927,6 @@ int function(void)
>  
> -
>  
> --
> 
> you can put your question (or any kind of comment, really) there:
> 
> --
> This is a commit message.
> 
> Signed-off-by: you
> ---
> I'm not sure this patch does anything. Should it do something?
> 
>  file.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/file.c
> index 148b06a..ceb10a6 100644
> --- a/file.c
> +++ b/file.c
> @@ -927,7 +927,6 @@ int function(void)
>  
> -
>  
> --
> 
> Those three dashes are also commonly called Signed-off-by-line, or
> SoB-line (the term might refer to the line above, to the dashes, to the
> line below, depending on whom you're speaking to :)).
> 
> > Or did you mean we should reply to our patch?   
> 
> You can also do that. If you're really unsure, you can also add [RFC]
> to the subject, before [PATCH], to make it clear you're asking for
> comments rather than actually submitting a change, and then write your
> questions, concerns or considerations directly in the commit message.
> 
> -- 
> Stefano
>
Makes sense, Thank you Stefano!

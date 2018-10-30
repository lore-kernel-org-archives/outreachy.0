X-GM-THRID: 6616381756005154816
X-Received: by 2002:a37:68cc:: with SMTP id d195mr174533qkc.48.1540930702689;
        Tue, 30 Oct 2018 13:18:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:ca:: with SMTP id d10-v6ls17635qtg.5.gmail; Tue, 30 Oct
 2018 13:18:22 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eDN+m9kT8FGdq+gTPmlJDcnL3t54jMTrkkzrBhbYD681N6WI7rRdEJTwfz9HRIx8NP3jS2
X-Received: by 2002:ac8:2255:: with SMTP id p21-v6mr159394qtp.19.1540930702026;
        Tue, 30 Oct 2018 13:18:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540930702; cv=none;
        d=google.com; s=arc-20160816;
        b=xf5EbYAG/WZM5uurgiOQVwSrftjC2wnMiYuOLU4jdDUsutNErRWfPqd5T5Vq3rUs7g
         E/jhQ830PlplVVbuIbRueioL5jinya7TyvyLDahP9CtORfL0iTTTjAQs6zedLqcf6p6z
         7Z2rSCJGZYkR0DO95Mp0fJEH5NS7H2J78SF2q4Tk8qoJFu6VFI54hUWuSIk2Hay9PY7q
         drxh34U0zWWCuPz/IMIXRXBZW9bZpYqbhUP4Hpg/H86YKJbqVPsW6ZGOuiHhUiw7aiP9
         GORi6i++hj/EgAGn/LDWttIMS5WSJots82plyohbVfEbNL+SkHe7h6UXO0QxI0CiCG6B
         xg9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jEHvye6C0RTiHbryQD6FLvfoQR2BpbybsT0rnRdO/jM=;
        b=cK/dij8cFzbsUKAQhqH1ktoXQ5g7ekVsHG8DWWOMjULTLMvAlntjF/Sa0ej0sN+T1j
         BW1sFPLS07mKmuBr17qn6paFb/AAAfugtnjKzRivGcRRK9CFrT89I+xWOMZph2Pnf6Oe
         Al1+ik5DCVMGAGcpAMlozJsD7i8pa6PusWJ3dzCkR+bTfGPlcw5pwS+65tVUW22aQV4c
         nvLR5oHOGM8mRgC8VHeFvN+/BEw6QR4Zsadq6c9a/5TdeQSzqUscc5rwX3uOMgsdLUwb
         VW5oyw4k6PRzuRpiXY/Ew3ip0z68syK6l8JqfT/nudEP0sj11BZPW51IwtOK44N4fcFB
         kuBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b35BsBf7;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id 21si524755qkr.2.2018.10.30.13.18.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 13:18:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b35BsBf7;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id o125so4875803qkf.3
        for <outreachy-kernel@googlegroups.com>; Tue, 30 Oct 2018 13:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jEHvye6C0RTiHbryQD6FLvfoQR2BpbybsT0rnRdO/jM=;
        b=b35BsBf7QYcwUTqaMT9LMSOOPxSr62pLCQL1fgsrq1bmi74yT59TpajhLCVfbdutlc
         FXo4hJcrfd/kqgaUSJPoUn87CsYNxFETedtNcg8useYeuzbqIMw1nUJEaMPTjALhcq/0
         7TruBvGgE0vq2hUbSGYgJUeSSIKCVK1YZYeK5ER8xYEAnQlajRawt/fgwY7K4HBA3S9a
         RMKPPapFdxMkqVQ5KQQfadSVo56StFWr2ZVMKoDIQqM3mxx6CP0WM2kEZeSt/3e1wELe
         sblFM7v0ZzFSWAjHMBUaGE4Oldca7rujrGAHPfNtEmPtekPrTrsM/HN37Nus+6lVOW0m
         XvRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jEHvye6C0RTiHbryQD6FLvfoQR2BpbybsT0rnRdO/jM=;
        b=fm5WW3GgU0+622F8GKtLa2nRCihevWLLJlFejRl4Tp5xafAelK3vX4JuT/29IBPFti
         BETeOhCATX6+7476YeQF4x0+zm7hNyEedQzsj+GLH/N/w4KyWCKBbKVeVD+Kly2EQBMW
         +A8+6JZiarjKOGyM3l4NDtjc1uCPjfgaLIFOz78g0N5d2TWqqUitwfTu092KnTV3w1Wu
         nLXIfNfUhJ8D8j0Wxp12o42z6qfEK/cxj2FXfMdc4AVyckXsY0IWIkVYcrPZfVzbh9kM
         R6pFMYQ5Dny/6HZBEGifSxRl0FcP5BhgDaaOP3o0byiNAkNbrwiA+QMce5ZJBvHNpxnJ
         I11Q==
X-Gm-Message-State: AGRZ1gIZ2DZFLhhQ/fwW/iekJiZ+dUk4hCIwV6cFjclM7c67IKcR0EbS
	U5EROcoPWCHa5hGu+PlMUTM=
X-Received: by 2002:a37:7983:: with SMTP id u125-v6mr140855qkc.219.1540930701615;
        Tue, 30 Oct 2018 13:18:21 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id v3-v6sm16832346qth.74.2018.10.30.13.18.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 30 Oct 2018 13:18:21 -0700 (PDT)
Date: Tue, 30 Oct 2018 17:18:16 -0300
From: Shayenne Moura <shayenneluzmoura@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Himanshu Jha <himanshujha199640@gmail.com>,
	Sasha Levin <sashal@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH 2/2] staging: vboxvideo: Use
 unsigned int instead bool
Message-ID: <20181030201816.joihhwd7htgixo5i@smtp.gmail.com>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com>
 <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com>
 <20181026204225.GH2015@sasha-vm>
 <20181028075209.GA1938@himanshu-Vostro-3559>
 <alpine.DEB.2.21.1810280932030.2450@hadrien>
 <20181028112011.GA5157@himanshu-Vostro-3559>
 <alpine.DEB.2.21.1810281243420.2433@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810281243420.2433@hadrien>
User-Agent: NeoMutt/20171215

Hi,

> On Sun, 28 Oct 2018, Himanshu Jha wrote:
> 
> > On Sun, Oct 28, 2018 at 09:47:15AM +0100, Julia Lawall wrote:
> > > > The "possible alignement issues" in CHECK report is difficult to figure
> > > > out by just doing a glance analysis. :)
> > > >
> > > > Linus also suggested to use bool as the base type i.e., `bool x:1` but
> > > > again sizeof(_Bool) is implementation defined ranging from 1-4 bytes.
> > >
> > > If bool x:1 has the size of bool, then wouldn't int x:1 have the size of
> > > int?  But my little experiments suggest that the size is the smallest that
> > > fits the requested bits and alignment chosen by the compiler, regardless of
> > > the type.
> >
> > Yes, correct!
> > And we can't use sizeof on bitfields *directly*, nor reference it using a
> > pointer.
> >
> > It can be applied only when these bitfields are wrapped in a structure.
> >
> > Testing:
> >
> > #include <stdio.h>
> > #include <stdbool.h>
> >
> > struct S {
> > bool a:1;
> > bool b:1;
> > bool c:1;
> > bool d:1;
> > };
> >
> > int main(void)
> > {
> >     printf("%zu\n", sizeof(struct S));
> > }
> >
> > Output: 1
> >
> > If I change all bool to unsigned int, output is: *4*.
> >
> > So, conclusion is compiler doesn't squeeze the size less than
> > native size of the datatype i.e., if we changed all members to
> > unsigned int:1,
> > total width = 4 bits
> > padding = 4 bits
> >
> > Therefore, total size should have been = 1 byte!
> > But since sizeof(unsigned int) == 4, it can't be squeezed to
> > less than it.
> 
> This conclusion does not seem to be correct, if you try the following
> program.  I get 4 for everything, meaning that the four unsigned int bits
> are getting squeezed into one byte when it is convenient.
> 
> #include <stdio.h>
> #include <stdbool.h>
> 
> struct S1 {
> bool a:1;
> bool b:1;
> bool c:1;
> bool d:1;
> char a1;
> char a2;
> char a3;
> };
> 
> struct S2 {
> unsigned int a:1;
> unsigned int b:1;
> unsigned int c:1;
> unsigned int d:1;
> char a1;
> char a2;
> char a3;
> };
> 
> int main(void)
> {
>     printf("%zu\n", sizeof(struct S1));
>     printf("%zu\n", sizeof(struct S2));
>     printf("%zu\n", sizeof(unsigned int));
> }
> 
> > Well, int x:1 can either have 0..1 or -1..0 range due implementation
> > defined behavior as I said in the previous reply.
> >
> > If you really want to consider negative values, then make it explicit
> > using `signed int x:1` which make range guaranteed to be -1..0
> 
> The code wants booleans, not negative values.
> 
> julia

Thank you all for the discussion!

However, I think I do not understand the conclusion.

It means that the best way is to use only boolean instead of use unsigned
int with bitfield? I mean specifically in the case of my patch, where there 
are some boolean variables are mixed with other variables types. 

Best,

Shayenne


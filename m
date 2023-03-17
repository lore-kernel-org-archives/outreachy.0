Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E3C6AB6
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 14:28:09 +0000 (UTC)
Received: by mail-il1-f181.google.com with SMTP id r4so2822137ilt.8
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 07:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679063289;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1v5TxiG5PubX8hNqyRmI1TB0/xZKnJv/J3rGMJrzh8Q=;
        b=Qa8aPhCJGdheuBx+Iu4gGDpWhLiAJK/NuE+YTA6j2beDZph2CLmyfVHSaSp7sqQ8FG
         qq3vWQhxg+JZ7LJoiDVxGkY+KaDSCkWM7VrlZIUfRU6PL2xu1BFRhCgVj7iTZ1MSNuCz
         R+pq2LdF9CFZflzhhblQy6MHMmsr7oSlU7y49Mqkp5xdJCRV801fZPdnaWilCutXAhyS
         MmKoCC+20WwKH1TTL/ejDgXmoa0JXTX2pMFbx8EM0B4vTwdEs4FdwY/92EmyTBKreKRc
         wkDjFOikSHhSfQG8LrhNYAvBatWOHiLVhMV1zmwAupLCh9XOdUh64AjlG362gJR58Omd
         L/fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679063289;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1v5TxiG5PubX8hNqyRmI1TB0/xZKnJv/J3rGMJrzh8Q=;
        b=zbTxqWktL1Bv9Osdu2w/ovXtoO8vTY8ALS1wKUnUZQER8IWjenkLHPPEceUki0iEJ5
         pNYEYJBstU9D+ts0vN23oFrj8RsyQW6iZw6kwMe/1iL9w8yBrJeZDxZs2SU7KPawGwZM
         w7yrhOJ3Mbusn17VzqO48q2si7XuTZ14wSbmQxN/IVtYyU+SB4Hg+4OzKn0j2a08qDPk
         z7SWkh4tudaufbrxSNGCGpdGtt+UxKfHjgyyNrJ0zeGTGteY0P1V0OkCFD5+mGoRB3kE
         6S8bPKbZxwnQ9vJkBta85jKXudj9d/EH2tQYNHslnIDJuZNkGj5Oa3BNkOM/w+XAZ5rt
         9s1g==
X-Gm-Message-State: AO0yUKUsYqWI8Rplu42tua2jjB6YDWM2HR0P8E0Zidv5Pm3xGEgsehzd
	7YSy7Uphcg0lYd21MprQaiJOnq9MiiiYBg==
X-Google-Smtp-Source: AK7set9yhnwmsJ/2GnZ+gwhARE0iYOXyB/VCqTc0+QN6mwDzkmLr2Fiyz1YZFTuHDxW5kmbJjPM4Gg==
X-Received: by 2002:a05:6e02:4d2:b0:317:9711:cf1 with SMTP id f18-20020a056e0204d200b0031797110cf1mr37977ils.3.1679063288719;
        Fri, 17 Mar 2023 07:28:08 -0700 (PDT)
Received: from pikachu-Z97-D3H ([76.76.64.93])
        by smtp.gmail.com with ESMTPSA id d65-20020a026244000000b004062d749099sm746556jac.51.2023.03.17.07.28.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 07:28:08 -0700 (PDT)
Date: Fri, 17 Mar 2023 08:28:06 -0600
From: Mark Heim <questioneight@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: a bit more trouble
Message-ID: <20230317142806.GA44040@pikachu-Z97-D3H>
References: <20230317042159.GA423927@pikachu-Z97-D3H>
 <alpine.DEB.2.22.394.2303170656220.3105@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303170656220.3105@hadrien>

On Fri, Mar 17, 2023 at 06:59:12AM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 16 Mar 2023, Mark Heim wrote:
> 
> > The original task I was working on is the prism2fw.c file
> >
> > kernels/staging/drivers/staging/wlan-ng
> >
> > The above C code is not compiled using the makefile
> > and I do not know how to build it successfully. It
> > seems at least part of the problem is due to
> > include macros not being able to find the right header.
> >
> > This above task looked too difficult for me as a patch
> > for now. The README mentions that this code
> > is perhaps not ready for public use.
> >
> > I am now looking at this directory
> >
> > kernels/staging/drivers/staging/greybus
> >
> > and more specifically at the top TODO
> > item in audio_gb.c. The main Linux build does
> > compile this C code to an object but the
> > makefile will not generate an object. It appears
> > to be another PATH variable issue.
> >
> > I tried to use gcc on audio_gb.c. It gives
> > an include macro error.
> >
> > I tried to use the makefile in the relevant
> > directory to generate the object but there
> > is a similar macro error.
> >
> > Part of the issue with getting audio_gb.c
> > to compile is missing headers. I have done something like
> > this:
> >
> > gcc audio_gb.c -I/path/one -I/path/two -I/path/three
> >
> > and so forth. Several warnings and errors
> > appear with this approach. One of them that is
> > repated over and over is atomic64, and
> > I tried to use the below line to identify where it had
> > been defined, but it gave me what I think is
> > the wrong answer.
> >
> > grep -nr atomic64_t ~ | grep -v Binary | grep typedef
> >
> > Please let me know if you have suggestions on
> > what I could try next.
> 
> I don't have the impression that you are trying to compile the files in a
> proper manner.
> 

Yes, seems like it. I tried to compile by extracting files
out of the build but it didn't work.

> First, please read the complete outreachy tutorial.  If you have read it
> once, then read it again.  Now that you have a concrete problem, you will
> pay more attention when you see the solution.
> 

Affirmative. I went through the whole thing. Somehow, the make -j2
command seemed to go faster in certain settings. I also tried to
note the "Compiling only part of the kernel," but I don't know
what else to pick up.

> In general, with the Linux kernel, you can't compile the files manually
> with gcc.  You have to start at the top level of your Linux tree.  And
> then to compile something you need to say make and then provide the
> complete path.  The tutorial will show different paths that you can use in
> different cases.
> 

Yes, I think I got that down. I finished a patch that is slightly
more complicated than editing whitespace, but I have no idea
if I'm on the right track or if I'm still off course.

> julia

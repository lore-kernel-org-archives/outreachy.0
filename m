Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80EB57F8
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 06:54:27 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id qe8-20020a17090b4f8800b0023f07253a2cso7444603pjb.3
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 23:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679122467;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L7H7jsnaS7hh6n9/OSKDeXdo8xmFvxSt1PWI4aw3c54=;
        b=lDrEHK6sG9IM2D63FRaeoqN94JTwdm+lSiJby7UtczlWB5kLw2Xys3Ld9CHATy8zjW
         s90/HUdBA1srPSyjl7yHUYZ7Rkq+38XeOX9GvN5G4p6HZUJjm4I9+IS0Syl0pB03Y+yB
         X4jTjz+l7vxXQviJEnSeJLFCF38/jRL0Q9sPaf3ZhRXcRGXEXDH6LIF8aSgnt5Z7hisJ
         /V99bsG5PA2ovjKYmC0sUytMfi7kdTN/ch19gu3QJPcePczKlVcPfi8Z7ZR0d8t5nF2y
         CSNRXbzIzzHDD/bPu1gpeDdek8G9BD2/3M8NG9I4SFoBkvZfu8fydyDXeROf20IaSm1p
         MpiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679122467;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L7H7jsnaS7hh6n9/OSKDeXdo8xmFvxSt1PWI4aw3c54=;
        b=w+gEC0ob/qUP2l0kmvPvDlZhXH7Ge12rSzdK+HVonKBh4oj3hMr5jzGRjJB3YcjqYF
         ntQPk3zV2TsgoJ4IEU0cxMF0jfl+P5dVZQrpDlGByhBOeXp12ILR7K5MNfhSbObYstbD
         A3Br2JpfvjAsxMGJ8GjmGS0jzY/57plCQYkISs9WbGuKT/E2JnPYB9pXIyQlzB56cFrT
         ozeDtRAmY3qPhl0wMXz4oikaIeD0Mds4c1eTVFp3YJQBOJ5BUyXVeLqroihnqLR0ZlEb
         28En2EZdseQtQtnKveoW58zj4NKH8apJ5dodZIQq0vkUZ0lnyKqpmeszpONgbEXPLeL3
         vTCA==
X-Gm-Message-State: AO0yUKVMn+xymbq3nsLCZlrUOXjlvtHSnsRn+kJxS+Hf8cGOH+1Fby0f
	G1FBDzMONwgQuMTPtVnau0w=
X-Google-Smtp-Source: AK7set9Gl1raRSR8oR+sstjQQLUsM3jqiR3tfRmw6kvVIN43DnyBqEkWGBjKrNnRgts57RoGtUcB+g==
X-Received: by 2002:a17:902:d044:b0:1a0:7655:2155 with SMTP id l4-20020a170902d04400b001a076552155mr7078352pll.25.1679122466769;
        Fri, 17 Mar 2023 23:54:26 -0700 (PDT)
Received: from sumitra.com ([117.245.170.249])
        by smtp.gmail.com with ESMTPSA id q2-20020a170902788200b001a1b808c1d8sm470865pll.245.2023.03.17.23.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 23:54:26 -0700 (PDT)
Date: Fri, 17 Mar 2023 23:54:21 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy@lists.linux.dev, julia.lawall@inria.fr,
	alison.schofield@intel.com
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Message-ID: <20230318065421.GB4434@sumitra.com>
References: <20230316083116.GB47053@sumitra.com>
 <3190629.0WQXIW03uk@suse>
 <20230317180055.GA3391@sumitra.com>
 <4774662.F8r316W7xa@suse>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4774662.F8r316W7xa@suse>

On Fri, Mar 17, 2023 at 08:24:59PM +0100, Fabio M. De Francesco wrote:
> On venerdì 17 marzo 2023 19:00:55 CET Sumitra Sharma wrote:
> > On Fri, Mar 17, 2023 at 04:15:37PM +0100, Fabio M. De Francesco wrote:
> > > On venerdì 17 marzo 2023 12:05:09 CET Fabio M. De Francesco wrote:
> 
> [snip]
> 
> > > 
> > > Sumitra,
> > > 
> > > When doing this change, please skim the whole document and replace _all_ 
> the
> > > links to the .rst files (regardless they point to elixir.bootlin.com or 
> not)
> > > with the corresponding generated .html in kernel.org.
> > > 
> > > The document about the Highmem subsystem which I showed you is useless in
> > > .rst format from the point of view of people who needs to learn its
> > > content. I'm not sure whether or not we have the same problem with the
> > > Linux kernel development guidelines, however it does not matter how much 
> it
> > > differs from the human readable counterpart.
> > > 
> > > We should make it clear that the source .rst is never the right document 
> to
> > > consult, unless one want to make changes. The generated documentation from
> > > .rst with "make htmldocs" (or with other similar commands for .pdf and
> > > .epub)
> > > should be the only to consult for purposes of study (it does not matter if
> > > one generates them locally or find them in the "documentation" section of
> > > the kernel.org website).
> > 
> > Hi Fabio
> > 
> > Here it is
> > https://lore.kernel.org/outreachy/20230317175007.GA3275@sumitra.com/T/#u
> 
> I just read the list of the links. You showed pairs of links: the first is the 
> current one pointing to .rst files, the second points to the output .html 
> file.
> 
> If I'm reading correctly, and you took special care to check that the web 
> pages you are linking are at the right URL, I'm OK with your list of changes 
> (I cannot check them one by one). 
>

Yes, you understand it right. Thanks.


> > > Thanks,
> > > 
> > > Fabio
> > > 
> > > P.S.: I just saw the last message from Julia (in this same thread) 
> regarding
> > > Mutt configuration. I want to echo her and ask you or other Applicants for
> > > making also those changes. 
> 
> (Here it looks like you merged your message with mine. OK, don't worry about 
> it now but be careful next time).
> 


I did it by mistake. I will take care of it.


> > > Don't forget that Alison said that they count as
> > > contributions that you can add in your records.
> > 
> > I am also working on the Mutt configuration. Can you tell me how we are
> > going to mention these kind of contributions when recording the
> > contribution? 
> 
> Alison will help you as soon as she can. I don't know how the contributions to 
> the kernelnewbies website should be recorded, I think that they go to into the 
> same form you should use for the patches.
>

If so then what links are we suppose to attach for these wiki updates
while recording the contribution?

> Please wait for her answers about this subject. 
> 

Sure.

> > Also, are we suppose to record the contribution for each
> > and every patch separately or we have to compile them together in one go
> > during the last days of contribution period?
> 
> Contributions can only be registered one at a time using the appropriate form 
> accessible from the project(s) you wish to work on. I suggest choosing one or 
> two projects, no more than two. If you prefer to apply for your first choice 
> and a fallback project you should record each contribution twice. 
> 
> The sooner candidates start recording the contributions, the easier our job 
> will be.
> 

Okay! Thank you.

Regards,

Sumitra
> Thanks,
> 
> Fabio
> 
 

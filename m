Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118D67475
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 18:01:01 +0000 (UTC)
Received: by mail-pf1-f181.google.com with SMTP id s8so3505520pfk.5
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 11:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679076061;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=usdCaBD56jGEHTwheFjqCvWD9gOJMMsAvrMo7pMvk0c=;
        b=qWrcPWgEkjmL2oX3y6pdYFEAmqxbAZL0JZxwMoUTAPG1FaIcA0FqUM8RFTXeREdHoP
         W9dtSWNTtLvi3QSKh7g5FOdYqR4zLQyt4vqdRZ6tGulJdFYRC4/ACikcpUvGNs5JZ9PU
         rOBk+KmcATE0bwcfynwY3bRKJayZpMUyOnmSj9Kf0WGlWaG3vR/jvSk6t8VRoe6NAt0z
         FZ6WZWNOdZWmOv/9hkYzwW8SLz5UqkkmzpfuwPQ7iVYtMvwslxIXllGquqFCT/Gzkjvx
         Jkp+loO/2mWqAIyNpgew3QEkpNL4AV4XfoasplcOYewNqlOG66yQDDgnFaLcGEPmzJSc
         /dwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679076061;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=usdCaBD56jGEHTwheFjqCvWD9gOJMMsAvrMo7pMvk0c=;
        b=Z9JRMyajnoM2SHE0MFQbWXxgKIFQsnhy9r1aDQpT9IVPJKOV9/p4mW/7Uu3WbGRZ2Z
         sXskO0gX+QbSDawcDCl4SsaBcX31Gy7S4BtJIkFnOhxDnoD4pz38RlgGg6me2YyxZEqa
         LugCeDyeJrlSSItMdibrNixg3CdCYb9Cq8NNZLCreTDLuO4DlF6JUEShNQnBgpM350FE
         mNaiHy0Vh6zKAUMo+58us9FaE6RSr23LpzRgQbQYNXBbeHi6LNZ8QI4uYbvYN1e9Ypbi
         EovHDRpKDXhcXWn0bidDpYRU69PAgNK3C2ZZFWyEq9a9i9LpmW3n5wiNlabyYpd7k0Ap
         0j0Q==
X-Gm-Message-State: AO0yUKW0muajYotePUZumk/xzm4OfR++GCexGG2VhClzAwDfqriLg7zZ
	CLgWN9jvSNuakjSyEgO7a8EMd0IW6c/AUA==
X-Google-Smtp-Source: AK7set+OQouZhve+lA+ZcO9cwA46N9rxVgNhO9S87sb1j4L3EvdpuKvz7BYYzuzQEzufdofUN8ckQQ==
X-Received: by 2002:aa7:9afc:0:b0:625:c1ca:901f with SMTP id y28-20020aa79afc000000b00625c1ca901fmr7672278pfp.31.1679076059919;
        Fri, 17 Mar 2023 11:00:59 -0700 (PDT)
Received: from sumitra.com ([117.98.68.136])
        by smtp.gmail.com with ESMTPSA id 2-20020aa79102000000b00593e5a45ce7sm1891442pfh.173.2023.03.17.11.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 11:00:59 -0700 (PDT)
Date: Fri, 17 Mar 2023 11:00:55 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy@lists.linux.dev, julia.lawall@inria.fr
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Message-ID: <20230317180055.GA3391@sumitra.com>
References: <20230316083116.GB47053@sumitra.com>
 <10119311.0AQdONaE2F@suse>
 <3190629.0WQXIW03uk@suse>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3190629.0WQXIW03uk@suse>

On Fri, Mar 17, 2023 at 04:15:37PM +0100, Fabio M. De Francesco wrote:
> On venerdì 17 marzo 2023 12:05:09 CET Fabio M. De Francesco wrote:
> > On giovedì 16 marzo 2023 09:31:16 CET Sumitra Sharma wrote:
> > > On Sun, Mar 12, 2023 at 10:07:57AM -0700, Sumitra Sharma wrote:
> > > > 2. The outreachy document directly links the ".rst" file
> > > > https://elixir.bootlin.com/linux/latest/source/Documentation/process/
> > 
> > coding-
> > 
> > > > style.rst at many places under different sections. And as noted by fabio
> > > > there is a difference between the .rst source files content and its
> > > > corresponding .html file which can lead to confusions and missing
> > 
> > important
> > 
> > > > information. I would like to suggest to change the links to the 
> .html/.pdf
> > > > files rather than the > .rst source files.
> > > 
> > > Hi mentors
> > > 
> > > I would like to have some update on this.
> > > 
> > > Regards,
> > > 
> > > Sumitra
> > 
> > Hi Sumitra,
> > 
> > As you know I'm for this change.
> > AFAIK, only Alison can grant you the permission to access that document in
> > write mode.
> > If she hasn't granted that access to you yet, please ask her directly with 
> an
> > email to her address.
> > 
> > Thanks for working on this (important, from my POV) change.
> > 
> > Fabio
> 
> Sumitra,
> 
> When doing this change, please skim the whole document and replace _all_ the 
> links to the .rst files (regardless they point to elixir.bootlin.com or not) 
> with the corresponding generated .html in kernel.org.
> 
> The document about the Highmem subsystem which I showed you is useless in .rst 
> format from the point of view of people who needs to learn its content. I'm 
> not sure whether or not we have the same problem with the Linux kernel 
> development guidelines, however it does not matter how much it differs from 
> the human readable counterpart.
> 
> We should make it clear that the source .rst is never the right document to 
> consult, unless one want to make changes. The generated documentation from 
> .rst with "make htmldocs" (or with other similar commands for .pdf and .epub) 
> should be the only to consult for purposes of study (it does not matter if one 
> generates them locally or find them in the "documentation" section of the 
> kernel.org website).
>

Hi Fabio

Here it is https://lore.kernel.org/outreachy/20230317175007.GA3275@sumitra.com/T/#u

> Thanks,
> 
> Fabio
> 
> P.S.: I just saw the last message from Julia (in this same thread) regarding 
> Mutt configuration. I want to echo her and ask you or other Applicants for 
> making also those changes. Don't forget that Alison said that they count as 
> contributions that you can add in your records.        
>

I am also working on the Mutt configuration. Can you tell me how we are
going to mention these kind of contributions when recording the
contribution? Also, are we suppose to record the contribution for each
and every patch separately or we have to compile them together in one go during the last days of contribution period?

Regards,

Sumitra

> 


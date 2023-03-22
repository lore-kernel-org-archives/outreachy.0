Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221E215BA
	for <outreachy@lists.linux.dev>; Wed, 22 Mar 2023 04:10:09 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id x15so7074157pjk.2
        for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 21:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679458208;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NV1Z57AHY4KeJql3suCcAiMBaAS6BKxbUUJYih1DFiI=;
        b=F9OL3vz5AOi9J/sky4Az3yzO1/llhi+aqheaYj8hHszpdyjds6EQiqer2pOroSMsNh
         z4nvf+GSg8iXLRbu8TV6/OQ3Lraz8RJat0qGtyI0yA9b2McJyoXvaKgXDSFCD81+SGoE
         g+gPTt0xPYkmgPR3tfE2084ocIlegNFDhgqwIQBnF+gUq8XBoW8QxscBt60hOIERK5vU
         WhR8nuGaS78ToqsG6L5aIaC4qQEj7jAZwyERPol1WEbrqoVn0y/8EW+rXVIUBEy/ZTod
         jfBX+UdDfRE5fm0kvl7eGFH1lJ7cPzAU1aEhMvR89fY1i1IDrl7xpcmJoSlvlT7wjoj0
         7MYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679458208;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NV1Z57AHY4KeJql3suCcAiMBaAS6BKxbUUJYih1DFiI=;
        b=Abt3pyRLFICnQvSEiU/fD21M1uEiHAichGZyPqP95RpqduZUG74/usSut1HZZcTAzZ
         p0+hpc57TsBMYwpnjKpDFzk9M8PN3v0M+opI/hPyRRXE6hEpIXUlYTxpwYBdzcnarhQ6
         RAOHqzwQH0o/uV7Iz4VYKDSLXQWXjYjqQNLxj2pAZn7mhqeJMbx7vEnGUzlmOPdadlxr
         spq9krXe4b4n2tCR9wadgdGoaEgYKIW7NkJDhrNrWxD8aVdXU0tywmhokJGgO0jaMpUE
         oEO7pUtyH57oXR2Qz9wR31mnvWUP5KWlPIVBMscAnz6hE/vR7gMHEia5X1U0i/6EaZ0n
         9U4w==
X-Gm-Message-State: AO0yUKVX6quJbaBgNn7wYaAnD3Wz/F4XBZKeX9fODDGkqNqFPIDHBuVx
	eQEgYoSoBm3PUU+ELViMTHFyo4+w/CRAyw==
X-Google-Smtp-Source: AK7set+j/w0G5vuF7RigZrH4rYPJl8dd20hz+zzscNn/Ai4qRTNyD3krVrZC9apyr8Sd73Np1BUCRw==
X-Received: by 2002:a17:902:fb47:b0:19e:6700:174 with SMTP id lf7-20020a170902fb4700b0019e67000174mr1388578plb.25.1679458208359;
        Tue, 21 Mar 2023 21:10:08 -0700 (PDT)
Received: from sumitra.com ([117.245.171.219])
        by smtp.gmail.com with ESMTPSA id s18-20020a170902a51200b001a1d5d47105sm4339406plq.53.2023.03.21.21.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 21:10:07 -0700 (PDT)
Date: Tue, 21 Mar 2023 21:10:03 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Bagas Sanjaya <bagasdotme@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <20230322041003.GA149888@sumitra.com>
References: <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com>
 <20230319083256.GB50179@sumitra.com>
 <alpine.DEB.2.22.394.2303190938080.2867@hadrien>
 <alpine.DEB.2.22.394.2303190956120.2867@hadrien>
 <20230319121026.GA53959@sumitra.com>
 <alpine.DEB.2.22.394.2303191336090.2867@hadrien>
 <20230320084630.GB126429@sumitra.com>
 <da5bf7f-b8b5-143-8e58-9c1dc4214fad@inria.fr>
 <20230320095314.GC126429@sumitra.com>
 <e13532cc-d9da-5090-7731-5d3945d7564c@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e13532cc-d9da-5090-7731-5d3945d7564c@inria.fr>

On Mon, Mar 20, 2023 at 02:04:30PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 20 Mar 2023, Sumitra Sharma wrote:
> 
> > >>On Mon, 20 Mar 2023, Bagas Sanjaya wrote:
> >
> > > On 3/20/23 15:46, Sumitra Sharma wrote:
> > > > Hi julia,
> > > >
> > > > This did worked.
> > > >
> > > > But the main issue of creating NVEC_PAZ00 a module using make menuconfig still persist.
> > > >
> > >
> > >> Oh dear, you don't know how to use menuconfig...
> > >>
> > >> When you execute `make menuconfig`, you'll be presented with menu when
> > >> you can choose what config you want to enable. To find the desired config
> > >> (NVEC_PAZ00 in this case), press `/` and type in the config name. If
> > >> found, you will see menu location for config symbols that match. Then
> > >> follow the shown path.
> >
> > > Actually, this isn't the issue.  You have to have the ARCH=arm as well.
> > > Otherwise, / provides instructions, but there is no way to follow them.
> >
> > Yes you are correct locating the mocule in menuconfig is my issue. Do you mean 'make menuconfig ARCH=arm'.
> 
> I have never tried that order.  make ARCH=arm tegra_defconfig menuconfig
> should work.  Maybe other options work also.  Arm has a lot of specific
> configurations.
>

Hi julia,

This did work. Now everything is working fine.  This thread can be closed.
Thank you very much.

Regards,
Sumitra

> julia
> 
> >
> > Sorry for such a long thread. :(
> >
> > Regards,
> > Sumitra
> >
> >
> >
> >
> >

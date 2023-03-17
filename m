Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F3879D6
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 21:50:03 +0000 (UTC)
Received: by mail-il1-f179.google.com with SMTP id h7so3465445ila.5
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 14:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679089802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JBUDwKfYlxPRhoE1xzVz2YVbcBPuJAnz1tZQhxKnj3I=;
        b=i95llHjU1DNWaNkon0k/LekNbmdE9e0d9EdfmFbY6Muvr/0Vs3gLkAfTCFZRuuhmRj
         /lf84sW2ojZP3rskxM5rQSBL3jWNYuYRqmQpQXs58nXEqbaq+mWewtIClwjJgYlCnVMm
         GxgLjPR13ar7pqXmSi1q+3+gb85C4kyT5UYT5AQy4aSfb7x8AcUkiCKcoUj8UARk4mYm
         wGCZ+BqPZyJb8VIaWGwX7rZAe1XgLr4e5jSxHqlAksxCQ2S6s/bzXlKrzfhJ+v6okdDJ
         itVPSQJ+VkL9gF3wID2vLKM2p3/ClcB6sRYEoRC91PKk7/HdSXPilTl3AMKcXAimF9ZX
         zpPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679089802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JBUDwKfYlxPRhoE1xzVz2YVbcBPuJAnz1tZQhxKnj3I=;
        b=a/6zpEzJNA3qoOl8l0I148K1nQAlxhakRnYWVIWs/5oxd6Y+F1zcp89cdrUTPBda9C
         aMlvj/1MqF4TMrFqxweKowxwD8M3ifpyMVeUrQ+Qs4Fc8rnBbanXKVhRZ701Ui2x/RwM
         gp80qIv77HLYXZ3KjWi4grGrXQQm9E93CCkWOWg5OpSSPDBpJvloa1ukOBdefp2m7Sn9
         UESX1wSJq/i1i5lABUmFnptq9BvrZXcIaUsPP8urlHvsbapg/we8o4GnMt9f9Cjme5RJ
         lCbVq+6uZExk4LUrtKgOaloq8QgVAcS3trcAfUG3ycA2xugQClqSh/bTfBi4sHCEbO4v
         1rOw==
X-Gm-Message-State: AO0yUKUJDkFh4MU8Ah6ECbz1S5zdKlH1nUQN7FSf5KBQXVKMgkP2/nC+
	D1LKm7Z7gBZ9bn/UkpoZoFo=
X-Google-Smtp-Source: AK7set+kvLMjh5tt5R5KbVu1WRjiZplVtdddeYzJCMncqW30X0yiXsPCQBEXvB1t96/fZsr/l7+KoA==
X-Received: by 2002:a92:c6c1:0:b0:316:e457:489 with SMTP id v1-20020a92c6c1000000b00316e4570489mr49118ilm.32.1679089802606;
        Fri, 17 Mar 2023 14:50:02 -0700 (PDT)
Received: from pikachu-Z97-D3H ([76.76.64.93])
        by smtp.gmail.com with ESMTPSA id 71-20020a020a4a000000b0040474ab909fsm1015726jaw.36.2023.03.17.14.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 14:50:02 -0700 (PDT)
Date: Fri, 17 Mar 2023 15:50:00 -0600
From: Mark Heim <questioneight@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Patching spelling errors
Message-ID: <20230317215000.GA86759@pikachu-Z97-D3H>
References: <20230317191154.GA57413@pikachu-Z97-D3H>
 <alpine.DEB.2.22.394.2303172116300.4097@hadrien>
 <20230317205743.GA78907@pikachu-Z97-D3H>
 <alpine.DEB.2.22.394.2303172201370.4097@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303172201370.4097@hadrien>

On Fri, Mar 17, 2023 at 10:07:05PM +0100, Julia Lawall wrote:
> > There is a quirk with how my directories are set up due to the commands
> > I used to check out.
> 
> It's not at all clear to me what you mean by this.  The one and only
> proper way to get the code is to clone the complete repository.  YOu can
> use
> 
> git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git
> 

Consider the greybus directory that I attempted to commit my patch. On my machine, the path is:

~/git/kernels/staging/drivers/staging/greybus

I'm getting confused because I did a checkout of the repository inside a
folder named staging, correct?

> (I can't access the tutorial at the moment, so I don't know what it
> recommends).
> 

The command is:

git clone -b staging-testing git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

> Do you have a problem with disk space?
> 

I have had warnings about low disk space in my /boot/ partition, but I
deleted some old kernel images, and the problem is solved.

> If you don't have the whole repository organized in the expected way, you
> won't be able to compile the code properly.  I would suggest to just
> desctroy what you have and start over.
> 
> > Thus, I think "drivers staging" is ambiguous in
> > regards to my setup. Is the drivers staging directory the one that has
> > (e.g.) these directories?
> >
> > accel, accessibility, acpi...
> 
> No, I don't think so.
> 
> If your tree is called linux, then it would be linux/drivers/staging
> 

Part of my directory tree is literally:

staging/drivers/staging

No wonder I'm confused.

> > Or, these directories?
> >
> > axis-fifo, board, emxx_udc...
> >
> > Doing a simple spelling error patch might be good practice for me since
> > the last one I submitted might not be worth patching.
> 
> It's fine, as long as it is on a file in drivers/staging and not in
> drivers/staging/media.
>

I wrote a script to find instances of a misspelled word in the directory
that would fix a word. In the Outreachyfirstpatch tutorial, under the
"Potential cleanup patch tasks," spelling mistakes are number 5.

I really appreciate your help, Julia. Even if I didn't make it as an
intern this summer, my productivity and confidence have obtained a big
boost!

> julia

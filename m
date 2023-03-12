Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFE146BB
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 15:52:06 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id v21so308791ple.9
        for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 08:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678636326;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y1JhB97O8u+4Py7z+GhJ6kybxIAQZKXnU6YkO6J9lRc=;
        b=TKxoMyGBqk/jEeDhk6QzAqb4nZfo9g4vXn9csnad/KAvbLZNu52L+IzeJ7epYp9m/T
         OpEDOLVAdiWuuY6ebx/0tY5Wg1blnr4D40WduNGLhE9If2oPvJEfJ6n21bX3t2R/NgSw
         R8rPCYY9N5IDmQA/kCrl8kgONYnOWbPHzZl5htDZZHY3uc0dWDOLLFDl+5Y+cW60xjHi
         oKe2N4DYhe6fiPGKtFmkPUkBTScj0c425KLxLSNAPt3rtlKo7CModAN1YJzYmSRS+g+H
         7/ftv+di4Z1gtTizjV/hGPbjunsp0ylbAhL9M4ahlvuSGZsdU2lfCSXIvvMVsZfUlVTr
         oN7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678636326;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y1JhB97O8u+4Py7z+GhJ6kybxIAQZKXnU6YkO6J9lRc=;
        b=Uc19W0wah6jaOgEMhzX6BZ0fscOTFqU05TvcGEZ8vzlmSi2gFJlc/nEu5jXqMFcJPL
         0mI63FlgJOtUYMO4Exwc1YRBepPj0PliFbyAzGOWlBpMsuzvFgbasMPBa9VG91OqYVRM
         tBybcC/7VGE9bYU3Nl6a89/w4dW8mWL1QvIKGOGF353A6yMXI/4CiawiJyPhOeXQbQGz
         Y308KxePZDw9tbthSP3h08oQkV72lfxbXKvXMCjCpcAROe3ssqyWYbuS8F5KO+9KPsUU
         8Bqmc7fSFGA8RqqsmA6yDfPetUdiP0tDXon265FOnoEaFCKOCzKguzUnRe9GS1WsCU7/
         b4aA==
X-Gm-Message-State: AO0yUKXohPIEvWg8q183vMRiJ/B8AdxH2vX0QJnILhrxYPvVnU65KEDq
	YBMpPhk2U6rduzPzKr0nHZo=
X-Google-Smtp-Source: AK7set+yo57TXQF+NFaMJ2H9AhXaqPGJW8lnScJWdb7I4uFAhw2Yf4wjTsxXvkA02/LmzePIMtktbg==
X-Received: by 2002:a17:90a:1982:b0:234:721e:51e5 with SMTP id 2-20020a17090a198200b00234721e51e5mr7838464pji.10.1678636326040;
        Sun, 12 Mar 2023 08:52:06 -0700 (PDT)
Received: from ubuntu ([59.89.166.125])
        by smtp.gmail.com with ESMTPSA id ls8-20020a17090b350800b002367325203fsm2876142pjb.50.2023.03.12.08.52.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 08:52:05 -0700 (PDT)
Date: Sun, 12 Mar 2023 08:52:01 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional statement
Message-ID: <20230312155201.GC28100@ubuntu>
References: <20230312122928.GL14247@ubuntu>
 <alpine.DEB.2.22.394.2303121412090.2865@hadrien>
 <20230312152701.GA28100@ubuntu>
 <alpine.DEB.2.22.394.2303121631170.2865@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303121631170.2865@hadrien>

On Sun, Mar 12, 2023 at 04:31:48PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 12 Mar 2023, Sumitra Sharma wrote:
> 
> > On Sun, Mar 12, 2023 at 02:21:56PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Sun, 12 Mar 2023, Sumitra Sharma wrote:
> > >
> > > > Hi julia,
> > > >
> > > > >> Hi julia
> > > > >>
> > > > >> I was referring to the reply you sent in this thread and asking to quote
> > > > >> the most relevant information in the mails so that people on the list
> > > > >> can know what is being discussed. And I will take care of this in my
> > > > >> upcoming mails.
> > > > >>
> > > > >
> > > > > Sorry to press the point, but you should be doing it now, not promising to
> > > > > do it in the future.
> > > > >
> > > >
> > > > I am sorry for repeating my mistake again and again and may be this time
> > > > too. But, I am trying to correct it.
> > > >
> > > > >
> > > > > If there is some challenge in doing this, please let us know, and perhaps someone can offer some advice.
> > > > >
> > > >
> > > > To be honest I am struggling responding inline. Right now I did it
> > > > maually by pasting your message into mutt and putting the ">" things. I
> > > > know this is not the correct way to do. Please guide me to the correct method of responding inline.
> > >
> > > I don't use either gmail or mutt, so I'm not an expert.  But to interact
> > > with others about your patches, you will have to solve this problem.
> > >
> > > You should be able to receive messages in mutt.  There is some information
> > > in the Outreachy first patch tutorial:
> > >
> > > https://kernelnewbies.org/Outreachyfirstpatch
> > >
> > > The following link may be useful:
> > >
> > > https://www.makeuseof.com/install-configure-mutt-with-gmail-on-linux/
> > >
> > > Once your mail arrives in mutt, you should just be able to respond to
> > > other people and have the >s in front of what they said directly.
> > >
> > > julia
> >
> > Thank you julia for your help. I am now able to respond inline.
> 
> OK.  Was the information in the outrechy tutorial sufficient?  If not, it
> could be good to extend it.
> 
> julia
> 
> 
> >
> > Regards,
> >
> > Sumitra
> >

Hi julia

No the information present in the outreachy tutorial is not sufficient.
It doesnt contains steps to make the inbox. Infact the other link https://www.makeuseof.com/install-configure-mutt-with-gmail-on-linux/ was more of use.

Regards,

Sumitra

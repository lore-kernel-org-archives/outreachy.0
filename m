Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F7633F0
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 15:27:07 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id k2so2514273pll.8
        for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 08:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678634827;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rwudsX49p9KU0Jqgh6m5OtW9I8cKYgQ73rbbV/tjlZo=;
        b=CksN/t/A38Fc7SvJt7uLIeLr1toZAlz43ZoBaFxEABmmgN4E6vKmyfAr5QuRjWxaPa
         N6hZWmQuAQj1dLboyxxzqJVrnLQPhrVogQCkHmDr1fa7d4QDoNXq5oJK/SLZnj138mJr
         SOrR0mCNdnurqDKtLFwVpiE7fgk7374fXZuPsUt56CKHYIFYBp/nUrvpPvYDw+jn7AMJ
         hKb3fcINtjtrV3mT+h+PYzBdJstNgvUvvAXA/K1WiC8uzzpNZ5PL1pfulOT8wTttyC1v
         Q/+6Z4RJ9c4oMyvqSol0lQ53uf6yF5WhksoeYl+VX58ezdUahmeoFbEzAa76BbgF5JRq
         kogw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678634827;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rwudsX49p9KU0Jqgh6m5OtW9I8cKYgQ73rbbV/tjlZo=;
        b=dohGx+8dEh9iSOKoxtu3OV4LJsnHSxS1WU2uCzXl9vX4C7ROVsrZIqDB4N4LNrpik+
         PC0Y7XSDtRk0VSCqkz9WyY422rMKxV/VSOZSK7lm6mbjoYE49zx+STKmxV8mv+CLREe4
         iQlLDjvIDry1md0tSQqvYumQF8sOtOhIRpLuGMQJ4RTpCz/czgk4AgdrxM7mk1ju3xL7
         WAeDsw+rZsuFIW3KqM+ac1iAxqKVZQRXroCoCai6bMywxjsERaKuujJUGyN/+n3/clbA
         717hBvNzSrKXDNPymGdFvBDgREXINjzi2q6FYwWRYHDErCWObqhCcfoVTu5Fd8jjdLUd
         /jBA==
X-Gm-Message-State: AO0yUKUfOglUtmTgtQLzBAElJRK2JlOn+Vjxbo7etFiDiiRz/p9q3B4b
	oo7cN3/YA7Xr471niiYJqpo=
X-Google-Smtp-Source: AK7set9kqQeRl+5Os5PCFzeYDE7h8jDqIHC6kKurRnDeBXOUOZLfYtv8fHXEW4uz4wSth1jis/5QYA==
X-Received: by 2002:a17:902:ed89:b0:19d:ab83:ec76 with SMTP id e9-20020a170902ed8900b0019dab83ec76mr24400200plj.7.1678634826789;
        Sun, 12 Mar 2023 08:27:06 -0700 (PDT)
Received: from ubuntu ([59.89.166.125])
        by smtp.gmail.com with ESMTPSA id g1-20020a1709026b4100b0019a97f180fcsm3017775plt.37.2023.03.12.08.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 08:27:06 -0700 (PDT)
Date: Sun, 12 Mar 2023 08:27:01 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional statement
Message-ID: <20230312152701.GA28100@ubuntu>
References: <20230312122928.GL14247@ubuntu>
 <alpine.DEB.2.22.394.2303121412090.2865@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303121412090.2865@hadrien>

On Sun, Mar 12, 2023 at 02:21:56PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 12 Mar 2023, Sumitra Sharma wrote:
> 
> > Hi julia,
> >
> > >> Hi julia
> > >>
> > >> I was referring to the reply you sent in this thread and asking to quote
> > >> the most relevant information in the mails so that people on the list
> > >> can know what is being discussed. And I will take care of this in my
> > >> upcoming mails.
> > >>
> > >
> > > Sorry to press the point, but you should be doing it now, not promising to
> > > do it in the future.
> > >
> >
> > I am sorry for repeating my mistake again and again and may be this time
> > too. But, I am trying to correct it.
> >
> > >
> > > If there is some challenge in doing this, please let us know, and perhaps someone can offer some advice.
> > >
> >
> > To be honest I am struggling responding inline. Right now I did it
> > maually by pasting your message into mutt and putting the ">" things. I
> > know this is not the correct way to do. Please guide me to the correct method of responding inline.
> 
> I don't use either gmail or mutt, so I'm not an expert.  But to interact
> with others about your patches, you will have to solve this problem.
> 
> You should be able to receive messages in mutt.  There is some information
> in the Outreachy first patch tutorial:
> 
> https://kernelnewbies.org/Outreachyfirstpatch
> 
> The following link may be useful:
> 
> https://www.makeuseof.com/install-configure-mutt-with-gmail-on-linux/
> 
> Once your mail arrives in mutt, you should just be able to respond to
> other people and have the >s in front of what they said directly.
> 
> julia

Thank you julia for your help. I am now able to respond inline.

Regards,

Sumitra

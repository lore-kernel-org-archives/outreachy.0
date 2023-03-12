Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B405446AE
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 17:15:22 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id a2so10576839plm.4
        for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 10:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678641322;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0B+FEiQ7tstG2jRWr8gCQu0BEhyO9O3uk4QVqM/xkIs=;
        b=f2t/akChAAlhZDVAV29yVFvVB91EitdTgZXiIHaaEw/Ztp093yoR13TF3qkenNdFXP
         C2EZA1qDpeci/wbXicfsfX2SQE2a+If98S51l0guh6P6pdigOSXnXvmISZcUWyUZLk3E
         bh2I1SO3KB2AM/4m2yZrWswqaFen8uHLnBRzUilC54AE5z3DYHLrBBlILKT/qgbQQz2m
         1XYMn21uqrv3feAlEHGm03J3bxfazfaewd2njZOyRhPFSIJdC49xS7AagSgIrOrVgZyR
         +d1TboVWWHJA9l8NrAzplFcuRm2FBhIwwRCl+Whgu1fjXZ1mJmEUM68ZRM5m0PTOv+iD
         joyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678641322;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0B+FEiQ7tstG2jRWr8gCQu0BEhyO9O3uk4QVqM/xkIs=;
        b=PDPQ8AsNtzWaB7JXvRDho0LB7qdaxT4wQ3vOBGmrml7t4GqUD8SZ0R0ZXh1LGxK53s
         UcsrEbS30EkbZj9sZOPxntE/p+ExBuImvCIJuudNBlC9+c7v8eYzPHyXznpHp7APbNhq
         NyipM9myOPaEpTRO1s1ZzZ/cN8QtRo2qFLNXmysfTpZb+OJMd7m1/KogorR42+UYYzBW
         NaBoCH94rpTqFCQDOcmIou1WHFBMHibIYnLxdRKrRu32mfwumzku4pie1czPl3XsVoxS
         RBRpaCMMNJVe8llNg9OcIP7F41VgVmPR6nlByRsDea3iKZEYrHIsFxFZI3sfD3HTzz2u
         hy8g==
X-Gm-Message-State: AO0yUKWFnyvyYOcnsW6EvQi0HQWmoC0YOy+UQNaKpJZ247ppDI6+PDIN
	OwpLKOdhRWCpw0+k6AswFn4zRN+0qbvXxw==
X-Google-Smtp-Source: AK7set/rgQEWKa58vCToQYmlbH2lhA4EOARVNqOlanWhGib0j6gdEC5DXRZFLNfKGzoBoAzZ9nKrQQ==
X-Received: by 2002:a17:902:f541:b0:19f:3b86:4710 with SMTP id h1-20020a170902f54100b0019f3b864710mr3693950plf.49.1678641322012;
        Sun, 12 Mar 2023 10:15:22 -0700 (PDT)
Received: from ubuntu ([59.89.166.125])
        by smtp.gmail.com with ESMTPSA id kb4-20020a170903338400b00194d14d8e54sm3118620plb.96.2023.03.12.10.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 10:15:21 -0700 (PDT)
Date: Sun, 12 Mar 2023 10:15:17 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Remove parenthesis around single condition
Message-ID: <20230312171517.GF28100@ubuntu>
References: <20230312071700.GH14247@ubuntu>
 <5367184.29KlJPOoH8@suse>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5367184.29KlJPOoH8@suse>

On Sun, Mar 12, 2023 at 11:39:17AM +0100, Fabio M. De Francesco wrote:
> On domenica 12 marzo 2023 08:17:00 CET Sumitra Sharma wrote:
> > Hi Fabio,
> > 
> > Thank you for the insights.
> 
> Hi Sumitra,
> 
> Please pay attention to the suggestions that Julia kindly provides to you.
> 
> A moment ago I read these other words from her to you: "Sorry to press the 
> point, but you should be doing it now, not promising to do it in the future.".
> 
> She is sorry to press because of her special attitudes. I've been helped 
> uncountable times by Julia who, despite her major role and commitments, is so 
> kind to spend time here in a Sunday morning. 
> 
> I think that it's you who should be sorry for pushing her that way... 
> 
> You are doing it again and again: in your last message you did not provide the 
> necessary context. You are asking me to recall which "insights" you are 
> talking about. I know for sure that here there is someone who read hundreds of 
> emails per day.
> 
> > I went to the .rst files because they are directly
> > linked in the first-patch document. I also noticed the difference between a
> > ".rst" file and its counter human readable ".html" file. You were right that
> > many information is being missed when anyone will read the .rst instead of
> > .html/.pdf.
> 
> Don't summarize my own words in order to make me understand what question you 
> are answering. Just put my question/objection/comment inline while replying.
> 
> Most mentors here read several tens of emails per day. You should not expect 
> them to skim the whole thread. Just reply inline, so they find all the 
> necessary context in one place and so there is no need to traverse the thread 
> to understand what you are referring to. 
> 
> You have been told so several times. You risk that someone starts to ignore 
> your messages in order to save time for other applicants.
> 

I am sorry for repeating my mistakes again and again as I was struggling
setting up the inbox in email-client and because of which I was unable
to respond inline. However, with the help of julia now I have set up the
inbox well. Hope this time I am doing it correctly.

> > I would like to suggest that the links that redirect to the .rst
> > source files in the first-patch document must be changed to the links that
> > redirect to there corresponding human readable format. Let me know if I 
> could
> > do it under the [KERNEL NEWBIEs ACCESS].
> 
> This is a great idea and I fully agree with you.
> Please ask Alison to grant access to change that documentation (it's not 
> something I can do myself).
>
> > Apart from this I will be happy to patch the style guide after this
> > contribution period.
> 
> Best applicants go on with further contributions after the end of these 
> period. This fact has been observed several times in the other rounds.
> I'd like to see more people who are seriously willing to be part of this 
> Community, regardless of the Outreachy project's deadlines. 
>

I would be happy to be part of the community.

> > Regards,
> > 
> > Sumitra
> 
> Thanks,
> 
> Fabio
> 
> P.S.: I probably went a bit too far in the first part of this email. I am 
> sorry about it. However, please demonstrate that you finally got it, not with 
> further promises but with actual changes in the way you communicate :-)
> 
> 
> 

Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A5871367
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 14:28:09 +0000 (UTC)
Received: by mail-qk1-f172.google.com with SMTP id d142so2222811qkc.4
        for <outreachy@lists.linux.dev>; Fri, 01 Apr 2022 07:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=L+3utk0bnilMbC8w69GSNlzOJUlQXi1CgmWzrm9/4mw=;
        b=l8FsMtqSuSIYzVoeu9bBlAe0XizZUu5jFKkXf0gGt/BU3kHZGO3CeS632d7RJq42a7
         OJVDMi3CvRjt5MsxGmzXiHkdQpVyktNns9wN/EHkrm3mPRIKmvkycdpmVjE5Tkzt4PdU
         q48vDErVjYgalXI1MP7BRUOrtp8bqv1plNnmlkvs9Elb/YBti4wLFdFEGAjBsgb/dtkt
         tWdWCV8YfBbdDNqQb6CsoDDpZRxlZyEiP5P5eTaioUi1wZ9UIgDItZuf0imsWzjkgC9V
         gCr24MPJ66Oh95tq7wGRXX4j9H4lqtyaE4bNui7vawMW8Jzi5CGHxSbvycxTaiwjW6UJ
         Bfeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=L+3utk0bnilMbC8w69GSNlzOJUlQXi1CgmWzrm9/4mw=;
        b=j68j2kifdIEv/GwrrF8LS/bIIoL1n6cWO0KYmyFJluPkH8w/vFENL54dpZy2irm+IR
         gUoDnzpdISKTH/uAt3cC98ZUFqutg/WCqqS9NCnlFJMgGunY3SOxTvWZi5KB8knDZsD1
         KQDLdE3JserqABU0JpZsn8gLz2T5+uqqK4Ls9tdrR/vPPA06T3Y6VDyBsQDWtcmt9eTI
         O3czbuRAWo1WEJcC6vrsViwtUuBqpXGwtdGzpkRgTgYgECf3XYKnV90FdCqpcLP/V6Lj
         0q/XtnW16VhViwikxSC21AcmduoxU9iVByIakiRl+kjjj8d9hW+J12R2n53qIfNsMxgM
         Ibnw==
X-Gm-Message-State: AOAM532Gt0fIWhAG5FF+g6a6xoxnGrwTIsPR6689wBFbAdOoZdGmNhjX
	Q9hDfObsepEhzgcn+zZY+lE=
X-Google-Smtp-Source: ABdhPJziemrWKZ6eFSd+uAuSMbksv/yoxLzP1vkjzMql1lhszGGQcb9wPhXBZREpLyKgWqU/nxGiAQ==
X-Received: by 2002:a37:48f:0:b0:67b:2755:310e with SMTP id 137-20020a37048f000000b0067b2755310emr6778015qke.470.1648823288427;
        Fri, 01 Apr 2022 07:28:08 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([4.34.18.218])
        by smtp.gmail.com with ESMTPSA id s131-20020a37a989000000b0067d2e3c51e8sm1274264qke.58.2022.04.01.07.28.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 07:28:07 -0700 (PDT)
Date: Fri, 1 Apr 2022 10:28:03 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: Finding Clean-up Tasks
Message-ID: <20220401142803.GA38814@jaehee-ThinkPad-X1-Extreme>
References: <20220331183805.GA1182645@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220331183805.GA1182645@alison-desk>

On Thu, Mar 31, 2022 at 11:38:05AM -0700, Alison Schofield wrote:
> In Linux Kernel Community we know that it takes a bit of time
> and effort to get traction on the cleanup patches.
> 
> Please ask for support on this list or irc.
> 
> Here are some notes from me. Please chime in with your current
> experiences. It helps other applicants and helps us improve
> the program.
> 
> Snowballing:
> ------------
> I can see on this list that a few folks already have patches
> accepted that are 'snowballing'. This is when a reviewer says
> 'Thanks - and how about fixing this <insert other thing> too?!'
> This is great. One patch, spawns more improvements.
> 
> Finding the first patch:
> ------------------------
> It's fine to submit patches for checkpatch "CHECK" reports.
> Get these by using the --strict option to checkpatch.
> 
> There seem to be plenty of checkpatch cleanups in staging/drivers,
> and TODO files w beginner level suggestions. I personaly haven't
> run sparse, smatch, or coccicheck. 
> 
> Another method for finding cleanups is *this* list. Scroll
> the list of PATCH Subject lines, some will catch your eye as
> not looking like a checkpatch patch. Look at it. See what they
> did, how they found it. Sometimes a cocci script is included
> in the patch body, so you can just grab that and run.
> 
> Confidence to send the patch:
> -----------------------------
> Go ahead and search on this mailing list for the checkpatch
> string. You should find many examples that match what you
> are about to do. See what worked well, what needed rework.
> 
> If you have a patch AND a question, you can send the patch
> and put your question below the scissors line. For example,
> you might see multiple instances of something but are not sure
> the patch will be well-received. Fix one instance - and below
> the scissor line ask you question: "There are 10 more of these
> in this file, just want to sanity check that my approach here
> is wanted."  (If I were doing cleanup today, I'd use this tactic
> for drivers/staging/iio checkpatch ERROR about octals.)
> 

Thank you for advice! I had a question about where to put the questions
in the patch. When you say scissor line, are we putting dashed lined
somewhere in the patch and writing our questions? Or did you mean we
should reply to our patch?   

> Just for fun, try this on this list:
> ------------------------------------
> - Search for v2, then search for v14. (You can search all the
> way in-between them also). Point is, we revision patches a lot!
> And, it's not unique to the Outreachy list. Go to any kernel.org
> list if you are feeling glum about getting to v5,6,or 7.
> 
> Here's the first patch I ever posted to this list:
> --------------------------------------------------
> https://lore.kernel.org/outreachy/20151005183935.GA3350@Ubuntu-D830/#t 
> 
> Reach out if you get stuck or need some camaraderie,
> Alison
> 

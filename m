Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B837B
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 15:17:33 +0000 (UTC)
Received: by mail-qk1-f175.google.com with SMTP id d142so2348430qkc.4
        for <outreachy@lists.linux.dev>; Fri, 01 Apr 2022 08:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=lN+rNFFMJ9KVppUdsz9Xg1IuyXuqKr5H/LWMCLFArsk=;
        b=gYXFv43492lVos4TdB0flCn5WICmh6i7mZSqhd+fy0/P278/JK/bw7LEqWuZ+YLrNd
         13kR9muAxg5MsWYWIbcxOOlCeCpweLi0qi7ZG7tNvcfJLf20niN5562byp1XEDzKy+S6
         QowoSHiK5o7S1T6bhaRXEU/SgIgDEK9KzydyLpThFikn1H0AfG8ExsPVVsn6i/Jor2Eg
         Z/VcbI8dMid+uyKKydPtaU018Ml6XPt5ni8OEOx9KI834pJjueXZ/wPXV9cbvXthzAyp
         sKEHFPcMkkXgDYMB5+l8CFplB0OrPS8R0RYgOU+VLBE7Ho+J1I3vhSghcdB7px1/Fj7q
         i0yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lN+rNFFMJ9KVppUdsz9Xg1IuyXuqKr5H/LWMCLFArsk=;
        b=05KN5Tm8u/2XLyC1BlcreUwvfCybN2qSbPi0EXfGo6TA/F1bNOB28XXVdo50zV9SbK
         fmC0yxOA5T4w5rFZz2qE5u72VP3xLX+dP4ptagaV5acol97+Ht0y4J+fcb6KYYiWsUrR
         A1/87I7hhfQVF1ndWP4OIg1Db2MyP5TS8DnUJKh0DGL9MWGvZj0+Cm4gE86O1zFeDhD2
         OATpgTIsiQQ485RwVxruh2jg+uiV4qm3rICy2VELN86T4QoLVaOVCIi5IflM3PDD3qhr
         jWxLF0vKQH6M26oEAtu+lqk03wgPr0EJgAgoQqBsbZ50q6dhvQS9TiniFsdJySbdymxA
         T4WA==
X-Gm-Message-State: AOAM532Yd7ZNu4f9DskRyipuu2j0xG0VdPEOTS8po/jX3DogiMpzLVhP
	nFaVkwE3zDkyPhFdyVqqM4U=
X-Google-Smtp-Source: ABdhPJyK+IkSJ8Uavia6nKxfZXfvVVhRva1B8OmoSOiEDWMolzexVDVgjxhi19MNUIwuM04XdAc3hg==
X-Received: by 2002:a05:620a:290b:b0:680:cfcc:4e0b with SMTP id m11-20020a05620a290b00b00680cfcc4e0bmr6955545qkp.145.1648826252148;
        Fri, 01 Apr 2022 08:17:32 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([4.34.18.218])
        by smtp.gmail.com with ESMTPSA id 11-20020ac8590b000000b002e1e5c5c866sm2071836qty.42.2022.04.01.08.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 08:17:31 -0700 (PDT)
Date: Fri, 1 Apr 2022 11:17:27 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Alison Schofield <alison.schofield@intel.com>,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: Finding Clean-up Tasks
Message-ID: <20220401151727.GA49127@jaehee-ThinkPad-X1-Extreme>
References: <20220331183805.GA1182645@alison-desk>
 <20220401142803.GA38814@jaehee-ThinkPad-X1-Extreme>
 <17732861.sWSEgdgrri@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <17732861.sWSEgdgrri@leap>

On Fri, Apr 01, 2022 at 05:14:48PM +0200, Fabio M. De Francesco wrote:
> On venerd? 1 aprile 2022 16:28:03 CEST Jaehee Park wrote:
> > On Thu, Mar 31, 2022 at 11:38:05AM -0700, Alison Schofield wrote: 
> > > Confidence to send the patch:
> > > -----------------------------
> > > Go ahead and search on this mailing list for the checkpatch
> > > string. You should find many examples that match what you
> > > are about to do. See what worked well, what needed rework.
> > > 
> > > If you have a patch AND a question, you can send the patch
> > > and put your question below the scissors line. For example,
> > > you might see multiple instances of something but are not sure
> > > the patch will be well-received. Fix one instance - and below
> > > the scissor line ask you question: "There are 10 more of these
> > > in this file, just want to sanity check that my approach here
> > > is wanted."  (If I were doing cleanup today, I'd use this tactic
> > > for drivers/staging/iio checkpatch ERROR about octals.)
> > > 
> > 
> > Thank you for advice! I had a question about where to put the questions
> > in the patch. When you say scissor line, are we putting dashed lined
> > somewhere in the patch and writing our questions? Or did you mean we
> > should reply to our patch?
> > 
> Hi Jaehee,
> 
> Alison is talking about the three dashes that patches have soon after 
> the line with the "Signed-off-by:" tag.
> 
> Look at your own patch as an example:
> 
> "Change variable name to be consistent with the naming conventions.
> ssidlen was changed to ssid_len and ssidie was changed to ssid_ie to be
> consistent. This makes the variables more readable. The other ssid
> names in the code are separated by an underscore. For example,
> bssid_filter and num_of_ssids have the ssid separated from the rest of
> the words with an underscore.
> 
> Signed-off-by: Jaehee Park <jhpark1013@gmail.com>
> --- 
> 
> -> Place your questions and revision history here <-
> 
> drivers/staging/wfx/hif_tx.c | 10 +++++-----
>  drivers/staging/wfx/sta.c    | 20 ++++++++++----------
>  2 files changed, 15 insertions(+), 15 deletions(-)"
> 
> Regards,
> 
> Fabio M. De Francesco
> 
> 
>
Got it, Thanks Fabio!

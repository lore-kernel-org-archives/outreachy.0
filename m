Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5991FAD50
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 21:21:03 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id h14so15295567pjv.4
        for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 14:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u4yQ2OAUTQTsOfmiYzJiJItSAmwEwiqZSIgidGdE4Yk=;
        b=nfAIehcrSnPwIvyHMJli5AClkJ5jWnO+blb0yDbewPZr5d0IOebLqr/iF27C1DabC8
         atpxzeE08Q6E3div9E+NeFYrgIM/ekZzuV7BGibi0XO2fI1MsPT9X/AFOz8NJHN4w8SI
         u28NwlsXLWRAqA9AvAfY1pn1k1yo8mS0Df5BFle9Q1eLzuTYwUE7KE1wPj04VcunuqCI
         hMpFugDniukLDAeyLfdS8zdcIqK3CqohnNhZFVmng4Z3AXluJ3MYp1xnLi3IJucq8lIG
         foLFoS2O7lITOjwuGJeTqTSA5sR37fKUSsUsafYnTPVNiAXuhjafia5In2vSzNX373kE
         sANQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u4yQ2OAUTQTsOfmiYzJiJItSAmwEwiqZSIgidGdE4Yk=;
        b=m2NW/jkezr3oDmWp2XoWRk8ke6Cb4VZLTV7/ST2ndExohHr88Ds1/eyI3hlH7WEHUY
         c7rkWQSFZNjEFwygFmi/tSbhXLBdiYD+AJf8vWuIBKubGeVracz/lVKiLFsVlnNM/srK
         sF5ow0MRqGF+aueyYlPoE5SnJgLHCJs6+wIYVqVhfEvmi8OKXsMCNFjXQ3k3Z0Krz+R0
         NgbKFI5JPRy2Uzs3XB8YyhBt7OW90oGYj1z7pCwZL0y3QbGQqP3f1DjkyUI53aW7bNC1
         P3B6Rxd0ber5ot4AtrNfLV9a6hMiUCMRnaKmWbZiWREdnQ76W/vJx03+Pve0gWBfarA9
         oNTQ==
X-Gm-Message-State: ACrzQf236IMJ5fjre7lHR92LWpoA9yltI1KRlfsk4nVgddhqhyeLHa8V
	BaHUNUW5LP3IdB6m14sPBNlatzuwi10/oQ==
X-Google-Smtp-Source: AMsMyM5f9RSb1hRYoxXKp1i59K9yKs6Cd9i8458eLb48rW9VifPXAjdS//dgjHso2CByWHzt7Louvg==
X-Received: by 2002:a17:90b:4a09:b0:20c:316d:e58b with SMTP id kk9-20020a17090b4a0900b0020c316de58bmr6371164pjb.217.1666819262774;
        Wed, 26 Oct 2022 14:21:02 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id b6-20020a170903228600b00174f7d10a03sm3404822plh.86.2022.10.26.14.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 14:21:02 -0700 (PDT)
Date: Wed, 26 Oct 2022 14:21:00 -0700
From: Emily Peri <eperi1024@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy] Coccicheck in drivers/staging/
Message-ID: <Y1mkvGCvLNaHCCRG@marshmallow>
References: <Y1l+28m+o5IQxT/Q@aschofie-mobl2>
 <Y1mMSAT96WFdPTN2@marshmallow>
 <Y1maOFE9/JKmRyJo@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1maOFE9/JKmRyJo@aschofie-mobl2>

On Wed, Oct 26, 2022 at 01:36:08PM -0700, Alison Schofield wrote:
> On Wed, Oct 26, 2022 at 12:36:40PM -0700, Emily Peri wrote:
> > On Wed, Oct 26, 2022 at 11:39:23AM -0700, Alison Schofield wrote:
> > > I took a peek at drivers/staging to see what you all may discover
> > > when running Coccicheck.
> > > 
> > > I simply used the Fedora pkg mgr.
> > > $ sudo dnf install coccinelle
> > > (That got me coccinelle 1.1.1-5.fc36)
> > > 
> > > $ sudo dnf builddep coccinelle
> > > 
> > > From root of my kernel tree:
> > > $  make coccicheck M=drivers/staging/ | grep -i warning
> > > 
> > > That showed many places to drill down further and cleanup.
> > > 
> > 
> > Thank you for explaining this! 
> > 
> > Since we are getting close to the Outreachy application deadline and
> > several of us have completed the First Patch Tutorial, is there any more
> > description of what an internship with this project will look like? Have
> > interns worked on coccinelle in the past, and what kind of impact did
> > they have?
> 
> Coccinelle, and improving Coccinelle itself, has been the topic
> of many past internships. Julia Lawall, who has been commenting
> on you patches is the creator of Coccinelle has mentored interns
> in developing new support in the Coccinelle tool - for the
> Linux Kernel.
> 
> The project this round is labelled as 'Coccinelle cleanups in
> the Linux Kernel' Of course, the selected intern(s) may take
> it further than that and improve Coccinelle itself. Ones you
> get into it, you follow the work!

Sounds good! Speaking for myself, I want to do what is most useful, but
I'm also hoping to learn some new skills in the process.

> I'll let this round Coccinelle mentors, Saurabh and Praveen,
> fill in more about there plans
> 
> > 
> > Two areas that I think could use updates are the website and
> > documentation. If this is a project that will take on future Outreachy
> > applicants, I think it would be very useful to create coccinelle
> > instructions/tutorial for Outreachy. Are these ideas within the scope of
> > the internship?
> 
> Improving the documentation along the way is always welcome. 
> 
> > Thanks so much for making this internship possible in the first, I
> > understand its a lot effort on top of everything else that you do!
> > 
> > Emily
> > 
> > > 
> > > 
> > > 
> > > 

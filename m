X-GM-THRID: 6462750425813614592
X-Received: by 10.46.85.7 with SMTP id j7mr17348ljb.7.1504726341047;
        Wed, 06 Sep 2017 12:32:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.66.88 with SMTP id p85ls171166lja.44.gmail; Wed, 06 Sep
 2017 12:32:19 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4HtrJOpyM2De0Qp7MoMYMqF27Fv5CcgKk64gvoMkUcENb6Dl79rNrapbANuNKHaFSgRpvM
X-Received: by 10.46.80.25 with SMTP id e25mr18669ljb.10.1504726339552;
        Wed, 06 Sep 2017 12:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504726339; cv=none;
        d=google.com; s=arc-20160816;
        b=KblroEU8+FQajokvB85vg/vX1gzi2mGTF3vfhUxdJSumN7SgVbRTuEW2HO1dRdcaZ4
         s12kPNSKrsDjoTtdbCEC7ke/UtKSYgPUZF8kBWv1zKVRkpjOrgwG2LXd5XkZ/Hmf8QOO
         hew7NtvVEgDrVsJAYWO5xOwLwUTkmv+ksVa9FeInyZqBnIvGwflN3zn4k9LY9/LIZnsQ
         DU22iiNRtRC1DDtirCTBgEP23UWa+ETkGXDi1DBhSslayxQos+f3Uc4oscf4KxzGAVHs
         NM6f6UPANrTdmfmUCi9+fDMxW/EDLFfnYyDIr2TsjzSYnw8Zh/esw3FjUqSJl/cJZYWx
         8dew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:subject:to:from:date
         :content-transfer-encoding:mime-version:arc-authentication-results;
        bh=g4hnYJosIDqWg0C3qq/cW5ZUt1zkfDVPyRKQ8u320mk=;
        b=lFHq6RwM4FU8KZr3H2Iyyq+pzuU3tE53hZ1QiT8vtSYTlUR/jcnegH6wJkcXaejJU8
         x1cBU/2iY9Onbs9Un8oAExvs4fdQn/VCvQcuu9RXPjcVJonB5R7lWlcQ0UxkRmiVMdS4
         yqjCTHbe51I1NOxP853KW6kWTLZkxxo4p/v+cR+D/b5tWEAIjBEVl2K+EKKk+nqb35Un
         7zY/y6eyGsZuZtU1q1ZtRdP4u1nJXDsL0QOY9M/cB981ubwnLIpvsfoHmNLK+4zRzJdn
         ubDehyrI/9NBAvF1J0ypitfLLGmiAcl875kdK8d3FmTrtfcHcu+zbhwSTUjJ+yjjAXcJ
         v/Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@lip6.fr designates 132.227.60.30 as permitted sender) smtp.mailfrom=Julia.Lawall@lip6.fr
Return-Path: <Julia.Lawall@lip6.fr>
Received: from osiris.lip6.fr (osiris.lip6.fr. [132.227.60.30])
        by gmr-mx.google.com with ESMTPS id r8si198577wma.4.2017.09.06.12.32.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 12:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@lip6.fr designates 132.227.60.30 as permitted sender) client-ip=132.227.60.30;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@lip6.fr designates 132.227.60.30 as permitted sender) smtp.mailfrom=Julia.Lawall@lip6.fr
Received: from poleia.lip6.fr (poleia.lip6.fr [132.227.201.8])
          by osiris.lip6.fr (8.15.2/lip6) with ESMTP id v86JWH6U013516
          for <outreachy-kernel@googlegroups.com>; Wed, 6 Sep 2017 21:32:17 +0200 (CEST)
X-pt: osiris.lip6.fr
Received: from newmail.lip6.fr (localhost [127.0.0.1])
	by poleia.lip6.fr (Postfix) with ESMTPA id 6174532B15D
	for <outreachy-kernel@googlegroups.com>; Wed,  6 Sep 2017 21:32:17 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 06 Sep 2017 21:32:17 +0200
From: Julia Lawall <Julia.Lawall@lip6.fr>
To: outreachy-kernel@googlegroups.com
Subject: Oureachy round 15 welcome!
Message-ID: <6fc52927e06212257f41b17eb6d4ea9c@lip6.fr>
X-Sender: Julia.Lawall@lip6.fr
User-Agent: Roundcube Webmail/1.3.0 
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (osiris.lip6.fr [132.227.60.30]); Wed, 06 Sep 2017 21:32:17 +0200 (CEST)
X-Scanned-By: MIMEDefang 2.78 on 132.227.60.30

Greetings potential Linux kernel Outreachy interns!  Please read this
*entire* email, even if you have applied in the past.


What is Outreachy?
------------

The next application round for Outreachy internships starts tomorrow,
September 7 and ends October 23.  Outreachy interns are paid $5,500 to 
work
on a full-time internship with an open source mentor from December 5, 
2017
to March 5, 2018.  Interns are also granted a $500 travel stipend to go 
to
any conference approved by their mentor that relates to their project.


Who can apply?
--------------

To qualify to apply for Outreachy, you must meet the following 
requirements:

  * You must be over 18 by December 5, 2017,
  * You must be able to work full-time (40 hours per week) from December 
5,
    2017 to March 5, 2018,
  * You must not have school obligations for more than a short period 
during
    December 5, 2017 to March 5, 2018, unless 50% or more of your school
    time is a project course, and the internship is being done as the 
project,
  * You must be a woman (cis or trans), or a gender queer, gender free, 
or
    gender fluid individual, or a resident or national of the United 
States
    of any gender who is Black/African American, Hispanic/Latin@, 
American
    Indian, Alaska Native, Native Hawaiian, or Pacific Islander, and
  * You cannot have been an Outreachy intern or Google Summer of Code 
intern
    before.
  * You are not a resident or national of Crimea, Cuba, Iran, North 
Korea,
    Syria, or Sudan.
  * You are eligible to work in the country or countries in which you 
will
    reside throughout the duration of the program.
  * You are not a person or entity restricted by US export controls or
    sanctions programs .

Please contact organizers@outreachy.org if you will be in school between
December 5, 2017 and March 5, 2018 and have any questions about your
eligibility.

What Outreachy projects can you apply to?
-----------------------------------

There will be several different open source projects participating in
this round of Outreachy.  The full list will be available soon.

The Linux kernel expects to offer four projects, which are already 
listed
on our wiki.

http://kernelnewbies.org/OutreachyIntro


How do I apply to the Linux kernel project?
-------------------------------------------

The application process for the Linux kernel project is outlined here:

http://kernelnewbies.org/OutreachyApply

Basically, applicants will need to walk through our tutorial for
creating their first Linux kernel patch:

http://kernelnewbies.org/Outreachyfirstpatch

It is not necessary to contact a mentor before starting the tutorial.

Applicants should also join the #outreachy IRC channel on irc.gnome.org, 
and
the #kernel-outreachy channel on irc.oftc.net.  If you're having trouble 
with
IRC, please ask for help on this mailing list.

As in the last Outreachy round, we are encouraging applicants (once they
have completed a number of Staging driver cleanup patches) to complete 
some
small tasks outlined by the mentors.  The task lists for each mentor are
linked from the OutreachyIntro page.

*Before* you start on a task, please claim that task through this page,
unless the task explicitly states that this is not necessary:

http://kernelnewbies.org/OutreachyTasks

There is a tips section at the end of the tutorial to outline what
behaviors we look for in potential Outreachy interns.  I hope this will
give more insight into our selection process.

http://kernelnewbies.org/Outreachyfirstpatch#tips

Note in particular that interns are not selected based on the number of
accepted patches.  This factor is taken into account, but the quality of
the work is more important.  It is better to make smaller changes that
reflect an understanding of the code than large changes that address
typographical issues.

We've also noticed that applicants (and even accepted interns!) aren't
consistently using the email communication style preferred by the Linux
kernel community.  This style can be as important as coding style to
many community members, so please review the email style guidelines and
attempt to follow them:

http://kernelnewbies.org/Outreachyfirstpatch#head-9799d3ebaa1221875dfdb0a05c4063dc4eb474a1


When can I apply?
-----------------

The application period for the Linux kernel project during Outreachy 
Round 15
is September 7 to October 23.

Good luck with your application!  If you have any questions, mentors
will be available via IRC or this mailing list.  Do not hesitate to ask
questions if you get stuck in the tutorial.

Julia Lawall
Linux Kernel Outreachy Coordinator


X-GM-THRID: 6330239262484594688
X-Received: by 10.66.16.135 with SMTP id g7mr2783792pad.27.1473873681536;
        Wed, 14 Sep 2016 10:21:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.225 with SMTP id s94ls538482ioi.15.gmail; Wed, 14 Sep
 2016 10:21:20 -0700 (PDT)
X-Received: by 10.66.188.137 with SMTP id ga9mr2818798pac.23.1473873680830;
        Wed, 14 Sep 2016 10:21:20 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id si10si1573675pab.1.2016.09.14.10.21.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 10:21:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id p2so998225pap.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 10:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OlU71Xfwsb8w15jPOnx5e7Tg6vl2elVjFuXCywmfrLA=;
        b=qXVzAjrCYvoOSfxL8wLmhmNESPDAlZfZCUEbFsB5N+OW/zYihHXHeWT1SokEQ3D2fc
         Mc4O9l9c61NF8QOtCeESPPuOt9MG34xryY26liQopXxCfLPK6ew2OQOpkN658C44c5PM
         +bizHDwQs6c+rX+yzm+cZM3jyBV8LKIUs3w8Xp/Xto6/gR7tXgpeL2SJpCtQZoPdYyAj
         RlPgURYpJ6y0encIRNhAgY1+mBF/3vws7lFZQ3PSLHTFCoeRKTppgiHS8jOI7yB/OJV+
         P8A4CbFTIEXn6lYD2hFzjnNLA9Evjfqwx2ikJUY7HabHu9xmZUhxrHIDyFTC6+RbY7tb
         NSMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OlU71Xfwsb8w15jPOnx5e7Tg6vl2elVjFuXCywmfrLA=;
        b=PPy69OxH4yx+sdHkeZ4o29pNwnBX+JyNr8LLmjAvSupDzS2XmUmYmQg2+hY3jyHglC
         9h33JgIvrzZTZXH93557gkL32zJRFDqTI+k342F2XvlTyYCB/HBJip78sc1YtB93pBmy
         0GI7XLnkUdfR6Fegs67RMAIwB+tHIXeYF76EL/ju93owLgVV1g3NtLc5/dqgBxu4rmVu
         mR5JBRc8K4i4D1AjfBN4jASSbTZ3MxECac+qoB1UEj3MwYn8mGf6D485alGTuAoiYosc
         BiMKaUf5bg9+K0teskiv3WjXK/M9xaGB4xVHCUWdfJzBF1u0HYPH9h7/6uyA9i6MG1iv
         vKqQ==
X-Gm-Message-State: AE9vXwNBOaeubldPksVuSbHxGBdTMXQ8OLT4s7Lm9b80trrY8y8c9DFleAjIoBe2kHRqTA==
X-Received: by 10.66.155.7 with SMTP id vs7mr6464140pab.154.1473873680273;
        Wed, 14 Sep 2016 10:21:20 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id xw10sm6909367pab.0.2016.09.14.10.21.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 10:21:19 -0700 (PDT)
Date: Wed, 14 Sep 2016 10:21:16 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Shares from application experience
Message-ID: <20160914172108.GA2848@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Hi applicants,

I wrote this after my Outreachy application experience.  Maybe you'll
find something useful inside.

Here are my top shares from the application period:

o First Patch Tutorial

  Follow the first patch tutorial and review it periodically.
  You can submit your first patch without understanding the details
  of everything the first time, but as you move along, things in there
  may become more important, and will make more sense, so review it
  once in a while.  Each time you'll get another a-hah!

o Doing code cleanup

  I starting out hating it, and ended up hating it less ;)
  Although it seems pretty superficial it's scary because you are
  touching code that you don't completely understand nor are capable
  of testing.  The positive side to this is that it forces you to
  concentrate on your pure C development skills and be a very careful
  reviewer.  You do learn a lot, you start to see patterns...it's good!

o Checkpatch'ing your patches

  The checkpatch check that the first patch tutorial instructs you to
  put in your git tree, will print a message if the commit you are
  doing has a checkpatch error (CHECK,WARNING,ERROR).  Follow the
  directions, and create it and test it.

  If you're thinking, hey, I'm running checkpatch all the time, I don't
  need this, use it anyway.  It'll catch it if you inadvertently add
  white space or blank line at the last minute.  Look for the messages
  it prints.  It prints the message as you are doing the commit, so you
  don't really see it until you exit the commit.  Make sure you look and
  amend the commit if there is a problem.

  You might be saying - hey, I just want it to abort the commit immediately
  if there is a checkpatch error.  I had that same thought and changed
  it to simply stop the commit. Then I came upon the case where it fails
  for something like camelcase that I didn't insert and I was not intending
  to correct in this patch.  So, you see, there are times you'll want to
  commit anyway.  Note, that'll usually be for checkpatch 'CHECK's,
  not WARNING's or ERROR's.

  And, if you get out of the application period and think you've mastered
  submitting clean patches, I hit upon another gotcha.  That checkpatch
  check you inserted was in the staging git tree you created for Outreachy.
  As you go forward and create other git trees, you will have to replicate
  that checkpatch check in those trees. 

o The Outreachy Google Group Mailing List

  You can follow along on the list in google groups, and/or you can have
  the mail delivered to your inbox.  At first I followed along on google
  groups, but I found when I wanted to comment on a thread that I didn't 
  start, it was hard to do so in google groups.  Remember we want to send
  plain text email.  So, allow the mail to be sent to your (mutt) mailbox,
  and you can delete it easily and also comment easily. 

  Always group reply.

  The mailing list is a great resource to see what comments mentors are
  saying about other patches.  Spend some time there and scroll back 
  through previous Outreachy rounds too.

  Having said that, the list can appear overwheliming.  Here's how you
  might use that: 

  - if you see a patch of interest, you may find it needs to be fixed
    somewhere else in the staging tree

  - if you see a patch you were about to do just got submitted, you don't
    necessarily have to abandon it.  For example, you just created a
    cocci script to find something and all the instances of that have just
    been submitted.  The point is you were trying to demonstrate your
    cocci script and your ability to patch it.  So, go ahead and submit it.
    Let the mentors see it.  Sure, it probably won't make it into the 
    staging tree, but you will still get the patch reviewed.

  - Set &/or evolve your own goals
    Its been my observation that there are accepted applicants who
    submit a bazillion patches and ones who submit a few.  You'll
    want to get your minimum patches completed, so you'll develop a
    strategy for that. Beyond the minimum you'll have your own
    goals and strategy.  For example, I spent hours and hours (and hours)
    on the IIO tasks.

o Are you sure you COMPILED that?

  The mentors are extremely patient with everything, but if I *had* to
  pick a worst offense, I would choose failure to compile.  

  Checkpatch errors, munged email, coding/logic errors, bad log entries,
  formatting issues, are all caught on review and that's why the whole
  firstpatch process exists.  But, a compile error, which is not always
  caught on review, breaks someones build, and so that's costly.  
  
  Of course, no one intentionally doesn't compile!  So, before you
  submit be sure you are actually building the module.  The firstpatch
  tutorial explains how to config your module to build.  (Before I 
  decided on a cleanup to do, I made sure I could build that module.
  I can't recall which, but I know I abandoned at least one cleanup
  idea because I couldn't get the module to build.) Go old school:
  remove the .o, see it compile anew.  Be sure.

  For this, a 'sandbox' branch is helpful.  Mail the patch to yourself,
  apply the patch to your sandbox, compile the driver.  Good sanity check!

Catch me though email on on IRC as alisons.





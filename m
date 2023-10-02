Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AB3ECE
	for <outreachy@lists.linux.dev>; Mon,  2 Oct 2023 05:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=ZZ+ne8HIqPOuapayzQuEHJEIQ1ojYfkqTfg+GXO9fPk=;
  b=r0W1zYeL5QH9aIk2FcGnOD/PZXNyBLTiQL4I2ISciKDUAhaGNF5PTQQL
   fsg/kGiQzqi9N40A55aGcjK1UqQUGAsf+sVcObXz5RYMQfqc2Kod4L7ty
   Ru7z1Mcy2tx6iBY7sjgMll9PhQRktmJ99AiTZqP66UEehJcB4VB19gqA1
   8=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,193,1694728800"; 
   d="scan'208";a="67469216"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Oct 2023 07:42:13 +0200
Date: Mon, 2 Oct 2023 07:42:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: outreachy@lists.linux.dev
Subject: ANNOUNCE: Welcome applicants for the December 2023 round
Message-ID: <alpine.DEB.2.22.394.2310020741050.3166@hadrien>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Welcome potential Linux kernel Outreachy applicants!


Please read this *entire* email, even if you have applied in the past.

We are offering three slots and five possible projects in this round.  You
can see the projects on the Outreachy website, if your application has been
approved.

The 'Contribution Period' for the December 2023 Cohort runs Oct. 2, 2023 to
Oct. 30, 2023.

Our contribution period process works entirely via this mailing
list. Make sure that you read over the emails on this list daily.
Mentors and I will be posting updates here. Most importantly, it
is where you will learn from each other, by following the questions
asked/answered, the patches submitted, and the reviewer feedback
offered.

You found this email, now make sure you are personally subscribed
to this list:
Subscribe: outreachy+subscribe@lists.linux.dev
More subscriber options: https://subspace.kernel.org/lists.linux.dev.html
View the archive: https://lore.kernel.org/outreachy/

Ask your questions on this mailing list. If your question is directed at an
individual, then still 'CC this mailing list. This way you'll be able get
quick responses to the issues you're facing. Please help other applicants
who face issues that you've addressed.

Support may also be found on IRC. Join the #outreachy IRC channel on
irc.gnome.org, and the #kernel-outreachy channel on irc.oftc.net.

The contribution period process for the Linux kernel involves two parts.
In the first part, you should read the Outreachy first patch tutorial
(https://kernelnewbies.org/Outreachyfirstpatch) and get accepted at least
10 cleanup patches, including at least two patch series.  Getting a patch
accepted takes time, because there are many small details to keep in mind.
Please do not submit your second patch until your first patch is accepted.

Getting your cleanup patches accepted is very important, because it will
teach you how the Linux kernel community works.  The experience you will
get in this part of the contribution period process will help you will any
Linux kernel project.  Indeed it is not necessary to have chosen a project
nor to be in contact with a mentor to get started with the cleanup patches.
All patches should be sent to the Outreachy mailing list, as well as to the
maintainers and mailing lists indicated by the get_maintainer.pl script
(see the tutorial for more information).  Mentors will help you improve
your patches and will help you learn about the overall patch submission
process.  Don't delay on this part!

Once your first patch is accepted, please record that contribution
on the Outreachy website. It will serve to check your eligibility.
Only eligible applicants will be able to log contributions on the
Outreachy website.

Once you have ~10 cleanup patches accepted into drivers/staging by GregKH,
you can move on to the second part of the contribution period process, by
completing Starter Tasks outlined by the mentors here:
https://www.outreachy.org/apply/project-selection/#linux-kernel Note that
this part is actually less important than the first part.  In choosing an
intern, the mentors will look for interns that have fully mastered the
patch submission process, and the only way to do that is to practice.

Some hints:

* During the contribution period, you should focus on drivers/staging,
  unless asked to do otherwise by a mentor.  You should also ignore
  drivers/staging/media.  This will maximize the chance that your patches
  will be accepted in a timely manner, and having your patches accepted is
  a requirement for getting an internship.

* A good starting point is to use checkpatch.pl to find style issues in the
  drivers/staging code.  However, checkpatch is a pattern based perl
  script; it doesn't know about the semantics of the code.  Use common
  sense at all times about whether the suggestions made by checkpatch will
  make the code look better.

* Try to start small.  Some files in drivers/staging may have many
  instances of a given problem.  Consider whether it makes sense to focus
  on one more specific kind of change, or the changes needed in one
  function.  This will make your patches easier to review and you will get
  feedback more quickly.  But of course it has to remain possible to
  compile the whole file.

Please see the tutorial: https://kernelnewbies.org/Outreachyfirstpatch for
more information.  The patch philosophy document:
https://kernelnewbies.org/PatchPhilosophy is also very useful.

Good luck!  We look forward to working with you :)

Julia Lawall
Linux Kernel Outreachy Coordinator

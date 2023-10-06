Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F7E156E5
	for <outreachy@lists.linux.dev>; Fri,  6 Oct 2023 10:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="MmTCwXy1"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=T1kXsjoE2iT49/5hAnF0MfsIJ4pvxnG6g3ZlWozcTRM=;
  b=MmTCwXy1X1X6QnvNBNktx2o7kYGYfmf3HPXu6hJNhFGwomwcj9YXqN52
   IRJc9WcmJrfeM9HT1tpZFm1/92VgrQYliPZegRmYaVu3xSzuJdPKQE/Z5
   MvN/HUnvAsAcNfDmWBwFyoayEC9AYpDlws4m0oyLn8UZcHoIGjsr4GN1A
   w=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,203,1694728800"; 
   d="scan'208";a="67960419"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Oct 2023 12:47:35 +0200
Date: Fri, 6 Oct 2023 12:47:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel@collabora.com>
cc: Anushka Dasgupta <mithis2000@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Outreachy Contribution Round Guidance
In-Reply-To: <47cf787e-7950-e2e1-824a-78612b5ad153@collabora.com>
Message-ID: <alpine.DEB.2.22.394.2310061246190.3197@hadrien>
References: <CAAOp8YqtqX4aemwaL2Fa14muYH_aeFR+Nx9UH5fD4nh7XU3mWg@mail.gmail.com> <4dde53b2-befe-0166-a52e-e0e190352f41@collabora.com> <CAAOp8YphxQKZiFAh_VmHKjTjQjmTNcGapQ2cc0zF-kGDtTsuJQ@mail.gmail.com> <47cf787e-7950-e2e1-824a-78612b5ad153@collabora.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1414613759-1696589255=:3197"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1414613759-1696589255=:3197
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 6 Oct 2023, Shreeya Patel wrote:

> Hi Anushka,
>
> On 06/10/23 07:39, Anushka Dasgupta wrote:
> > No, I don't have 10 patches accepted in Linux Kernel. I'll complete it.
> >
> > Thanks for the information.

Welcome Anushka,

Please send all mails to the outreachy mailing list.  You should also take
a look at the recent ANNOUNCE message in the archives of that mailing
list.  The discussions with the other interns may be helpful too.

julia



>
>
> You can follow the instructions given here
> https://kernelnewbies.org/Outreachyfirstpatch
>
>
> Thanks,
> Shreeya Patel
>
> >
> > On Fri, 6 Oct 2023, 00:15 Shreeya Patel, <shreeya.patel@collabora.com>
> > wrote:
> >
> >
> >     On 05/10/23 18:00, Anushka Dasgupta wrote:
> >     > Hey mentor Shreeya Patel,
> >     >             My name is Anushka Dasgupta. I am writing to introduce
> >     > myself as a contributor for the contribution period of the
> >     Outreachy
> >     > December 2023 internship round. I have been following the project
> >     > *Linux Kernel* for some time now and I am very impressed with
> >     the work
> >     > that has been done so far. I am particularly interested in the
> >     topic
> >     > *Extend the support* *for regression reporting and tracking in
> >     Linux
> >     > Kernel.* I have knowledge in C programming and I am confident
> >     that I
> >     > can make a significant contribution to the project in this area.
> >     >             I would be obliged if you could guide me and provide me
> >     > with more information about the above mentioned topic so that I can
> >     > make a contribution before the deadline. I am also interested in
> >     > learning more about your expectations for Outreachy interns and
> >     how I
> >     > can best prepare for the internship.
> >     >
> >     Hi Anushka,
> >
> >     Good to see there are many Indians participating in Outreachy
> >     every year :)
> >     Also, thanks for showing your interest in the project. Before we jump
> >     into the project and initial task details,
> >     I'd like to know if you have 10 patches accepted in Linux Kernel?
> >
> >     If not then I think that will be your first task and then only
> >     you'll be
> >     able to move onto the project's initial task.
> >
> >     Feel free to reach out to me or in the Outreachy mailing list to
> >     ask any
> >     questions related to the initial contribution of 10 patches in
> >     Linux Kernel.
> >
> >
> >     Thanks,
> >     Shreeya Patel
> >
> >
> >     >             Thank you for your time and consideration. I look
> >     forward
> >     > to hearing from you soon.
> >     >
> >     >
> >     > Regards.
> >     >
> >     >
> >     >
> >
>
--8323329-1414613759-1696589255=:3197--

Received: from m228-62.mailgun.net (m228-62.mailgun.net [159.135.228.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452BF1363
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 21:38:51 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=codeagain.dev; q=dns/txt;
 s=smtp; t=1648849131; h=Content-Transfer-Encoding: MIME-Version:
 Content-Type: References: In-Reply-To: Date: Cc: To: To: From: From:
 Subject: Subject: Message-ID: Sender: Sender;
 bh=kL0YzjM8JV6X9Of6gBs4D64BbEjr6okBDe7FUfK+jOg=; b=WuCjO6Au+OSL7s7gO7nxK92qeH/V7Ly4ad7aosCWLlEHMKcSomUu8rSe0+WZpcpNFOC/64Uy
 RwlvZEbCX/3AzjjOk+pWNjjlCi0gStpmRwcqcyAP0IX84vPHqQmg+QkaVelV2UVbhZJEzllT
 mx+AG/vOUK4xGDrwCx9zJ8qJzgNCP/ou8VsFyCsE5vqWVKJHQ3p9gGs5YiRF2Up8VbKZidEi
 OA8gPcnxA/ljMmO5u+2k7Fsf4bd+SKqj7gVg5eGAm2Z4kUEvT0wtDIjq273wwJ/Z1pjHNvoh
 Od2YtNKJkI3+HjV1BIRZraSlKDRhLKZSzmePS6KsBx8NC3fBhgrbfg==
X-Mailgun-Sending-Ip: 159.135.228.62
X-Mailgun-Sid: WyI2Y2ZlNyIsICJvdXRyZWFjaHlAbGlzdHMubGludXguZGV2IiwgImJlOWM2ZCJd
Received: from [192.168.21.4] (dynamic-user.170.84.58.28.mhnet.com.br
 [170.84.58.28]) by smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 624770ea0418b8d3d76a1315 (version=TLS1.3, cipher=TLS_AES_128_GCM_SHA256);
 Fri, 01 Apr 2022 21:38:50 GMT
Sender: codeagain@codeagain.dev
Message-ID: <3dfdcbd06a0fe14254a7874b4894261da85073e0.camel@codeagain.dev>
Subject: Re: Information for the Kernelnewbies Outreachy Docs
From: Bruno Moreira-Guedes <codeagain@codeagain.dev>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy linux kernel <outreachy@lists.linux.dev>
Date: Fri, 01 Apr 2022 18:38:47 -0300
In-Reply-To: <20220329175444.GA1170522@alison-desk>
References: <3485392358307ad16335e30e6bd41c78cc977840.camel@gmail.com>
	 <20220329175444.GA1170522@alison-desk>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Tue, 2022-03-29 at 10:54 -0700, Alison Schofield wrote:
> On Tue, Mar 29, 2022 at 01:24:17PM -0300,
> brunodout.dev@gmail.com wrote:
NOTE: I posted my first e-mail with my gmail account, but the above
address and the one I'm using right now are the same person.
> > 
> > I am sharing some info that could be updated in the KernelNewbies
> > Outreachy tutorial.  Some instructions for Arch(/Arch based) users
> > and possibly other minimalist VM setups
> 
> These sound very useful. Can you update the wiki yourself:
> 
> From the https://kernelnewbies.org/Outreachyfirstpatch :
> 
> 'To edit the wiki, create an account, and then send an email to
> the outreachy@lists.linux.dev with the subject "[KERNEL NEWBIES
> ACCESS]
> username", where username is your kernel newbies username.'

Just a follow up, I already requested a couple of days ago, and I have
updated the OutreachyfirstpatchSetup page[1] now including the
enumerated items from the previous e-mail and some new details.

> 
> Thanks!
> Alison
> 
> > 
> > REQUIREMENTS
> > 
> > 3. Possibly python3
> > I was following the tutorial for the staging kernel tree,
> > and ran `make` to build the kernel (I usually run `make
> > bzImage` followed by `make modules`, like usual in 2005
> > LOL), and got an error that python3 wasn't found. I installed 
> > python but then switched back to my old procedure and it worked.
> > I'm not sure if the default target isn't doing something else,
> > since re docs[1] also don't mention python3 as a requirement.

I added this requirement and detailed the reason it might be needed:
several self-test and kunit tools in the /tools tree require python.
It likely explains why I just got the missing python error when I
built with `make` (default target) and not when running `make bzImage
&& make modules`.

I also added perl, which wasn't missing in my list but in minimalist
setups it might. Also added information regarding perl modules that
might be necessary for other tools, that could be installed easily
with `cpan`.

> > 
> > ARCH PACKAGE NAMES
> > 
> > some packages will be differently named. I have listed them just
> > in case anyone feels stuck:
> > 
> > 1. gitk => already contained in: git
> > 2. git-email => already contained in: git

I detailed the above differences in packaging scheme in the wiki, but
I didn't update the information below:

> > 3. esmtp => libesmtp

Turns out this information was wrong, libesmtp and esmtp are not the
same package with different names as I thought, it's actually not
provided in ArchLinux official packages (to my knowledge). I think
users might find a build package in the AUR repo, though. However, the
`mail` utility, from the 's-nail' package, can also be used to achieve
the same goals. I'll go back there and write about that at some point.

> > 
> > REFERENCES
> > [1] https://docs.kernel.org/process/changes.html
> > 
Regarding kernel docs missing some points, mentioned in the original
post, could I update kernel docs on that too? I've found the online
docs to be based on the docs present in Documentation. Also, would it
count towards my 10 patches requirements? (I plan on doing anyway, but
the answer would help me to prioritize)
> 

REFERENCES 
[1] https://kernelnewbies.org/OutreachyfirstpatchSetup


-- 
Sincerely,
Bruno | Pronouns: they/them/theirs
IRC: CodeAgain

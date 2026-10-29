Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.104
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793280790;
	b=oYeiP/adZi+yjn08vJ6aBYcax/dBI+0DbY6kLqye8LdjtNbo2sox+S2D8h5sR/8e+b5y
	 fgofgsKnYxwJlSFwB8SbhIfQV0Bf/9AnlsC4gTQGF0ZeTs31hkERxUATT8OKAR7FSRDgD
	 8g5WgjcanJZedZTniH9upwGSkym7SgRHRE1B5bloJI4peY/2nWtXGU9kxiwbYn8K4PVCZ
	 sGhrzIYTudCPp5ew5S46K89Sn5o9HIu/5e1oSb/Cbt3fOlq0/SRSI70JqLYUd7qfbx8IA
	 Ax6IbGxzXXHNuDqWveVq7r/KluMPCFHr5DO/kFs8ZzkMWdMT3pl0CkcdXq0i8EKgLSg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793280790;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Content-Type:Content-Transfer-Encoding:From:
	 Mime-Version:Subject:Date:Message-Id:References:Cc:In-Reply-To:To:
	 X-Mailer;
	bh=3TIu/flsuI/Ybrygw3/9dOPcu1H8ajZQ9c31vioPdo4=;
	b=Q4e1xBn5BmtQzN+Tr344unnDDdEplNVe0/DEd8DeoMGLpJXRpOyHhycxP8qLDNbG3ZmU
	 zxskviNNJe6pvmPHukQKbGemDx6YJVLMBhzNpX92xFc/+MVZE8M8SzLWnYKvHmHGnyaQA
	 CEKbM+bZvidyUkBoWENp7jrmvLEMmsWxMxgfu16tCnfEbr/O13GrIlLPqacNUTC7hRPYG
	 Dt/41pcGdEV1sw8YSTp00ZYM9DfiiyXeWRlUK3c1IQLd0B4o8L4z5gw8Fj+/N5eDDmANa
	 y+oPJfPtMz6t8neAgI9uuf3tNvDdSwzcRklZ0wVGK4GGEEE5rX3t3IYzx9HRN132FVg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=iEvBGFob;
	arc=none smtp.remote-ip=192.134.164.104
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C8A606A31A
	for <outreachy@lists.linux.dev>; Thu, 29 Oct 2026 13:33:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org E1C8A606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=iEvBGFob
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=content-transfer-encoding:from:mime-version:subject:date:
   message-id:references:cc:in-reply-to:to;
  bh=3TIu/flsuI/Ybrygw3/9dOPcu1H8ajZQ9c31vioPdo4=;
  b=iEvBGFobFnQImYZM7xgRrOlu9sHs2wsDKkK0y2drTI6lPNoJgbMuZjZY
   8t8GP4qk4e67LQhZhovGLS4C/JHP29GiUlU1FGgZ5fRw6Wuh1Q+3+/A6H
   SfDKh8wFdtae1jr+f8qSbr/fZKkjW7Ef0YFGwAiFSJFSm40MFTIurdkj3
   0=;
X-CSE-ConnectionGUID: B79d9JjgT2C14XDlAqR8wQ==
X-CSE-MsgGUID: v+QIYVtYQUKStcgis5VE4g==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,184,1787004000"; 
   d="scan'208";a="161206401"
Received: from c-76-123-3-53.hsd1.va.comcast.net (HELO smtpclient.apple) ([76.123.3.53])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2026 14:32:59 +0100
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Julia Lawall <Julia.Lawall@inria.fr>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
Mime-Version: 1.0 (1.0)
Subject: Re: Guidance on Next Steps for Outreachy Linux Kernel Internship
Date: Thu, 29 Oct 2026 09:32:46 -0400
Message-Id: <5E1D67A3-0524-497A-9FDF-55436ECE0A13@inria.fr>
References: <20261029092046.36b51cd4@gandalf.local.home>
Cc: Ankit Thakur <codeankit.thakur@gmail.com>, outreachy@lists.linux.dev
In-Reply-To: <20261029092046.36b51cd4@gandalf.local.home>
To: Steven Rostedt <rostedt@goodmis.org>
X-Mailer: iPhone Mail (23E261)


Sent from my iPhone

> On 29 Oct 2026, at 09:20, Steven Rostedt <rostedt@goodmis.org> wrote:
>=20
> =EF=BB=BF
> Hi Ankit,
>=20
> I'm Cc'ing Julia and outreachy as they will be able to provide more
> information that I can.

Hello Ankit

I need to run now, but the short answer is to read all the recent mail's in t=
he archives, especially the ones giving instructions from me. You need some a=
ccepted staging cleanup patches to be considered. And you need to work on tr=
acepoints (after having some staging cleanup patches get positive reviews) t=
o understand the project. Please read the instructions carefully and follow t=
hem.  I don=E2=80=99t remember seeing a patch from you, but perhaps I have f=
orgotten. When you look at the mailing list archives you can check that your=
 patch is there as well.

Julia


>=20
> -- Steve
>=20
>=20
>> On Thu, 29 Oct 2026 11:47:29 +0530
>> Ankit Thakur <codeankit.thakur@gmail.com> wrote:
>>=20
>> Dear Steven,
>>=20
>> I hope you are doing well.
>>=20
>> I am applying for the December 2026 Outreachy internship for the Linux
>> Kernel project, *=E2=80=9CRemove most known unused tracepoints from the L=
inux
>> kernel.=E2=80=9D*
>>=20
>> I have already submitted a patch through email as part of my contribution=

>> to the Linux Kernel community. I would like to understand what additional=

>> steps I should take to strengthen my application and meet the contributio=
n
>> requirements for this internship.
>>=20
>> Could you please guide me on the following?
>>=20
>>   - Whether my submitted patch fulfills any part of the community-wide
>>   contribution requirements.
>>   - What additional tasks I should complete, including the required
>>   staging patches and project-specific starter tasks.
>>   - Whether there are any specific tasks related to identifying unused
>>   tracepoints that I can begin working on.
>>   - How I should document my contributions in the Outreachy applicant
>>   dashboard before the November 9, 2026 deadline.
>>=20
>> I am eager to contribute meaningfully to the project, learn the Linux
>> Kernel patch submission process, and work toward becoming a successful
>> Outreachy intern. I would appreciate your guidance on the best next steps=
.
>>=20
>> Thank you for your time and consideration.
>>=20
>> Best regards,
>> Ankit
>=20


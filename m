Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364C219CCEC
	for <outreachy@lists.linux.dev>; Wed,  2 Apr 2025 20:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743624610; cv=none; b=g3b71kSK1apBNtEnkTDOAHI5/phUNHoJKuAUzfhx/ihiuHt8VDyGGmfNL+bB7pMyNrIBHbRaBgk8kapUkmUhGL+Jts8+V9WUh7iq3Kjd2F9gAqoR+lhhziIJztHn292JJ5EY4FJ8wcgt9wh9BqfjGYZ17DwLRtmHu6OeFWT7kDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743624610; c=relaxed/simple;
	bh=TgNeFryTIn3dCWcZ2wzs3jrHerxLRDHrfMiBoXaIgxE=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=lIVd0xfCz2jHApiEkpXuWOLK7PT1wR61uz/vVl8nxVjY2f+E7CpjzLTweS339bxnW9IaNwCdyBQMuUc0odM7HB5bLaMhCC19seUKi3io7P5sLOEqjhCFhMR4YezP5lOhbwPTuIqN8H5g1lGRycMiYcewQFx9M0aIBSGZkVu/8co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=iQok9/6k; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="iQok9/6k"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version:content-id;
  bh=4HNM9qm0svbaJGbEFHsTe9AtVRczCCVGxst0EVZSPmI=;
  b=iQok9/6kL9eWz2+B7nwdQppIyYQ2nqG6/5df5vZiNupYCEo9VYng7zV+
   isvyUT9flk+rklPRC/8Rv0Hh8MhWh7vM+s49A2Yo+5XrrZUnWHAxVJ7gQ
   DIQ1cuBFVCj8aSOOzAM0o8AAJw5DT8AY352GdmRltCrAQsDdxfY7VYF0y
   M=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.15,183,1739833200"; 
   d="scan'208";a="113300742"
Received: from a81-173-67-6.dsl.pocosnet.nl (HELO hadrien) ([81.173.67.6])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2025 22:10:04 +0200
Date: Wed, 2 Apr 2025 22:10:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: rujra <braker.noob.kernel@gmail.com>
cc: Richard Akintola <princerichard17a@gmail.com>, outreachy@lists.linux.dev
Subject: Re: I am unable to setup and send mail via mutt Here I am sharing
 my Here I have attached the xhci files where have found the probe functions:
 so which one should i change ?
In-Reply-To: <CAG+54Dbc3BC8H1oLUFJ1mbRxH6K01EUsT7jVceabmeuSV3N=_A@mail.gmail.com>
Message-ID: <d7b552d0-9d57-ab39-417c-4b1bc13a22f0@inria.fr>
References: <alpine.DEB.2.22.394.2503301522210.23941@hadrien> <CAG+54DYX8DEh2AVkQmL2O=5=0rF=GHrMiZnsSWwnvtpo-36-jw@mail.gmail.com> <CAMyr_bLCOWsNTDrCBuLgGDYFqqpNCJ46x_ob01vL8crPC4L=_A@mail.gmail.com> <CAG+54DYFO7cEkekhQ1K_5dYLDgQjw_QedqcTRGXXSkFFQ8QySg@mail.gmail.com>
 <CAMyr_bKKf3Hq4fVzA9h2ZU=bpL2dHJHTU+qjhusCxYBYZXeW5A@mail.gmail.com> <Z-vIFv5cLEyjA2JD@brak3rDesk> <CAMyr_b+K3q5avgd7HHNbSufP5pk=-HPMjTomLLc0Rc7k=6V=kg@mail.gmail.com> <CAG+54DasAjm0StZWGithAXKJbR6SPGJ7UiD_hAcBkGMJLPSRew@mail.gmail.com>
 <CAMyr_bJgUjK-UMryTOqT7-G0-uduzx3J9Kg7co_owghpBiwOyA@mail.gmail.com> <CAG+54DbOK9sEPAwF_oHR=RzKL8xh4+X5GR0K9xmrvvOauwON9A@mail.gmail.com> <CAG+54DYK-C=bAWTueZSkHLtBpWj3urNJ64_z+Ey5uGsgr+nruQ@mail.gmail.com> <CAMyr_bLhdH27ngH95MEQFp5_XMm8NzQDd7Kf9Cx4WZY9+9tGTg@mail.gmail.com>
 <CAG+54Db1B1MqgErFoiLfx9bePwMXZe0zZaHzVEMcU+GTW+M5wA@mail.gmail.com> <CAG+54Dbc3BC8H1oLUFJ1mbRxH6K01EUsT7jVceabmeuSV3N=_A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1821910105-1743624561=:3363"
Content-ID: <6ae76c6-bebc-188e-5970-3a92b1b6ddcc@lip6.fr>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1821910105-1743624561=:3363
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <7817ef68-ff61-9758-586b-34a7bc20ad26@lip6.fr>



On Thu, 3 Apr 2025, rujra wrote:

> Hi team, 
> Its regarding the issue which I am facing in tutorial this command line: 
>
> apt-get install python-ply python-git

What motivated you to want to install these things?

julia


> OUTPUT : 
> <
> sudo apt-get install python-ply python-git
> Reading package lists... Done
> Building dependency tree... Done
> Reading state information... Done
> Package python-git is not available, but is referred to by another package.
> This may mean that the package is missing, has been obsoleted, or
> is only available from another source
> However the following packages replace it:
>   python-git-doc
>
> E: Unable to locate package python-ply
> E: Package 'python-git' has no installation candidate
> brak3r@brak3rDesk:~/braker.noob.kernel/git/kernels/staging$ sudo apt-get
> install python-ply python-git-doc
> Reading package lists... Done
> Building dependency tree... Done
> Reading state information... Done
> E: Unable to locate package python-ply
> >
>
>
> not able to install ply. so that "checkpatch.pl" can work
> also have tried this command as well :
> "sudo apt-get install python3-pip python-git-doc" 
>
> Here also we might need to change the tutorial steps for the upcoming
> candidates.
> happy to help here,
> thanking you,regards
> Rujra Bhatt
>
>
>
--8323329-1821910105-1743624561=:3363--

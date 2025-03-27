Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0078D18027
	for <outreachy@lists.linux.dev>; Thu, 27 Mar 2025 05:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743054944; cv=none; b=kYXxG7ChbEeW4t3W4BhNoxbakWhgF/NVDBT21NxFiBzmA7xX96++1Oq/IYyrdtQhZzOOIfyHdm1xZXCZ/I0RZjnq++qBaBLBIS33O29UgJTKfyalVc0Q79wrljyX0ItZki/w02CDDudAUZUOW7eqGS3uf0vEXcboQlFvWv9q+8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743054944; c=relaxed/simple;
	bh=nlu0yUoy9oA/JTC/6Dcg47QkMc4duip2DNHIL51UqDY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=u8fL/f0DhbJfrYLEf2KUz6DrDwdmKelQmGeaJNojALrNDw3bgQcQcYSRrEXj73ReSkEZKDrwFmNhupnWPM821Vtu3mW/8vQ8H+pQZ9kuADR2QNKoMHDZmiVflyjjvIe7HlL0B6L7xSqZXzptz2caDGcfilaC7yir69EHU7xhvfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f0GVIR+B; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f0GVIR+B"
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3914bc3e01aso235724f8f.2
        for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 22:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743054940; x=1743659740; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nlu0yUoy9oA/JTC/6Dcg47QkMc4duip2DNHIL51UqDY=;
        b=f0GVIR+Bi1QhOid9IY2K7qAf1wRqAnjHiN7lfzE840dEAjoScGM+f0WtvY0i0wbPKS
         8fnpkHcuZH4JZVMl5d4BGltD3KrRSsDyzKrcECQeIW4I8yedaNYBD/5c7/WUCJ4NcEwM
         x8J7r2stlQL13Uc+oeFhETg5fmdr4QoY30esOVcpMh2a02dtqYsguGup+YdrPy6o7tUo
         fFug65dZjIqELCFxQrbaHBNLQ+XxCyTmv9DgEOWolqw3REAyx+8B71+sfbbB6cKdZnWF
         fIyL0RXXNQ7EJrax94gOwAud8arYlEKrsfj5WT1JkvdDxsOP46y7aHbn88L6FqS1BMGB
         xU3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743054940; x=1743659740;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nlu0yUoy9oA/JTC/6Dcg47QkMc4duip2DNHIL51UqDY=;
        b=ouXDh+DjoyK3MYJNjIgyxign3CjsEmWhXkHchuq8x2a7VNDP9DUvxOcz5al2PV/ljB
         yULCCmTdP/Lo9M7R+FHusgfXUPy3eYSAAB1D0e5cDiymnsSOxEqEyaD8CKJLCaaLbYOb
         Y+zNFx5ayDgcDuDzdSTM4tmLUG5fUdkcM3Mx6l2nZvrVBVDItxllT9akCwvR4JZOItaC
         hoSWKE+ZFEbUIRS+RCUBuZVeBlGmkwvXjXqCq5pAz/w/TRAtt+iMJZA/CuZwvKWeYTPa
         Ey0x9soC9uy5m2iIywYZiDRZ7ADVhrwAm7o306ikVmWwGQyrS1BwjR76+X7QFMO9U+Ft
         oIoA==
X-Gm-Message-State: AOJu0Yxj/0+p01Sa5aYF3NTfo6yDIZUMn0zlbPz+HTQ5DxkQmNuzDTjE
	et5qYt+fzD6+Fbfnc//Wb9Rck8CUPBxnSYt1/oGguBCQA0mwb05rEufF1dK/Eng=
X-Gm-Gg: ASbGncuG7oEBf13h7wo5XsXFmUzQODCrIKvLyvnGcHx2rFbDAE3WlDZ2C6e4pjYew2j
	MQoDFz6bYyfkDKpJxQ2+lbOUcGgXHL9UgFb5BWzXh8OZ8lbntgNda20eqSYrMH9vE3i2tZxOGDt
	di3+9t6nE0iKueLXMP9MNuAg7+e4Y6TAaJjdzWOgBXfx16+eXFjsMZjcy/MwV5noHtRCnaNRCv/
	/ULqYGDlRFlN/qXvUdbermo7eR6C2L5U6Cg0qGkAlf9ItKulYsBDw9HJ5iV2pF7rIamC7fyIc2v
	Ds9gC2nMbXWIPWQzPg1yR4PUgzH3ZtC06dTDvZ+WCV+Sa4WQSxfmThI=
X-Google-Smtp-Source: AGHT+IFM9tnYr+4gkPo6Vw8lCDBaPlaVKi6WEck/b/lut0rlFuQo4GVvokeHFKz1NjFULqChzR0DKw==
X-Received: by 2002:a5d:6daa:0:b0:391:42f2:5c7b with SMTP id ffacd0b85a97d-39ad17466a4mr2057915f8f.16.1743054939989;
        Wed, 26 Mar 2025 22:55:39 -0700 (PDT)
Received: from [172.16.8.120] ([197.155.71.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39ab907da9asm16418288f8f.90.2025.03.26.22.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 22:55:39 -0700 (PDT)
Message-ID: <e2227f5caf813023b71025aaead0b144328344dc.camel@gmail.com>
Subject: Re: Confirmation on next steps for contribution
From: Erick Karanja <karanja99erick@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, Samuel Abraham
	 <abrahamadekunle50@gmail.com>
Cc: outreachy@lists.linux.dev
Date: Thu, 27 Mar 2025 08:55:35 +0300
In-Reply-To: <ff7f6d0-3efc-d977-d1fd-2349f331a6d0@inria.fr>
References: 
	<CADYq+fbMox6e7AJMkoEmYjjt-V4L29oy9WyDcL0W8pw_KL3b=w@mail.gmail.com>
	 <ff7f6d0-3efc-d977-d1fd-2349f331a6d0@inria.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

On Wed, 2025-03-26 at 17:57 +0100, Julia Lawall wrote:
>=20
>=20
> On Wed, 26 Mar 2025, Samuel Abraham wrote:
>=20
> > Hello Julia,
> >=20
> > I hope you are having a great day.
> > I just wanted to confirm the next steps for our contribution.
> > Do we send more clean-up patches and how many accepted ones
> > should we have before we can move forward?
>=20
> Previously we asked for 20, but there are not that many opportunities
> at
> the moment, so I would say 5.=C2=A0 Basically, you should get your patche=
s
> acepted on the first try.=C2=A0 And try to look around to find more
> interesting
> things to do.=C2=A0 How does the code look different from other Linux
> kernel
> code?
>=20
> I will post some more pointers to suggested cleanups on the weekend.
>=20
> julia
>=20
Hello Julia,
First, thank you relentless support. I have been learning and
experimenting on the use of Coccinelle in bug fixing and I would love
if we could receive some pointers on bugs that can be handled using
Coccinelle.
Erick =20

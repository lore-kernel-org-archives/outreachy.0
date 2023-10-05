Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED1E20E3
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 07:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Es/7XnW1"
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-54290603887so426239a12.1
        for <outreachy@lists.linux.dev>; Thu, 05 Oct 2023 00:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696489490; x=1697094290; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qpry4Tc9M0mRLjSqjMTHIeaRbdG7mmPf5uaQl9bPVY0=;
        b=Es/7XnW1c0G+36HYm/ydyeHtxVGhCp+JsYKuEVRxpc3mjQCdfBM3nbQKexAfhzKGj3
         WDOdCxgeaGxhpG7+/PxUGCeTuuzLXn75VkHOKWdTIxAeFSAXzMmt5OmdVa1XAqRv2eRV
         DE8CoVLZZgLjXSQHAQDxsAzhNgkpt72aL8Wq5jZn5T1PB7DX70HEK+bjYaFlprp3p6eM
         ZJb1TsFle45EOSANbGGiHnr52+ppAP25fRXNPs1F9BNnNPuftD7SGyXwhuee4OqptEEo
         aJv9EKVNFsgL72M4DFZv1wvbXkcs8h0IN2gEOxIpeKS3y+yOhlKq9+zUtiyQ6N9+2csn
         T3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696489490; x=1697094290;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qpry4Tc9M0mRLjSqjMTHIeaRbdG7mmPf5uaQl9bPVY0=;
        b=MtQfofBnhNkK5urL5KWwp6fdq4Ch/ecNT0doOnQIiXbBLVG4F2r3R+ConVmnmDNdkW
         zDCjY7snx+5zpZrD+LcBY83hFKNkXocC6AHtsA10xF3HkJaIRu4vvRKhCAAGgbQoZqCi
         m2IOTLu8KsXun7acPP4VrigDFsBn5HrW1EvPsg3wsxNaOHexauvpwItAl9rpKorf/Njx
         OT63HkWCO0mQW2CItAHu9kk+5asjK+Lthba3dOGD12zfb/iCSiBuvPxTt03oYaZAu/AC
         Cal5NzEUkMPfVwmgar1KOuSnsDVMcRR4Z7h9jArFFcFk86rsvdVg1VCSM/1d+QPg/ZwA
         8N+Q==
X-Gm-Message-State: AOJu0YzykJE6giE24TJVk6upqMZAk50itV9fmbtzJYH9GiEj77WhzKNj
	QPouanWDCmfUI9DM0/PvzvGlU48O0mr2vwGR6LM=
X-Google-Smtp-Source: AGHT+IFYKjfr8inLYHtLA85+bUWiBOuVcDkSB3ShiNGw2ceRUWqBf/kuOTYzU3J8WrkWEEeqhgQlqkPSfBDBuaO39R0=
X-Received: by 2002:a17:90b:3843:b0:273:e42b:34c1 with SMTP id
 nl3-20020a17090b384300b00273e42b34c1mr3894837pjb.42.1696489490410; Thu, 05
 Oct 2023 00:04:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com>
 <ZRyTH0WyHd3JJnNv@ashyti-mobl2.lan> <CAJHH8bEtKMYJ2RUn71uHuzNDUzEFNLQMxumKnp8ezb6pvxvGhQ@mail.gmail.com>
 <CALPt=awuCRF3_Z5-Qh3biBBEuS7fVkvxQyfFcxuv8Snww6csMA@mail.gmail.com>
 <CAJHH8bEvLeEytHH7FR-eiGeshLmjfj9syjNa0ekuDbgT2q+=3w@mail.gmail.com> <CALPt=aznty=FRpmNXMvVVJKSH48OibdrQ5cr68ubEO2b8b+atg@mail.gmail.com>
In-Reply-To: <CALPt=aznty=FRpmNXMvVVJKSH48OibdrQ5cr68ubEO2b8b+atg@mail.gmail.com>
From: Isoken Ibizugbe <isokenjune@gmail.com>
Date: Thu, 5 Oct 2023 08:03:26 +0100
Message-ID: <CAJHH8bF7D5dREdF=4fmGhC6rnEWPyZ7+vW1C2mwuy_jAwaJ8Bw@mail.gmail.com>
Subject: Re: [Error]
To: sumitra sharma <sumitraartsy@gmail.com>
Cc: Linux Outreachy <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the clarification.

On Thu, Oct 5, 2023 at 8:01=E2=80=AFAM sumitra sharma <sumitraartsy@gmail.c=
om> wrote:
>
>
>
> On Thu, 5 Oct, 2023, 12:24 pm Isoken Ibizugbe, <isokenjune@gmail.com> wro=
te:
> Yes I copied the .config file of the currently running kernel and I'm
> using Ubuntu 20.04LTS on a virtual box, I renamed the
> CONFIG_LOCALVERSION in the .config and commented out these lines
> CONFIG_SYSTEM_TRUSTED_KEY
> and CONFIG_MODULE_SIG_KEY, then ran make -j4, but the kernel has been
> compiling for 10 hours now. please is this normal?
>
> Hello Isoken,
>
> Yes, it is normal. The compilation time depends upon how much RAM you hav=
e allocated to your virtual machine. I still use virtual machines and somet=
imes the kernel building takes two days  :)
>
> Regards
> Sumitra

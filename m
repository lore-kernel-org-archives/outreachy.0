Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89BE314C59A
	for <outreachy@lists.linux.dev>; Tue,  6 Aug 2024 19:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722973054; cv=none; b=XJ5Ky0pKCSdd0B6h70o9tRrstnxoeg7KQbeVVed8sId5q3kG7OSjjNtOJdCYhgJauw6X0mguD0GIEeghjWlJCUyg/BC8w8AA3z38E1Bzh/oHlVF6xm1/Stcv0AzmZWiRttQTEQ0r8rAT9aV8WTKkpejnDnujVAMtaIPc7SY19xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722973054; c=relaxed/simple;
	bh=FY9WL5Ew4UpGjqQRe0kjOd5ck/2a2WaUZo90dYASdOI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pYDA7go4x5LP7z8iwJ34HaHXDcVyFgt/OzW1f/ndeOQwXcR0jbZZeMhT6EgUgRr/l3Mipgdk1A+q8eYfGqPvtWxIPZBSMhya/Wtktt9aQNxwB3jiKs8zPFJqJZYzi7EiI3r1riKKvKw/vNMU66BjyPFGuA9Lty6OeibIG4yIfwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=3jIsfULa; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="3jIsfULa"
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5a28b61b880so20542a12.1
        for <outreachy@lists.linux.dev>; Tue, 06 Aug 2024 12:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1722973051; x=1723577851; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f8uEFO9W2+FLhm25gWiA80kftcKB1qkyC9ekZLOIA6A=;
        b=3jIsfULa1wTrUIfwxBUGXHh/B/mKhUB8MOUy+wrz/AArM/0qFt6o5sm1lQs4rlNpEd
         wAmKEaPTl7j/9bDgjHJIz/SNrtksG1kl4JO9VjggCPKu6l9PMEZJIJEtiJMG1jDYmbcu
         6FW0JoyUHlrtK0gTT6SlyKky/urRbnT0nKS5VQbP9V8QFjQbzpFD72w8SsOWMl5VAZnC
         2PbYWn4Skbk0Q+GatUW6tMSltuH5veI+KiU4fokSwGtznDUY12rB+ToblKAsDzzLbh0W
         9KWwETWhwVgMdNGsg2joOD2GQ+JCjDtpRHOqSrEloaM6L3IHUrhDFMLIRMmRSIG3z3kb
         JBJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722973051; x=1723577851;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f8uEFO9W2+FLhm25gWiA80kftcKB1qkyC9ekZLOIA6A=;
        b=VkYyZOF+C8HJpGA3FWq5RJ3+dTblDRsE02RwDNQOvtN+bafWJedsDwEItdOZ9AFj+y
         a9GCEN+WobDw6YYgU7fcXQrwq7TazVHaV+hQ7q0GTrqwtAjprlrJADl1sONn4ZKiZJFq
         OK47JQF3s2fTlfQMq0C2+6U7BhdiVcg8hew/y9Bh43FhzvnYG7COAttC42rHFKSvAMso
         2SrxIDsl3xgiP5JojO8NmPgN4AIBEKP3GECnkETpGVHGsQPMfc3Kt7qVWz6wZW1Sx3Ov
         54PhOZ3kw0hqqC41OMT/a/Yku6DMY4Hnqfs/9fgrquwU3gvK6U2CDhga2lMt/LeyCUy7
         Ia9A==
X-Gm-Message-State: AOJu0Yym2XM2oz0ttYjNKn5/cRVXeMVC+ysD2kNtJi+oPd1MjGMYCuVZ
	BrS+caSKMWQviYmBloZ+XF0oxxwokv03qN61syuc5iGL+kIFM2HZFoDzaAKID380HSmQcg9F6V0
	Va0x57gvvBTWw4BWLLLwuOQ5WvEq1rddQt7wlCDq25FdbgCFjL8+5
X-Google-Smtp-Source: AGHT+IEW1GMKFCD4DKnyeN084/kX07o+WDR9IdrRnzwMCqQYEsxnNt1QCfmcpRWNQ2zFJ7nrXEKfvAxnQsHp0cWnkXQ=
X-Received: by 2002:a05:6402:84c:b0:57c:b712:47b5 with SMTP id
 4fb4d7f45d1cf-5bba28b2757mr28024a12.4.1722973050127; Tue, 06 Aug 2024
 12:37:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1722570749.git.fahimitahera@gmail.com> <e8da4d5311be78806515626a6bd4a16fe17ded04.1722570749.git.fahimitahera@gmail.com>
In-Reply-To: <e8da4d5311be78806515626a6bd4a16fe17ded04.1722570749.git.fahimitahera@gmail.com>
From: Jann Horn <jannh@google.com>
Date: Tue, 6 Aug 2024 21:36:52 +0200
Message-ID: <CAG48ez39+ts9pNVvAxXcbk6X5_+s_yBXPUW-ZUNRxQq3aJAyrQ@mail.gmail.com>
Subject: Re: [PATCH v8 1/4] Landlock: Add abstract unix socket connect restriction
To: Tahera Fahimi <fahimitahera@gmail.com>
Cc: outreachy@lists.linux.dev, mic@digikod.net, gnoack@google.com, 
	paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com, 
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org, 
	bjorn3_gh@protonmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 2, 2024 at 6:03=E2=80=AFAM Tahera Fahimi <fahimitahera@gmail.co=
m> wrote:
> This patch introduces a new "scoped" attribute to the landlock_ruleset_at=
tr
> that can specify "LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET" to scope
> abstract Unix sockets from connecting to a process outside of
> the same landlock domain. It implements two hooks, unix_stream_connect
> and unix_may_send to enforce this restriction.
[...]
> +static bool check_unix_address_format(struct sock *const sock)
> +{
> +       struct unix_address *addr =3D unix_sk(sock)->addr;
> +
> +       if (!addr)
> +               return true;
> +
> +       if (addr->len > sizeof(AF_UNIX)) {
> +               /* handling unspec sockets */
> +               if (!addr->name[0].sun_path)
> +                       return true;

addr->name[0] is a "struct sockaddr_un", whose member "sun_path" is an
array member, not a pointer. If "addr" is a valid pointer,
"addr->name[0].sun_path" can't be NULL.


> +               if (addr->name[0].sun_path[0] =3D=3D '\0')
> +                       if (!sock_is_scoped(sock))
> +                               return false;
> +       }
> +
> +       return true;
> +}

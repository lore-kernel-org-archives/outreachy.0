Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AA533C9
	for <outreachy@lists.linux.dev>; Wed,  2 Apr 2025 07:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743577240; cv=none; b=OaUn31fIrvZDR6G8puWjbYYrp3mKNf7+/1WQD8TGlnmvcgMlNKecanzlKQk04zOURzyVV3eEkvUNIELqdkZLn1LIDpYBPsFPBjPPBD937Cwv6YzEzAp7JvvY+/aJGCw2dUs11Fl8eBfIGDhEV0OagQfVkB+j0VBpCrfa81vjdlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743577240; c=relaxed/simple;
	bh=3RRrxrscLj7RR3W4MIyPUfEvqG6Mb19dXJLWPUwJHMM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L8xT9Ua7qEnaKi7WRaEH+9Gt1xw0asOHGeHQsQwfZw92hHTVE/+boL5Bvehor8fB8C88L1Ow788ZkeDtxIqI4jSF7qKIf7j5CpbpbgR8JS5uQMRyZZqWl3HqqSOeQqlWb6qrQd/xSJu5vj6FNIQ437VDy2/Opxdy9Bnjd+33f9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DBLn0mQX; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DBLn0mQX"
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5262475372eso1530877e0c.2
        for <outreachy@lists.linux.dev>; Wed, 02 Apr 2025 00:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743577237; x=1744182037; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaoAnOepFWNYODo0UqJx0EcUtVZogCI/FZ8az3F8LO4=;
        b=DBLn0mQX5LAKYJ+Eyc4xj3vyRlmSuJoih8Ie5leLV5+amDhIroqeNdUJpuy3dNn5/I
         2gNBILNGLrhouJHzCGMg8AQjuB/IT2bQGf9fPwzx1pUy8jcnDlHx+JtnlV1WB80rGQgs
         hBzpuTfEwxk6Q+V2sLK7jgKBSepeOz+igVY+ZK4YzOFnPPrAPxhFyn9QH1dgequoxzak
         grNL/CCnHkdgF1It2HVSdz/5QAf64FMVK9amU7T9JOY9GjQLqjbQltAZV06Qd3MGcIg+
         +mQLPS+TSC7ayGQqR9H7yx6euxO9LSvnqbpHHvv6NF6S9A+jLR1oIE4fvNQXWAuwM+Tz
         2e1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743577237; x=1744182037;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KaoAnOepFWNYODo0UqJx0EcUtVZogCI/FZ8az3F8LO4=;
        b=lBtE1Ara7oNNhWYA3qATa/H5iJJ1f1FMok2E0JUsnhhTg1klpI2uaIrjTp0ZKtd0WJ
         rM36hTp916NsblaJ4i/cqMjU9uwoyOPcrEKLSpY8/Tv47IHBAeOZPZBUUWydfSGILtbR
         AalsKNbwBwRG8dQBiwiOCUGHof6XHYNRQ5hhmFw3sdDAGbmzTxkTEtazgNu+5J8lTeSx
         kpvbWrq4ygHeHULTJ3BHYLHCBZkXpLXViNtLcUUJ9zBUZQMXN5cHuJAWanngJkkB0gVO
         O4CDwQ6ohL2Cs8BmImHPBq3XvBdyzMNzWPXB/fz+bQNiPEkA8vmENEyKbnKbj3b4Sk6T
         SKGA==
X-Gm-Message-State: AOJu0YwN9tgG6j3b7IPUc0toBMrr0y1oefVFkc5I1UQuJ1/7qbxofjcB
	u09nKI6okVp/sGWIkPI0ZIuOl8y80LXp2HYauTxsAimgMnJE1UcO50bxmCPM8cERLVauVosY47v
	FGm7aKkhWpvgkwyOchwrujQR9p7U=
X-Gm-Gg: ASbGncthfwWYHIB0fvdXXF+XiV3p1jT+fZC8L+KqfdsmYz6vufg/Ebs1b9ZODLtM1PL
	UZsrsO55kp7KoFf6At518p4X4ZLXaPeldp0LyP+jk7qn0/puMLyORRzPa7fUDDym5QGikKgBU4G
	hHBR4OrU8z1JfcSIlDoVVZhJlRmmyV
X-Google-Smtp-Source: AGHT+IHC69KNKxUhTIA3n2en0U+zARshmyk0WkszHwZC+nFsUyOWkKXI3DZ6cV3jx3Zly/W3Q47tLX19nfmVebVQdvc=
X-Received: by 2002:a05:6122:3c8b:b0:523:9ee7:7f8e with SMTP id
 71dfb90a1353d-5261d36a655mr11503445e0c.4.1743577237533; Wed, 02 Apr 2025
 00:00:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cd684867-6bd3-f7ef-9672-6513e0efa336@inria.fr>
In-Reply-To: <cd684867-6bd3-f7ef-9672-6513e0efa336@inria.fr>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Wed, 2 Apr 2025 08:00:27 +0100
X-Gm-Features: AQ5f1JqIbg6lD9pC2O924Vbby_pnz0QvqxfvVk2JiseXMOxTbdUR4T2yYV9sLO8
Message-ID: <CADYq+fauoeq0fPbV10d0fwnoOSG7=5-_Gd5jCKuJ-rJmoqMp6A@mail.gmail.com>
Subject: Re: patches
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 2, 2025 at 7:43=E2=80=AFAM Julia Lawall <julia.lawall@inria.fr>=
 wrote:
>
> Hello,
Hello Julia
>
> Please send more patches.  Greg has been busy with a conference in the
> past few days, so it's not necessary to wait for feedback.  Generally, I
> will send some feedback if there is a concern or suggestion for further
> work.
>
> If you have sent some patches already with no issues, try running
> Coccinelle and sending some patches according to the suggestions.  It is

Thank you.
Please do you mean we can run some checks on drivers just like check patch?
I saw the coccicheck binary in the scripts/ directory but I am not
sure how to run it
on a driver if that is what it is meant for.
Could you please provide some guidance?
> not necessary to send such patches at a large scale.  Working on one file
> at a time is fine.

Also, I would like to ask that when a driver is eventually transformed
using Coccinelle,
how do we indicate in the commit message that the suggestion and the
transformation
was done using coccinelle just like we do for checkpatch?

Thanks

Adekunle

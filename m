Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7082C1D5AB7
	for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 11:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742558014; cv=none; b=bmRLszBcm5skspEh9JyHsYggIhKkWR23v7Kh6eoTll4tnQ5drztH/nxfIWsWjzFTqqi1JZ1d+OIJdXaUAuxGZeMC3U0t3yZHbMYSrqlqt0EI8tRPeQiqD93U32NgvIw6r3AXOYatZokSXr3Wi5IUwjnTv8vszKc8ZGx1dExO+hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742558014; c=relaxed/simple;
	bh=43HAzE3Z8GbMJdQJU8c9KgcGU6VW9i7s69N2U4KdzpU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=REIOMB/KmeJ4kZIireunZ65OSU5SFyeR6tCpYUDGnBU0IzAlC8c5Fr9SNa8DB0AY/OUF9gIbvVo5FZnE3Z/jIh9fOxcoY8OFBKBp9NuN+kZKIV09Qi59Qv9WyajOQ20JkKevG1JmwHvYwcmE8GOxhECl4sSJgwKkOncynBWysfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WTm5HuVl; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WTm5HuVl"
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so18169565e9.2
        for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 04:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742558011; x=1743162811; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sYv2uWAMGomnXhn0+oYbLWWZULndXo1T+heX0dbokJc=;
        b=WTm5HuVlomEW9SS4z1M8v7qdX6VHJyp9qc4/s94nZS5OMvHUqPXwwbSupMZ/SsjqG8
         CDioC5D3F3/sgcVWNoXSRqcHNAgC//HS9E0MwLyO7nBHFV4ZPpc6RODcIfKjr5lL1kv/
         8m9OIBXCZeD62mkse6VXm6fCWWuUCjCrsSIFobFrsU5bi1Mb9EKbNz9mktUSgq4a66/X
         cbBoWsGdeJv+wYd0QgwX3QfY3PqjN7lDlG0X9T9idwLk3s3oKfPVcRY38QW142oIE24h
         K8zZap4AFj0F6iIU2i3PZtAglleLg3Bhr0/DD/94IKvtr0YLQRuFt4ge6EMfNlE4RHXR
         AASQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742558011; x=1743162811;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sYv2uWAMGomnXhn0+oYbLWWZULndXo1T+heX0dbokJc=;
        b=nAD73fNkg2BbFdTPYYNZA9AWETM3E870eYp4r1sCv3NxN3SsR4VdnKqAQ4sAY4UD2f
         hJtRvwNb3ppJMIIdOZwq5Q/aLmHl7FPtmSPBrFm7/3yY8ajRjYCZBa30dXLoLzFaOMyz
         811anU8/o8hHGer2AAB2KI19Chy+dLFOv/RLanr6QrqaYgrTzFnrJR/Jy6PBJVb2WmOF
         7lGi2+O+gWRCKEcmILcln0pun9+tTKyiVqsZrf6d//v8izobi506B6H+QmWIaSin8ENO
         kxI6uzlapWSkApqEMThjQ80XNx4Qj2hfyuKksIDjvpTT6ySqeJCAIB+TaLoocOHPnk2E
         tsLQ==
X-Gm-Message-State: AOJu0YyEJ2QROiHVImqtAuzcbrv+h2rwtyqu6KO1pZUi3hEixCV/gIoi
	JJGEyPzhiJIibOVsNvHYE84FAMSnZUm7LK6B9UCpmitxPpIV05jxmsOoVEM4eePX06zGnhGVgfC
	ge7hvoWsley51Rc7dL13wWwwr5QWUiE8T
X-Gm-Gg: ASbGncvkczzlCPjm3U73bf30nSijlEznOS71h4BLNBi6ebdXaU4ieqF4R7qAwfEScwh
	qKoUVe5sBvYsCn9BSqhzkHpdNhmoho1y/OwYmyjGnlW475yWGuHGMB+kKmPcalsIjvy6Qmdhy28
	H/llhCaYo1ReRZ9G8/zgZMiydPw4QI
X-Google-Smtp-Source: AGHT+IG3IK3/rVooj4uqxyFRi1VeZBZ15eebdsF9f0doAxZg/LHAlYBNlmHEHSV+i+92JTGnkFB0orrwYcQhalcYZPQ=
X-Received: by 2002:a05:600c:3506:b0:43c:f6b0:e807 with SMTP id
 5b1f17b1804b1-43d50a4c9e7mr22399335e9.31.1742558010253; Fri, 21 Mar 2025
 04:53:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <18312c4a-13ec-d7b6-d5cf-e5fd24355ee@inria.fr>
In-Reply-To: <18312c4a-13ec-d7b6-d5cf-e5fd24355ee@inria.fr>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Fri, 21 Mar 2025 12:53:22 +0100
X-Gm-Features: AQ5f1JpXArOGNosTGj9vfIgT_msRhOcrsydjGXHS6pHTo5wc5a7lsTMo2PAIlqo
Message-ID: <CADYq+fYGgssZ36=dCcvyZtf7LV1uR-4G9gSA7KQ7xz1tPBbujA@mail.gmail.com>
Subject: Re: status?
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 21, 2025 at 12:40=E2=80=AFPM Julia Lawall <julia.lawall@inria.f=
r> wrote:
>
> Hello all,
Hello Julia
> How are things going with the tutorial?  Any successes to report?  And
> roadblocks to overcome?
On my part, I have been able to successfully clone, build and install
the kernel from Greg's staging tree.
I have also modified it by adding the print statement into the kernel
log in the psmouse_probe function in the psmouse-basic.c file
in the drivers/input/mouse directory. I have also been able to see the
message when I reboot the newly modified kernel and use dmesg | less
Surely I will send a patch soon.

Thank you for checking in Julia.

Adekunle.

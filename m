Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A2211BCA0E
	for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 20:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742330839; cv=none; b=WuHg4pD3ESYQX4kXMmEVWvKe+ew7GiirO0zYQzGqaf9V0dyj1BN9ymdmuO7h3qUkPz4fPWcwLN8SpSiVCK8aD5fj/7EEg4/3WGSQWkwZwwq3Xp+laacgeogrS5Dwx0A4vfnEidnP+z9QTpZ6IkMw+P/X/drOauaD5/uFDAbSggI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742330839; c=relaxed/simple;
	bh=UL7eAGNQlV+XfhcMsqfeOY/47dtpvRsy+e6wdkzHdGQ=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=MOMp+PHfp/lReCxxUPXMLEFvBSogOCYWW35mMVbSztlDswQLfNlvB5D4CuKfdXuTc27qTPxXJsC0ZM1mTHtulgZapSzRCjG3Cz3kQQf2LBxWLpDvAZHiTYtz79dBLhVh1UFIHs9TOP03V2nUnaokMRFfPLaqtJ1aOR6PWPGNw+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b7B2pvvG; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b7B2pvvG"
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ac2aeada833so12099966b.0
        for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 13:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742330835; x=1742935635; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UL7eAGNQlV+XfhcMsqfeOY/47dtpvRsy+e6wdkzHdGQ=;
        b=b7B2pvvGD8IDD8gMZ5aZpfATVMVG9UzeJpU1i1vAw0XB9YmVJqe7m/IMDiR7nQFtQG
         RfnXde7EFHAUAjD9KwfHonlU8tTRtGhIR/LTjvZgoOnMFR1GYqiSKJzdmWlpoT+0W2ld
         MbS+/RjyQEjkh2MLrAqw3YJj5OyPg6NtwP3piYRwnAdz/xlPuIrA3V9YBFheABW0zDCH
         ZA0ZsEviU8HdUaJ3Zuu5xDo7k5q7IfVHJbCL6oIb97/fLEOOk+VFCgDgRKLPBf7MhwUR
         k+8pOQOkq/XiLydYiVdvsc/pEVO87jFF72G/xIcgDrtaU8RBWZOV8+l3tHrOArv0B8KN
         rfOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742330835; x=1742935635;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UL7eAGNQlV+XfhcMsqfeOY/47dtpvRsy+e6wdkzHdGQ=;
        b=F412yrN0XvvYQNhH4OG05zuSD/1iW0N7xUVtX8qd61ztvWnZfQmLY1OoQ/OUUSYmnT
         e3B2niOkaiGo3dZYZW22vQm0YMLPLWHPRanXO21aWEM4vulRltPSTR/mxcf7HTjU4wRr
         +ykZY+rP4qfw2CsFpezAc5Kbo3JdfeSsaKirKuzUJ5NcAWUuRg49nGKTSz8QGxs+tpeL
         YFUfvaoutOQuV16xcPL1ygqouKerghF6zLhHIUF/fWVmKsqEgZKAlhlK+PhIBKK8frL0
         wR7twCBwN+oc6YuoukjPvtpJoh5gWzBNWh0Lom6jloRubQ2eRV1eB3ngzZEJ9hfjJiqq
         r4og==
X-Gm-Message-State: AOJu0YzRRd4zdlnFrS1XaxbwJW737VrA0ksJWNvI96XUzNOvRqKK+0B+
	NOfWX0tBvR3vKCfQOiyn5dahkNaO29pTcYD/D5MRV4fHu1fxJk5oOzP3v/YX0Flt9r2vxxiVeS+
	UJOdA2H9NF+FASqyWEf6wDe5TIvCEg1VWkmc=
X-Gm-Gg: ASbGnctgZ0UeWGy7WBW1uEdRarUPdKsO1+GZBPWn+iwhGNcOldGhSCNfdmf6BjcgMHn
	iZFznoPC2QfcOl+VPA7CdLyJ+RviOvKvJ6RaGROcyYA2q7BR4M4zDDwi9c8b3a/fJoC1Ak01iQP
	fk2aALxdEGJjaRkkNwLBCrZTklwQV8Z1qhCm+PYrIJcljix4Y2LFZv/tZJ7sQJHKamFbVZow==
X-Google-Smtp-Source: AGHT+IEpEq6XGXkJFEAFmUsE4O3pGwJevGWXsmyqmYJB3GsrwJ3kXs/aO6y6bsinh5xgKdYv//K1h+ZlNogeFFgbqLI=
X-Received: by 2002:a17:907:798d:b0:ac2:32a:ee2f with SMTP id
 a640c23a62f3a-ac38ff92a9cmr504916666b.17.1742330835311; Tue, 18 Mar 2025
 13:47:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Naga Hansika <nagahansika42@gmail.com>
Date: Wed, 19 Mar 2025 02:17:00 +0530
X-Gm-Features: AQ5f1JrICpO5QZese5fr4b-eTFNkNrlWES5JL54B6WXc0VZhmn9RFHIcNLJh-Ls
Message-ID: <CAHxMYcB_ng5xNkjjV5CmvN=zcxoHS5KPqR8cAUF37gNnYutKGQ@mail.gmail.com>
Subject: Outreachy applicant Introduction
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello Linux Community,

My name is Hansi, and I am participating in the Outreachy contribution
period for the Linux Kernel.

I am interested in learning more about kernel development and
open-source collaboration. I have started following the first steps of
the tutorial outlined by Julia and will be working on my first patch
soon.

Looking forward to contributing and learning from the community.

Best regards,
Hansi.

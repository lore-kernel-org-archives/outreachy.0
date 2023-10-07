Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B37168AB
	for <outreachy@lists.linux.dev>; Sat,  7 Oct 2023 22:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F7TBd1/p"
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4065dea9a33so32500545e9.3
        for <outreachy@lists.linux.dev>; Sat, 07 Oct 2023 15:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696718400; x=1697323200; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kZy1QycofxLTLpfMhG+jFN+BsF/9PCuCeL4FRMeit70=;
        b=F7TBd1/pxev/A4GStqNEcgD5WGoOCq3L8zg343K3w+TsOkZORA29Dx+Ke0A0Ls6r4p
         86O4SfA/71HNJYj53owGf47K3hSkta76oipnLyz/dDcaHKLflz64jt+fH6xXcCN2h3XO
         ipMUKbhKCGYHW5tQmslYdvklpDjSG8QAstlB2SteqfkueUVfQ+Poz6WMfOJY4FGr9mCX
         SURhdEKlzN7WNInWyAcH276vqWtSUgPbgbTtP2AZa9sXYIEwWYKzusF10VJOdTQriMHd
         mjFAO3Y7jkqG00XQc+dAa2A+dDeiq6U53tlc4FqC+u9PW3ce45MNf0p8TKFaAm8bYIyo
         lRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696718400; x=1697323200;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kZy1QycofxLTLpfMhG+jFN+BsF/9PCuCeL4FRMeit70=;
        b=ZqA6lskUhKkTrWLa8MbhFXeIlx0ZBIACIoBi2O9DhRH9l2vkBLKWPpLsOUftN2DyBD
         N0y7aTsxhuDTTILj0k1r7UUifHqsxPvejLa2Iu64WGUt+/Ib5iA+1VFZw/idXxXP+zft
         1BnrWusTGxNWiRiiQ3PETzJtlNSr8aREYF1L7CXw4HXlGk2DIBhCkMKAd6lRwr7M4mYU
         C1/9kst/dlFiD6E2jDZibwwnVlUwvHBA5UtMrWTDbKF5l/bLQCZkMThbmFqp4qFZxabY
         SZZOEszNbn6k2/L72RuI131vKcoPkrkQ4EtZR62bkKhDNtor0mXWxAvDXUUd7I4WgQsA
         jfMg==
X-Gm-Message-State: AOJu0Ywr/5vMg0MpWF7kKZpcM/E7kS4vqMOfiQXU6jzAr5LroUOT6RTk
	gTcIwPJZHDzSa3nmHoMfHS0bB+jr9uu+6vKNOL7AIycwuSNKzpO/
X-Google-Smtp-Source: AGHT+IFDjKdM3HjEcgEWariQGMlJTYIDmTXx86bVlzkK1eoQVGfZYbB7Z9/IVwIHNkD/Sg23k2V5EeLx9LpMsl4Qwhc=
X-Received: by 2002:a05:600c:b59:b0:3ff:233f:2cfb with SMTP id
 k25-20020a05600c0b5900b003ff233f2cfbmr10550404wmr.23.1696718399979; Sat, 07
 Oct 2023 15:39:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: NAKITYO JOANITA <nakityojoanita51@gmail.com>
Date: Sun, 8 Oct 2023 01:39:48 +0300
Message-ID: <CAOJCLCujLWVgMy-DrPsj2LLWz07t6UZOoSJU7jcVLgpbemyfpw@mail.gmail.com>
Subject: Assistance Needed: Error sending message, child exited 70 (Internal error.).
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello,

I hope this message finds you well.

I am currently testing my email setup using Mutt and have encountered
an issue that I could use some assistance with. When attempting to
send a test email, I receive the following error message:
Error sending message, child exited 70 (Internal error.).

To provide some context, I have followed the previous steps to set up
my email configuration, which involved creating both a .esmtprc and a
.muttrc file. Below is the content of the email I am trying to send:

From: nakityojoanita51@gmail.com
To: nakityojoanita51@gmail.com
Cc:
Bcc:
Subject: Greetings
Reply-To:
Fcc: ~/sent
Mix: <no chain defined>
Security: None

If you could offer any insights or guidance on resolving this issue, I
would greatly appreciate it.

Thank you for your time and assistance.

Warm regards, Joanita

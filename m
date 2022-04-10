Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0944DEA9
	for <outreachy@lists.linux.dev>; Sun, 10 Apr 2022 05:51:35 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id s4so8221661qkh.0
        for <outreachy@lists.linux.dev>; Sat, 09 Apr 2022 22:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=oLKyz79zscyLXNIhbz0P/ma8gwujbHgglcgPTK0HRZ0=;
        b=S0tT1j0cLWM8yoPIOvGJS1W/xKA+auk4sz9FmOa5Lc+/FdmZf9CWhg+TH06KCva+l3
         9e1sbx0144WS/i8Yr2UHOkrJZm6SvPsXwNYgnT5HharLXtT9CUKQMTos+U6fQ4sFUaml
         nLcBhA0lqsOP0q+hVfaScHVpdCVkpyhKg4okAJA5mCZCV8sqeCjrKUmQhG1OuzC4oM1E
         kmJUcj6FLVKrfamsbW+RHCffeAoa+RfQtdPID3eohzeRYwHbTZMsF4ATdwvvToxOYKyU
         OgHFufzkGKTBdzUgOnAQ/7gjEQPmCHccYq+RbZ52+EG8lehHKQfkWgVdUINgmQu5uxZt
         La8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=oLKyz79zscyLXNIhbz0P/ma8gwujbHgglcgPTK0HRZ0=;
        b=MJi5/GXqCX0Fm0ILOGSzudH4+5ykVJy99WC4l2rrpkCTdjn2BHDQBHB7hqfSo36Ecg
         y5pZaSXXrU4xYQTmSPv2+EnuMcrlbLynpdImS68hmm5EQfOWIh0jc0u1O0AB8Y2/E7b2
         prbV4BeJ3l+zcdw8xZ8YC0+JUrFSgoz+ixOUSpWYmprU8Lzw6trkOCW5gLF0ZuHjr4iv
         qXfGleGYddd3NRqhBJbSqlvgnCKMV4N+DjlwhsneLTL3C5wgAQRbCwuFJCPyRzybLnnQ
         QfnA9oEEG+88n8uNu9RtxjR1ojjE46Aaqbh9hcoPz8CZ0uI7LDeS5wixNxIGJhe3vRK2
         XsvQ==
X-Gm-Message-State: AOAM532FpWMHrZ/wJ6u5ANWoyOoYnnZOrlPXIZOwzDey5EaLP0hherHe
	EMSuFWEvi05XnAOKnPvGPdhS/nlbNVdEbFx10sVL12UM
X-Google-Smtp-Source: ABdhPJxzsPRW4giqi3VLck7BvoK9+9WGPOMtS0pOgNimQkxmEFj9iH43HfKS6v2fJzRxnRHf07N0CddDmZslxz1UqgU=
X-Received: by 2002:a05:620a:290f:b0:67b:3212:d529 with SMTP id
 m15-20020a05620a290f00b0067b3212d529mr17796673qkp.4.1649569894680; Sat, 09
 Apr 2022 22:51:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Soumya Negi <soumya.negi97@gmail.com>
Date: Sat, 9 Apr 2022 22:51:23 -0700
Message-ID: <CAHH-VXfEno3K6azNLKibRwCxsDm1Xu0w-PFpi6cJdR3f=hJJFw@mail.gmail.com>
Subject: Applicant introduction
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello,
My name is Soumya Negi and I am a CS masters student at USC. Please
pardon my late introduction( due to overlapping midterms). I took an
Operating Systems course last semester and have thus worked with C on
academic projects. I hope it will be a good foundation for the Linux
projects offered this year. I am excited to finally get started and
contribute to the linux kernel community!

Regards,
Soumya Negi

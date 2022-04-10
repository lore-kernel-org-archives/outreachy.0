Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AAB1375
	for <outreachy@lists.linux.dev>; Sun, 10 Apr 2022 16:26:17 +0000 (UTC)
Received: by mail-pg1-f171.google.com with SMTP id 32so9986509pgl.4
        for <outreachy@lists.linux.dev>; Sun, 10 Apr 2022 09:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Tn2ucZrapy2hPg1R6sfWdmJQrwAEmN/PQGHePYJIs4k=;
        b=ZJMmyD0se4WI84NXPf+1BSjyQjwnbzr6UIKBLeW7KRRNm4Epp+laqGYL1DnV9iDeDc
         iIwnuO4aw2Uh7A1jdBsAJnFuEBdEgzy7fOee62vQmxK4+2LVw2CDnEVur09tBemkZLKR
         ToiS0xwSkgQtZdGKYyQFTOrv4ZjrBQnlZ9kKfyHlend9fVqqaSIrU78znaRbj6wnZaaH
         38dLMXxw5K9pi6QfLGQpcee80czYuAk2zIJZ5MW8B4+/CzLnkVODZNKR5sqggRCiApOh
         Oij6olVXswulh35UiUH1aQDWPpSeSHML1QNChYwYwp2jnfZDx98rfn6eagvVS9WEGzHH
         RCZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Tn2ucZrapy2hPg1R6sfWdmJQrwAEmN/PQGHePYJIs4k=;
        b=a7HMJulUzKdTYV0dRaLC20pXiHyPQgjxhSRVXDZK2vGaH+7FMYJHkonoFJqbcmGldj
         fBtytzTFJoM6JW8oIRqzO2ciSKx2fUtaipCkjpz9tSRe71E8KlDfrLzTaowBBy7UTzto
         G7Cv4DevALZMFQtIq/Hm5PLL820FkDKMpsGA0NXABHf7fCqeprfvPCIYlxi822+ejliS
         Cc+64CHYmRE88yUETC4TygIcCO4G4iZNGCCY0S+uWrav/7JoUmXdTpNjLq1qnxcEF6DP
         JYo36EksIuMoO7l4JVuKa0JwZO4dccCZV8hhBOVdiuoy8jTFUR5BtkRm2hvDIO6KPaCJ
         BkXA==
X-Gm-Message-State: AOAM532i80iYSGNTlw2KQvkr42z56V3/BmTWbLQNHxXN9j7uPqH1sQjb
	HRdcaHuAJJ1nAk3vJZSIXCxJGxE3OhD8YdD+HdHCSXobuY8=
X-Google-Smtp-Source: ABdhPJxlRmN6gtIAlPHr3Z9C2pbfse6jjcJioOv7UPek6cidne0q8QlJnKYQ5K8s6uaC85o5dVNHqKP7x1Wi3Wh1Hcs=
X-Received: by 2002:a63:5d4c:0:b0:39d:5470:efc7 with SMTP id
 o12-20020a635d4c000000b0039d5470efc7mr1355302pgm.27.1649607977352; Sun, 10
 Apr 2022 09:26:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAHH-VXfEno3K6azNLKibRwCxsDm1Xu0w-PFpi6cJdR3f=hJJFw@mail.gmail.com>
In-Reply-To: <CAHH-VXfEno3K6azNLKibRwCxsDm1Xu0w-PFpi6cJdR3f=hJJFw@mail.gmail.com>
From: Roopa Prabhu <roopa.prabhu@gmail.com>
Date: Sun, 10 Apr 2022 09:26:06 -0700
Message-ID: <CAGe6so_jSoCrwQCXR6E=zJAaG8vr50_Cm7bh+3y_bdizPZxzkA@mail.gmail.com>
Subject: Re: Applicant introduction
To: Soumya Negi <soumya.negi97@gmail.com>
Cc: outreachy linux kernel <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

On Sat, Apr 9, 2022 at 10:51 PM Soumya Negi <soumya.negi97@gmail.com> wrote:
>
> Hello,
> My name is Soumya Negi and I am a CS masters student at USC. Please
> pardon my late introduction( due to overlapping midterms). I took an
> Operating Systems course last semester and have thus worked with C on
> academic projects. I hope it will be a good foundation for the Linux
> projects offered this year. I am excited to finally get started and
> contribute to the linux kernel community!
>

Welcome Soumya!

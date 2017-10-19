X-GM-THRID: 6478258108976070656
X-Received: by 10.98.7.80 with SMTP id b77mr233574pfd.30.1508417503604;
        Thu, 19 Oct 2017 05:51:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.9.80 with SMTP id e77ls1792887pfd.0.gmail; Thu, 19 Oct 2017
 05:51:42 -0700 (PDT)
X-Received: by 10.99.42.204 with SMTP id q195mr197835pgq.98.1508417502677;
        Thu, 19 Oct 2017 05:51:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508417502; cv=none;
        d=google.com; s=arc-20160816;
        b=xh74NfN+c6FO76abyWtyXFfJA/7JM7nOeFG89zeYdLpVEY0+RoGtZiMtFmNbYKuk0G
         ytKjAevdLYHZvnZ/fjDtdHpDEXASSY8TScoOjsM6m8RhI8myiOVT+Iwe0Bk8iEZJ3YOH
         f69PNIK6m+ax7or8uw5Mr8JVEYOu1gCbYFt3jmUMVU3o7/DNUPJ/wuI7IBiQSrSVYLId
         1ayTU2Kl+/VE1U1bPdM6O8XtaSphImkZ9tBgb6RU9tSqHR43MO2oQlufWHKkSQ7m6xIV
         8OkOZA+GqX1TOpc8NiG7zhu/M9Lj2nxDZKfVL7EEFdEyUfqDB2CwjY1ibM3D7kxh1uVm
         JF4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=tHkBoi2HjKoIftJU88RZUQziL3DDAxNDs6ZHh8+kd9c=;
        b=GKK8mW0EzzAiGt3niFYhUDrjFEtkPKdHcYETMxasyMBi5h739zjhjxNMDQMcYELEyR
         +PwEbgQmzKoDs7DKaNlnKYAGVq5FZq7nJfSlqtYwdlvPvjz5v0f1CyuU0LiOX0RG4aSb
         48iPhFnqgCaHS0XOw5cIeMuJt8BhWl65U7WbefDN6+GCA4egAZaFK+8bBK+gbZ7mhfQi
         vOh0XRLkfdRAjzlb7Qd12mo3mfpTzPZjZZ89HGdCxir/CNOGnCsqREJGvmb1bTofgzuc
         QVVWAeOAfaXmByRHJgceop+ehyiWqF1bth6Jp7WCq4GH6ihqZihjZk9dsx+HvCo8MJ6o
         6uhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jIZxOX7h;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::233 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-ua0-x233.google.com (mail-ua0-x233.google.com. [2607:f8b0:400c:c08::233])
        by gmr-mx.google.com with ESMTPS id l27si865924pfb.4.2017.10.19.05.51.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 05:51:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::233 as permitted sender) client-ip=2607:f8b0:400c:c08::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jIZxOX7h;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::233 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x233.google.com with SMTP id f46so5909451uae.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 05:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=tHkBoi2HjKoIftJU88RZUQziL3DDAxNDs6ZHh8+kd9c=;
        b=jIZxOX7h5e0iLp7HzRC4MHotoUOqgZkkyo/7Q05ovqAJYiPlWYtj3BaomhKPibLwIT
         1cF5Oy0PI812ypDSWSHBLj8S+BiIKTfg38Ay3KNFeSiL+kdVwRxaAdUUlmn0jn+jqgrc
         tPLCTpNuXNkaFkpt+O+cIqA8IB56l0mK0DobxinVUTFYu3XjzQvZnzNy7NFJPuy1I+ny
         GgEUyj6Gr1BKLy+Rh5bh6779pqL3OK8sZP7VRti7XCj3rsw+WvEESqNWV8q3SrlsxtwQ
         YYEtHlhmHz1ikYoB3VQtsR/CDC9eFUMU7aGuvX+NPKaYhDnOoj/w768aZJMn77WeoH30
         lWWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=tHkBoi2HjKoIftJU88RZUQziL3DDAxNDs6ZHh8+kd9c=;
        b=UPTvMj4bh/N7wDxAcPxWKK0qJ8dRTwHYnv4HkLcSgToLq5uYVxR6D1c0OskgJO5V9J
         BTBugrf0RLhGbiwBzeI/er6Zfkj9D5ph/kIF7u71zLusdmn8GWmLBDMHdasXYkFMLsZu
         APjBvF3EcE2iLk2Kovd/bpr+sX3EIOW0K/4rbtpdcEH8Peq2cjBm0XzzWff01w8FT139
         l0gwKwI8UAxGjbqeTArkfrbXj6euO+Bxy/DZxy5ZU8+JGvaVVdJBzrV+8Ld2GQ5KV1gA
         HfP0/9RkZX7toHcKCZsMTag4whG0Wn8X+m3v5YHvo4XAz6a5YWJFtR0P1M6BxcSwcRXy
         u1mQ==
X-Gm-Message-State: AMCzsaVS+sBA0RvTDrgYX+8jVNdY5BIVDUFSGWMp0Ce3USMiCZha1VRW
	WvVQwQZK32DA3HSmNqAf++ZA0bnXkAIZE9jDPJM=
X-Google-Smtp-Source: ABhQp+TMSNqyJsyjrtBoCZCIPgVtyxvOxUI6buYbjesm2hN4gcCfWW4AxMyP3Rl7h5Z4uV9qzPmeKB9kaCL3AgPG0T8=
X-Received: by 10.176.80.241 with SMTP id d46mr1055617uaa.53.1508417502369;
 Thu, 19 Oct 2017 05:51:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.68.70 with HTTP; Thu, 19 Oct 2017 05:51:42 -0700 (PDT)
In-Reply-To: <20171019103503.GA2752@salvia>
References: <20171018142944.14872-1-harshasharmaiitr@gmail.com> <20171019103503.GA2752@salvia>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Thu, 19 Oct 2017 18:21:42 +0530
Message-ID: <CANMOCy3zreg5Bt1J-91xHN5LVY2V57kH1d-wbmcwfqb72SZN+A@mail.gmail.com>
Subject: Re: [PATCH] tests: xlate: print total no. of testfiles, tests and
 tests passed
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: netfilter-devel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 19, 2017 at 4:05 PM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> On Wed, Oct 18, 2017 at 07:59:44PM +0530, Harsha Sharma wrote:
>> Print errors and total no of tests and tests passed for testfile argument.
>> Print total no. of testfiles, total no. of tests and total no. of tests
>> passed for "all" argument.
>
> BTW, could you also to the commit description an example on how the
> output looks like, for people that don't want to apply and run it, so
> we set clear expectations on what this is doing.
>
> Thanks Harsha!

Thanks for your feedback.
I have sent two different patches.
Let me know if any change is required.
Thanks again :')

Regards,
Harsha Sharma


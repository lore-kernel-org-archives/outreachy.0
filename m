X-GM-THRID: 6750107807793545216
X-Received: by 2002:a17:902:8642:: with SMTP id y2mr21779064plt.187.1571635191984;
        Sun, 20 Oct 2019 22:19:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:d216:: with SMTP id t22ls563685ply.4.gmail; Sun, 20
 Oct 2019 22:19:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz8ifnfgihTcqjKTWu7u9bkSt7PyhHj2IxJW/IA9lYG6GunAilnIZRrAMLogftx7bh8LNCD
X-Received: by 2002:a17:902:8bc2:: with SMTP id r2mr12739199plo.134.1571635190887;
        Sun, 20 Oct 2019 22:19:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571635190; cv=none;
        d=google.com; s=arc-20160816;
        b=v4100nsGDoO3wPT6lQU8EGZNj2kQgXeBVfgLj8XJa/LSSWcP+fGG3mr9Lw98Tq9R44
         acVQSuHfdOW7Uw0gRgVlmJMmzux77MF6K/JjaOJ2zxs8KgGpDkFJqfPuqy1KPAv1FkDe
         0zPsFryPTwBhScDMxQnM4x51EMQGnQwL0HVsBJFcGK8f0n6eNtg73So8P+VhNLPFYD81
         gD6rr9R1KwLhsf6QYoxOj0xiRzhvnzv+uXP8vaKXezntYB8KLswLdbVOQtMKdmusT1Nk
         Kv0Iet48CcSDtLuc8uCnrkqmlFPQ7OCJaCBgqi3A2yR6lrrOAZCjmHvZAL03hIrMct2V
         ZSYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=Pison76YtHoTEIFPwJsMtVXpR8Wn19cBuMfZ24uOaOs=;
        b=YKNQ2EqX99UrHMikqsKh6zuG3f0kb35A8Gqc4h+S/F5PGYub207KzmSwDpr5YU/58R
         IpB9rAVx5+g3pp6OV1y+D8GP21yQnvAZbY5dO40nxtmza8UAsmoQAJVGzmBlFENUDNK9
         vyWfsCvJpIOkkZZnrEgL9d8JqMQBMAs+MUsci6LWDL1ggYUNPY7k2F/k/aKbTx3WhJMq
         4CBlg6+Hprm1Y4Ins3y0jwKw5d7lh8p9tfXU8Ss23xJqRiso+8g4zLdISATf18wf38QA
         tF0XDV0E2z2ykZTwRcInYXQW+kDSAtvuXtDcr7sFc7YrPFYAqxZMKw4Kis1W3oGo9tPa
         vdfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa09-07.prod.phx3.secureserver.net (p3plsmtpa09-07.prod.phx3.secureserver.net. [173.201.193.236])
        by gmr-mx.google.com with ESMTPS id g12si642547pfi.5.2019.10.20.22.19.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Oct 2019 22:19:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.236 as permitted sender) client-ip=173.201.193.236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lj1-f173.google.com ([209.85.208.173])
	by :SMTPAUTH: with ESMTPSA
	id MQ6fiv1L53heuMQ6gisiaA; Sun, 20 Oct 2019 22:19:50 -0700
Received: by mail-lj1-f173.google.com with SMTP id d1so11747077ljl.13
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Oct 2019 22:19:50 -0700 (PDT)
X-Gm-Message-State: APjAAAWyPb/0pR3bc0XKrRkHNiYJhn7JkQASETafANWa7NquI0R2ugmW
	stzyqef7D5Gtjhy8km3hO2JZgdiVyxMh3UJOXV8=
X-Received: by 2002:a2e:97ca:: with SMTP id m10mr13414957ljj.195.1571635189070;
 Sun, 20 Oct 2019 22:19:49 -0700 (PDT)
MIME-Version: 1.0
References: <399e73f8-1ba5-4e5c-a4dc-9f19f6de8fb8@googlegroups.com>
In-Reply-To: <399e73f8-1ba5-4e5c-a4dc-9f19f6de8fb8@googlegroups.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 21 Oct 2019 10:49:36 +0530
X-Gmail-Original-Message-ID: <CAK-LDbLfnr6Yx7pGA3+WatKGpX3STLAmrNr9OhtXcwxVy-0L+g@mail.gmail.com>
Message-ID: <CAK-LDbLfnr6Yx7pGA3+WatKGpX3STLAmrNr9OhtXcwxVy-0L+g@mail.gmail.com>
Subject: Re: [Outreachy kernel] Suggested commit orden for patchsets?
To: Javier Arias <jarias.linux@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CMAE-Envelope: MS4wfD43jrKmQH9bL4gfa5pq01kyPhrjrmytbOYu3yP6wQLcRmW+L/L9PhFtPYrqmvf7pXEBD//lralk1RHjbS/LDp+iZQ5d2gHEVkJYORlwIF7eBbnzf+Y0
 ZwCGmD+cm5l1aLrFpyEgrg7ieITJko1cpNsb9M92qSFyZ2l/E4A4Wf4e4Pva7ExvAb5NpquENsvKaK20qqd/Wma0bRQxC7qBx+o=

On Mon, Oct 21, 2019 at 9:55 AM Javier Arias <jarias.linux@gmail.com> wrote=
:
>
> Hello everyone,

Hi Javier,

> I have a question related to the commit order, as I received feedback abo=
ut how a commit order makes more sense for patchsets, but when I start find=
ing an specific issue the next commits in the patchset are usually just to =
fix warnings displayed by checkpatch after the first fix, so I don't feel l=
ike changing the commit order would be productive for me.

I'm not sure if I understand your question correctly but your
first fix shouldn't introduce any new warnings. Every fix you
do or every commit you create should not have any
checkpatch warnings.

Also, can you possibly provide a link to which feedback
you're talking about here so that people can check it
and give you suggestions accordingly for your confusion.

> So my question are:
> Is there a suggested commit order for patchsets even if this is the case?
> is it enough if I describe the reason why I used certain commit order in =
the cover letter?
>
> Thanks in advance for your answers.
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/399e73f8-1ba5-4e5c-a4dc-9f19f6de8fb8%40googlegroups.com.

